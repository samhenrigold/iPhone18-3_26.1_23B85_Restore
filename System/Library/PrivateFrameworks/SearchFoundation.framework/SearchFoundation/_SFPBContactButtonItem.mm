@interface _SFPBContactButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBContactButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBContactButtonItem)initWithFacade:(id)facade;
- (_SFPBContactButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (int)actionTypesToShowAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addActionTypesToShow:(int)show;
- (void)setActionTypesToShow:(id)show;
- (void)setContactIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBContactButtonItem

- (_SFPBContactButtonItem)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBContactButtonItem *)self init];
  if (v5)
  {
    contactIdentifier = [facadeCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [facadeCopy contactIdentifier];
      [(_SFPBContactButtonItem *)v5 setContactIdentifier:contactIdentifier2];
    }

    person = [facadeCopy person];

    if (person)
    {
      v9 = [_SFPBPerson alloc];
      person2 = [facadeCopy person];
      v11 = [(_SFPBPerson *)v9 initWithFacade:person2];
      [(_SFPBContactButtonItem *)v5 setPerson:v11];
    }

    actionTypesToShow = [facadeCopy actionTypesToShow];
    if (actionTypesToShow)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    actionTypesToShow2 = [facadeCopy actionTypesToShow];
    v15 = [actionTypesToShow2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(actionTypesToShow2);
          }

          if (*(*(&v21 + 1) + 8 * i))
          {
            [v13 addObject:?];
          }
        }

        v16 = [actionTypesToShow2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [(_SFPBContactButtonItem *)v5 setActionTypesToShows:v13];
    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBContactButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v19 = v5;
  }

  return v5;
}

- (_SFPBContactButtonItem)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = _SFPBContactButtonItem;
  v5 = [(_SFPBContactButtonItem *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBContactButtonItem *)v5 setContactIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBPerson alloc] initWithDictionary:v8];
      [(_SFPBContactButtonItem *)v5 setPerson:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"actionTypesToShow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[_SFPBContactButtonItem addActionTypesToShow:](v5, "addActionTypesToShow:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v13);
      }

      v6 = v20;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBContactButtonItem setUniqueId:](v5, "setUniqueId:", [v17 unsignedLongLongValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBContactButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBContactButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBContactButtonItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actionTypesToShows count])
  {
    actionTypesToShows = [(_SFPBContactButtonItem *)self actionTypesToShows];
    v5 = [actionTypesToShows copy];
    [dictionary setObject:v5 forKeyedSubscript:@"actionTypesToShow"];
  }

  if (self->_contactIdentifier)
  {
    contactIdentifier = [(_SFPBContactButtonItem *)self contactIdentifier];
    v7 = [contactIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_person)
  {
    person = [(_SFPBContactButtonItem *)self person];
    dictionaryRepresentation = [person dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"person"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"person"];
    }
  }

  if (self->_uniqueId)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBContactButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v11 forKeyedSubscript:@"uniqueId"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = [(_SFPBPerson *)self->_person hash];
  return v4 ^ v3 ^ [(NSArray *)self->_actionTypesToShows hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  contactIdentifier = [(_SFPBContactButtonItem *)self contactIdentifier];
  contactIdentifier2 = [equalCopy contactIdentifier];
  if ((contactIdentifier != 0) == (contactIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  contactIdentifier3 = [(_SFPBContactButtonItem *)self contactIdentifier];
  if (contactIdentifier3)
  {
    v8 = contactIdentifier3;
    contactIdentifier4 = [(_SFPBContactButtonItem *)self contactIdentifier];
    contactIdentifier5 = [equalCopy contactIdentifier];
    v11 = [contactIdentifier4 isEqual:contactIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  contactIdentifier = [(_SFPBContactButtonItem *)self person];
  contactIdentifier2 = [equalCopy person];
  if ((contactIdentifier != 0) == (contactIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  person = [(_SFPBContactButtonItem *)self person];
  if (person)
  {
    v13 = person;
    person2 = [(_SFPBContactButtonItem *)self person];
    person3 = [equalCopy person];
    v16 = [person2 isEqual:person3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  contactIdentifier = [(_SFPBContactButtonItem *)self actionTypesToShows];
  contactIdentifier2 = [equalCopy actionTypesToShows];
  if ((contactIdentifier != 0) != (contactIdentifier2 == 0))
  {
    actionTypesToShows = [(_SFPBContactButtonItem *)self actionTypesToShows];
    if (!actionTypesToShows)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [equalCopy uniqueId];
      goto LABEL_18;
    }

    v18 = actionTypesToShows;
    actionTypesToShows2 = [(_SFPBContactButtonItem *)self actionTypesToShows];
    actionTypesToShows3 = [equalCopy actionTypesToShows];
    v21 = [actionTypesToShows2 isEqual:actionTypesToShows3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  contactIdentifier = [(_SFPBContactButtonItem *)self contactIdentifier];
  if (contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  person = [(_SFPBContactButtonItem *)self person];
  if (person)
  {
    PBDataWriterWriteSubmessage();
  }

  actionTypesToShows = [(_SFPBContactButtonItem *)self actionTypesToShows];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [actionTypesToShows countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(actionTypesToShows);
        }

        [*(*(&v12 + 1) + 8 * v11) intValue];
        PBDataWriterWriteInt32Field();
        ++v11;
      }

      while (v9 != v11);
      v9 = [actionTypesToShows countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if ([(_SFPBContactButtonItem *)self uniqueId])
  {
    PBDataWriterWriteUint64Field();
  }
}

- (int)actionTypesToShowAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_actionTypesToShows objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addActionTypesToShow:(int)show
{
  v3 = *&show;
  actionTypesToShows = self->_actionTypesToShows;
  if (!actionTypesToShows)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionTypesToShows;
    self->_actionTypesToShows = array;

    actionTypesToShows = self->_actionTypesToShows;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)actionTypesToShows addObject:v8];
}

- (void)setActionTypesToShow:(id)show
{
  self->_actionTypesToShows = [show copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setContactIdentifier:(id)identifier
{
  self->_contactIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

@end