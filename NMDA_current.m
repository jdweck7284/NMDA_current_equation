function [ NMDA_current] = NMDA_current(time, tjfire)

front_constant = 1;
tdelay = 0.5;
tNMDAf = 7.0;
tNMDAr = 1.0;

NMDA_current = front_constant .* exp(- (time - tjfire - tdelay) / (tNMDAf)) .^ (1-exp(-(time - tjfire - tdelay) / (tNMDAr)));

end

