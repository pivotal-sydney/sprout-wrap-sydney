package 'vim' do
  options '--with-lua'
end
homebrew_cask 'macvim'

vimfiles = ::File.join(node['sprout']['home'], node['workspace_directory'], 'vimfiles')
git vimfiles do
  repository 'http://github.com/luan/vimfiles.git'
  # Master was broken at the time of setting this up so went with this commit
  revision '001dfa1b9480f15e3c65392f3a3cbe24e8ef04cb'
  user node['sprout']['user']
  enable_submodules true
  action :checkout
end

dotvim = ::File.join(node['sprout']['home'], '.vim')

link dotvim do
  to vimfiles
  owner node['sprout']['user']
end

execute 'yes "" | ./update --non-interactive' do
  cwd dotvim
  user node['sprout']['user']
end
