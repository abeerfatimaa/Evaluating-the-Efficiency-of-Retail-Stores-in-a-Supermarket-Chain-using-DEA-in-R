require(deaR)

ccr_model <- read_data(Retail, ni=2, no=2, dmus = 1, inputs = 2:3, outputs = 4:5)

#ni means number of inputs, no means number of outputs, dmus=1 means first column 
#in data consists of dmus, 2:3 means columns 2 to 3 in data are inputs 
#similarly 4:5 means column 4 to 5 in data are outputs

result_ccr <- model_basic(ccr_model, orientation ="io", rts = "crs", 
                          dmu_eval = 1:10, dmu_ref = 1:10)

#io means input oriented
#DEA models allow you to specify different assumptions about rts (returns to 
#scale) = crs (constant returns to scale) means efficiency remains same 
#regardless of we increase or decrease operations or inputs
#dmu_eval = 1:10, dmu_ref = 1:10 specifies that there are 10 Decision Making 
#Units (DMUs) to be evaluated (dmu_eval = 1:10) and each DMU is compared against
#itself as a reference (dmu_ref = 1:10) in the DEA model.

efficiencies(result_ccr)


