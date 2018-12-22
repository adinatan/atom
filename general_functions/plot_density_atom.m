%% plot_density_atom.m
% * This function is used to plot density profiles in the X|Y|Z-direction
%
%% Version
% 2.0
%
%% Contact
% Please report bugs to michael.holmboe@umu.se
%
%% Examples
% # plot_density_atom(atom,Box_dim)

function plot_density_atom(atom,Box_dim,varargin)

hold off

if nargin > 2
   scalefactor=varargin{1};
else
   scalefactor=1; 
end

plot_atom(atom,Box_dim,scalefactor);

if nargin>3
    scalehist=varargin{2};
else
    scalehist=10;
end

if nargin>4
    ind=varargin{3};
else
    ind=1:size(atom,2);
end

[dx,x,dy,y,dz,z] = hist_atom(atom,Box_dim,.2,[0 0 0],0,2); % binsize,[center_x center_y center_z],symmetric,gaussian deconv)

hold on

if numel(unique([atom.type]))==1
    color = element_color([atom(1).type]);
    plot3(dx,Box_dim(1,2)*ones(numel(x),1),x/scalehist+Box_dim(1,3)+1,'Color',color,'LineWidth',2);
    plot3(zeros(numel(y),1),dy,y/scalehist+Box_dim(1,3)+1,'Color',color,'LineWidth',2);
    plot3(z/scalehist+Box_dim(1,1)+1,Box_dim(1,2)*ones(numel(z),1),dz,'Color',color,'LineWidth',2);
else
    plot3(dx,Box_dim(1,2)*ones(numel(x),1),x/scalehist+Box_dim(1,3)+1,'r','LineWidth',2);
    plot3(zeros(numel(y),1),dy,y/scalehist+Box_dim(1,3)+1,'g','LineWidth',2);
    plot3(z/scalehist+Box_dim(1,1)+1,Box_dim(1,2)*ones(numel(z),1),dz,'b','LineWidth',2);
end
axis([-5 ceil(max(z/scalehist+Box_dim(1,1)+1)/10)*10 -5 ceil(max(z/scalehist+Box_dim(1,1)+1)/10)*10 -5 ceil(max(x/scalehist+Box_dim(1,3)+1)/10)*10]);

fig = gcf;fig.Color = [0.85 0.85 0.85];
set(gca,'Color',[0.85 0.85 0.85]);
xlabel('X'); ylabel('Y'); zlabel('Z');
