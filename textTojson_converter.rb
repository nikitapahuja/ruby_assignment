require 'json'
require 'yaml'
 
 
ifile='inputText.txt'
ofile='outputText.txt'
 
 
input_file = File.open(ifile, 'r')
input_yml = input_file.read
input_file.close
 
output_json = JSON.dump(YAML::load(input_yml))
 
output_file = File.open(ofile, 'w+')
output_file.write(output_json)
output_file.close
