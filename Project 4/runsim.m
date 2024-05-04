function runsim()
Time = evalin('base', 'Time');
sname = "Proj_4";
open_system(sname);
sim_config = getActiveConfigSet(sname);
set_param(sim_config, 'StopTime', num2str(Time(end)));
simout = sim(sname);
assignin('base', 'sim_out', simout);
end