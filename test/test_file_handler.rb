require 'minitest/autorun'
require_relative '../lib/file_handler'

class TestFileHandler < Minitest::Test
  def setup
    @test_file = 'test/test_output.txt'
  end

  def test_read_file
    content = FileHandler.read_file('data/input.txt')
    assert_match /sample input file/, content
  end

  def test_write_file
    FileHandler.write_file(@test_file, "Test content")
    content = FileHandler.read_file(@test_file)
    assert_equal "Test content", content
  ensure
    File.delete(@test_file) if File.exist?(@test_file)
  end
end
