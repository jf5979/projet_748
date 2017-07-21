%fid=fopen('sinus_10khz_sim.lst');
fid=fopen('41_ms_adsr');
data = textscan(fid, '%f %f %f','headerLines', 8);
fclose(fid);
%plot(data{1},data{3},data{1},data{4});
plot(data{1},data{3});