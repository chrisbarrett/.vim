#!/usr/bin/env ruby

git_repos = [
  # ruby
  'git://github.com/vim-ruby/vim-ruby.git',
  'git://github.com/tpope/vim-endwise.git',
  # git
  'git://github.com/tpope/vim-git.git',
  'git://github.com/airblade/vim-rooter.git',
  #languages
  'git://github.com/tpope/vim-fugitive.git',
  'git://github.com/tpope/vim-markdown.git',
  'git://giub.com/ervandew/supertab.git',
  'git://github.com/msanders/snipmate.vim.git',
  'git://github.com/tsaleh/vim-matchit.git',
  'git://github.com/tpope/vim-repeat.git',
  'git://github.com/tpope/vim-surround.git',
  'git://github.com/tsaleh/vim-tcomment.git',
  'git://github.com/tpope/vim-ragtag.git',
  'git://github.com/garbas/vim-snipmate.git',
  'git://github.com/honza/snipmate-snippets.git',
  'git://github.com/shemerey/vim-peepopen.git',
  'git://github.com/tpope/vim-unimpaired.git'
]

require 'fileutils'

bundles_dir = File.join File.dirname(__FILE__), 'bundle'
FileUtils.cd bundles_dir

puts '--> Deleting existing bundles...'
Dir['*'].each {|d| FileUtils.rm_rf d }

git_repos.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "--> Downloading #{url}..."
  `git clone #{url} #{dir}`
  FileUtils.rm_rf File.join(dir, '.git')
end

puts '--> Done.'
