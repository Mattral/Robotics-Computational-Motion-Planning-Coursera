function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

%%% All of your code should be between the two lines of stars.
% *******************************************************************

flag1= false; flag2 = false;
A = threed(P1(1,:)); B = threed(P1(2,:)); C = threed(P1(3,:));
% Checking P2 in triangle P1
for i =1:length(P2)
    P = threed(P2(i,:));
    if(point_in_triangle(P, A, B, C))
        flag1  = true;
        break;
    end
end
% Checking P2 in triangle P1

A = threed(P2(1,:)); B = threed(P2(2,:)); C = threed(P2(3,:));
 
for i =1:length(P1)
    P = threed(P1(i,:));
    if(point_in_triangle(P, A, B, C))
        flag2  = true;
        break;
    end
end

flag = flag1 || flag2;

% *******************************************************************
end
