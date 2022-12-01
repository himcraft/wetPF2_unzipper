#=====
unzip all found wetPf2 files in certain directory
=====#
cd("I:/CDAAC/COSMIC/Update/")
result=filter(isfile,readdir())
# "wetPf2_nrt_yyyy_ddd.tar.gz"
for name in result
    if(length(name)<10 || name[1:10]!="wetPf2_nrt")
        continue
    end
    fnm=name[12:15]*"."*name[17:19]
    mkdir("./$fnm")
    cmd=`tar -zxvf $name --directory ./$fnm`
    run(cmd)
end
