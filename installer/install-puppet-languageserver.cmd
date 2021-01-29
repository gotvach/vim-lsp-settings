@echo off

git clone --depth=1 https://github.com/lingua-pupuli/puppet-editor-services .

call bundle config set --local path 'vendor/bundle'
call bundle install
call bundle exec rake gem_revendor

echo @echo off ^

setlocal ^

set BUNDLE_GEMFILE=%%~dp0Gemfile ^

bundle exec ruby %%~dp0\puppet-languageserver %%* ^

> puppet.cmd

