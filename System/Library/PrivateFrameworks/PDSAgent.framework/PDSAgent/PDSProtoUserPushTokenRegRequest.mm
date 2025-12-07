@interface PDSProtoUserPushTokenRegRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDeviceInfo:(id)info;
- (void)addTopic:(id)topic;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDSProtoUserPushTokenRegRequest

- (void)addDeviceInfo:(id)info
{
  infoCopy = info;
  deviceInfos = self->_deviceInfos;
  v8 = infoCopy;
  if (!deviceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deviceInfos;
    self->_deviceInfos = v6;

    infoCopy = v8;
    deviceInfos = self->_deviceInfos;
  }

  [(NSMutableArray *)deviceInfos addObject:infoCopy];
}

- (void)addTopic:(id)topic
{
  topicCopy = topic;
  topics = self->_topics;
  v8 = topicCopy;
  if (!topics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topics;
    self->_topics = v6;

    topicCopy = v8;
    topics = self->_topics;
  }

  [(NSMutableArray *)topics addObject:topicCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoUserPushTokenRegRequest;
  v4 = [(PDSProtoUserPushTokenRegRequest *)&v8 description];
  dictionaryRepresentation = [(PDSProtoUserPushTokenRegRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  userPushToken = self->_userPushToken;
  if (userPushToken)
  {
    dictionaryRepresentation = [(PDSProtoUserPushToken *)userPushToken dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"user_push_token"];
  }

  if ([(NSMutableArray *)self->_deviceInfos count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_deviceInfos, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_deviceInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"device_info"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ttl];
    [dictionary setObject:v13 forKey:@"ttl"];
  }

  if ([(NSMutableArray *)self->_topics count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_topics, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_topics;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation3 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation3];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"topic"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_userPushToken)
  {
    [PDSProtoUserPushTokenRegRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_deviceInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_topics;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setUserPushToken:self->_userPushToken];
  if ([(PDSProtoUserPushTokenRegRequest *)self deviceInfosCount])
  {
    [toCopy clearDeviceInfos];
    deviceInfosCount = [(PDSProtoUserPushTokenRegRequest *)self deviceInfosCount];
    if (deviceInfosCount)
    {
      v5 = deviceInfosCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDSProtoUserPushTokenRegRequest *)self deviceInfoAtIndex:i];
        [toCopy addDeviceInfo:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_ttl;
    *(toCopy + 40) |= 1u;
  }

  if ([(PDSProtoUserPushTokenRegRequest *)self topicsCount])
  {
    [toCopy clearTopics];
    topicsCount = [(PDSProtoUserPushTokenRegRequest *)self topicsCount];
    if (topicsCount)
    {
      v9 = topicsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PDSProtoUserPushTokenRegRequest *)self topicAtIndex:j];
        [toCopy addTopic:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDSProtoUserPushToken *)self->_userPushToken copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_deviceInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addDeviceInfo:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_ttl;
    *(v5 + 40) |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_topics;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addTopic:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  userPushToken = self->_userPushToken;
  if (userPushToken | *(equalCopy + 4))
  {
    if (![(PDSProtoUserPushToken *)userPushToken isEqual:?])
    {
      goto LABEL_13;
    }
  }

  deviceInfos = self->_deviceInfos;
  if (deviceInfos | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)deviceInfos isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_ttl != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  topics = self->_topics;
  if (topics | *(equalCopy + 3))
  {
    v8 = [(NSMutableArray *)topics isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PDSProtoUserPushToken *)self->_userPushToken hash];
  v4 = [(NSMutableArray *)self->_deviceInfos hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_ttl;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_topics hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  userPushToken = self->_userPushToken;
  v6 = *(fromCopy + 4);
  if (userPushToken)
  {
    if (v6)
    {
      [(PDSProtoUserPushToken *)userPushToken mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDSProtoUserPushTokenRegRequest *)self setUserPushToken:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDSProtoUserPushTokenRegRequest *)self addDeviceInfo:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 40))
  {
    self->_ttl = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(fromCopy + 3);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PDSProtoUserPushTokenRegRequest *)self addTopic:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

@end