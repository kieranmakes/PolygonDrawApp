classdef courseworkapp < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure             matlab.ui.Figure
        FinishEditButton     matlab.ui.control.Button
        EditButton           matlab.ui.control.Button
        RotatePolygonButton  matlab.ui.control.Button
        RotateKnob           matlab.ui.control.Knob
        RotateKnobLabel      matlab.ui.control.Label
        SavePolygonButton    matlab.ui.control.Button
        DrawPolygonButton    matlab.ui.control.Button
        SelectFileButton     matlab.ui.control.Button
        UIAxes               matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        functions = addpath('./functions/');
        current_coordinates = [];
        current_pgon = [];
        cursor_coordinates = [];
        current_markers = [];
        current_selected_marker_index = 0;
        current_selected_marker_orig_colour = [];
    end
    
    methods (Access = private)
        function updateCursorCoordinates(app, coordinates)
            app.cursor_coordinates = coordinates;
            disp(app.current_coordinates)
            [app.current_selected_marker_index, app.current_selected_marker_orig_colour] = updateClosestMarkerToCursor(...
                app.current_coordinates,...
                app.cursor_coordinates, ...
                app.current_markers, ...
                app.current_selected_marker_index, ...
                app.current_selected_marker_orig_colour);
            pause(0.2);
        end
        
        function updatePolyPos(app, src, event)
            app.current_coordinates = event.CurrentPosition;
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            pm.enterFcn = [];
            pm.exitFcn  = @(~,~) disp('Cursor left axes');
            pm.traverseFcn = @(~,~) updateCursorCoordinates(app, app.UIAxes.CurrentPoint(1,1:2));
            iptSetPointerBehavior(app.UIAxes, pm)
            iptPointerManager(app.UIFigure,'enable');
            set(app.UIFigure,'WindowButtonMotionFcn',@(~,~)NaN) %dummy fcn so that currentpoint is continually updated
        end

        % Button pushed function: SelectFileButton
        function SelectFileButtonValueChanged(app, event)
            [file, path] = uigetfile({'*.txt;*.dat;'});
            pathWithFileName = strcat(path, file);
            coordinates = importdata(pathWithFileName);
            numOfregions = polyshape(coordinates).NumRegions;
            if numOfregions > 1
                cla(app.UIAxes);
                hold(app.UIAxes, 'off');
            else
                [app.current_pgon, app.current_markers] = drawPolygon(app, coordinates);                   
                app.current_coordinates = coordinates;
                app.RotateKnob.Visible = true;
                app.EditButton.Visible = true;
                app.SavePolygonButton.Visible = true;
                app.RotatePolygonButton.Visible = true;
                app.RotateKnob.Value = 0;
            end
        end

        % Button pushed function: DrawPolygonButton
        function DrawPolygonButtonValueChanged(app, event)
            cla(app.UIAxes) 
            hold(app.UIAxes,"off");
            app.RotateKnob.Value = 0;
            ax = app.UIAxes;
            roi = drawpolygon(ax,'FaceAlpha', 0, 'MarkerSize', 20);
             
            roi.Color = 'k';
            coordinates = roi.Position;
            % check that polygon does not self intersect
            numOfregions = polyshape(roi.Position).NumRegions;
            if numOfregions > 1
                cla(app.UIAxes);
                hold(app.UIAxes, 'off');
            else
                [app.current_pgon, app.current_markers] = drawPolygon(app, coordinates);                   
                app.current_coordinates = coordinates;
                app.RotateKnob.Visible = true;
                app.EditButton.Visible = true;
                app.SavePolygonButton.Visible = true;
                app.RotatePolygonButton.Visible = true;
            end
        end

        % Button pushed function: SavePolygonButton
        function SavePolygonButtonValueChanged(app, event)
            try
                if ~isempty(app.current_coordinates)
                    [file, path] = uiputfile({'*.dat;', 'dat File: (*.dat)'; '*.txt', 'txt File: (*.txt)'}, 'Save Polygon');
                    pathWithFileName = strcat(path, file);
                    writematrix(app.current_pgon.Vertices, pathWithFileName);
                end
            catch e
                disp(e);
            end                               
        end

        % Value changed function: RotateKnob
        function RotateKnobValueChanged(app, event)
            value = app.RotateKnob.Value;
            c = app.current_coordinates;
            p = polyshape(c);
            rotated_p = rotate(p, -value);           
            [xs, ys] = poly2ccw(rotated_p.Vertices(:,1), rotated_p.Vertices(:,2));
            newCoordinates = [xs, ys];
            [app.current_pgon, app.current_markers] = drawPolygon(app, newCoordinates);
        end

        % Button pushed function: RotatePolygonButton
        function RotatePolygonButtonPushed(app, event)
            v = 0;
            while v < 360
                v = v + 20;
                app.RotateKnob.Value = v;
                app.RotateKnobValueChanged(app);
                pause(0.3);
            end
            app.RotateKnob.Value = 0;
            app.RotateKnobValueChanged(app);
        end

        % Button pushed function: EditButton
        function EditButtonPushed(app, event)
            app.EditButton.Visible = 0;
            app.SavePolygonButton.Visible = 0;
            app.RotateKnob.Visible = 0;
            app.RotatePolygonButton.Visible = 0;
            app.FinishEditButton.Visible = 1;
            %cla(app.UIAxes);
            %hold(app.UIAxes,"off");
            c = app.current_pgon.Vertices;
            roi = drawpolygon(app.UIAxes, 'Position', c, 'FaceAlpha', 0);
            addlistener(roi, 'ROIMoved', @app.updatePolyPos);
        end

        % Button pushed function: FinishEditButton
        function FinishEditButtonPushed(app, event)
            coordinates = app.current_coordinates;
            % check that polygon does not self intersect
            numOfregions = polyshape(coordinates).NumRegions;
            if numOfregions > 1
                cla(app.UIAxes);
                hold(app.UIAxes, 'off');
                [app.current_pgon, app.current_markers] = drawPolygon(app, app.current_pgon.Vertices);                   
            else
                [app.current_pgon, app.current_markers] = drawPolygon(app, coordinates);                   
            end
            app.current_coordinates = app.current_pgon.Vertices;                
            app.RotateKnob.Visible = true;            
            app.FinishEditButton.Visible = 0;            
            app.EditButton.Visible = 1;            
            app.SavePolygonButton.Visible = 1;            
            app.RotateKnob.Visible = 1;            
            app.RotatePolygonButton.Visible = 1;            
            app.RotateKnob.Value = 0;
            app.RotateKnobValueChanged(app);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 682 451];
            app.UIFigure.Name = 'MATLAB App';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Polygon Draw App')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [171 25 474 402];

            % Create SelectFileButton
            app.SelectFileButton = uibutton(app.UIFigure, 'push');
            app.SelectFileButton.ButtonPushedFcn = createCallbackFcn(app, @SelectFileButtonValueChanged, true);
            app.SelectFileButton.Position = [34 376 100 22];
            app.SelectFileButton.Text = 'Select File';

            % Create DrawPolygonButton
            app.DrawPolygonButton = uibutton(app.UIFigure, 'push');
            app.DrawPolygonButton.ButtonPushedFcn = createCallbackFcn(app, @DrawPolygonButtonValueChanged, true);
            app.DrawPolygonButton.Position = [33 340 100 22];
            app.DrawPolygonButton.Text = 'Draw Polygon';

            % Create SavePolygonButton
            app.SavePolygonButton = uibutton(app.UIFigure, 'push');
            app.SavePolygonButton.ButtonPushedFcn = createCallbackFcn(app, @SavePolygonButtonValueChanged, true);
            app.SavePolygonButton.Visible = 'off';
            app.SavePolygonButton.Position = [33 302 100 22];
            app.SavePolygonButton.Text = 'Save Polygon';

            % Create RotateKnobLabel
            app.RotateKnobLabel = uilabel(app.UIFigure);
            app.RotateKnobLabel.HorizontalAlignment = 'center';
            app.RotateKnobLabel.Visible = 'off';
            app.RotateKnobLabel.Position = [60 130 41 22];
            app.RotateKnobLabel.Text = 'Rotate';

            % Create RotateKnob
            app.RotateKnob = uiknob(app.UIFigure, 'continuous');
            app.RotateKnob.Limits = [0 360];
            app.RotateKnob.MajorTicks = [0 60 120 180 240 300 360];
            app.RotateKnob.MajorTickLabels = {'0', '60', '120', '180', '240', '300', '360'};
            app.RotateKnob.ValueChangedFcn = createCallbackFcn(app, @RotateKnobValueChanged, true);
            app.RotateKnob.MinorTicks = [10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200 210 220 230 240 250 260 270 280 290 300 310 320 330 340 350 360];
            app.RotateKnob.Visible = 'off';
            app.RotateKnob.Position = [50 186 60 60];

            % Create RotatePolygonButton
            app.RotatePolygonButton = uibutton(app.UIFigure, 'push');
            app.RotatePolygonButton.ButtonPushedFcn = createCallbackFcn(app, @RotatePolygonButtonPushed, true);
            app.RotatePolygonButton.Visible = 'off';
            app.RotatePolygonButton.Position = [34 132 100 22];
            app.RotatePolygonButton.Text = 'Rotate Polygon';

            % Create EditButton
            app.EditButton = uibutton(app.UIFigure, 'push');
            app.EditButton.ButtonPushedFcn = createCallbackFcn(app, @EditButtonPushed, true);
            app.EditButton.Visible = 'off';
            app.EditButton.Position = [34 94 100 22];
            app.EditButton.Text = 'Edit Button';

            % Create FinishEditButton
            app.FinishEditButton = uibutton(app.UIFigure, 'push');
            app.FinishEditButton.ButtonPushedFcn = createCallbackFcn(app, @FinishEditButtonPushed, true);
            app.FinishEditButton.Visible = 'off';
            app.FinishEditButton.Position = [34 94 100 22];
            app.FinishEditButton.Text = 'Finish Edit';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = courseworkapp

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
