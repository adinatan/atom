%% Examples on how to manioulate the atom struct in various ways
% (For a full list of importing and exporting functions, go to 
% <List_general_functions.html List_general_functions> and the 
% <List_all_functions.html List_all_functions>

%% Manipulation of the <atom_variable.html atom> struct
% The <atom_variable.html atom> struct variable is an indexed Matlab struct variable
% that stores molecule attributes like atomtype names, moleculeID's, 
% atomID's, coordinates and more as indexed fields in the atom struct. 
% A brief list of functions that can be used to maniulate the 
% <atom_variable.html atom> is seen below.
%
% # <bond_valence_atom.html bond_valence_atom(atom,Box_dim,varargin)> % This function tries to calculate the bond valence values according to the bond valence method
% # <copy_atom.html copy_atom(atom,atomtype,new_atomtype,new_resname,trans_vec,varargin)> % This function copies and translates atoms in the atom struct
% # <find_bonded_atom.html find_bonded_atom(atom,bond_matrix,label1,label2)> % This function tries to find all bonds between the  atomtype1 and atomtype2.
% # <frac2atom.html frac2atom(atom,Box_dim,angleparam,angletype)> % This function transforms fractional coordinates to cartesian
% # <frame2atom.html frame2atom(atom,traj,frame,Box_dim,varargin)> % This function extracts a frame to the trajectory matrix
% # <keep_atom.html keep_atom(atom,resname)> %�keep_atom.m - This removes all but resname
% # <keep_resname.html keep_resname(atom,resnames)> % keep_resname.m - This removes all but the resnames
% # <reorder_atom.html reorder_atom(atom,atomlist)> %�This function reorders the atoms in the atom struct
% # <replace_atom.html replace_atom(new_atom,prev_atom,molid_index)> % This function replaces molid's in an atom struct with a new (single molid) atom struct by placing the latters COM in the formers place
% # <scale_atom.html scale_atom(atom,scale_vec,Box_dim,Resname)> %�This function scales the coordinates in the atom struct
% # <sigma_vdw.html sigma_vdw(Atom_label)> % This function fetches the sigma radius parameter, originally taken from the link below from 'A cartography of the van der Waals territories' Santiago Alvarez doi:10.1039/c3dt50599e
% # <slice_atom.html slice_atom(atom,limits,invert)> %�This function checks if the coordinates for each time record in XYZ_data is within the specified limits, and if not sets the x,y,z to nan,nan,nan.
% # <slice_triclinic_atom.html slice_triclinic_atom(atom,limits,invert)> % This function slices the atoms into the triclinic box.
% # <sort_atom.html sort_atom(atom)> %�sort_atom.m - This section orders to atoms with respect to z
% # <update_atom.html update_atom(atom)> %�This function updates the molid index and the atoms index in the atom struct
% # <vmd.html vmd(atom,Box_dim)> %�This function plots the atom struct
% # <wrap_atom.html wrap_atom(atom,Box_dim)> % This wraps the atoms into the orthogonal box
% # <xyz2atom.html xyz2atom(XYZ_labels,XYZ_data,Box_dim,resname,in_atom)> % This function can be used to add XYZ data (like from a .xyz structure file)to the atom struct format
% # <rename_type.html rename_type(atom,atomtype,new_atomtype,varargin)> %�This function renames atoms in the atom
% # <properties_atom.html properties_atom(atom,Box_dim,varargin)> % This function fetches various properties of the atoms in the atom struct, using for instance the bond valence method and for instance the radii originally taken from below	Revised effective ionic radii and systematic studies of interatomic distances in halides and chalcogenides. R. D. Shannon Acta Cryst. (1976) A32, 751-767.
% # <overwrite_atom.html overwrite_atom(In_atom,atomtype,resname)> % This function overwrites the atom struct information with new information�
