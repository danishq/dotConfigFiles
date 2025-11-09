## Filter Cases

### Campaign A
##### one@one.com
##### two@two.com
##### theree@theree.com
##### bounce1@bounce.com
##### bounce2@bounce.com

### Campaign B
##### three@three.com
##### four@four.com
##### five@five.com
##### bounce2@bounce.com
##### bounce3@bounce.com

### Campaign C
##### six@six.com
##### seven@seven.com
##### bounce4@bounce.com

#### CASE 1:
"email_sent_campaign" + "is" + "A"
RESULT : one, two, three

"email_sent_campaign" + "not" + "B"
RESULT : one, two, **three**, six

#### CASE 2:
"email_sent_campaign" + "is" + "B"
RESULT : three, four, five

"email_sent_campaign" + "not" + "C"
RESULT : bounce4@bounce.com

#

CASE 1                          |CASE 2                      |
-------------------------------|-----------------------------|
Only delivered emails will be shown|No such condition|
one of two common email will be shown ex:three|filter is concerned with only Campaign X|
Definition: 'not' -> exclude valid email from campaign **X** and show rest|Definition: 'not' -> show bounce email from selected campaign **X**|
Definition: 'is': show valid email from campaign **X** | Definition: 'is' -> show valid emails from campaign **X**

