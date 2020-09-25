while IFS=, read -r name email
do
    echo "Sending mail to $name <$email>.."
    cp email.template.txt email.body.txt
    sed -i "s/TEMPLATE:ADDRESS/$email/" email.body.txt
    sed -i "s/TEMPLATE:NAME/$name/" email.body.txt
    /usr/sbin/sendmail -t < email.body.txt
    rm email.body.txt
    sleep 60
done < email-list.csv
# Sample email.template.txt
# From: "Your Name" <email@example.com>
# To: TEMPLATE:ADDRESS
# Subject: Your email subject
# Content-Type: text/plain; charset=utf-8
# Content-Transfer-Encoding: 8bit
#
# Dear TEMPLATE:NAME,

# Your email body
# Signature

# Sample email-list.csv 
# Firstname Surname,email@example.com
