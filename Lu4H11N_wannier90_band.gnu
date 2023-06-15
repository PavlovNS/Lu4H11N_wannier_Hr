set style data dots
set nokey
set xrange [0: 4.723]
set yrange [ -6 : 2]
set xrange [ 0.0 : 4.723]
set xtics ("{/Symbol G}" 0.0, "X" 0.625, "M" 1.249, "{/Symbol G}" 2.133,\
           "R"  3.215, "X|R" 4.098, "M" 4.723)

  set xzeroaxis lt -1
  set yzeroaxis lt -1
  set grid xtics lc rgb "#555555" lw 1 lt 0 
  set grid ytics lc rgb "#555555" lw 1 lt 0 
 
     plot "Lu4H11N_wannier90_band.dat" u 1:($2-2.731682)  w l lc rgb 'red' lw 4 t 'wannier projected bands'

 pause -1
    # SAVE to FILE
 set terminal postscript eps color enhanced
 set output "Lu4H11N_wannier90_band.eps"

     plot "Lu4H11N_wannier90_band.dat" u 1:($2-2.731682)  w l lc rgb 'red' lw 4 t 'wannier projected bands'