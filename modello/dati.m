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

% Geometry
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
steam_generator.p = 34.417e-3;




%% SLAVE TUBE DATA
steam_generator.slave_tube.external_diameter_m = 9.52e-3;
steam_generator.slave_tube.wall_thickness_m = 1.07e-3;

steam_generator.slave_tube.outer_radius_m = ...
    steam_generator.slave_tube.external_diameter_m / 2;

steam_generator.slave_tube.inner_radius_m = ...
    (data.steam_generator.slave_tube.external_diameter_m - ...
    2*data.steam_generator.slave_tube.wall_thickness_m) / 2;


%% INNER TUBE DATA
steam_generator.inner_tube.inner_diameter_m = 19.05e-3;