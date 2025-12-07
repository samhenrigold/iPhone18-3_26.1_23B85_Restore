@interface SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMentions:(id)mentions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 2);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self setRequestId:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 1);
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

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self addMentions:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 3))
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self setRewrittenUtterance:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(NSMutableArray *)self->_mentions hash]^ v3;
  return v4 ^ [(NSString *)self->_rewrittenUtterance hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[2])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")) && ((mentions = self->_mentions, !(mentions | equalCopy[1])) || -[NSMutableArray isEqual:](mentions, "isEqual:")))
  {
    rewrittenUtterance = self->_rewrittenUtterance;
    if (rewrittenUtterance | equalCopy[3])
    {
      v8 = [(NSString *)rewrittenUtterance isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_mentions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{zone, v17}];
        [v5 addMentions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_rewrittenUtterance copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self mentionsCount])
  {
    [toCopy clearMentions];
    mentionsCount = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self mentionsCount];
    if (mentionsCount)
    {
      v5 = mentionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self mentionsAtIndex:i];
        [toCopy addMentions:v7];
      }
    }
  }

  if (self->_rewrittenUtterance)
  {
    [toCopy setRewrittenUtterance:?];
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_mentions;
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

  if (self->_rewrittenUtterance)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  if ([(NSMutableArray *)self->_mentions count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_mentions, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_mentions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"mentions"];
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance)
  {
    [dictionary setObject:rewrittenUtterance forKey:@"rewritten_utterance"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse;
  v4 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addMentions:(id)mentions
{
  mentionsCopy = mentions;
  mentions = self->_mentions;
  v8 = mentionsCopy;
  if (!mentions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_mentions;
    self->_mentions = v6;

    mentionsCopy = v8;
    mentions = self->_mentions;
  }

  [(NSMutableArray *)mentions addObject:mentionsCopy];
}

@end