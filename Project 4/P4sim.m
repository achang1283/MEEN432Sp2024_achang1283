P4init();
Time = 200;
runsim();
animate();

path = struct('l_st',900,'width',15, 'radius', 200);

raceStat(sim_out.X.signals.values,sim_out.Y.signals.values,sim_out.X.time, path, simout);