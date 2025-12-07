@interface CKSettingsCriticalMessagesAppRecipient
- (CKSettingsCriticalMessagesAppRecipient)initWithRecipient:(id)recipient isActive:(BOOL)active;
- (id)_formattedPhoneNumberForNumber:(id)number;
- (id)number;
@end

@implementation CKSettingsCriticalMessagesAppRecipient

- (CKSettingsCriticalMessagesAppRecipient)initWithRecipient:(id)recipient isActive:(BOOL)active
{
  recipientCopy = recipient;
  v14.receiver = self;
  v14.super_class = CKSettingsCriticalMessagesAppRecipient;
  v8 = [(CKSettingsCriticalMessagesAppRecipient *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recipient, recipient);
    v9->_isActive = active;
    phoneNumber = [recipientCopy phoneNumber];
    v11 = [(CKSettingsCriticalMessagesAppRecipient *)v9 _formattedPhoneNumberForNumber:phoneNumber];
    formattedPhoneNumber = v9->_formattedPhoneNumber;
    v9->_formattedPhoneNumber = v11;
  }

  return v9;
}

- (id)_formattedPhoneNumberForNumber:(id)number
{
  numberCopy = number;
  if (!sCountryCode)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
    lowercaseString = [v5 lowercaseString];
    v7 = sCountryCode;
    sCountryCode = lowercaseString;
  }

  v8 = CFPhoneNumberCreate();
  if (v8)
  {
    v9 = v8;
    String = CFPhoneNumberCreateString();
    if (String)
    {
      v11 = String;
      CFRelease(v9);
LABEL_7:
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@", v11];

      goto LABEL_9;
    }

    v11 = CFPhoneNumberCreateString();
    CFRelease(v9);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v12 = numberCopy;
LABEL_9:

  return v12;
}

- (id)number
{
  literalNumber = self->_literalNumber;
  if (!literalNumber)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v4 setNumberStyle:1];
    phoneNumber = [(IMBackgroundMessageRecipient *)self->_recipient phoneNumber];
    v6 = [v4 numberFromString:phoneNumber];
    v7 = self->_literalNumber;
    self->_literalNumber = v6;

    literalNumber = self->_literalNumber;
  }

  return literalNumber;
}

@end