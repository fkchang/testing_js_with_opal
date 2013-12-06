# Nominal opal code for example
# Naming convention: the "main" file is application.rb which opal-sprockets
# compiles to an application.js file
require 'opal'                  # opal the language/environment
require 'opal-jquery'           # opal-jquery, so I can use Document.ready?

Document.ready? do
  Kernel.alert "Hello World from opal"
end
