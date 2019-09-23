#!/bin/bash

export RERUN=RC/w_2019_38/DM-21386

export VVDS_G=6320^34338^34342^34362^34366^34382^34384^34400^34402^34412^34414^34422^34424^34448^34450^34464^34468^34478^34480^34482^34484^34486
export VVDS_R=7138^34640^34644^34648^34652^34664^34670^34672^34674^34676^34686^34688^34690^34698^34706^34708^34712^34714^34734^34758^34760^34772
export VVDS_I=35870^35890^35892^35906^35936^35950^35974^36114^36118^36140^36144^36148^36158^36160^36170^36172^36180^36182^36190^36192^36202^36204^36212^36214^36216^36218^36234^36236^36238^36240^36258^36260^36262
export VVDS_Z=36404^36408^36412^36416^36424^36426^36428^36430^36432^36434^36438^36442^36444^36446^36448^36456^36458^36460^36466^36474^36476^36480^36488^36490^36492^36494^36498^36504^36506^36508^38938^38944^38950
export VVDS_Y=34874^34942^34944^34946^36726^36730^36738^36750^36754^36756^36758^36762^36768^36772^36774^36776^36778^36788^36790^36792^36794^36800^36802^36808^36810^36812^36818^36820^36828^36830^36834^36836^36838

export GAMA_G=26024^26028^26032^26036^26044^26046^26048^26050^26058^26060^26062^26070^26072^26074^26080^26084^26094
export GAMA_R=23864^23868^23872^23876^23884^23886^23888^23890^23898^23900^23902^23910^23912^23914^23920^23924^28976
export GAMA_I=1258^1262^1270^1274^1278^1280^1282^1286^1288^1290^1294^1300^1302^1306^1308^1310^1314^1316^1324^1326^1330^24494^24504^24522^24536^24538
export GAMA_Z=23212^23216^23224^23226^23228^23232^23234^23242^23250^23256^23258^27090^27094^27106^27108^27116^27118^27120^27126^27128^27130^27134^27136^27146^27148^27156
export GAMA_Y=380^384^388^404^408^424^426^436^440^442^446^452^456^458^462^464^468^470^472^474^478^27032^27034^27042^27066^27068

export COSMOS_G=11690^11692^11694^11696^11698^11700^11702^11704^11706^11708^11710^11712^29324^29326^29336^29340^29350
export COSMOS_R=1202^1204^1206^1208^1210^1212^1214^1216^1218^1220^23692^23694^23704^23706^23716^23718
export COSMOS_I=1228^1230^1232^1238^1240^1242^1244^1246^1248^19658^19660^19662^19680^19682^19684^19694^19696^19698^19708^19710^19712^30482^30484^30486^30488^30490^30492^30494^30496^30498^30500^30502^30504
export COSMOS_Z=1166^1168^1170^1172^1174^1176^1178^1180^1182^1184^1186^1188^1190^1192^1194^17900^17902^17904^17906^17908^17926^17928^17930^17932^17934^17944^17946^17948^17950^17952^17962
export COSMOS_Y=318^322^324^326^328^330^332^344^346^348^350^352^354^356^358^360^362^1868^1870^1872^1874^1876^1880^1882^11718^11720^11722^11724^11726^11728^11730^11732^11734^11736^11738^11740^22602^22604^22606^22608^22626^22628^22630^22632^22642^22644^22646^22648^22658^22660^22662^22664
export COSMOS_N=23038^23040^23042^23044^23046^23048^23050^23052^23054^23056^23594^23596^23598^23600^23602^23604^23606^24298^24300^24302^24304^24306^24308^24310^25810^25812^25814^25816

makeSkyMap.py /datasets/hsc/repo --rerun $RERUN --calib /datasets/hsc/repo/CALIB/ 

singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmVG --id visit=$VVDS_G ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmVR --id visit=$VVDS_R ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmVI --id visit=$VVDS_I ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmVZ --id visit=$VVDS_Z ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmVY --id visit=$VVDS_Y ccd=0..8^10..103 --cores 70 --time 900 
##
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmGG --id visit=$GAMA_G ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmGR --id visit=$GAMA_R ccd=0..8^10..103 --cores 70  --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmGI --id visit=$GAMA_I ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmGZ --id visit=$GAMA_Z ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmGY --id visit=$GAMA_Y ccd=0..8^10..103 --cores 70 --time 900 

singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmCG --id visit=$COSMOS_G ccd=0..8^10..103 --cores 70  --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmCR --id visit=$COSMOS_R ccd=0..8^10..103 --cores 70  --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmCI --id visit=$COSMOS_I ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmCZ --id visit=$COSMOS_Z ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmCY --id visit=$COSMOS_Y ccd=0..8^10..103 --cores 70 --time 900 
singleFrameDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN-sfm --batch-type slurm --mpiexec='-bind-to socket' --job sfmCN --id visit=$COSMOS_N ccd=0..8^10..103 --cores 70 --time 900 


jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=26024^26028^26032^26036^26044^26046^26048^26050^26058^26060^26062^26070^26072^26074^26080^26084^26094 filter=HSC-G tract=9615 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=1258^1262^1270^1274^1278^1280^1282^1286^1288^1290^1294^1300^1302^1306^1308^1310^1314^1316^1324^1326^1330^24494^24504^24522^24536^24538 filter=HSC-I tract=9615 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=23864^23868^23872^23876^23884^23886^23888^23890^23898^23900^23902^23910^23912^23914^23920^23924^28976 filter=HSC-R tract=9615 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=380^384^388^404^408^424^426^436^440^442^446^452^456^458^462^464^468^470^472^474^478^27032^27034^27042^27066^27068 filter=HSC-Y tract=9615 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=23212^23216^23224^23226^23228^23232^23234^23242^23250^23256^23258^27090^27094^27106^27108^27116^27118^27120^27126^27128^27130^27134^27136^27146^27148^27156 filter=HSC-Z tract=9615 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=6320^34338^34342^34362^34366^34382^34384^34400^34402^34412^34414^34422^34424^34448^34450^34464^34468^34478^34480^34482^34484^34486 filter=HSC-G tract=9697 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=35870^35890^35892^35906^35936^35950^35974^36114^36118^36140^36144^36148^36158^36160^36170^36172^36180^36182^36190^36192^36202^36204^36212^36214^36216^36218^36234^36236^36238^36240^36258^36260^36262 filter=HSC-I tract=9697 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=7138^34640^34644^34648^34652^34664^34670^34672^34674^34676^34686^34688^34690^34698^34706^34708^34712^34714^34734^34758^34760^34772 filter=HSC-R tract=9697 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=34874^34942^34944^34946^36726^36730^36738^36750^36754^36756^36758^36762^36768^36772^36774^36776^36778^36788^36790^36792^36794^36800^36802^36808^36810^36812^36818^36820^36828^36830^36834^36836^36838 filter=HSC-Y tract=9697 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=36404^36408^36412^36416^36424^36426^36428^36430^36432^36434^36438^36442^36444^36446^36448^36456^36458^36460^36466^36474^36476^36480^36488^36490^36492^36494^36498^36504^36506^36508^38938^38944^38950 filter=HSC-Z tract=9697 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=11690^11692^11694^11696^11698^11700^11702^11704^11706^11708^11710^11712^29324^29326^29336^29340^29350 filter=HSC-G tract=9813 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=1228^1230^1232^1238^1240^1242^1244^1246^1248^19658^19660^19662^19680^19682^19684^19694^19696^19698^19708^19710^19712^30482^30484^30486^30488^30490^30492^30494^30496^30498^30500^30502^30504 filter=HSC-I tract=9813 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=1202^1204^1206^1208^1210^1212^1214^1216^1218^1220^23692^23694^23704^23706^23716^23718 filter=HSC-R tract=9813 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=318^322^324^326^328^330^332^344^346^348^350^352^354^356^358^360^362^1868^1870^1872^1874^1876^1880^1882^11718^11720^11722^11724^11726^11728^11730^11732^11734^11736^11738^11740^22602^22604^22606^22608^22626^22628^22630^22632^22642^22644^22646^22648^22658^22660^22662^22664 filter=HSC-Y tract=9813 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=1166^1168^1170^1172^1174^1176^1178^1180^1182^1184^1186^1188^1190^1192^1194^17900^17902^17904^17906^17908^17926^17928^17930^17932^17934^17944^17946^17948^17950^17952^17962 filter=HSC-Z tract=9813 
jointcal.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm:$RERUN --id ccd=0..8^10..103 visit=23038^23040^23042^23044^23046^23048^23050^23052^23054^23056^23594^23596^23598^23600^23602^23604^23606^24298^24300^24302^24304^24306^24308^24310^25810^25812^25814^25816 filter=NB0921 tract=9813 


skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$VVDS_G --job skyVG 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$VVDS_R --job skyVR 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$VVDS_I --job skyVI 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$VVDS_Z --job skyVZ 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$VVDS_Y --job skyVY 
#
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24  --id visit=$GAMA_G --job skyGG
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24  --id visit=$GAMA_R --job skyGR
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24  --id visit=$GAMA_I --job skyGI
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24  --id visit=$GAMA_Z --job skyGZ
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24  --id visit=$GAMA_Y --job skyGY 

skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$COSMOS_G --job skyCG 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$COSMOS_R --job skyCR 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$COSMOS_I --job skyCI 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$COSMOS_Z --job skyCZ 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$COSMOS_N --job skyCN 
skyCorrection.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB --rerun $RERUN-sfm --batch-type=slurm --mpiexec='-bind-to socket' --time 90 --cores 24 --id visit=$COSMOS_Y --job skyCY 




coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddVG --time 500 --cores 24  --id tract=9697  filter=HSC-G --selectId ccd=0..8^10..103 visit=$VVDS_G  --no-versions 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddVR --time 500 --cores 24  --id tract=9697  filter=HSC-R --selectId ccd=0..8^10..103 visit=$VVDS_R  
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddVI --time 500 --cores 24  --id tract=9697  filter=HSC-I --selectId ccd=0..8^10..103 visit=$VVDS_I  
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddVZ --time 500 --cores 24  --id tract=9697  filter=HSC-Z --selectId ccd=0..8^10..103 visit=$VVDS_Z 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddVY --time 500 --cores 24  --id tract=9697  filter=HSC-Y --selectId ccd=0..8^10..103 visit=$VVDS_Y 
##
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddGG --time 500 --cores 24  --id tract=9615  filter=HSC-G --selectId ccd=0..8^10..103 visit=$GAMA_G 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddGR --time 500 --cores 24  --id tract=9615  filter=HSC-R --selectId ccd=0..8^10..103 visit=$GAMA_R 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddGI --time 500 --cores 24  --id tract=9615  filter=HSC-I --selectId ccd=0..8^10..103 visit=$GAMA_I  
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddGZ --time 500 --cores 24  --id tract=9615  filter=HSC-Z --selectId ccd=0..8^10..103 visit=$GAMA_Z 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddGY --time 500 --cores 24  --id tract=9615  filter=HSC-Y --selectId ccd=0..8^10..103 visit=$GAMA_Y 
####
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job coaddCG --time 600 --cores 24  --id tract=9813 filter=HSC-G --selectId ccd=0..8^10..103 visit=$COSMOS_G  
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN  --batch-type=slurm --mpiexec='-bind-to socket' --job coaddCR --time 600 --cores 24  --id tract=9813 filter=HSC-R --selectId ccd=0..8^10..103 visit=$COSMOS_R 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN    --batch-type=slurm --mpiexec='-bind-to socket' --job coaddCI --time 600 --cores 24  --id tract=9813 filter=HSC-I --selectId ccd=0..8^10..103 visit=$COSMOS_I  
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN    --batch-type=slurm --mpiexec='-bind-to socket' --job coaddCZ --time 600 --cores 24  --id tract=9813 filter=HSC-Z --selectId ccd=0..8^10..103 visit=$COSMOS_Z 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN    --batch-type=slurm --mpiexec='-bind-to socket' --job coaddCY --time 600 --cores 24  --id tract=9813 filter=HSC-Y --selectId ccd=0..8^10..103 visit=$COSMOS_Y 
coaddDriver.py  /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN    --batch-type=slurm --mpiexec='-bind-to socket' --job coaddCN --time 600 --cores 24  --id tract=9813 filter=NB0921 --selectId ccd=0..8^10..103 visit=$COSMOS_N 



multiBandDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job mtCosmos --nodes 7 --procs 8 --time 45000 --id tract=9813 filter=HSC-G^HSC-R^HSC-I^HSC-Z^HSC-Y^NB0921 

multiBandDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job mtVvds --node 9 --procs 10 --time 24000 --id tract=9697 filter=HSC-G^HSC-R^HSC-I^HSC-Z^HSC-Y 

multiBandDriver.py /datasets/hsc/repo --calib /datasets/hsc/repo/CALIB/ --rerun $RERUN --batch-type=slurm --mpiexec='-bind-to socket' --job mtGama --node 9 --procs 10 --time 24000 --id tract=9615 filter=HSC-G^HSC-R^HSC-I^HSC-Z^HSC-Y 
