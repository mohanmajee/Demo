for files in *.* 
do
	stage1_review=` echo $files | awk -F. '{print $1}'`
	
	echo $stage1_review;
	echo $subfolder;
	if [ -d $stage1_review ]
	then
		rm -r $stage1_review;
        fi
	mkdir -p $stage1_review/$subfolder;
	cp $files $stage1_review/$subfolder

done
