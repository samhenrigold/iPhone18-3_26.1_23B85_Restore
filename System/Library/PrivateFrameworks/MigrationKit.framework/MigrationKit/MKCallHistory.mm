@interface MKCallHistory
+ (BOOL)read:(id)read;
+ (double)duration:(id)duration;
+ (id)calls:(id)calls label:(id)label;
+ (id)convertCallHistoryToCall:(id)call;
+ (unsigned)status:(id)status;
- (MKCallHistory)initWithSerializedData:(id)data;
@end

@implementation MKCallHistory

- (MKCallHistory)initWithSerializedData:(id)data
{
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = MKCallHistory;
  v5 = [(MKCallHistory *)&v19 init];
  if (!v5 || dataCopy && ([dataCopy mk_numberForKey:@"is_read"], v6 = objc_claimAutoreleasedReturnValue(), -[MKCallHistory setIsRead:](v5, "setIsRead:", objc_msgSend(v6, "BOOLValue")), v6, objc_msgSend(dataCopy, "mk_numberForKey:", @"type"), v7 = objc_claimAutoreleasedReturnValue(), -[MKCallHistory setType:](v5, "setType:", objc_msgSend(v7, "unsignedIntegerValue")), v7, v8 = MEMORY[0x277CBEAA8], objc_msgSend(dataCopy, "mk_numberForKey:", @"date"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleValue"), objc_msgSend(v8, "dateWithTimeIntervalSince1970:", v10 / 1000.0), v11 = objc_claimAutoreleasedReturnValue(), -[MKCallHistory setDate:](v5, "setDate:", v11), v11, v9, objc_msgSend(dataCopy, "mk_numberForKey:", @"duration"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "doubleValue"), -[MKCallHistory setDuration:](v5, "setDuration:"), v12, objc_msgSend(dataCopy, "mk_stringForKey:", @"country_code"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "lowercaseString"), v14 = objc_claimAutoreleasedReturnValue(), -[MKCallHistory setCountryCode:](v5, "setCountryCode:", v14), v14, v13, objc_msgSend(dataCopy, "mk_stringForKey:", @"number"), v15 = objc_claimAutoreleasedReturnValue(), -[MKCallHistory setNumber:](v5, "setNumber:", v15), v15, objc_msgSend(dataCopy, "mk_arrayForKey:", @"other_numbers"), v16 = objc_claimAutoreleasedReturnValue(), -[MKCallHistory setOtherNumbers:](v5, "setOtherNumbers:", v16), v16, -[NSArray count](v5->_otherNumbers, "count")))
  {
    v17 = v5;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)read:(id)read
{
  readCopy = read;
  if ([readCopy type] == 4)
  {
    isRead = [readCopy isRead];
  }

  else
  {
    isRead = 1;
  }

  return isRead;
}

+ (unsigned)status:(id)status
{
  statusCopy = status;
  type = [statusCopy type];
  if (type > 2)
  {
    if ((type - 4) < 2)
    {
      v5 = MEMORY[0x277CF7DA0];
      goto LABEL_14;
    }

    if (type == 3)
    {
      v5 = MEMORY[0x277CF7D78];
      goto LABEL_14;
    }

LABEL_12:
    v5 = MEMORY[0x277CF7DB0];
    goto LABEL_14;
  }

  if (!type)
  {
    goto LABEL_12;
  }

  if (type == 1)
  {
    v5 = MEMORY[0x277CF7D88];
    goto LABEL_14;
  }

  if (type != 2)
  {
    goto LABEL_12;
  }

  [statusCopy duration];
  v5 = MEMORY[0x277CF7D80];
  if (v6 != 0.0)
  {
    v5 = MEMORY[0x277CF7D90];
  }

LABEL_14:
  v7 = *v5;

  return v7;
}

+ (double)duration:(id)duration
{
  durationCopy = duration;
  if ([durationCopy type] == 1 || (v4 = 0.0, objc_msgSend(durationCopy, "type") == 2))
  {
    [durationCopy duration];
    v4 = v5;
  }

  return v4;
}

+ (id)calls:(id)calls label:(id)label
{
  v27 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  labelCopy = label;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(callsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = callsCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[MKCallHistory alloc] initWithSerializedData:*(*(&v22 + 1) + 8 * i)];
        v13 = v12;
        if (!v12)
        {
          v17 = +[MKLog log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(MKCallHistory *)&buf calls:v21 label:v17];
          }

          goto LABEL_15;
        }

        if ([(MKCallHistory *)v12 type]&& [(MKCallHistory *)v13 type]<= 5)
        {
          number = [(MKCallHistory *)v13 number];

          if (number)
          {
            number2 = [(MKCallHistory *)v13 number];
            v16 = [labelCopy label:number2];
            [(MKCallHistory *)v13 setLabel:v16];
          }

          v17 = [MKCallHistory convertCallHistoryToCall:v13];
          if (v17)
          {
            [v6 addObject:v17];
          }

LABEL_15:
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)convertCallHistoryToCall:(id)call
{
  v27 = *MEMORY[0x277D85DE8];
  callCopy = call;
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  otherNumbers = [callCopy otherNumbers];
  v6 = [v4 initWithCapacity:{objc_msgSend(otherNumbers, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  otherNumbers2 = [callCopy otherNumbers];
  v8 = [otherNumbers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *v23;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(otherNumbers2);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      v13 = MEMORY[0x277CF7D30];
      countryCode = [callCopy countryCode];
      v15 = [v13 normalizedPhoneNumberHandleForValue:v12 isoCountryCode:countryCode];

      if (v15)
      {
        goto LABEL_10;
      }

      v16 = [MEMORY[0x277CF7D30] normalizedEmailAddressHandleForValue:v12];
      if (!v16)
      {
        v16 = [MEMORY[0x277CF7D30] normalizedGenericHandleForValue:v12];
        if (!v16)
        {
          continue;
        }
      }

      v15 = v16;
LABEL_10:
      [v6 addObject:v15];

      continue;
    }

    v9 = [otherNumbers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v9);
LABEL_13:

  if ([v6 count])
  {
    v17 = objc_alloc_init(MEMORY[0x277CF7D48]);
    [v17 setHandleType:2];
    [v17 setMediaType:1];
    [v17 setTtyType:0];
    [v17 setServiceProvider:*MEMORY[0x277CF7E08]];
    [v17 setRead:{+[MKCallHistory read:](MKCallHistory, "read:", callCopy)}];
    [v17 setRemoteParticipantHandles:v6];
    [v17 setCallStatus:{+[MKCallHistory status:](MKCallHistory, "status:", callCopy)}];
    [MKCallHistory duration:callCopy];
    [v17 setDuration:?];
    date = [callCopy date];
    [v17 setDate:date];

    countryCode2 = [callCopy countryCode];
    [v17 setIsoCountryCode:countryCode2];

    label = [callCopy label];
    [v17 setLocalParticipantUUID:label];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end