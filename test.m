T = 325.15;
P = 101.15;
file = fopen('data.txt', 'w')
fprintf(file, '--------------------')
fprintf(file, 'System Conditions')
fprintf(file, 'Temperature : %.1f K\n', T)
fprintf(file, 'Pressure : %.1f kPa\n', P)
fprintf(file, '--------------------')
fclose(file)