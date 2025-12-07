@interface NFContactlessPaymentEndEvent
+ (BOOL)logsTransactionDetails;
- (NFContactlessPaymentEndEvent)initWithCoder:(id)coder;
- (NFContactlessPaymentEndEvent)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFContactlessPaymentEndEvent

+ (BOOL)logsTransactionDetails
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
  v3 = [v2 BOOLForKey:@"LogTransactionDetails"];

  return v3;
}

- (NFContactlessPaymentEndEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = NFContactlessPaymentEndEvent;
  v5 = [(NFContactlessPaymentEndEvent *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"didError"];
    v5->_didError = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"command"];
    v5->_command = [v15 unsignedIntValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    v5->_status = [v16 unsignedIntValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    v5->_result = [v17 unsignedIntValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"informative"];
    v5->_informative = [v18 unsignedIntValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"amount"];
    amount = v5->_amount;
    v5->_amount = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:@"currency"];
    currency = v5->_currency;
    v5->_currency = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"tlv"];
    tlv = v5->_tlv;
    v5->_tlv = v23;

    v25 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v5->_type = [v25 unsignedIntValue];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"felicaInfo"];
    felicaInfo = v5->_felicaInfo;
    v5->_felicaInfo = v26;

    v28 = [dictionaryCopy objectForKeyedSubscript:@"parsedInfo"];
    parsedInfo = v5->_parsedInfo;
    v5->_parsedInfo = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"BackgroundTransaction"];
    v5->_background = [v30 BOOLValue];

    v31 = [dictionaryCopy objectForKeyedSubscript:@"PairingModeBrandCode"];
    if (v31)
    {
      v32 = v5->_parsedInfo;
      if (v32)
      {
        v33 = [(NSDictionary *)v32 mutableCopy];
        [(NSDictionary *)v33 setObject:v31 forKeyedSubscript:@"PairingModeBrandCode"];
        v34 = [(NSDictionary *)v33 copy];
        v35 = v5->_parsedInfo;
        v5->_parsedInfo = v34;
      }

      else
      {
        v39 = @"PairingModeBrandCode";
        v40 = v31;
        v36 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v33 = v5->_parsedInfo;
        v5->_parsedInfo = v36;
      }
    }
  }

  return v5;
}

- (id)description
{
  if (self->_keyIdentifier)
  {
    v3 = [[NSString alloc] initWithFormat:@"applet=%@ endpoint=%@ ", self->_appletIdentifier, self->_keyIdentifier];
  }

  else
  {
    readerIdentifier = self->_readerIdentifier;
    v5 = [NSString alloc];
    if (readerIdentifier)
    {
      v3 = [v5 initWithFormat:@"applet=%@ reader=%@ ", self->_appletIdentifier, self->_readerIdentifier];
    }

    else
    {
      v3 = [v5 initWithFormat:@"applet=%@ ", self->_appletIdentifier, v33];
    }
  }

  type = self->_type;
  v7 = @"UNKNOWN";
  if (type <= 0x16)
  {
    if (self->_type > 1u)
    {
      if (type == 2)
      {
        v7 = @"VoidRefund";
      }

      else if (type == 9)
      {
        v7 = @"PurchaseWithCashback";
      }
    }

    else if (self->_type)
    {
      v7 = @"Cashback";
    }

    else
    {
      v7 = @"Purchase";
    }
  }

  else if (self->_type <= 0x21u)
  {
    if (type == 23)
    {
      v7 = @"CashDisbursement";
    }

    else if (type == 32)
    {
      v7 = @"RefundPurchase";
    }
  }

  else
  {
    switch(type)
    {
      case 0x22u:
        v7 = @"VoidPurchase";
        break;
      case 0x100u:
        v7 = @"Felica";
        break;
      case 0xF001u:
        v7 = @"Parsed by ATL";
        break;
    }
  }

  v8 = self->_result;
  v9 = @"UNKNOWN";
  v38 = v7;
  v39 = v3;
  if (v8 > 0xF001)
  {
    if (self->_result > 0xF004u)
    {
      switch(v8)
      {
        case 0xF005u:
          v9 = @"key not found";
          break;
        case 0xF006u:
          v9 = @"reader in pairing mode";
          break;
        case 0xF007u:
          v9 = @"no matching key";
          break;
      }
    }

    else
    {
      switch(v8)
      {
        case 0xF002u:
          v9 = @"online type f";
          break;
        case 0xF003u:
          v9 = @"express transit";
          break;
        case 0xF004u:
          v9 = @"incompatible applet";
          break;
      }
    }
  }

  else if (self->_result > 0xFFu)
  {
    switch(v8)
    {
      case 0x100u:
        v9 = @"failed";
        break;
      case 0xF000u:
        v9 = @"failed/field tear";
        break;
      case 0xF001u:
        v9 = @"offline type f";
        break;
    }
  }

  else if (self->_result)
  {
    if (v8 == 64)
    {
      v9 = @"offline/approved";
    }

    else if (v8 == 128)
    {
      v9 = @"online/pending";
    }
  }

  else
  {
    v9 = @"offline/declined";
  }

  v10 = objc_opt_new();
  v11 = v10;
  informative = self->_informative;
  if (informative)
  {
    [v10 addObject:@"PINRequired"];
    informative = self->_informative;
    if ((informative & 2) == 0)
    {
LABEL_55:
      if ((informative & 4) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_66;
    }
  }

  else if ((informative & 2) == 0)
  {
    goto LABEL_55;
  }

  [v11 addObject:@"WarningPresent"];
  informative = self->_informative;
  if ((informative & 4) == 0)
  {
LABEL_56:
    if ((informative & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v11 addObject:@"ContactIssuer"];
  informative = self->_informative;
  if ((informative & 8) == 0)
  {
LABEL_57:
    if ((informative & 0x100) == 0)
    {
      goto LABEL_58;
    }

LABEL_68:
    [v11 addObject:@"EMVTransaction"];
    if ((self->_informative & 0x8000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_69;
  }

LABEL_67:
  [v11 addObject:@"PINAttemptsExceeded"];
  informative = self->_informative;
  if ((informative & 0x100) != 0)
  {
    goto LABEL_68;
  }

LABEL_58:
  if ((informative & 0x8000) == 0)
  {
    goto LABEL_59;
  }

LABEL_69:
  [v11 addObject:@"ActionNeeded"];
LABEL_59:
  v37 = v9;
  if (!+[NFContactlessPaymentEndEvent logsTransactionDetails])
  {
LABEL_71:
    v36 = &stru_10031EA18;
    goto LABEL_76;
  }

  v13 = self->_type;
  if (v13 == 61441)
  {
    parsedInfo = self->_parsedInfo;
    if (parsedInfo)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v13 == 256)
  {
    parsedInfo = self->_felicaInfo;
    if (parsedInfo)
    {
LABEL_63:
      v36 = [(NSDictionary *)parsedInfo description];
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  v15 = v11;
  v16 = [NSString alloc];
  v17 = v16;
  transactionIdentifier = self->_transactionIdentifier;
  if (self->_amount)
  {
    v19 = [[NSString alloc] initWithFormat:@"%@", self->_amount];
    v36 = [v17 initWithFormat:@"transID=%@ amount=%@ tlv=%@ ", transactionIdentifier, v19, self->_tlv];
  }

  else
  {
    v36 = [v16 initWithFormat:@"transID=%@ amount=%@ tlv=%@ ", transactionIdentifier, @"NOT_PRESENT", self->_tlv];
  }

  v11 = v15;
LABEL_76:
  v34 = v11;
  v35 = [NSString alloc];
  v40.receiver = self;
  v40.super_class = NFContactlessPaymentEndEvent;
  v20 = [(NFContactlessPaymentEndEvent *)&v40 description];
  didError = self->_didError;
  status = self->_status;
  v23 = self->_type;
  v24 = self->_result;
  v25 = self->_informative;
  command = self->_command;
  v27 = [v11 componentsJoinedByString:{@", "}];
  v28 = v27;
  currency = self->_currency;
  if (!currency)
  {
    currency = @"NOT_PRESENT";
  }

  v30 = @"NO";
  if (didError)
  {
    v30 = @"YES";
  }

  v31 = [v35 initWithFormat:@"%@ { %@ didError=%@ command=0x%04x status=0x%04x type=0x%04x(%@) result=0x%04x(%@) informative=0x%04x(%@) currency=%@ %@}", v20, v39, v30, command, status, v23, v38, v24, v37, v25, v27, currency, v36];

  return v31;
}

- (id)asDictionary
{
  type = self->_type;
  v4 = @"UNKNOWN";
  if (type <= 0x16)
  {
    if (self->_type > 1u)
    {
      if (type == 2)
      {
        v4 = @"VoidRefund";
      }

      else if (type == 9)
      {
        v4 = @"PurchaseWithCashback";
      }
    }

    else if (self->_type)
    {
      v4 = @"Cashback";
    }

    else
    {
      v4 = @"Purchase";
    }
  }

  else if (self->_type <= 0x21u)
  {
    if (type == 23)
    {
      v4 = @"CashDisbursement";
    }

    else if (type == 32)
    {
      v4 = @"RefundPurchase";
    }
  }

  else
  {
    switch(type)
    {
      case 0x22u:
        v4 = @"VoidPurchase";
        break;
      case 0x100u:
        v4 = @"Felica";
        break;
      case 0xF001u:
        v4 = @"ATL";
        break;
    }
  }

  v5 = self->_result;
  v6 = @"UNKNOWN";
  v38 = v4;
  if (v5 > 0xF001)
  {
    if (self->_result > 0xF004u)
    {
      switch(v5)
      {
        case 0xF005u:
          v6 = @"key not found";
          break;
        case 0xF006u:
          v6 = @"reader in pairing mode";
          break;
        case 0xF007u:
          v6 = @"no matching key";
          break;
      }
    }

    else
    {
      switch(v5)
      {
        case 0xF002u:
          v6 = @"online type f";
          break;
        case 0xF003u:
          v6 = @"express transit";
          break;
        case 0xF004u:
          v6 = @"incompatible applet";
          break;
      }
    }
  }

  else if (self->_result > 0xFFu)
  {
    switch(v5)
    {
      case 0x100u:
        v6 = @"failed";
        break;
      case 0xF000u:
        v6 = @"failed/field tear";
        break;
      case 0xF001u:
        v6 = @"offline type f";
        break;
    }
  }

  else if (self->_result)
  {
    if (v5 == 64)
    {
      v6 = @"offline/approved";
    }

    else if (v5 == 128)
    {
      v6 = @"online/pending";
    }
  }

  else
  {
    v6 = @"offline/declined";
  }

  v37 = v6;
  v7 = objc_opt_new();
  v8 = v7;
  informative = self->_informative;
  if (informative)
  {
    [v7 addObject:@"PINRequired"];
    informative = self->_informative;
    if ((informative & 2) == 0)
    {
LABEL_50:
      if ((informative & 4) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  else if ((informative & 2) == 0)
  {
    goto LABEL_50;
  }

  [v8 addObject:@"WarningPresent"];
  informative = self->_informative;
  if ((informative & 4) == 0)
  {
LABEL_51:
    if ((informative & 8) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v8 addObject:@"ContactIssuer"];
  informative = self->_informative;
  if ((informative & 8) == 0)
  {
LABEL_52:
    if ((informative & 0x100) == 0)
    {
      goto LABEL_53;
    }

LABEL_61:
    [v8 addObject:@"EMVTransaction"];
    if ((self->_informative & 0x8000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_62;
  }

LABEL_60:
  [v8 addObject:@"PINAttemptsExceeded"];
  informative = self->_informative;
  if ((informative & 0x100) != 0)
  {
    goto LABEL_61;
  }

LABEL_53:
  if ((informative & 0x8000) == 0)
  {
    goto LABEL_54;
  }

LABEL_62:
  [v8 addObject:@"ActionNeeded"];
LABEL_54:
  if (+[NFContactlessPaymentEndEvent logsTransactionDetails])
  {
    v10 = [NSString alloc];
    v11 = v10;
    transactionIdentifier = self->_transactionIdentifier;
    if (self->_amount)
    {
      v13 = [[NSString alloc] initWithFormat:@"%@", self->_amount];
      v36 = [v11 initWithFormat:@", transID : %@, amount : %@, tlv : %@, ", transactionIdentifier, v13, self->_tlv];
    }

    else
    {
      v36 = [v10 initWithFormat:@", transID : %@, amount : %@, tlv : %@, ", transactionIdentifier, @"NOT_PRESENT", self->_tlv];
    }
  }

  else
  {
    v36 = &stru_10031EA18;
  }

  if (!self->_felicaInfo)
  {
    v14 = objc_alloc_init(NSDictionary);
    felicaInfo = self->_felicaInfo;
    self->_felicaInfo = v14;
  }

  if (!self->_parsedInfo)
  {
    v16 = objc_opt_new();
    parsedInfo = self->_parsedInfo;
    self->_parsedInfo = v16;
  }

  v18 = [NSDictionary alloc];
  appletIdentifier = self->_appletIdentifier;
  v35 = v18;
  readerIdentifier = self->_readerIdentifier;
  keyIdentifier = self->_keyIdentifier;
  v30 = [NSNumber numberWithUnsignedInt:self->_command];
  v19 = [NSNumber numberWithUnsignedShort:self->_status];
  v20 = [NSNumber numberWithUnsignedShort:self->_type];
  v21 = [NSNumber numberWithUnsignedShort:self->_result];
  v22 = [NSNumber numberWithUnsignedShort:self->_informative];
  v23 = [v8 componentsJoinedByString:{@", "}];
  currency = self->_currency;
  v31 = v8;
  v25 = self->_felicaInfo;
  v26 = self->_parsedInfo;
  v27 = [NSNumber numberWithBool:self->_background];
  v28 = [v35 initWithObjectsAndKeys:{appletIdentifier, @"applet", keyIdentifier, @"endpoint", readerIdentifier, @"reader", v30, @"command", v19, @"status", v20, @"type", v38, @"typeStr", v21, @"result", v37, @"resultStr", v22, @"informative", v23, @"informativeStr", currency, @"currency", v36, @"details", v25, @"felicaInfo", v26, @"parsedInfo", v27, @"background", 0}];

  return v28;
}

- (NFContactlessPaymentEndEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = NFContactlessPaymentEndEvent;
  v5 = [(NFContactlessPaymentEndEvent *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endPointIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v12;

    v5->_didError = [coderCopy decodeBoolForKey:@"didError"];
    v5->_command = [coderCopy decodeInt32ForKey:@"command"];
    v5->_status = [coderCopy decodeInt32ForKey:@"status"];
    v5->_type = [coderCopy decodeInt32ForKey:@"type"];
    v5->_result = [coderCopy decodeInt32ForKey:@"result"];
    v5->_informative = [coderCopy decodeInt32ForKey:@"informative"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tlv"];
    tlv = v5->_tlv;
    v5->_tlv = v18;

    v5->_background = [coderCopy decodeBoolForKey:@"BackgroundTransaction"];
    v20 = [NSSet alloc];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v20 initWithObjects:{v21, v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"felicaInfo"];
    felicaInfo = v5->_felicaInfo;
    v5->_felicaInfo = v28;

    v30 = [coderCopy decodeObjectOfClasses:v27 forKey:@"parsedInfo"];
    parsedInfo = v5->_parsedInfo;
    v5->_parsedInfo = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appletIdentifier = self->_appletIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeObject:self->_keyIdentifier forKey:@"endPointIdentifier"];
  [coderCopy encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  [coderCopy encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [coderCopy encodeBool:self->_didError forKey:@"didError"];
  [coderCopy encodeInt32:self->_command forKey:@"command"];
  [coderCopy encodeInt32:self->_status forKey:@"status"];
  [coderCopy encodeInt32:self->_type forKey:@"type"];
  [coderCopy encodeInt32:self->_result forKey:@"result"];
  [coderCopy encodeInt32:self->_informative forKey:@"informative"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeObject:self->_tlv forKey:@"tlv"];
  [coderCopy encodeObject:self->_felicaInfo forKey:@"felicaInfo"];
  [coderCopy encodeObject:self->_parsedInfo forKey:@"parsedInfo"];
  [coderCopy encodeBool:self->_background forKey:@"BackgroundTransaction"];
}

@end