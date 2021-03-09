%initialising the values

newc_1 = cosd(theta_1_1);
newc_2 = cosd(theta_2_1);
newc_3 = cosd(theta_3_1);
newc_4 = cosd(theta_4_1);
newc_5 = cosd(theta_5_1);
newc_6 = cosd(theta_6_1);

news_1 = sind(theta_1_1);
news_2 = sind(theta_2_1);
news_3 = sind(theta_3_1);
news_4 = sind(theta_4_1);
news_5 = sind(theta_5_1);
news_6 = sind(theta_6_1);


%% Determining DH for the first 3 links
A_01 = [newc_1 0 -news_1 0; news_1 0 newc_1 0; 0 -1 0 0; 0 0 0 1];

A_12 = [newc_2 -news_2 0 (a_2*newc_2); news_2 newc_2 0 (a_2*news_2); 0 0 1 d_2; 0 0 0 1];

A_23 = [newc_3 0 news_3 0; news_3 0 -newc_3 0; 0 1 0 0; 0 0 0 1];


% Combining
A_03 = A_01*A_12*A_23;

%% Determining DH for the last 3 links

A_34 = [newc_4 0 -news_4 0; news_4 0 newc_4 0; 0 -1 0 d_4; 0 0 0 1];

A_45 = [newc_5 0 news_5 0; news_5 0 -newc_5 0; 0 1 0 0; 0 0 0 1];

A_56 = [newc_6 -news_6 0 0; news_6 newc_6 0 0; 0 0 1 d_6; 0 0 0 1];


%Combining
A_36 = A_34*A_45*A_56;


%% Combining these to form the origial DH used in the inverse
T
new_T = A_03*A_36




