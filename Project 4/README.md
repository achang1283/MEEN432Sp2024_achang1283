## Project 4 
To run the simulation open P4sim and run the code. Although the simulink model and supporting code has been implemented there has been on consistent error that has led to the simulation not running correctly. 
When trying to run the simulation the error: algebraic loop error is consistently raised. The error stems from the Longitudinal Dynamics system where the electric motor and battery interact. 
The main issue is that electric motor requires voltage from battery and the battery requries current from the motor. This creates a loop that can't be solved. I tried various ways to fix it such as implementing an initial condition,
however the issue remained. I have put in alot of time regarding the other systems but it is a shame that this one error is casuing the whole simulation from running. 
