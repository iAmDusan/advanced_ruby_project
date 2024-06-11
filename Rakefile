# Load the 'rake/testtask' library, which provides the Rake::TestTask class.
# This class allows us to define tasks for running tests.
require 'rake/testtask'

# Create a new instance of Rake::TestTask and configure it with a block.
# The block variable |t| represents the instance of Rake::TestTask within the block.
Rake::TestTask.new do |t|
  # The 'do |t| ... end' syntax is a Ruby block.
  # 'do' begins the block, and 'end' ends it.
  # '|t|' is the parameter list for the block. Here, 't' will be the instance of Rake::TestTask.
  
  # Add 'lib' and 'test' directories to the $LOAD_PATH.
  # The $LOAD_PATH is an array of directories that Ruby uses to look for files to load with 'require'.
  # '<<' is the shovel operator, which appends an element to an array.
  t.libs << 'lib' << 'test'
  # This line means: append 'lib' to t.libs, then append 'test' to t.libs.

  # Set the pattern for the test files to be run.
  # 't.pattern =' sets the file pattern attribute of the Rake::TestTask instance.
  # The pattern 'test/test_*.rb' specifies that all files in the 'test' directory 
  # that start with 'test_' and end with '.rb' will be included in the test task.
  t.pattern = 'test/test_*.rb'
end
# End of the block started with 'do'.

# Provide a description for the next task.
# 'desc' is a Rake method used to describe what the task does.
# This description is useful for documentation and is shown when running 'rake -T'.
desc 'Run all tests'

# Define the default task for Rake.
# 'task' is a Rake method used to define a task.
# 'default' is a special task name that Rake will run if no task name is provided.
# 'default: :test' means the 'default' task depends on the ':test' task.
# When 'rake' is run, it will invoke the ':test' task.
task default: :test

# Summary of the File:
# 1. 'require 'rake/testtask'' loads the necessary library for defining test tasks.
# 2. 'Rake::TestTask.new do |t| ... end' creates a new Rake::TestTask instance.
#    - 'do ... end' defines a block in Ruby.
#    - '|t|' is the parameter for the block, representing the Rake::TestTask instance.
#    - 't.libs << 'lib' << 'test'' appends 'lib' and 'test' directories to the $LOAD_PATH.
#    - 't.pattern = 'test/test_*.rb'' sets the file pattern for identifying test files.
# 3. 'desc 'Run all tests'' provides a description for the next task.
# 4. 'task default: :test' sets up the default task, linking it to the ':test' task.
#    - 'default' is the task name.
#    - ':test' is a symbol representing the test task defined by the Rake::TestTask instance.
