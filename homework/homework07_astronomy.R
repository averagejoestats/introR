
# read in sol_data.csv
# Data comes from here:
# https://www.kaggle.com/datasets/jaredsavage/solar-system-major-bodies-data


# create three new columns - dim1, dim2, dim3 by splitting
# up the dimension column into its components separated by 'x'
# Hint: use strsplit and sapply in your answer


# convert the discovery_date column to date format. Pay attention to the formatting.
# if any information is missing, input 01 for month and/or 01 for day
# if the date is completely missing, it should say NA


# make a numeric year column


# plot mass against year. Take an appropriate transformation


# reproduce this table that has information about the 40 largest objects in the solar system

           Name   Semi-Major Axis     Eccen.        Mass      Volume     Density      Discovered
------------------------------------------------------------------------------------------------
            Sun         0.000e+00      0.000   1.990e+30   1.410e+18       1.408              NA
        Jupiter         7.783e+08      0.049   1.900e+27   1.430e+15       1.326              NA
         Saturn         1.427e+09      0.057   5.680e+26   8.270e+14       0.687              NA
        Neptune         4.498e+09      0.011   1.020e+26   6.250e+13       1.638      1846-09-23
         Uranus         2.871e+09      0.046   8.680e+25   6.830e+13       1.270      1781-03-13
          Earth         1.496e+08      0.017   5.970e+24   1.080e+12       5.514              NA
          Venus         1.082e+08      0.007   4.870e+24   9.280e+11       5.243              NA
           Mars         2.279e+08      0.093   6.420e+23   1.630e+11       3.934              NA
        Mercury         5.791e+07      0.206   3.300e+23   6.083e+10       5.429              NA
       Ganymede         1.070e+06      0.001   1.480e+23          NA       1.940      1610-01-11
          Titan         1.222e+06      0.029   1.350e+23          NA       1.880      1655-03-25
       Callisto         1.883e+06      0.007   1.080e+23          NA       1.830      1610-01-07
             Io         4.218e+05      0.004   8.930e+22          NA       3.530      1610-01-07
           Moon         3.844e+05      0.055   7.350e+22   2.197e+10       3.344              NA
         Europa         6.711e+05      0.009   4.800e+22          NA       3.010      1610-01-08
         Triton         3.548e+05      0.000   2.140e+22          NA       2.050      1846-10-10
    136199 Eris         1.018e+10      0.441   1.660e+22   6.590e+09       2.520      2005-01-05
          Pluto         5.906e+09      0.249   1.300e+22   7.150e+09       1.890      1930-02-18
136472 Makemake         6.783e+09      0.156   4.400e+21   1.700e+09       1.400      2005-03-31
  136108 Haumea         6.432e+09      0.191   4.010e+21   2.400e+09       2.600      2004-12-28
        Titania         4.363e+05      0.001   3.420e+21          NA       1.660      1787-01-11
         Oberon         5.835e+05      0.001   2.880e+21          NA       1.560      1787-01-11
           Rhea         5.271e+05      0.001   2.300e+21          NA       1.240      1672-12-23
        Iapetus         3.561e+06      0.028   1.810e+21          NA       1.090      1671-10-25
          Ariel         1.909e+05      0.001   1.290e+21          NA       1.590      1851-10-24
        Umbriel         2.660e+05      0.004   1.220e+21          NA       1.460      1851-10-24
          Dione         3.774e+05      0.002   1.100e+21          NA       1.480      1684-03-21
        1 Ceres         4.137e+08      0.076   9.390e+20   4.210e+09       2.161      1801-01-01
         Tethys         2.947e+05      0.000   6.180e+20          NA       0.985      1684-03-21
      Enceladus         2.380e+05      0.004   1.080e+20          NA       1.610      1789-08-28
        Miranda         1.299e+05      0.001   6.600e+19          NA       1.200      1948-02-16
        Proteus         1.176e+05      0.000   5.000e+19          NA       1.000      1989-06-16
          Mimas         1.855e+05      0.020   3.790e+19          NA       1.150      1789-09-17
         Nereid         5.514e+06      0.751   3.000e+19          NA       1.000      1949-05-01
        Perdita         7.642e+04      0.000   1.800e+19          NA       1.000      1986-01-18
        Himalia         1.146e+07      0.162   9.500e+18          NA       1.000      1904-12-03
         Phoebe         1.295e+07      0.164   8.290e+18          NA       1.640      1899-03-17
       Amalthea         1.814e+05      0.003   7.500e+18          NA       3.100      1892-09-09
       Hyperion         1.501e+06      0.104   5.600e+18          NA       0.550      1848-09-16
        Larissa         7.355e+04      0.001   5.000e+18          NA       1.000      1981-05-24



# Pick out an interesting-looking object from this table and look up some information about it.
# You don't need to write anything for this part!





# read in asteroid_data.csv
# Data comes from here:
# https://ssd.jpl.nasa.gov/tools/sbdb_query.html


# Get the numeric value of the first digit (in scientific notation) of the volume variable


# Make a histogram of the value of the first digit. Make sure you set breaks to a high number


# Read the wikipedia article about Benford's law. How close are the frequencies of digits to that
# predicted by Benford's law? Make a table of observed proportions and Benford's law proportions.

