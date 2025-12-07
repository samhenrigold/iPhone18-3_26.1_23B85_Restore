@interface MTRPluginPBMCommandWithRequiredResponses
+ (id)commandWithRequiredResponses:(id)responses;
+ (id)commandWithRequiredResponsesFromMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (NSArray)commandWithRequiredResponses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addCommandWithRequiredResponseValue:(id)value;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMCommandWithRequiredResponses

+ (id)commandWithRequiredResponsesFromMessage:(id)message
{
  messageCopy = message;
  v4 = [MTRPluginPBMCommandWithRequiredResponses alloc];
  messageData = [messageCopy messageData];

  v6 = [(MTRPluginPBMCommandWithRequiredResponses *)v4 initWithData:messageData];
  if ([(MTRPluginPBMCommandWithRequiredResponses *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)commandWithRequiredResponses:(id)responses
{
  v17 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  v4 = objc_alloc_init(MTRPluginPBMCommandWithRequiredResponses);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = responsesCopy;
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

        v10 = [MTRPluginPBMCommandWithRequiredResponse commandWithRequiredResponse:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [(MTRPluginPBMCommandWithRequiredResponses *)v4 addCommandWithRequiredResponseValue:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)commandWithRequiredResponses
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  commandWithRequiredResponseValues = [(MTRPluginPBMCommandWithRequiredResponses *)self commandWithRequiredResponseValues];
  v5 = [commandWithRequiredResponseValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(commandWithRequiredResponseValues);
        }

        commandWithRequiredResponse = [*(*(&v11 + 1) + 8 * i) commandWithRequiredResponse];
        if (commandWithRequiredResponse)
        {
          [array addObject:commandWithRequiredResponse];
        }
      }

      v6 = [commandWithRequiredResponseValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)addCommandWithRequiredResponseValue:(id)value
{
  valueCopy = value;
  commandWithRequiredResponseValues = self->_commandWithRequiredResponseValues;
  v8 = valueCopy;
  if (!commandWithRequiredResponseValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_commandWithRequiredResponseValues;
    self->_commandWithRequiredResponseValues = v6;

    valueCopy = v8;
    commandWithRequiredResponseValues = self->_commandWithRequiredResponseValues;
  }

  [(NSMutableArray *)commandWithRequiredResponseValues addObject:valueCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMCommandWithRequiredResponses;
  v4 = [(MTRPluginPBMCommandWithRequiredResponses *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMCommandWithRequiredResponses *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_commandWithRequiredResponseValues count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_commandWithRequiredResponseValues, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_commandWithRequiredResponseValues;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"commandWithRequiredResponseValue"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_commandWithRequiredResponseValues;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MTRPluginPBMCommandWithRequiredResponses *)self commandWithRequiredResponseValuesCount])
  {
    [toCopy clearCommandWithRequiredResponseValues];
    commandWithRequiredResponseValuesCount = [(MTRPluginPBMCommandWithRequiredResponses *)self commandWithRequiredResponseValuesCount];
    if (commandWithRequiredResponseValuesCount)
    {
      v5 = commandWithRequiredResponseValuesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MTRPluginPBMCommandWithRequiredResponses *)self commandWithRequiredResponseValueAtIndex:i];
        [toCopy addCommandWithRequiredResponseValue:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_commandWithRequiredResponseValues;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addCommandWithRequiredResponseValue:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    commandWithRequiredResponseValues = self->_commandWithRequiredResponseValues;
    if (commandWithRequiredResponseValues | equalCopy[1])
    {
      v6 = [(NSMutableArray *)commandWithRequiredResponseValues isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MTRPluginPBMCommandWithRequiredResponses *)self addCommandWithRequiredResponseValue:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end