@interface AWDSlowWiFiReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLinkQualSample:(id)sample;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDSlowWiFiReport

- (void)dealloc
{
  [(AWDSlowWiFiReport *)self setSlowNotice:0];
  [(AWDSlowWiFiReport *)self setLinkQualSamples:0];
  v3.receiver = self;
  v3.super_class = AWDSlowWiFiReport;
  [(AWDSlowWiFiReport *)&v3 dealloc];
}

- (void)addLinkQualSample:(id)sample
{
  linkQualSamples = self->_linkQualSamples;
  if (!linkQualSamples)
  {
    linkQualSamples = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_linkQualSamples = linkQualSamples;
  }

  [(NSMutableArray *)linkQualSamples addObject:sample];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSlowWiFiReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSlowWiFiReport description](&v3, sel_description), -[AWDSlowWiFiReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  slowNotice = self->_slowNotice;
  if (slowNotice)
  {
    [dictionary setObject:-[AWDSlowWiFiNotification dictionaryRepresentation](slowNotice forKey:{"dictionaryRepresentation"), @"slowNotice"}];
  }

  if ([(NSMutableArray *)self->_linkQualSamples count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_linkQualSamples, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    linkQualSamples = self->_linkQualSamples;
    v7 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(linkQualSamples);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"linkQualSample"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v14 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_slowNotice)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  linkQualSamples = self->_linkQualSamples;
  v5 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(linkQualSamples);
        }

        PBDataWriterWriteSubmessage();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_slowNotice)
  {
    [to setSlowNotice:?];
  }

  if ([(AWDSlowWiFiReport *)self linkQualSamplesCount])
  {
    [to clearLinkQualSamples];
    linkQualSamplesCount = [(AWDSlowWiFiReport *)self linkQualSamplesCount];
    if (linkQualSamplesCount)
    {
      v6 = linkQualSamplesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addLinkQualSample:{-[AWDSlowWiFiReport linkQualSampleAtIndex:](self, "linkQualSampleAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  v6[3] = [(AWDSlowWiFiNotification *)self->_slowNotice copyWithZone:zone];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  linkQualSamples = self->_linkQualSamples;
  v8 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(linkQualSamples);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addLinkQualSample:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    slowNotice = self->_slowNotice;
    if (!(slowNotice | *(equal + 3)) || (v5 = [(AWDSlowWiFiNotification *)slowNotice isEqual:?]) != 0)
    {
      linkQualSamples = self->_linkQualSamples;
      if (linkQualSamples | *(equal + 2))
      {

        LOBYTE(v5) = [(NSMutableArray *)linkQualSamples isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDSlowWiFiNotification *)self->_slowNotice hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_linkQualSamples hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  slowNotice = self->_slowNotice;
  v6 = *(from + 3);
  if (slowNotice)
  {
    if (v6)
    {
      [(AWDSlowWiFiNotification *)slowNotice mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDSlowWiFiReport *)self setSlowNotice:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(from + 2);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDSlowWiFiReport *)self addLinkQualSample:*(*(&v12 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end