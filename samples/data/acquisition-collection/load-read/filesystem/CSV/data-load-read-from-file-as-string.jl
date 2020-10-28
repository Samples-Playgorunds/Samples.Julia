
file_path = "../../../../../../externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV/Pejcic_318.csv"

data = open(file_path, "r") do f
    filecontent_as_string_local = read(f,String)
    print(filecontent_as_string_local)
  end
# following line would crash
# error:
# ERROR: LoadError: UndefVarError: filecontent_as_string_local not defined
# print(filecontent_as_string_local)


data = open(file_path, "r") do f
  global filecontent_as_string_global = read(f,String)
end
# no error, because filecontent_as_string_global is global variable (`global` keyword)
print(filecontent_as_string_global)


# "r" for reading
data_read = open(file_path, "r") do file   
    # attention that it can be used only once. The second time, without reopening the file, 
    # read() would return an empty string
    filecontent_as_string_local = read(file ,String) 
    println("filecontent_as_string_local = ")
    println(filecontent_as_string_local)
end


data_read = open(file_path, "r") do file   
  # attention that it can be used only once. The second time, without reopening the file, 
  # read() would return an empty string
  global filecontent_as_string_global = read(file ,String) 
end

println("filecontent_as_string_global = ")
println(filecontent_as_string_global)
