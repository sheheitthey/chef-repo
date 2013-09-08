#
# Cookbook Name:: aliases
# Recipe:: default
#
# Copyright 2013, sheheitthey
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Alias 'h' to show history.
magic_shell_alias 'h' do
    command 'history'
end

# Alias 'ls' to use some formatting defaults.
magic_shell_alias 'ls' do
    command 'ls -F --color=never'
end

# Alias 'screen' to use UTF-8 and a nicer $TERM by default.
magic_shell_alias 'screen' do
    command 'screen -U -T "${TERM}"'
end

# Set vim as the default editor.
magic_shell_environment 'EDITOR' do
    value 'vim'
end

# Set RSX as default flags for less.
magic_shell_environment 'LESS' do
    value 'RSX'
end

# Set less as the default pager.
magic_shell_environment 'PAGER' do
    value 'less'
end
