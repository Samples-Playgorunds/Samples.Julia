# "r" for reading
data = open("../../../externals/Core.Math.Samples/data/Pejcic_318.csv", "r") do f   
    # attention that it can be used only once. The second time, without reopening the file, 
    # read() would return an empty string
    filecontent = read(f,String) 
    print(filecontent)
  end