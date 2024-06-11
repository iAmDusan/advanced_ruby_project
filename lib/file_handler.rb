module FileHandler
  def self.read_file(file_path)
    File.read(file_path)
  end

  def self.write_file(file_path, content)
    File.open(file_path, 'w') { |file| file.write(content) }
  end
end
