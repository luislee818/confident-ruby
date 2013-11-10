def my_open(file_name)
  file_name = file_name.to_path if file_name.respond_to?(:to_path)
  file_name = file_name.to_str
end
