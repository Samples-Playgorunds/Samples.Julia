
filename="../externals/Core.Math.Data/data/Pejcic_318.csv"
# "r" for reading
data_read = open(filename, "r") do file   
    # attention that it can be used only once. The second time, without reopening the file, 
    # read() would return an empty string
    filecontent = read(file,String) 
    print(filecontent)
  end

data_read_01 = CSV.read(filename, copycols = true)
