namespace :git do
    desc 'initialize a blank git repo'
    task :init do
        puts 'initializing a bare git repo...'
        Dir.mkdir 'app/data.git'
        `git init app/data.git --bare`
        puts 'done.'
    end
end
