# Challenge 3 

Visit to this [YouTube](https://www.youtube.com/watch?v=WKAFs5vemFE) and find out on what the challenge is about? 
```
Are you able to use InSpec and check on whether
(1) docker has been installed and 
(2) the container hosting our sample web application is running?
```

## Answer
1. The remote host should be running our dockerised newblog web application:
![image](https://user-images.githubusercontent.com/71627887/95154591-bfee9300-07c4-11eb-816f-cc056df90483.png)
1. Run the InSpec script on the targeted host, e.g. 
	* `inspec exec review_docker.rb --sudo -t ssh://ubuntu@13.212.37.100`
	
![image](https://user-images.githubusercontent.com/71627887/95154568-afd6b380-07c4-11eb-8119-0bde432bb917.png)



