@interface SALoggingUtilities
+ (id)computeMessagesForEvent:(id)event;
+ (id)extractEventFromMessages:(id)messages;
+ (id)extractUniqueIdentifierFromMessage:(id)message;
+ (id)stringToSplit:(id)split maxSplitSize:(unint64_t)size;
+ (void)logTAEvent:(id)event;
@end

@implementation SALoggingUtilities

+ (void)logTAEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [SALoggingUtilities computeMessagesForEvent:event];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = TASAEventsLog;
        if (os_log_type_enabled(TASAEventsLog, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(*(&v10 + 1) + 8 * v7);
          *buf = 138739971;
          v15 = v9;
          _os_log_debug_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEBUG, "%{sensitive}@", buf, 0xCu);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

+ (id)computeMessagesForEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!eventCopy)
  {
LABEL_15:
    v21 = v4;
    goto LABEL_16;
  }

  v5 = objc_autoreleasePoolPush();
  v29 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:eventCopy requiringSecureCoding:1 error:&v29];
  v7 = v29;
  v8 = [v6 base64EncodedStringWithOptions:32];
  v9 = v8;
  if (!v7 && ![v8 isEqual:&stru_287709218])
  {
    context = v5;
    *buf = 0;
    *v32 = 0;
    v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
    [v12 getUUIDBytes:buf];

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    v14 = [v13 base64EncodedStringWithOptions:32];

    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v9;
    v15 = +[SALoggingUtilities stringToSplit:maxSplitSize:](SALoggingUtilities, "stringToSplit:maxSplitSize:", v9, 1015 - [v14 length]);
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v14, *(*(&v25 + 1) + 8 * i)];
          [v4 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_15;
  }

  v10 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    *v32 = 2082;
    *&v32[2] = "";
    v33 = 2113;
    v34 = v7;
    v35 = 2117;
    v36 = v9;
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Archiver error, Error:%{private}@, String:%{sensitive}@}", buf, 0x26u);
  }

  v11 = v4;

  objc_autoreleasePoolPop(v5);
LABEL_16:

  return v4;
}

+ (id)stringToSplit:(id)split maxSplitSize:(unint64_t)size
{
  splitCopy = split;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (splitCopy && size && ([splitCopy isEqual:&stru_287709218] & 1) == 0)
  {
    if ([splitCopy length] <= size)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = [splitCopy substringWithRange:{v7, size}];
        [v6 addObject:v8];

        v7 += size;
      }

      while (size + v7 < [splitCopy length]);
    }

    v9 = [splitCopy substringWithRange:{v7, objc_msgSend(splitCopy, "length") - objc_msgSend(v6, "count") * size}];
    [v6 addObject:v9];
  }

  return v6;
}

+ (id)extractUniqueIdentifierFromMessage:(id)message
{
  v8[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy length] < 0x19)
  {
    v6 = 0;
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v4 = [messageCopy substringWithRange:{0, 24}];
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:1];
    [v5 getBytes:v8 length:16];
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v8];
  }

  return v6;
}

+ (id)extractEventFromMessages:(id)messages
{
  v28 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) substringWithRange:{24, objc_msgSend(*(*(&v20 + 1) + 8 * i), "length") - 24}];
        [v4 appendString:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v26[4] = objc_opt_class();
  v26[5] = objc_opt_class();
  v26[6] = objc_opt_class();
  v26[7] = objc_opt_class();
  v26[8] = objc_opt_class();
  v26[9] = objc_opt_class();
  v26[10] = objc_opt_class();
  v26[11] = objc_opt_class();
  v26[12] = objc_opt_class();
  v26[13] = objc_opt_class();
  v26[14] = objc_opt_class();
  v26[15] = objc_opt_class();
  v26[16] = objc_opt_class();
  v26[17] = objc_opt_class();
  v26[18] = objc_opt_class();
  v26[19] = objc_opt_class();
  v26[20] = objc_opt_class();
  v26[21] = objc_opt_class();
  v26[22] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:23];
  v13 = [v11 setWithArray:v12];

  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:1];
  v19 = 0;
  v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v13 fromData:v14 error:&v19];
  v16 = v19;
  if (v16)
  {
    v17 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "unarchive error: %@", buf, 0xCu);
    }
  }

  return v15;
}

@end