@interface CPLSerializedFeedbackMessage
+ (id)messagesForPlistRepresentation:(id)representation;
+ (id)plistRepresentationForMessages:(id)messages;
- (CPLSerializedFeedbackMessage)initWithDictionaryRepresentation:(id)representation;
- (CPLSerializedFeedbackMessage)initWithMessage:(id)message;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CPLSerializedFeedbackMessage

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ [", objc_opt_class()];
  keysAndValuesCount = [(CPLServerFeedbackMessage *)self->_serverMessage keysAndValuesCount];
  if (keysAndValuesCount)
  {
    v5 = keysAndValuesCount;
    v6 = 0;
    v7 = @"%@='%@'";
    do
    {
      v8 = [(CPLServerFeedbackMessage *)self->_serverMessage keysAndValuesAtIndex:v6];
      v9 = [v8 key];
      value = [v8 value];
      [v3 appendFormat:v7, v9, value];

      ++v6;
      v7 = @", %@='%@'";
    }

    while (v5 != v6);
  }

  [v3 appendString:@"]"];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"uuid";
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v7[1] = @"msg";
  v8[0] = uUIDString;
  data = [(CPLServerFeedbackMessage *)self->_serverMessage data];
  v8[1] = data;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (CPLSerializedFeedbackMessage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [representationCopy objectForKeyedSubscript:@"uuid"];
    v6 = [representationCopy objectForKeyedSubscript:@"msg"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
      if (v7)
      {
        v8 = [[CPLServerFeedbackMessage alloc] initWithData:v6];
        v9 = v8;
        if (v8 && [(CPLServerFeedbackMessage *)v8 keysAndValuesCount])
        {
          v10 = [(CPLServerFeedbackMessage *)v9 keysAndValuesAtIndex:0];
          if ([v10 hasKey] && objc_msgSend(v10, "hasValue") && (objc_msgSend(v10, "key"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"type"), v11, v12))
          {
            v19.receiver = self;
            v19.super_class = CPLSerializedFeedbackMessage;
            v13 = [(CPLSerializedFeedbackMessage *)&v19 init];
            v14 = v13;
            if (v13)
            {
              objc_storeStrong(&v13->_uuid, v7);
              value = [v10 value];
              feedbackType = v14->_feedbackType;
              v14->_feedbackType = value;

              objc_storeStrong(&v14->_serverMessage, v9);
            }

            self = v14;
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CPLSerializedFeedbackMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = CPLSerializedFeedbackMessage;
  v5 = [(CPLSerializedFeedbackMessage *)&v14 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v5->_uuid;
    v5->_uuid = uUID;

    feedbackType = [messageCopy feedbackType];
    v9 = [feedbackType copy];
    feedbackType = v5->_feedbackType;
    v5->_feedbackType = v9;

    serverMessage = [messageCopy serverMessage];
    serverMessage = v5->_serverMessage;
    v5->_serverMessage = serverMessage;
  }

  return v5;
}

+ (id)messagesForPlistRepresentation:(id)representation
{
  v19 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    array = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(representationCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = representationCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [CPLSerializedFeedbackMessage alloc];
          v12 = [(CPLSerializedFeedbackMessage *)v11 initWithDictionaryRepresentation:v10, v14];
          if (v12)
          {
            [array addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

+ (id)plistRepresentationForMessages:(id)messages
{
  v17 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addObject:dictionaryRepresentation];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end