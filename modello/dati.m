%% materiali
% fluidi

% Colonna 1: Temperatura [°C] | Colonna 2: Densità [kg/m^3]
materiali.pb.rho = [400 10580; 480 10477];  %kg/m^3 cerchiamo una relazione migliore
materiali.pb.mu = [400 2.23e-3; 480 1.88e-3]; % ""

%% CORE DATA
core.thermal_power_MW = 300;
core.coolant_mass_flow_kg_s = 25984;
core.number_of_FAs = 171;
core.pins_per_FA = 127;
core.coolant_inlet_temperature_C = 400;
core.coolant_outlet_temperature_C = 480;


%% PIN DATA
% Materials
pin.cladding_material = "15-15-Ti";
pin.fuel_material = "MOX";

%% Geometry
pin.cladding_outer_radius_m = 5.25e-3;
pin.cladding_inner_radius_m = 4.65e-3;
pin.pellet_outer_radius_m = 4.50e-3;
pin.pellet_inner_radius_m = 1e-3;
pin.height_m = 0.6;



%% STEAM GENERATOR DATA
steam_generator.power_MW = 37.5;
steam_generator.feedwater_inlet_temperature_C = 335;
steam_generator.feedwater_outlet_temperature_C = 450;
steam_generator.pressure_bar = 180;
steam_generator.Nt = 510;
steam_generator.coolant_mass_flow_kg_s = core.coolant_mass_flow_kg_s /8;



%% SLAVE TUBE DATA
steam_generator.slave_tube.external_diameter_m = 9.52e-3;
steam_generator.slave_tube.wall_thickness_m = 1.07e-3;

steam_generator.slave_tube.outer_radius_m = ...
    steam_generator.slave_tube.external_diameter_m / 2;

steam_generator.slave_tube.inner_radius_m = ...
    (steam_generator.slave_tube.external_diameter_m - ...
    2*steam_generator.slave_tube.wall_thickness_m) / 2;


%% INNER TUBE DATA
steam_generator.inner_tube.external_diameter_m = 19.05e-3;
steam_generator.inner_tube.wall_thickness_m = 1.88e-3;
steam_generator.inner_tube.outer_radius_m = ...
    steam_generator.inner_tube.external_diameter_m / 2;
steam_generator.inner_tube.inner_radius_m = ...
    (steam_generator.inner_tube.external_diameter_m - ...
    2*steam_generator.inner_tube.wall_thickness_m) / 2;

%% OUTER TUBE DATA
steam_generator.outer_tube.external_diameter_m = 25.40e-3;
steam_generator.outer_tube.wall_thickness_m = 1.88e-3;
steam_generator.outer_tube.outer_radius_m = ...
    steam_generator.outer_tube.external_diameter_m / 2;
steam_generator.outer_tube.inner_radius_m = ...
    (steam_generator.outer_tube.external_diameter_m - ...
    2*steam_generator.outer_tube.wall_thickness_m) / 2;

%% OUTERMOST TUBE DATA
steam_generator.outermost_tube.external_diameter_m = 31.73e-3;
steam_generator.outermost_tube.wall_thickness_m = 2.11e-3;
steam_generator.outermost_tube.outer_radius_m = ...
    steam_generator.outermost_tube.external_diameter_m / 2;
steam_generator.outermost_tube.inner_radius_m = ...
    (steam_generator.outermost_tube.external_diameter_m - ...
    2*steam_generator.outermost_tube.wall_thickness_m) / 2;

%% p/D
steam_generator.p_D = 1.4182;
steam_generator.p = steam_generator.p_D * steam_generator.outermost_tube.external_diameter_m;