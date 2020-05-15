## Simple discrete time SIR model
## Jem and Abi
## May 2020

tstart = 1
tend = 20

timestep_reduction = 5 #default is to measure by day

# gamma = 0.5 / day means that mean mean recovery time is 2 days
# now shift to 1/5th days i.e. reduction by a factor of 5
# gamma_new = 0.5 / 5 so mean number of timesteps to recovery is 10 (which is 2 days)

timesteps = seq(tstart, tend, 1/timestep_reduction)
variables = 3 #S I R

SIR = array(dim = c(length(timesteps),variables))

colnames(SIR) = c("S", "I", "R")

S0 = 990
I0 = 10
R0 = 0

SIR[1,] = c(S0, I0, R0)

# time in I_P ~ 2 days
# time in I_M ~ 7 days
# time in I_C ~ 7 days
# 15% of E goes to I_A
# 10% of I_M goes to critical

beta = 3 / timestep_reduction
gamma = .5 / timestep_reduction

for(t_index in seq(2,nrow(SIR))){
  N = sum(SIR[t_index-1,])
  S = SIR[t_index - 1, "S"]
  I = SIR[t_index - 1, "I"]
  R = SIR[t_index - 1, "R"]
  SIR[t_index, "S"] = S * (1 - beta *I /N)
  SIR[t_index, "I"] = I + S*beta*I/N - gamma*I
  SIR[t_index, "R"] = R + gamma*I
}

plot(timesteps, SIR[, "S"], type = 'l', ylab = c(0, max(SIR)))
lines(timesteps, SIR[, "I"])

