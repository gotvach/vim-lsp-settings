#!/usr/bin/env bash

set -e

git clone --depth=1 https://github.com/lingua-pupuli/puppet-editor-services .
bundle config set --local path 'vendor/bundle'
bundle install
bundle exec rake gem_revendor

cat <<EOF >puppet
#!/usr/bin/env bash

DIR=\$(cd \$(dirname \$0); pwd)
BUNDLE_GEMFILE=\$DIR/Gemfile bundle exec ruby \$DIR/puppet-languageserver \$*
EOF

chmod +x puppet-languageserver
