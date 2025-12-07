@interface STEmailMessage
- (STEmailMessage)initWithCoder:(id)coder;
- (id)_aceContextObjectValue;
- (id)_personAttributesForRecipients:(id)recipients;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STEmailMessage

- (STEmailMessage)initWithCoder:(id)coder
{
  v39[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = STEmailMessage;
  v5 = [(STSiriModelObject *)&v35 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_messageBody"];
    messageBody = v5->_messageBody;
    v5->_messageBody = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subject"];
    subject = v5->_subject;
    v5->_subject = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_messageIdentifier"];
    messageIdentifier = v5->_messageIdentifier;
    v5->_messageIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sender"];
    sender = v5->_sender;
    v5->_sender = v12;

    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v14 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_toRecipients"];
    toRecipients = v5->_toRecipients;
    v5->_toRecipients = v17;

    v19 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v21 = [v19 setWithArray:v20];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"_ccRecipients"];
    ccRecipients = v5->_ccRecipients;
    v5->_ccRecipients = v22;

    v24 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v26 = [v24 setWithArray:v25];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"_bccRecipients"];
    bccRecipients = v5->_bccRecipients;
    v5->_bccRecipients = v27;

    v29 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v31 = [v29 setWithArray:v30];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"_receivingAddresses"];
    receivingAddresses = v5->_receivingAddresses;
    v5->_receivingAddresses = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STEmailMessage;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_messageBody forKey:{@"_messageBody", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_subject forKey:@"_subject"];
  [coderCopy encodeObject:self->_messageIdentifier forKey:@"_messageIdentifier"];
  [coderCopy encodeObject:self->_sender forKey:@"_sender"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeObject:self->_toRecipients forKey:@"_toRecipients"];
  [coderCopy encodeObject:self->_ccRecipients forKey:@"_ccRecipients"];
  [coderCopy encodeObject:self->_bccRecipients forKey:@"_bccRecipients"];
  [coderCopy encodeObject:self->_receivingAddresses forKey:@"_receivingAddresses"];
}

- (id)_personAttributesForRecipients:(id)recipients
{
  v41 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(recipientsCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = recipientsCopy;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * i);
        v6 = objc_alloc_init(MEMORY[0x277D47638]);
        v7 = objc_alloc_init(MEMORY[0x277D47630]);
        fullName = [v5 fullName];
        v29 = v7;
        [v7 setFullName:fullName];

        fullName2 = [v5 fullName];
        v30 = v6;
        [v6 setDisplayText:fullName2];

        v10 = MEMORY[0x277CBEB18];
        contactHandles = [v5 contactHandles];
        v12 = [v10 arrayWithCapacity:{objc_msgSend(contactHandles, "count")}];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        contactHandles2 = [v5 contactHandles];
        v14 = [contactHandles2 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v32;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(contactHandles2);
              }

              v18 = *(*(&v31 + 1) + 8 * j);
              if (![v18 type])
              {
                v19 = objc_alloc_init(MEMORY[0x277D472D8]);
                handle = [v18 handle];
                [v19 setEmailAddress:handle];

                label = [v18 label];
                [v19 setLabel:label];

                if (v19)
                {
                  [v12 addObject:v19];
                }
              }
            }

            v15 = [contactHandles2 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v15);
        }

        [v29 setEmails:v12];
        firstObject = [v12 firstObject];
        emailAddress = [firstObject emailAddress];
        [v30 setData:emailAddress];

        [v30 setObject:v29];
        if (v30)
        {
          [v26 addObject:v30];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v28);
  }

  return v26;
}

- (id)_aceContextObjectValue
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D472E0]);
  [v3 setMessage:self->_messageBody];
  [v3 setSubject:self->_subject];
  type = self->_type;
  if (type > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = **(&unk_279C52568 + type);
  }

  [v3 setType:v5];
  [v3 setIdentifier:self->_messageIdentifier];
  [v3 setReceivingAddresses:self->_receivingAddresses];
  v6 = [(STEmailMessage *)self _personAttributesForRecipients:self->_toRecipients];
  [v3 setRecipientsTo:v6];

  v7 = [(STEmailMessage *)self _personAttributesForRecipients:self->_ccRecipients];
  [v3 setRecipientsCc:v7];

  v8 = [(STEmailMessage *)self _personAttributesForRecipients:self->_bccRecipients];
  [v3 setRecipientsBcc:v8];

  if (self->_sender)
  {
    v13[0] = self->_sender;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [(STEmailMessage *)self _personAttributesForRecipients:v9];
    firstObject = [v10 firstObject];
    [v3 setFromEmail:firstObject];
  }

  return v3;
}

@end