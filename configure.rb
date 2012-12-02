#!/usr/bin/env ruby

repos = [
  # ruby
  'git://github.com/vim-ruby/vim-ruby.git',
  'git://github.com/tpope/vim-endwise.git',
  # git
  'git://github.com/tpope/vim-git.git',
  'git://github.com/airblade/vim-rooter.git',
  'git://github.com/tpope/vim-fugitive.git',
  # languages
  'git://github.com/tpope/vim-markdown.git',
  # editing
  'git://github.com/ervandew/supertab.git',
  'git://github.com/tsaleh/vim-matchit.git',
  'git://github.com/tpope/vim-repeat.git',
  'git://github.com/tpope/vim-surround.git',
  'git://github.com/vim-scripts/tComment.git',
  'git://github.com/vim-scripts/Auto-Pairs.git',
  'git://github.com/tpope/vim-ragtag.git',
  'git://github.com/shemerey/vim-peepopen.git',
  'git://github.com/tpope/vim-unimpaired.git'
]

require 'fileutils'

bundles_dir = File.join File.dirname(__FILE__), 'bundle'
FileUtils.cd bundles_dir

puts '--> Deleting existing bundles'
Dir['*'].each {|d| FileUtils.rm_rf d }

repos.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "--> Downloading #{url}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf File.join(dir, '.git')
end

puts '--> Done.'
