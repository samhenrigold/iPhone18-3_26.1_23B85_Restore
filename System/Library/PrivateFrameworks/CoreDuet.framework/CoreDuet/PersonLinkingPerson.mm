@interface PersonLinkingPerson
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addEmails:(id)emails;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PersonLinkingPerson

- (void)addEmails:(id)emails
{
  emailsCopy = emails;
  emails = self->_emails;
  v8 = emailsCopy;
  if (!emails)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_emails;
    self->_emails = v6;

    emailsCopy = v8;
    emails = self->_emails;
  }

  [(NSMutableArray *)emails addObject:emailsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PersonLinkingPerson;
  v4 = [(PersonLinkingPerson *)&v8 description];
  dictionaryRepresentation = [(PersonLinkingPerson *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  emails = self->_emails;
  if (emails)
  {
    [v4 setObject:emails forKey:@"emails"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_emails;
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

        PBDataWriterWriteStringField();
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
  if (self->_name)
  {
    [toCopy setName:?];
  }

  if ([(PersonLinkingPerson *)self emailsCount])
  {
    [toCopy clearEmails];
    emailsCount = [(PersonLinkingPerson *)self emailsCount];
    if (emailsCount)
    {
      v5 = emailsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PersonLinkingPerson *)self emailsAtIndex:i];
        [toCopy addEmails:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_emails;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addEmails:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[2])) || -[NSString isEqual:](name, "isEqual:")))
  {
    emails = self->_emails;
    if (emails | equalCopy[1])
    {
      v7 = [(NSMutableArray *)emails isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(PersonLinkingPerson *)self setName:?];
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

        [(PersonLinkingPerson *)self addEmails:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end