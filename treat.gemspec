$:.push File.expand_path('../lib', __FILE__)

require 'treat/version'

Gem::Specification.new do |s|
  
  s.name        = 'treat'
  s.version     = Treat::VERSION
  s.authors     = ['Louis Mullie']
  s.email       = ['louis.mullie@gmail.com']
  s.homepage    = 'https://github.com/louismullie/treat'
  s.summary     = %q{ Text Retrieval, Extraction and Annotation Toolkit. }
  s.description = %q{ Treat is a natural language processing framework for Ruby. }
  
  # Add all files.
  s.files = 
  Dir['bin/**/*'] + 
  Dir['lib/**/*'] + 
  Dir['spec/**/*'] +
  Dir['models/**/*'] +  
  Dir['tmp/**/*'] + 
  Dir['files/**/*'] +
  ['README.md', 'LICENSE']
  
  # Runtime dependencies
  s.add_runtime_dependency 'schiphol'
  s.add_runtime_dependency 'birch'
  s.add_runtime_dependency 'yomu'

  [
    'nokogiri',
    'ferret',
    'bson_ext',
    'mongo',
    'lda-ruby',
    'stanford-core-nlp',
    'linguistics',
    'ruby-readability',
    'whatlanguage',
    'chronic',
    'kronic',
    'nickel',
    'decisiontree',
    'rb-libsvm',
    'ruby-fann',
    'zip',
    'loggability',
    'tf-idf-similarity',
    'narray',
    'fastimage',
    'fuzzy-string-match',
    'levenshtein-ffi',
    'rbtagger',
    'ruby-stemmer',
    'punkt-segmenter',
    'tactful_tokenizer',
    'nickel',
    'rwordnet',
    'uea-stemmer',
    'engtagger',
    'activesupport',
    'srx-english',
    'scalpel'
  ].each do |dependency|
    s.add_runtime_dependency dependency
  end
  
  # Development dependencies
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'simplecov'
  
  # Post-install message
  s.post_install_message = %q{Thanks for installing Treat.
  To complete the installation, run `require treat` in an IRB 
  terminal, followed by `Treat::Core::Installer.install`. }

end
