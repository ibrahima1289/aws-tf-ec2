## Deploy EC2 aws-terraform for labs
This repo is used to create lab servers for learning and tesing projects.

## SSH to the server
```
ssh -i "../keys" ubuntu@$(terraform output -raw public_ip)
```

#### Sources:
1. [Push local repo to GitHub](https://www.digitalocean.com/community/tutorials/how-to-push-an-existing-project-to-github)