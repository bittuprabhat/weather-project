#!bin/bash
###module loaded
########################################
module load gnu/pythonpackages/2.7.9 gnu/packagesuite/1

module load gnu/matplotlib/2.2.2

module load gnu/scipy/1.0.0
module load gnu/netcdf4/1.3.1
module load gnu/pandas/0.18.1
module load gnu/basemap/1.1.0
module load gnu/pyproj/1.9.5.1
module load gnu/pil/1.1.7
module load gnu/cartopy/0.16.0


scripts='/home/bittu/RADAR/MOSAIC_NEW/SRI/scripts'
Log_dir='/home/bittu/RADAR/MOSAIC_NEW/SRI/log'

out='/home/bittu/RADAR/MOSAIC_NEW/SRI/output/'
file='/home/bittu/data/gts/'
###file='/scratch/bittu/DATA/gts/'

base1='/home/bittu/RADAR/MOSAIC_NEW/SRI/scripts/basemapindia_f1'
base2='/home/bittu/RADAR/MOSAIC_NEW/SRI/scripts/basemapindia_f2'

hrs=`date -u |awk '{print substr($4,0)}'|cut -d ":" -f 1`
##hrs=00

cdate=`date +%Y%m%d`

pdate=`date -d $cdate'-1 day' +'%Y%m%d'`

##cdate=20190207
##pdate=20190206

########################code script################
echo $hrs
if [ $hrs == 00 ]
then
   hr=$hrs

   echo "hour="$hr

   if [ $hr == 00 ]
   then
      cdate1=$pdate
      hr1=23
      echo $cdate1$hr1
      mkdir -p $Log_dir/$cdate1

      python $scripts/dems_run_grid.py $cdate1 $hr1 'DEMS' $out $file $base1 $base2 > $Log_dir/$cdate1/dems_run_"$hr1".log 2>&1 &

      python $scripts/vabb_run_grid.py $cdate1 $hr1 'VABB' $out $file $base1 $base2 > $Log_dir/$cdate1/vabb_run_"$hr1".log 2>&1 &

      python $scripts/vabj_run_grid.py $cdate1 $hr1 'VABJ' $out $file $base1 $base2 > $Log_dir/$cdate1/vabj_run_"$hr1".log 2>&1 &

      python $scripts/vabp_run_grid.py $cdate1 $hr1 'VABP' $out $file $base1 $base2 > $Log_dir/$cdate1/vabp_run_"$hr1".log 2>&1 &

      python $scripts/vago_run_grid.py $cdate1 $hr1 'VAGO' $out $file $base1 $base2 > $Log_dir/$cdate1/vago_run_"$hr1".log 2>&1 &

      python $scripts/vanp_run_grid.py $cdate1 $hr1 'VANP' $out $file $base1 $base2 > $Log_dir/$cdate1/vanp_run_"$hr1".log 2>&1 &

      python $scripts/veat_run_grid.py $cdate1 $hr1 'VEAT' $out $file $base1 $base2 > $Log_dir/$cdate1/veat_run_"$hr1".log 2>&1 &

      python $scripts/vebs_run_grid.py $cdate1 $hr1 'VEBS' $out $file $base1 $base2 > $Log_dir/$cdate1/vebs_run_"$hr1".log 2>&1 &

      python $scripts/vecc_run_grid.py $cdate1 $hr1 'VECC' $out $file $base1 $base2 > $Log_dir/$cdate1/vecc_run_"$hr1".log 2>&1 &

      python $scripts/vemn_run_grid.py $cdate1 $hr1 'VEMN' $out $file $base1 $base2 > $Log_dir/$cdate1/vemn_run_"$hr1".log 2>&1 &

      python $scripts/vept_run_grid.py $cdate1 $hr1 'VEPT' $out $file $base1 $base2 > $Log_dir/$cdate1/vept_run_"$hr1".log 2>&1 &

      python $scripts/vevz_run_grid.py $cdate1 $hr1 'VEVZ' $out $file $base1 $base2 > $Log_dir/$cdate1/vevz_run_"$hr1".log 2>&1 &

      python $scripts/vich_run_grid.py $cdate1 $hr1 'VICH' $out $file $base1 $base2 > $Log_dir/$cdate1/vich_run_"$hr1".log 2>&1 &

      python $scripts/vijp_run_grid.py $cdate1 $hr1 'VIJP' $out $file $base1 $base2 > $Log_dir/$cdate1/vijp_run_"$hr1".log 2>&1 &

      python $scripts/vilk_run_grid.py $cdate1 $hr1 'VILK' $out $file $base1 $base2 > $Log_dir/$cdate1/vilk_run_"$hr1".log 2>&1 &

      python $scripts/vohy_run_grid.py $cdate1 $hr1 'VOHY' $out $file $base1 $base2 > $Log_dir/$cdate1/vohy_run_"$hr1".log 2>&1 &

      python $scripts/vokl_run_grid.py $cdate1 $hr1 'VOKL' $out $file $base1 $base2 > $Log_dir/$cdate1/vokl_run_"$hr1".log 2>&1 &

      python $scripts/vomm_run_grid.py $cdate1 $hr1 'VOMM' $out $file $base1 $base2 > $Log_dir/$cdate1/vomm_run_"$hr1".log 2>&1 &

      python $scripts/vomp_run_grid.py $cdate1 $hr1 'VOMP' $out $file $base1 $base2 > $Log_dir/$cdate1/vomp_run_"$hr1".log 2>&1 &

      python $scripts/visr_run_grid.py $cdate1 $hr1 'VISR' $out $file $base1 $base2 > $Log_dir/$cdate1/visr_run_"$hr1".log 2>&1 &


   fi


else
   hrs1=`expr $hrs - 1`
   hr=$(printf "%02d" $hrs1);

   echo "hour="$hr

   if [ $hr == 18 ] || [ $hr == 19 ] || [ $hr == 20 ] || [ $hr == 21 ] || [ $hr == 22 ]
   then
   cdate1=$pdate
   hr1=$hr
   echo $cdate1$hr1

   mkdir -p $Log_dir/$cdate1

   python $scripts/dems_run_grid.py $cdate1 $hr1 'DEMS' $out $file $base1 $base2 > $Log_dir/$cdate1/dems_run_"$hr1".log 2>&1 &

   python $scripts/vabb_run_grid.py $cdate1 $hr1 'VABB' $out $file $base1 $base2 > $Log_dir/$cdate1/vabb_run_"$hr1".log 2>&1 &

   python $scripts/vabj_run_grid.py $cdate1 $hr1 'VABJ' $out $file $base1 $base2 > $Log_dir/$cdate1/vabj_run_"$hr1".log 2>&1 &

   python $scripts/vabp_run_grid.py $cdate1 $hr1 'VABP' $out $file $base1 $base2 > $Log_dir/$cdate1/vabp_run_"$hr1".log 2>&1 &

   python $scripts/vago_run_grid.py $cdate1 $hr1 'VAGO' $out $file $base1 $base2 > $Log_dir/$cdate1/vago_run_"$hr1".log 2>&1 &

   python $scripts/vanp_run_grid.py $cdate1 $hr1 'VANP' $out $file $base1 $base2 > $Log_dir/$cdate1/vanp_run_"$hr1".log 2>&1 &

   python $scripts/veat_run_grid.py $cdate1 $hr1 'VEAT' $out $file $base1 $base2 > $Log_dir/$cdate1/veat_run_"$hr1".log 2>&1 &

   python $scripts/vebs_run_grid.py $cdate1 $hr1 'VEBS' $out $file $base1 $base2 > $Log_dir/$cdate1/vebs_run_"$hr1".log 2>&1 &

   python $scripts/vecc_run_grid.py $cdate1 $hr1 'VECC' $out $file $base1 $base2 > $Log_dir/$cdate1/vecc_run_"$hr1".log 2>&1 &

   python $scripts/vemn_run_grid.py $cdate1 $hr1 'VEMN' $out $file $base1 $base2 > $Log_dir/$cdate1/vemn_run_"$hr1".log 2>&1 &

   python $scripts/vept_run_grid.py $cdate1 $hr1 'VEPT' $out $file $base1 $base2 > $Log_dir/$cdate1/vept_run_"$hr1".log 2>&1 &

   python $scripts/vevz_run_grid.py $cdate1 $hr1 'VEVZ' $out $file $base1 $base2 > $Log_dir/$cdate1/vevz_run_"$hr1".log 2>&1 &

   python $scripts/vich_run_grid.py $cdate1 $hr1 'VICH' $out $file $base1 $base2 > $Log_dir/$cdate1/vich_run_"$hr1".log 2>&1 &

   python $scripts/vijp_run_grid.py $cdate1 $hr1 'VIJP' $out $file $base1 $base2 > $Log_dir/$cdate1/vijp_run_"$hr1".log 2>&1 &

   python $scripts/vilk_run_grid.py $cdate1 $hr1 'VILK' $out $file $base1 $base2 > $Log_dir/$cdate1/vilk_run_"$hr1".log 2>&1 &

   python $scripts/vohy_run_grid.py $cdate1 $hr1 'VOHY' $out $file $base1 $base2 > $Log_dir/$cdate1/vohy_run_"$hr1".log 2>&1 &

   python $scripts/vokl_run_grid.py $cdate1 $hr1 'VOKL' $out $file $base1 $base2 > $Log_dir/$cdate1/vokl_run_"$hr1".log 2>&1 &

   python $scripts/vomm_run_grid.py $cdate1 $hr1 'VOMM' $out $file $base1 $base2 > $Log_dir/$cdate1/vomm_run_"$hr1".log 2>&1 &

   python $scripts/vomp_run_grid.py $cdate1 $hr1 'VOMP' $out $file $base1 $base2 > $Log_dir/$cdate1/vomp_run_"$hr1".log 2>&1 &

   python $scripts/visr_run_grid.py $cdate1 $hr1 'VISR' $out $file $base1 $base2 > $Log_dir/$cdate1/visr_run_"$hr1".log 2>&1 &


   else

      cdate1=$cdate
      hr1=$hr
      echo $cdate1$hr1
      mkdir -p $Log_dir/$cdate1

      python $scripts/dems_run_grid.py $cdate1 $hr1 'DEMS' $out $file $base1 $base2 > $Log_dir/$cdate1/dems_run_"$hr1".log 2>&1 &

      python $scripts/vabb_run_grid.py $cdate1 $hr1 'VABB' $out $file $base1 $base2 > $Log_dir/$cdate1/vabb_run_"$hr1".log 2>&1 &

      python $scripts/vabj_run_grid.py $cdate1 $hr1 'VABJ' $out $file $base1 $base2 > $Log_dir/$cdate1/vabj_run_"$hr1".log 2>&1 &

      python $scripts/vabp_run_grid.py $cdate1 $hr1 'VABP' $out $file $base1 $base2 > $Log_dir/$cdate1/vabp_run_"$hr1".log 2>&1 &

      python $scripts/vago_run_grid.py $cdate1 $hr1 'VAGO' $out $file $base1 $base2 > $Log_dir/$cdate1/vago_run_"$hr1".log 2>&1 &

      python $scripts/vanp_run_grid.py $cdate1 $hr1 'VANP' $out $file $base1 $base2 > $Log_dir/$cdate1/vanp_run_"$hr1".log 2>&1 &

      python $scripts/veat_run_grid.py $cdate1 $hr1 'VEAT' $out $file $base1 $base2 > $Log_dir/$cdate1/veat_run_"$hr1".log 2>&1 &

      python $scripts/vebs_run_grid.py $cdate1 $hr1 'VEBS' $out $file $base1 $base2 > $Log_dir/$cdate1/vebs_run_"$hr1".log 2>&1 &

      python $scripts/vecc_run_grid.py $cdate1 $hr1 'VECC' $out $file $base1 $base2 > $Log_dir/$cdate1/vecc_run_"$hr1".log 2>&1 &

      python $scripts/vemn_run_grid.py $cdate1 $hr1 'VEMN' $out $file $base1 $base2 > $Log_dir/$cdate1/vemn_run_"$hr1".log 2>&1 &

      python $scripts/vept_run_grid.py $cdate1 $hr1 'VEPT' $out $file $base1 $base2 > $Log_dir/$cdate1/vept_run_"$hr1".log 2>&1 &

      python $scripts/vevz_run_grid.py $cdate1 $hr1 'VEVZ' $out $file $base1 $base2 > $Log_dir/$cdate1/vevz_run_"$hr1".log 2>&1 &

      python $scripts/vich_run_grid.py $cdate1 $hr1 'VICH' $out $file $base1 $base2 > $Log_dir/$cdate1/vich_run_"$hr1".log 2>&1 &

      python $scripts/vijp_run_grid.py $cdate1 $hr1 'VIJP' $out $file $base1 $base2 > $Log_dir/$cdate1/vijp_run_"$hr1".log 2>&1 &

      python $scripts/vilk_run_grid.py $cdate1 $hr1 'VILK' $out $file $base1 $base2 > $Log_dir/$cdate1/vilk_run_"$hr1".log 2>&1 &

      python $scripts/vohy_run_grid.py $cdate1 $hr1 'VOHY' $out $file $base1 $base2 > $Log_dir/$cdate1/vohy_run_"$hr1".log 2>&1 &

      python $scripts/vokl_run_grid.py $cdate1 $hr1 'VOKL' $out $file $base1 $base2 > $Log_dir/$cdate1/vokl_run_"$hr1".log 2>&1 &

      python $scripts/vomm_run_grid.py $cdate1 $hr1 'VOMM' $out $file $base1 $base2 > $Log_dir/$cdate1/vomm_run_"$hr1".log 2>&1 &

      python $scripts/vomp_run_grid.py $cdate1 $hr1 'VOMP' $out $file $base1 $base2 > $Log_dir/$cdate1/vomp_run_"$hr1".log 2>&1 &

      python $scripts/visr_run_grid.py $cdate1 $hr1 'VISR' $out $file $base1 $base2 > $Log_dir/$cdate1/visr_run_"$hr1".log 2>&1 &


   fi
  

fi




exit
exit
