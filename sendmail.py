# Python code to illustrate Sending mail from 
# your Gmail account 
import smtplib
  
# creates SMTP session
s = smtplib.SMTP('smtp.gmail.com', 587)
  
# start TLS for security
s.starttls()
  
# Authentication
s.login("provide your mail id", "provide your password")
  
# message to be sent
message = "Hey"
  
# sending the mail
s.sendmail("provide your mail id", "mail id to receive", message)
  
# terminating the session
s.quit()