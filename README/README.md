> **CM2104 Coursework Report**\
> **Name:** Kieran Marcus Williams\
> \
> **Student ID:** C1930510
>
> **3rd Party Libraries Used:** Image Processing Toolbox, Mapping
> Toolbox\
> drawpolygon() polyxpoly(), linecirc()\
> **Blue Bold Text:** The ﬁle the code being referenced can be found in.
>
> Task 1:

+-------------+-------------+-------------+-------------+-------------+
| > **Re      | > *         | > **Ex      | > **Jus     |             |
| quirement** | *Evidence** | planation** | tiﬁcation** |             |
+=============+=============+=============+=============+=============+
| > Write a   | ![]         | ![]         | > Draw uses | > The       |
| > MATLAB    | (vertopal_9 | (vertopal_9 | > dr        | >           |
| > GUI that  | ab46ace7aa2 | ab46ace7aa2 | awpolygon() | drawpolygon |
| > allows\   | 478ebaed4b1 | 478ebaed4b1 | > from      | > function  |
| > the user  | 112219310/m | 112219310/m | > Image     | > from the  |
| > to draw   | edia/image1 | edia/image2 | >           | > Image     |
| > or load   | .png){width | .png){width |  Processing | >           |
| > in a\     | ="2.0847222 | ="2.3736111 | > Toolbox.  |  Processing |
| > polygon,  | 22222222in" | 11111111in" | > This code | > Toolbox   |
| > which is  | height="    | heigh       | > can be    | > was       |
| > displayed | 1.536110017 | t="1.75in"} | > found in  | > chosen as |
| > on the    | 4978128in"} |             | > the       | > it\       |
| > canvas    |             |             | >           | > provided  |
|             |             |             | **./coursew | > all the   |
|             |             |             | ork.mlapp** | > fu        |
|             |             |             | > ﬁle on    | nctionality |
|             |             |             | > the Draw  | > I         |
|             |             |             | > button    | > required  |
|             |             |             | > callback. | > for       |
|             |             |             | >           | > drawing   |
|             |             |             | > Select    | > a\        |
|             |             |             | > File      | > polygon   |
|             |             |             | > opens ﬁle | > and later |
|             |             |             | > open      | > for\      |
|             |             |             | > dialogue  | > editing.  |
|             |             |             | > with      | >           |
|             |             |             | >           | > I chose   |
|             |             |             |  uigetﬁle() | > to keep   |
|             |             |             | > this is   | > the same  |
|             |             |             | > set to    | > axes for  |
|             |             |             | > accept    | > both      |
|             |             |             | > .txt and  | > drawing   |
|             |             |             | > .dat      | > and       |
|             |             |             | > ﬁles.     | >           |
|             |             |             | > Code for  |  displaying |
|             |             |             | > this can  | > the plot  |
|             |             |             | > be found  | > as it\    |
|             |             |             | > in the    | > reduces   |
|             |             |             | > select    | > the need  |
|             |             |             | > button    | > for extra |
|             |             |             | > callback  | > ﬁgures    |
|             |             |             | > function. | > and       |
|             |             |             | > Both      | > window\   |
|             |             |             | > functions | >           |
|             |             |             | > result    | management, |
|             |             |             | > in\       | > as well   |
|             |             |             | >           | > as it     |
|             |             |             | coordinates | > being ﬁt  |
|             |             |             | > of the    | > for       |
|             |             |             | > polygon   | > purpose.  |
|             |             |             | > being\    |             |
|             |             |             | > found and |             |
|             |             |             | > set in    |             |
|             |             |             | > the app   |             |
|             |             |             | > designer\ |             |
|             |             |             | > private   |             |
|             |             |             | > property  |             |
|             |             |             | > current_c |             |
|             |             |             | oordinates. |             |
|             |             |             | >           |             |
|             |             |             | > Upon      |             |
|             |             |             | > getting   |             |
|             |             |             | > the       |             |
|             |             |             | >           |             |
|             |             |             | coordinates |             |
|             |             |             | > for a\    |             |
|             |             |             | > polygon,  |             |
|             |             |             | > the       |             |
|             |             |             | > **./draw  |             |
|             |             |             | Polygon.m** |             |
|             |             |             | > ﬁle       |             |
|             |             |             | > renders   |             |
|             |             |             | > out the   |             |
|             |             |             | > plot to   |             |
|             |             |             | > the axes\ |             |
|             |             |             | > \         |             |
|             |             |             | > The       |             |
|             |             |             | > polygons  |             |
|             |             |             | > number of |             |
|             |             |             | > regions\  |             |
|             |             |             | > property  |             |
|             |             |             | > is        |             |
|             |             |             | > checked   |             |
|             |             |             | > to be     |             |
|             |             |             | > greater   |             |
|             |             |             | > than 1    |             |
|             |             |             | > and if    |             |
|             |             |             | > so, the   |             |
|             |             |             | > axes gets |             |
|             |             |             | > cleared   |             |
|             |             |             | > as it it  |             |
|             |             |             | > indicates |             |
|             |             |             | > the       |             |
|             |             |             | > polygon   |             |
|             |             |             | > is self\  |             |
|             |             |             | > i         |             |
|             |             |             | ntersecting |             |
+-------------+-------------+-------------+-------------+-------------+

Page of 8

+-------------+-------------+-------------+-------------+-------------+
| > The GUI   | ![]         | ![]         | > Opens     | > I feel    |
| > should\   | (vertopal_9 | (vertopal_9 | > dialogue  | > this is   |
| > also      | ab46ace7aa2 | ab46ace7aa2 | > with      | > an        |
| > allow     | 478ebaed4b1 | 478ebaed4b1 | > uiputﬁle  | >           |
| > the\      | 112219310/m | 112219310/m | > that\     | appropriate |
| > user to   | edia/image3 | edia/image4 | > writes    | > usage of  |
| > save a\   | .png){width | .png){width | > .txt and  | > a         |
| > drawn     | ="2.0847222 | ="2.3736111 | > .dat ﬁles | > dialogue  |
| > polygon   | 22222222in" | 11111111in" | > where the | > box to    |
| > in a ﬁle. | height="    | height="    | > user can  | > get the   |
| > Use the\  | 2.395833333 | 1.679166666 | > enter the | > users ﬁle |
| > following | 3333335in"} | 6666667in"} | > ﬁle name. | > path for  |
| > data\     |             |             | > The ﬁle   | > where to  |
| > format    |             |             | > path is   | > write     |
| > for the\  |             |             | > retrieved | > the\      |
| > saved     |             |             | > from that | > c         |
| > polygon:  |             |             | > and then  | oordinates. |
| > a text    |             |             | > written   |             |
| > ﬁle       |             |             | > to that   |             |
| >           |             |             | > ﬁle using |             |
|  containing |             |             | > wri       |             |
| > the       |             |             | tematrix(). |             |
| > ordered,\ |             |             | > Code can  |             |
| > space     |             |             | > be found  |             |
| > separated |             |             | > in the    |             |
| > x and y\  |             |             | > save      |             |
| > c         |             |             | > button    |             |
| oordinates, |             |             | > callback  |             |
| > one pair  |             |             | > function  |             |
| > per line. |             |             | > in the    |             |
|             |             |             | >           |             |
|             |             |             | **./coursew |             |
|             |             |             | ork.mlapp** |             |
|             |             |             | > ﬁle.      |             |
+-------------+-------------+-------------+-------------+-------------+

Page of 8

> Task 2:

+----------------+----------------+----------------+----------------+
| > *            | > **Evidence** | > *            | > **           |
| *Requirement** |                | *Explanation** | Justiﬁcation** |
+================+================+================+================+
| > Extend the   | ![](ver        | > Done with    | > The vector\  |
| > above GUI    | topal_9ab46ace | > caxis set to | > angle\       |
| > with an\     | 7aa2478ebaed4b | > values 0 to  | > calculation\ |
| > additional   | 1112219310/med | > 360, with    | > using atan2\ |
| > function.    | ia/image5.png) | > the colormap | > works\       |
| >              | {width="4.4694 | > set to jet   | > eﬀectively   |
| > Calculate    | 44444444444in" | > and colorbar | > and          |
| > the\         | heig           | > made visible | > eﬃciently    |
| > polygon\'s\  | ht="3.1125in"} | > on ﬁgure.    | > for\         |
| > subtended    |                | >              | > calculating\ |
| > angles.      |                | > Subtended    | > each of the\ |
| >              |                | > angles       | > angles, it   |
| > Plot a       |                | > calculated   | > was thus a   |
| > coloured\    |                | > in a .m      | > suitable     |
| > disk at      |                | > function.    | > solution     |
| > each\        |                | > All vertices | > for\         |
| > vertex. The  |                | > are iterated | > calculating  |
| > size of the  |                | > through,     | > the angles.  |
| > disk at\     |                | > with both\   | >              |
| > concave\     |                | > connecting   | > The use of   |
| > vertices     |                | > vertices     | > a\           |
| > should be    |                | > used to      | > scatter      |
| > double the   |                | > create two   | > plot\        |
| > size of      |                | > vectors.     | > worked well  |
| > those at     |                | >              | > to plot the  |
| > convex\      |                | > Code         | > disks as I   |
| > corners.     |                | > executed in  | > could\       |
| > The\         |                | > **./dr       | >              |
| > colour of    |                | awPolygon.m**\ |  individually\ |
| > the disk     |                | > rad2deg(a    | > address      |
| > should be\   |                | tan2(cross(v1, | > sizes and    |
| > determined   |                | > v2), dot(v1, | > colours to   |
| > by the value |                | > v2)))\       | > each of the\ |
| > of the\      |                | > \            | > markers.     |
| > subtended    |                | > (Always      |                |
| > angle: map   |                | > works by     |                |
| > the angles   |                | > ensuring     |                |
| > in the range |                | > that the     |                |
| > \[0,360\] to |                | > vector       |                |
| > Matlab's     |                | > coordinates  |                |
| > jet\         |                | > are in       |                |
| > colormap     |                | > counter      |                |
| > and\         |                | > clockwise    |                |
| > display the\ |                | > order before |                |
| > colorbar.    |                | > function)\   |                |
|                |                | > \            |                |
|                |                | > Code that    |                |
|                |                | > returns      |                |
|                |                | > angle. It    |                |
|                |                | > gets the     |                |
|                |                | > cross        |                |
|                |                | > product and  |                |
|                |                | > dot product  |                |
|                |                | > of both      |                |
|                |                | > vectors and  |                |
|                |                | > then with    |                |
|                |                | > atan2 the    |                |
|                |                | > angle        |                |
|                |                | > between the  |                |
|                |                | > two vectors  |                |
|                |                | > is\          |                |
|                |                | > found.       |                |
|                |                | > Negative     |                |
|                |                | > angles get   |                |
|                |                | > subtracted   |                |
|                |                | > from 360     |                |
|                |                | > which        |                |
|                |                | > accurately   |                |
|                |                | > calculates   |                |
|                |                | > the angles   |                |
|                |                | > greater than |                |
|                |                | > 180 degrees. |                |
|                |                | > Code for     |                |
|                |                | > this can be  |                |
|                |                | > found in     |                |
|                |                | > **./func     |                |
|                |                | tions/getSubte |                |
|                |                | ndedAngles.m** |                |
|                |                | >              |                |
|                |                | > .m function  |                |
|                |                | > found in     |                |
|                |                | > **.          |                |
|                |                | /functions/**\ |                |
|                |                | > **getSi      |                |
|                |                | zeOfMarker.m** |                |
|                |                | > calculates   |                |
|                |                | > the marker   |                |
|                |                | > size based   |                |
|                |                | > oﬀ an        |                |
|                |                | > argument of  |                |
|                |                | > minSize. If  |                |
|                |                | > angle is     |                |
|                |                | > over 180     |                |
|                |                | > degrees it   |                |
|                |                | > is double    |                |
|                |                | > the size of  |                |
|                |                | > the minSize  |                |
|                |                | > else is the  |                |
|                |                | > minSize\     |                |
|                |                | > \            |                |
|                |                | > Colours for  |                |
|                |                | > Vertices are |                |
|                |                | > found and    |                |
|                |                | > applied to   |                |
|                |                | > the angles   |                |
|                |                | > using the    |                |
|                |                | > function     |                |
|                |                | > found in the |                |
|                |                | > ﬁle **./**\  |                |
|                |                | > **functi     |                |
|                |                | ons/getJetColo |                |
|                |                | rFromAngle.m** |                |
|                |                | > done by      |                |
|                |                | > getting      |                |
|                |                | > jet(360) for |                |
|                |                | > all the      |                |
|                |                | > diﬀerent     |                |
|                |                | > colours and  |                |
|                |                | > then mapping |                |
|                |                | > each angle   |                |
|                |                | > to the       |                |
|                |                | > colour of    |                |
|                |                | > that angle's |                |
|                |                | > value.       |                |
|                |                | >              |                |
|                |                | > The          |                |
|                |                | > functions    |                |
|                |                | > get called   |                |
|                |                | > in the       |                |
|                |                | > **./d        |                |
|                |                | rawPolygon.m** |                |
|                |                | > ﬁle along    |                |
|                |                | > with the     |                |
|                |                | > scatter plot |                |
|                |                | > of the       |                |
|                |                | > markers      |                |
|                |                | > getting      |                |
|                |                | > executed.    |                |
+----------------+----------------+----------------+----------------+

Page of 8

> Task 3:

+----------------+----------------+----------------+----------------+
| > *            | > **Evidence** | > *            | > **           |
| *Requirement** |                | *Explanation** | Justiﬁcation** |
+================+================+================+================+
| > Extend the   | ![](ver        | > MBR          | > Circles      |
| > above GUI    | topal_9ab46ace | > calculated   | > plotted\     |
| > with an      | 7aa2478ebaed4b | > by getting   | > using        |
| > additional\  | 1112219310/med | > the min and  | > polyshape so |
| > function.    | ia/image6.png) | > max X and Y  | > that\        |
| > Draw the     | {width="4.6888 | > values and   | > polyxpoly    |
| > axis aligned | 88888888889in" | > is then      | > could be     |
| > minimum\     | he             | > plotted      | > used to ﬁnd  |
| > bounding     | ight="3.381944 | > using them   | >              |
| > rectangle\   | 4444444446in"} | > values. MBR\ |  intersection\ |
| > (MBR) around |                | > centre X and | > points       |
| > the\         |                | > Y found by   | > between      |
| > polygon and  |                | > dividing the | > both\        |
| > plot the     |                | > max values   | >              |
| > MBR\'s       |                | > by 2. Code   |  intersection\ |
| > centre.      |                | > for this     | > points.      |
| >              |                | > found in ﬁle | >              |
| > Plot two     |                | > *            | > I do not     |
| > circles      |                | *./functions/g | > know\        |
| > centred at   |                | etXYMinMax.m** | > why the\     |
| > this centre; |                | >              | > polyxpoly    |
| > their radii  |                | > Circles      | > did\         |
| > are half the |                | > plotted      | > not work     |
| > width and    |                | > using        | > with\        |
| > height of    |                | > polyshape    | > the ﬁrst     |
| > the MBR.     |                | > with radius\ | > drawn\       |
| >              |                | > \            | > line and     |
| > Plot a \* at |                | > r1 =         | > there is     |
| > all the\     |                | > (            | > probably a   |
| >              |                | xMax-xMin)/2;\ | > more elegant |
|  intersections |                | > \            | > way to\      |
| > of the       |                | > r2 =         | > get the\     |
| > polygon and  |                | > (            | >              |
| > the two      |                | yMax-yMin)/2;\ |  intersections |
| > circles.     |                | > \            | > of the ﬁrst  |
|                |                | > Plot is done | > line\        |
|                |                | > in the       | > along with   |
|                |                | > .            | > the\         |
|                |                | /drawPolygon.m | > rest of them |
|                |                | > ﬁle.         | > but this was |
|                |                | >              | > the\         |
|                |                | > Intersection | > workaround   |
|                |                | > points found | > I\           |
|                |                | > using\       | > came up      |
|                |                | > polyxpoly    | > with.        |
|                |                | > from Mapping |                |
|                |                | > Toolbox for  |                |
|                |                | > all points   |                |
|                |                | > other than   |                |
|                |                | > those on the |                |
|                |                | > ﬁrst drawn   |                |
|                |                | > line. That   |                |
|                |                | > line has     |                |
|                |                | > its\         |                |
|                |                | >              |                |
|                |                |  intersections |                |
|                |                | > found with   |                |
|                |                | > linecirc     |                |
|                |                | > from Mapping |                |
|                |                | > Toolbox to   |                |
|                |                | > ﬁnd all\     |                |
|                |                | >              |                |
|                |                |  intersections |                |
|                |                | > on both      |                |
|                |                | > circles and  |                |
|                |                | > then checks  |                |
|                |                | > that all     |                |
|                |                | >              |                |
|                |                |  intersections |                |
|                |                | > are on the   |                |
|                |                | > polygon.     |                |
|                |                | > Code for     |                |
|                |                | > this is in   |                |
|                |                | > the ﬁle      |                |
|                |                | > **.          |                |
|                |                | /functions/**\ |                |
|                |                | > **get        |                |
|                |                | CircleIntersec |                |
|                |                | tionPoints.m** |                |
|                |                | > and executed |                |
|                |                | > and plotted  |                |
|                |                | > in the       |                |
|                |                | > **./**\      |                |
|                |                | > *            |                |
|                |                | *drawPolygon.m |                |
|                |                | > ﬁle**        |                |
+----------------+----------------+----------------+----------------+

Page of 8

> Task 4:

+----------------+----------------+----------------+----------------+
| > *            | > **Evidence** | > *            | > **           |
| *Requirement** |                | *Explanation** | Justiﬁcation** |
+================+================+================+================+
| > Extend the\  | ![](vert       | > .m ﬁle       | > By           |
| > above GUI    | opal_9ab46ace7 | > **           | > calculating  |
| > with an      | aa2478ebaed4b1 | ./functions/ge | > the all      |
| > additional\  | 112219310/medi | tCircleInterse | > intersection |
| > function.    | a/image7.png){ | ctionLines.m** | > pairs\       |
| > For\         | width="3.68055 | > takes in all | > combinations |
| > each         | 55555555554in" | > the          | > and\         |
| > polygon\     | he             | > intersection | > eliminating  |
| > edge,        | ight="2.520833 | > points from  | > the\         |
| > identify\    | 3333333335in"} | > both the     | > intersection |
| > which (if    |                | > circles.     | > pairs\       |
| > any)\        |                | > Firstly all  | > that could   |
| > pairs of\    |                | > combinations | > not be\      |
| >              |                | > of circle1   | > between the  |
| intersections\ |                | > and circle2  | > circles      |
| > make up      |                | >              | > worked for   |
| > line\        |                |  intersections | > getting\     |
| > segments in  |                | > are put into | > the          |
| > the annular  |                | > a matrix.    | > coordinates  |
| > ring.        |                | >              | > of\          |
| >              |                | > The          | > the          |
| > Plot these   |                | > intersection | > intersection |
| > line         |                | > pairs are    | > lines        |
| > segments in\ |                | > ﬁrst         | >              |
| > magenta.     |                | > subjected to | > By           |
| >              |                | > being        | > calculating  |
| > Further      |                | > checked if   | > the rotation |
| > plot\        |                | > the          | > of the\      |
| > them after\  |                | > coordinate   | > coordinates  |
| > rotation     |                | > pair's line  | > with an      |
| > about\       |                | > coeﬃcients   | > origin       |
| > the MBR      |                | > match any of | > shift, the\  |
| > centre by    |                | > the          | > coordinates  |
| > 3 deg,       |                | > polygon's    | > can be       |
| > 6 deg, ...   |                | > line         | > rotated      |
| > ,15 deg      |                | > coeﬃcients.  | > about the\   |
|                |                | > Only the     | > centre       |
|                |                | > coordinate   | > coordinate\  |
|                |                | > pairs that   | > and thus     |
|                |                | > match one of | > works\       |
|                |                | > polygons the | > perfectly    |
|                |                | > edges line   | > for the\     |
|                |                | > coeﬃcients   | > purpose      |
|                |                | > will be      |                |
|                |                | > kept. Then   |                |
|                |                | > Remove any   |                |
|                |                | > intersection |                |
|                |                | > pairs that   |                |
|                |                | > have a       |                |
|                |                | > distance     |                |
|                |                | > between them |                |
|                |                | > that is      |                |
|                |                | > greater than |                |
|                |                | > the largest  |                |
|                |                | > circle's     |                |
|                |                | > radius.      |                |
|                |                | >              |                |
|                |                | > Rotated      |                |
|                |                | > coordinates  |                |
|                |                | > for each     |                |
|                |                | > coordinate   |                |
|                |                | > pair is done |                |
|                |                | > via the      |                |
|                |                | > rotatedInt   |                |
|                |                | ersectionLines |                |
|                |                | > .m function. |                |
|                |                | > Achieved by  |                |
|                |                | > iterating    |                |
|                |                | > through each |                |
|                |                | > coordinate   |                |
|                |                | > and          |                |
|                |                | > calculating  |                |
|                |                | > 5\           |                |
|                |                | > coordinates  |                |
|                |                | > for each     |                |
|                |                | > (each one    |                |
|                |                | > 3degs from   |                |
|                |                | > the other    |                |
|                |                | > clockwise).  |                |
|                |                | > Rotated      |                |
|                |                | > coordinates  |                |
|                |                | > are          |                |
|                |                | > calculated   |                |
|                |                | > by getting   |                |
|                |                | > matrix of    |                |
|                |                | > centre       |                |
|                |                | > coordinates  |                |
|                |                | > 2x2 used for |                |
|                |                | > shift of     |                |
|                |                | > origin to    |                |
|                |                | > rotate the   |                |
|                |                | > coordinates  |                |
|                |                | > based on the |                |
|                |                | > centre       |                |
|                |                | > point.       |                |
|                |                | > Rotation     |                |
|                |                | > done by      |                |
|                |                | > multiplying  |                |
|                |                | > the          |                |
|                |                | > intersection |                |
|                |                | > pair by      |                |
|                |                | > matrix\      |                |
|                |                | > \[cos(angle) |                |
|                |                | > sin(angle);  |                |
|                |                | > -sin(angle)  |                |
|                |                | >              |                |
|                |                |  cos(angle)\], |                |
|                |                | > returning    |                |
|                |                | > clockwise    |                |
|                |                | > rotated      |                |
|                |                | > coordinates  |                |
|                |                | > for the      |                |
|                |                | > intersection |                |
|                |                | > pair.        |                |
|                |                | >              |                |
|                |                | > Rotated      |                |
|                |                | > Intersection |                |
|                |                | > Points       |                |
|                |                | > plotted by   |                |
|                |                | > scatter plot |                |
|                |                | > in the       |                |
|                |                | > **./d        |                |
|                |                | rawPolygon.m** |                |
|                |                | > ﬁle along    |                |
|                |                | > with the     |                |
|                |                | > magenta line |                |
|                |                | > plots for    |                |
|                |                | > each         |                |
|                |                | > coordinate   |                |
|                |                | > pair.        |                |
+----------------+----------------+----------------+----------------+

Page of 8

> Task 5:

+----------------+----------------+----------------+----------------+
| > *            | > **Evidence** | > *            | > **           |
| *Requirement** |                | *Explanation** | Justiﬁcation** |
+================+================+================+================+
| > Extend the\  | ![](vert       | > Achieved by  | > ipt          |
| > above GUI    | opal_9ab46ace7 | > setting a    | PointerManager |
| > with an      | aa2478ebaed4b1 | > call back    | > is already   |
| > additional\  | 112219310/medi | > function to  | > in use by\   |
| > function.    | a/image6.png){ | > the          | > Matlab app   |
| > When the     | width="3.75694 | > ipt          | > designer and |
| > user\        | 44444444446in" | PointerManager | > so it makes\ |
| > moves the\   | he             | > 'pm' in the\ | > sense to add |
| > cursor over  | ight="2.711111 | > startupFcn   | > a\           |
| > the canvas,  | 1111111112in"} | > in           | > callback     |
| > the\         |                | > **./cour     | > function to  |
| > polygon      |                | sework.mlapp** | > the          |
| > edge\        |                | > that gets    | >              |
| > that is      |                | > executed on  | PointerManager |
| > closest to   |                | > traverse     | > in use. It   |
| > the cursor\  |                | > over the     | > also allowed |
| > temporarily  |                | > axes, with   | > me to only   |
| > is\          |                | > the          | > call the\    |
| > highlighted  |                | > coordinates  | > callback     |
| > in\          |                | > of the       | > when\        |
| > red.         |                | > cursor       | > traversing   |
|                |                | > passed to it | > over the\    |
|                |                | > as an        | > axes and     |
|                |                | > argument.    | > nothing\     |
|                |                | >              | > else. By     |
|                |                | > A pause of   | > setting the\ |
|                |                | > 0.2 is set   | > 0.2s pause,  |
|                |                | > in the       | > there is a   |
|                |                | > callback\    | > slight delay |
|                |                | > function to  | > between      |
|                |                | > ensure that  | > callback     |
|                |                | > the          | > executions   |
|                |                | > callback\    | > which        |
|                |                | > function has | > improves\    |
|                |                | > some delay   | > performance  |
|                |                | > between its  | > of\          |
|                |                | > calls as the | > application. |
|                |                | > mouse        |                |
|                |                | > traverses    |                |
|                |                | > the axes.    |                |
|                |                | >              |                |
|                |                | > In the       |                |
|                |                | > callback     |                |
|                |                | > function,    |                |
|                |                | > the\         |                |
|                |                | >              |                |
|                |                |  updateClosest |                |
|                |                | MarkerToCursor |                |
|                |                | > function     |                |
|                |                | > found in     |                |
|                |                | > **.          |                |
|                |                | /functions/**\ |                |
|                |                | > **upd        |                |
|                |                | ateClosestMark |                |
|                |                | erToCursor.m** |                |
|                |                | > is\          |                |
|                |                | > called to    |                |
|                |                | > update the   |                |
|                |                | > colour of    |                |
|                |                | > the nearest  |                |
|                |                | > vertex       |                |
|                |                | > marker to    |                |
|                |                | > red. This is |                |
|                |                | > done by\     |                |
|                |                | > storing and  |                |
|                |                | > updating the |                |
|                |                | > markers      |                |
|                |                | > scatter plot |                |
|                |                | > variable in  |                |
|                |                | > the app's    |                |
|                |                | > private      |                |
|                |                | > properties   |                |
|                |                | > whenever it  |                |
|                |                | > changes.     |                |
|                |                | > Then, when   |                |
|                |                | > the\         |                |
|                |                | > traverse     |                |
|                |                | > callback     |                |
|                |                | > executes     |                |
|                |                | > the\         |                |
|                |                | > u            |                |
|                |                | pdateClosestMa |                |
|                |                | rkerToCursor,\ |                |
|                |                | >              |                |
|                |                |  nearestvertex |                |
|                |                | > function     |                |
|                |                | > used to ﬁnd  |                |
|                |                | > index of     |                |
|                |                | > closest      |                |
|                |                | > vertex.      |                |
|                |                | > Then, new    |                |
|                |                | > closest      |                |
|                |                | > vertex index |                |
|                |                | > is stored in |                |
|                |                | > properties   |                |
|                |                | > along with   |                |
|                |                | > its original |                |
|                |                | > colour. When |                |
|                |                | > another      |                |
|                |                | > vertex is\   |                |
|                |                | > selected as  |                |
|                |                | > the closest  |                |
|                |                | > vertex, the  |                |
|                |                | > previous     |                |
|                |                | > vertex       |                |
|                |                | > marker gets  |                |
|                |                | > updated with |                |
|                |                | > its original |                |
|                |                | > colour.      |                |
+----------------+----------------+----------------+----------------+
|                | ![](ver        |                |                |
|                | topal_9ab46ace |                |                |
|                | 7aa2478ebaed4b |                |                |
|                | 1112219310/med |                |                |
|                | ia/image8.png) |                |                |
|                | {width="4.1680 |                |                |
|                | 55555555555in" |                |                |
|                | he             |                |                |
|                | ight="3.070833 |                |                |
|                | 3333333333in"} |                |                |
+----------------+----------------+----------------+----------------+

Page of 8

> Task 6:

+----------------+----------------+----------------+----------------+
| > *            | > **Evidence** | > *            | > **           |
| *Requirement** |                | *Explanation** | Justiﬁcation** |
+================+================+================+================+
| > Full         | ![](vert       | > Done by the  | > The rotate   |
| > animated\    | opal_9ab46ace7 | > rotate       | > function     |
| > Rotation of\ | aa2478ebaed4b1 | > function     | > works well   |
| > polygon with | 112219310/medi | > with the\    | > as it        |
| > all          | a/image9.png){ | > polygon      | > rotates the\ |
| > vertices\    | width="3.33611 | > passed in as | > polygon      |
| > rotating     | 11111111112in" | > an argument  | > without the  |
| > about the    | h              | > with the     | > need to      |
| > point of the | eight="2.45833 | > angle to     | > rotate each  |
| > centre of    | 2239720035in"} | > rotate the   | > coordinate   |
| > MBR          |                | > the polygon. | > individually |
| >              |                | > This returns | > and it works |
| > Polygon to   |                | > the rotated  | > well with my |
| > also be      |                | > polygon. The | > already\     |
| > rotatable\   |                | > vertices can | > written      |
| > through the\ |                | > be found     | > drawPolygon\ |
| > use of a     |                | > from this    | > function.    |
| > knob         |                | > polygon and  | >              |
|                |                | > plotted      | > The rotate   |
|                |                | > along with   | > knob was\    |
|                |                | > the rest of  | > implemented  |
|                |                | > the plots in | > as it        |
|                |                | > the          | > allowed for  |
|                |                | > drawPolygon  | > a way of     |
|                |                | > function in  | > testing the\ |
|                |                | > the          | > rotate       |
|                |                | >              | > function     |
|                |                |  drawPolygon.m | > initially.   |
|                |                | > ﬁle. There   | > The knob     |
|                |                | > is a         | > also         |
|                |                | > callback     | > provides a   |
|                |                | > function on  | > good way to  |
|                |                | > the rotate   | > present to   |
|                |                | > knob with    | > the user,    |
|                |                | > the value    | > the angle at |
|                |                | > from the     | > which the\   |
|                |                | > knob being   | > polygon is   |
|                |                | > passed in as | > currently    |
|                |                | > the angle    | > rotated from |
|                |                | > argument for | > its initial  |
|                |                | > the rotate   | > position\    |
|                |                | > function.    | > whilst using |
|                |                | >              | > it and       |
|                |                | > The          | > whilst in    |
|                |                | > RotateButton | > rotation     |
|                |                | > has a        | > from the     |
|                |                | > callback     | > rotate\      |
|                |                | > function     | > button being |
|                |                | > attached to  | > pressed.     |
|                |                | > it where a   |                |
|                |                | > while loop   |                |
|                |                | > from 0 to    |                |
|                |                | > 360          |                |
|                |                | >              |                |
|                |                |  (incrementing |                |
|                |                | > in 10s set   |                |
|                |                | > to value     |                |
|                |                | > angle).      |                |
|                |                | > During each  |                |
|                |                | > iteration of |                |
|                |                | > the loop,    |                |
|                |                | > the rotate   |                |
|                |                | > knob value   |                |
|                |                | > gets set to  |                |
|                |                | > the          |                |
|                |                | > incrementing |                |
|                |                | > angle and    |                |
|                |                | > then the     |                |
|                |                | > kno          |                |
|                |                | bValueChanged\ |                |
|                |                | > callback     |                |
|                |                | > function     |                |
|                |                | > gets called  |                |
|                |                | > to rotate    |                |
|                |                | > and draw the |                |
|                |                | > new rotated  |                |
|                |                | > polygon.     |                |
|                |                | > There is a   |                |
|                |                | > pause of 0.3 |                |
|                |                | > in each      |                |
|                |                | > while loop   |                |
|                |                | > iteration to |                |
|                |                | > provide time |                |
|                |                | > for the      |                |
|                |                | > drawPolygon\ |                |
|                |                | > computation  |                |
|                |                | >              |                |
|                |                | > All          |                |
|                |                | > functions    |                |
|                |                | > mentioned    |                |
|                |                | > are in the   |                |
|                |                | > **./         |                |
|                |                | > cour         |                |
|                |                | sework.mlapp** |                |
|                |                | > ﬁle.         |                |
+----------------+----------------+----------------+----------------+
|                | ![](vert       |                |                |
|                | opal_9ab46ace7 |                |                |
|                | aa2478ebaed4b1 |                |                |
|                | 112219310/medi |                |                |
|                | a/image10.png) |                |                |
|                | {width="4.3611 |                |                |
|                | 11111111111in" |                |                |
|                | heig           |                |                |
|                | ht="3.2125in"} |                |                |
+----------------+----------------+----------------+----------------+

Page of 8

+-------------+-------------+-------------+-------------+-------------+
| > Ability   | ![](v       | ![](v       | > Code      | > The       |
| > to edit\  | ertopal_9ab | ertopal_9ab | > executed  | >           |
| > polygon   | 46ace7aa247 | 46ace7aa247 | > when      | drawpolygon |
| > by\       | 8ebaed4b111 | 8ebaed4b111 | > Edit.     | > function  |
| > adding\   | 2219310/med | 2219310/med | > Done via  | > from the  |
| >           | ia/image11. | ia/image12. | > the       | > Image     |
|  vertices,\ | png){width= | png){width= | >           | >           |
| > editing   | "2.02499890 | "2.33611111 | drawpolygon |  Processing |
| > vertices  | 63867018in" | 11111112in" | > function  | > Toolbox   |
| > and       | height="    | height=     | > from      | > was a     |
| >           | 1.490277777 | "1.72083223 | > Image\    | > good\     |
| translating | 7777778in"} | 9720035in"} | >           | > choice as |
| > the       |             |             |  Processing | > it        |
| > polygon   |             |             | > Toolbox,  | > provided  |
| > to a      |             |             | > with it's | > a way to  |
| > diﬀerent\ |             |             | > property\ | > both      |
| > position  |             |             | >           | > initially |
| > whilst    |             |             |  'Position' | > draw the\ |
| > still     |             |             | > is        | > polygon   |
| >           |             |             | > pr        | > as well   |
|  displaying |             |             | e-populated | > as all    |
| > the       |             |             | > with the\ | > the       |
| > original  |             |             | >           | > fu        |
| > plot as a |             |             | coordinates | nctionality |
| >           |             |             | > of the    | > for       |
|  reference\ |             |             | > existing  | > editing   |
| > If        |             |             | > polygon.  | > the       |
| > in        |             |             | > This then | > polygon   |
| tersection\ |             |             | > presents  | > upon its  |
| > is        |             |             | > an        | > creation. |
| > detected\ |             |             | > editable  | >           |
| > after     |             |             | > region of | > My choice |
| > ﬁnished\  |             |             | > interest  | > to have   |
| > editing   |             |             | > (roi)     | > the edit  |
| > then the  |             |             | > over the  | > button    |
| > original  |             |             | > current   | > switch to |
| > image     |             |             | > polygon   | > ﬁnished   |
| > should    |             |             | > that can  | > editing   |
| > remain    |             |             | > have      | > is an     |
|             |             |             | > vertices  | > adequate  |
|             |             |             | > added via | > and       |
|             |             |             | > a double  | > simple    |
|             |             |             | > click on  | > way of    |
|             |             |             | > an\       | >           |
|             |             |             | > edge,     | signalling\ |
|             |             |             | >           | > the end   |
|             |             |             |  translated | > of the    |
|             |             |             | > via       | > polygon   |
|             |             |             | > dragging  | > edit and  |
|             |             |             | > the       | > works     |
|             |             |             | > surface   | > well with |
|             |             |             | > of the    | > a\        |
|             |             |             | > polygon.  | > rotated   |
|             |             |             | > Editing   | > polygon,  |
|             |             |             | > of the    | > drawn in  |
|             |             |             | > polygon   | > polygon   |
|             |             |             | > can be    | > and ﬁle   |
|             |             |             | > done by   | > imported  |
|             |             |             | > dragging  | > polygon.  |
|             |             |             | > a vertex. |             |
|             |             |             | > The save\ |             |
|             |             |             | > button,   |             |
|             |             |             | > rotation  |             |
|             |             |             | > button    |             |
|             |             |             | > and       |             |
|             |             |             | > rotation  |             |
|             |             |             | > knob are  |             |
|             |             |             | > hidden    |             |
|             |             |             | > whilst    |             |
|             |             |             | > editing a |             |
|             |             |             | > polygon.  |             |
|             |             |             | >           |             |
|             |             |             | > The       |             |
|             |             |             | >           |             |
|             |             |             | drawpolygon |             |
|             |             |             | > function  |             |
|             |             |             | > returns a |             |
|             |             |             | > roi with  |             |
|             |             |             | >           |             |
|             |             |             | properties. |             |
|             |             |             | > The roi   |             |
|             |             |             | > has an    |             |
|             |             |             | > event     |             |
|             |             |             | > listener  |             |
|             |             |             | > attached  |             |
|             |             |             | > to it so  |             |
|             |             |             | > that      |             |
|             |             |             | > every     |             |
|             |             |             | > time      |             |
|             |             |             | > there is  |             |
|             |             |             | > any       |             |
|             |             |             | >           |             |
|             |             |             |  alteration |             |
|             |             |             | > to the    |             |
|             |             |             | > roi, a    |             |
|             |             |             | > callback  |             |
|             |             |             | > function\ |             |
|             |             |             | > 'upd      |             |
|             |             |             | atePolyPos' |             |
|             |             |             | > gets      |             |
|             |             |             | > executed. |             |
|             |             |             | >           |             |
|             |             |             | > U         |             |
|             |             |             | pdatPolyPos |             |
|             |             |             | > will      |             |
|             |             |             | > update    |             |
|             |             |             | > the app   |             |
|             |             |             | > private   |             |
|             |             |             | > property  |             |
|             |             |             | > current_  |             |
|             |             |             | coordinates |             |
|             |             |             | > with the  |             |
|             |             |             | > updated   |             |
|             |             |             | >           |             |
|             |             |             | coordinates |             |
|             |             |             | >           |             |
|             |             |             | > The edit  |             |
|             |             |             | > button    |             |
|             |             |             | > gets      |             |
|             |             |             | > hidden    |             |
|             |             |             | > and the\  |             |
|             |             |             | > ﬁnished   |             |
|             |             |             | > editing   |             |
|             |             |             | > button    |             |
|             |             |             | > gets      |             |
|             |             |             | > shown in  |             |
|             |             |             | > its       |             |
|             |             |             | > place.    |             |
|             |             |             | > Upon      |             |
|             |             |             | > clicking  |             |
|             |             |             | > the       |             |
|             |             |             | > ﬁnished   |             |
|             |             |             | > editing   |             |
|             |             |             | > button,   |             |
|             |             |             | > the       |             |
|             |             |             | > a         |             |
|             |             |             | pp.current_ |             |
|             |             |             | coordinates |             |
|             |             |             | > can be    |             |
|             |             |             | > used with |             |
|             |             |             | > the       |             |
|             |             |             | >           |             |
|             |             |             | drawPolygon |             |
|             |             |             | > function  |             |
|             |             |             | > to plot   |             |
|             |             |             | > the       |             |
|             |             |             | > updated   |             |
|             |             |             | > polygon.  |             |
|             |             |             | >           |             |
|             |             |             | > The       |             |
|             |             |             | > polygons  |             |
|             |             |             | > number of |             |
|             |             |             | > regions   |             |
|             |             |             | > property  |             |
|             |             |             | > is        |             |
|             |             |             | > checked   |             |
|             |             |             | > to be     |             |
|             |             |             | > greater   |             |
|             |             |             | > than 1    |             |
|             |             |             | > and if    |             |
|             |             |             | > so,\      |             |
|             |             |             | > clear     |             |
|             |             |             | > axes and  |             |
|             |             |             | > re draw   |             |
|             |             |             | > original  |             |
|             |             |             | > polygon   |             |
|             |             |             | > before    |             |
|             |             |             | > edit as   |             |
|             |             |             | > this      |             |
|             |             |             | > would     |             |
|             |             |             | > signify a |             |
|             |             |             | > self\     |             |
|             |             |             | > i         |             |
|             |             |             | ntersecting |             |
|             |             |             | > polygon   |             |
|             |             |             | >           |             |
|             |             |             | > All       |             |
|             |             |             | > functions |             |
|             |             |             | > mentioned |             |
|             |             |             | > are in    |             |
|             |             |             | > the **./  |             |
|             |             |             | > coursew   |             |
|             |             |             | ork.mlapp** |             |
|             |             |             | > ﬁle.      |             |
+-------------+-------------+-------------+-------------+-------------+

Page of 8
