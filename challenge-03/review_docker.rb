control 'Ensure Docker is installed, enabled and running.' do
	title 'Ensure Docker is installed enabled and running.'

    packages = ['docker-ce', 'docker-ce-cli', 'containerd.io']
    packages.each do |p|
		describe package(p) do
			it { should be_installed }
		end
    end

    describe systemd_service('docker') do
        it { should be_enabled }
        it { should be_running }
    end
end

control 'Ensure our newblog app docker image exists and its app container is running.' do
	title 'Ensure our newblog app docker image exists and its app container is running.'

	describe docker.images.where { repository == 'learnworksmart/newblog' && tag == 'dev' } do
	  it { should exist }
	end

	describe docker.containers.where { image == 'learnworksmart/newblog:dev' } do
		it { should exist }
	end 

	describe docker_container('app') do
		it { should exist }
		it { should be_running }
		its('image') { should eq 'learnworksmart/newblog:dev' }
		its('ports') { should eq '0.0.0.0:80->80/tcp' }
		its('command') { should eq "/bin/sh -c 'python init_db.py && flask run --host=0.0.0.0 --port=80'" }
	end
end
