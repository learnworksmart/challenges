# Challenge 2 

Visit to this YouTube and find out on what the challenge is about? 
```
Are you able to use Ansible and apply the required changes for hiding the Apache web version?
```

## Answer
1. The remote Apache web server discloses it version: 
![image](https://user-images.githubusercontent.com/71627887/95155600-178dfe00-07c7-11eb-8783-ba16272bd93c.png)
1. Apply the configuration to hide the Apache web server version:
	* Include the targeted IP in `inventory.yml`
	* Run `ansible-playbook -i inventory.yml harden_webserver.yml`
![image](https://user-images.githubusercontent.com/71627887/95155802-8bc8a180-07c7-11eb-8f56-6b4bdc6d8cf8.png)
1. Verify that the remote Apache web server no longer disclose it version: 
![image](https://user-images.githubusercontent.com/71627887/95156005-0db8ca80-07c8-11eb-812c-aed5b9d1f287.png)



