%% calcolo dei parametri utlili per il modello


%% wetted area
Om = sqrt(3)/4*steam_generator.p^2 - (pi/2)*(steam_generator.outermost_tube.outer_radius_m^2);
Om_tot = Om * steam_generator.Nt*2;  %%% !!! facciamo un check (vd paper analytic approach...)

%% velocità piombo nel SG
v_pb = core.coolant_mass_flow_kg_s/((materiali.pb.rho(4)*Om_tot)*8);