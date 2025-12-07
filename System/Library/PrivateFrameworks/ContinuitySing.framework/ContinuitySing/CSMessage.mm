@interface CSMessage
- (CSMessage)initWithMessage:(id)message;
- (NSString)identifier;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation CSMessage

- (CSMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v32.receiver = self;
  v32.super_class = CSMessage;
  v5 = [(CSMessage *)&v32 init];
  if (v5)
  {
    [objc_opt_class() requiredParameters];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = v31 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [messageCopy objectForKey:v11];

          if (!v12)
          {
            v15 = ContinuitySingLog(v13);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              v19 = 136315906;
              v20 = "[CSMessage initWithMessage:]";
              v21 = 2112;
              v22 = v18;
              v23 = 2112;
              v24 = messageCopy;
              v25 = 2112;
              v26 = v11;
              _os_log_error_impl(&dword_2441FB000, v15, OS_LOG_TYPE_ERROR, "%s: %@ Invalid message %@ missing required key: %@", &v19, 0x2Au);
            }

            v14 = 0;
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v14 = v5;
LABEL_15:

  return v14;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  identifier = [(CSMessage *)self identifier];
  [v3 setObject:identifier forKey:@"CSMessageIDKey"];

  return v3;
}

- (NSString)identifier
{
  messageID = [objc_opt_class() messageID];

  return CSIdentifierForMessageID(messageID);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dictionaryRepresentation = [(CSMessage *)self dictionaryRepresentation];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, dictionaryRepresentation];

  return v7;
}

@end