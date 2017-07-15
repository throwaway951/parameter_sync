Hi SocialCops
=============

I'm Praneeth Mendu ( [github](https://github.com/praneethmendu/) | [CV](praneethmendu.github.io) ). 


I am trying to sync the folder by making it a cloned repo and running a simple bash script that looks for both local changes and changes in the repo (changed by some other instance) and updates files accordingly. Any number of users and files can be added.

Communicating via Http requires the password to be entered manually everytime, so I had to use ssh. This made things much more elegant but it makes your job of evaluating the code more dreadful.

Instructions:

1) add your ssh public key in the github account settings:<br />
acct_name: throwaway951<br />
password: rugrats1

2) clone via ssh, chmod +x auto.sh and run it.

Helpful links:

[Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)<br />
[Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)<br />
[Working with SSH key passphrases](https://help.github.com/articles/working-with-ssh-key-passphrases/)<br />
"Host Key Verification Failed" can be solved by:
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

                                   
