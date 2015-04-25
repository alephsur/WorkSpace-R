
pollutantmean<-function(directory,pollutant, id=1:332){
  mean<-0
  readItems<-0
  
  for(i in id){
    
    data<- read.csv(paste(paste(directory,"\\",sep=""),paste(sprintf("%03d", i),".csv",sep=""),sep=""))
    for(i in seq_len(nrow(data))){
      if(is.na(data[i,pollutant])== FALSE){
      mean <- mean + data[i,pollutant]
      readItems<-readItems+1
      }
    }
  }
  print (round(mean/readItems,3))
}

