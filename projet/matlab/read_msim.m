fid=fopen('sinus_10khz_sim.lst');
data = textscan(fid, '%f %f %f');
fclose(fid);
plot(data{1},data{3});