@interface ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactEmbedding:(id)embedding;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent

- (void)addContactEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  contactEmbeddings = self->_contactEmbeddings;
  v8 = embeddingCopy;
  if (!contactEmbeddings)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contactEmbeddings;
    self->_contactEmbeddings = v6;

    embeddingCopy = v8;
    contactEmbeddings = self->_contactEmbeddings;
  }

  [(NSMutableArray *)contactEmbeddings addObject:embeddingCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent;
  v4 = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)&v8 description];
  dictionaryRepresentation = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sessinobd = self->_sessinobd;
  if (sessinobd)
  {
    [dictionary setObject:sessinobd forKey:@"sessinobd"];
  }

  userId = self->_userId;
  if (userId)
  {
    [v4 setObject:userId forKey:@"userId"];
  }

  if ([(NSMutableArray *)self->_contactEmbeddings count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contactEmbeddings, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_contactEmbeddings;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"contactEmbedding"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_sessinobd)
  {
    [ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_userId)
  {
    [ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_contactEmbeddings;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setSessinobd:self->_sessinobd];
  [toCopy setUserId:self->_userId];
  if ([(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self contactEmbeddingsCount])
  {
    [toCopy clearContactEmbeddings];
    contactEmbeddingsCount = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self contactEmbeddingsCount];
    if (contactEmbeddingsCount)
    {
      v5 = contactEmbeddingsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self contactEmbeddingAtIndex:i];
        [toCopy addContactEmbedding:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessinobd copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_userId copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_contactEmbeddings;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{zone, v17}];
        [v5 addContactEmbedding:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sessinobd = self->_sessinobd, !(sessinobd | equalCopy[2])) || -[NSString isEqual:](sessinobd, "isEqual:")) && ((userId = self->_userId, !(userId | equalCopy[3])) || -[NSString isEqual:](userId, "isEqual:")))
  {
    contactEmbeddings = self->_contactEmbeddings;
    if (contactEmbeddings | equalCopy[1])
    {
      v8 = [(NSMutableArray *)contactEmbeddings isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessinobd hash];
  v4 = [(NSString *)self->_userId hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_contactEmbeddings hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self setSessinobd:?];
  }

  if (*(fromCopy + 3))
  {
    [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self setUserId:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ContactEmbeddingAnalysisPETContactEmbeddingArrayEvent *)self addContactEmbedding:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end