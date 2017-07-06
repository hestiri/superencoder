### here we input reference ranges

ref.range = data.frame(rbind(c("786-4","Mean corpuscular hemoglobin concentration",32,36,0,108),#3 times more and 0
                             c("1751-7", "Human serum albumin",3.5,5,0,15),#3 times more and 0
                             c("2028-9","Carbon dioxide, total",33,51,0,153),#3 times more and 0
                             c("2093-3","Total cholesterol",120,250,10,750),#3 times more and 10
                             c("2075-0","Chloride",95,110,10,330),#3 times more and 10
                             c("2823-3","Potassium",3.5,5.1,0,15.3),#3 times more and 0
                             c("2862-1", "Albumin",3.5,5.5,0,16.5),#3 times more and 0
                             c("2947-0", "Sodium",135,147,10,471),#3 times more and 10
                             c("DIASTOLIC","Diastolic BP",50,90,0,270),#3 times more and 0
                             c("SYSTOLIC","Systolic BP",75,115,10,345),#3 times more and 10
                             c("17861-6", "Calcium",8.4,10.5,0,31.5),#3 times more and 0
                             c("704-7", "Basophils [#/Volume]",0,0.75,0,0.75),#ranges
                             c("706-2", "Basophils/100 Leukocytes",0,2,0,6),#3 times more and 0
                             c("718-7", "Hemoglobin",12,16,0,48),#3 times more and 0
                             c("30313-1", "Hemoglobin",12,16,0,48),#3 times more and 0
                             c("736-9", "Lymphocytes/100 Leukocytes",16,45,0,100),#this is percent
                             c("737-7", "Lymphocytes/100 Leukocytes",16,45,0,100),#this is percent
                             c("778-1", "Platelet count (Plt)",140,450,0,900),#2 times more and 0
                             c("787-2", "Mean cell volume (MCV)",76,102,0,306),#3 times more and 0
                             c("789-8", "Red blood cells (RBC)",3.5,6.9,0,20.8),#3 times more and 0
                             c("1959-6", "Bicarbonate (HCO3)",18,23,0,69),#3 times more and 0
                             c("1791-1", "Unconjugated bilirubin",0.1,1.4,0,4.2),#3 times more and 0
                             c("2085-9", "HDL cholesterol",35,86,0,258),#3 times more and 0
                             c("2089-1", "LDL cholesterol",80,130,0,390),#3 times more and 0
                             c("WT", "Weight",0.62,1300,0.62,1300),
#                              c("HT", "Height",0.5,110),
                             c("MTHU000049", "eGFR",15,90,0,270),#3 times more and 0
                             c("BMI", "BMI",8,204,8,204),
                             
                             c("15152-2","Bilirubin Conjugated",0,0.4,0,1.2)#3 times more and 0
))
ref.range$row.names = NULL
colnames(ref.range) = c("base.code","name","low","high","low.implaus","high.implaus")
str(ref.range)
ref.range$low = as.numeric(as.character(ref.range$low))
ref.range$high = as.numeric(as.character(ref.range$high))
ref.range$low.implaus = as.numeric(as.character(ref.range$low.implaus))
ref.range$high.implaus = as.numeric(as.character(ref.range$high.implaus))

observ = c(as.character(ref.range$base.code))

