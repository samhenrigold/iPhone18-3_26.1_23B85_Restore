@interface _INPBIntentSupport
- (BOOL)isEqual:(id)equal;
- (_INPBIntentSupport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntentsRestrictedWhileLocked:(id)locked;
- (void)addIntentsSupported:(id)supported;
- (void)addSupportedMediaCategories:(id)categories;
- (void)encodeWithCoder:(id)coder;
- (void)setIntentsRestrictedWhileLockeds:(id)lockeds;
- (void)setIntentsSupporteds:(id)supporteds;
- (void)setSupportedMediaCategories:(id)categories;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentSupport

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_intentsRestrictedWhileLockeds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = self->_intentsRestrictedWhileLockeds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"intents_restricted_while_locked"];
  }

  if ([(NSArray *)self->_intentsSupporteds count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = self->_intentsSupporteds;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"intents_supported"];
  }

  if (self->_supportedMediaCategories)
  {
    supportedMediaCategories = [(_INPBIntentSupport *)self supportedMediaCategories];
    v19 = [supportedMediaCategories copy];
    [dictionary setObject:v19 forKeyedSubscript:@"supported_media_categories"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_intentsRestrictedWhileLockeds hash];
  v4 = [(NSArray *)self->_intentsSupporteds hash]^ v3;
  return v4 ^ [(NSArray *)self->_supportedMediaCategories hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  intentsRestrictedWhileLockeds = [(_INPBIntentSupport *)self intentsRestrictedWhileLockeds];
  intentsRestrictedWhileLockeds2 = [equalCopy intentsRestrictedWhileLockeds];
  if ((intentsRestrictedWhileLockeds != 0) == (intentsRestrictedWhileLockeds2 == 0))
  {
    goto LABEL_16;
  }

  intentsRestrictedWhileLockeds3 = [(_INPBIntentSupport *)self intentsRestrictedWhileLockeds];
  if (intentsRestrictedWhileLockeds3)
  {
    v8 = intentsRestrictedWhileLockeds3;
    intentsRestrictedWhileLockeds4 = [(_INPBIntentSupport *)self intentsRestrictedWhileLockeds];
    intentsRestrictedWhileLockeds5 = [equalCopy intentsRestrictedWhileLockeds];
    v11 = [intentsRestrictedWhileLockeds4 isEqual:intentsRestrictedWhileLockeds5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentsRestrictedWhileLockeds = [(_INPBIntentSupport *)self intentsSupporteds];
  intentsRestrictedWhileLockeds2 = [equalCopy intentsSupporteds];
  if ((intentsRestrictedWhileLockeds != 0) == (intentsRestrictedWhileLockeds2 == 0))
  {
    goto LABEL_16;
  }

  intentsSupporteds = [(_INPBIntentSupport *)self intentsSupporteds];
  if (intentsSupporteds)
  {
    v13 = intentsSupporteds;
    intentsSupporteds2 = [(_INPBIntentSupport *)self intentsSupporteds];
    intentsSupporteds3 = [equalCopy intentsSupporteds];
    v16 = [intentsSupporteds2 isEqual:intentsSupporteds3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentsRestrictedWhileLockeds = [(_INPBIntentSupport *)self supportedMediaCategories];
  intentsRestrictedWhileLockeds2 = [equalCopy supportedMediaCategories];
  if ((intentsRestrictedWhileLockeds != 0) != (intentsRestrictedWhileLockeds2 == 0))
  {
    supportedMediaCategories = [(_INPBIntentSupport *)self supportedMediaCategories];
    if (!supportedMediaCategories)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = supportedMediaCategories;
    supportedMediaCategories2 = [(_INPBIntentSupport *)self supportedMediaCategories];
    supportedMediaCategories3 = [equalCopy supportedMediaCategories];
    v21 = [supportedMediaCategories2 isEqual:supportedMediaCategories3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentSupport allocWithZone:](_INPBIntentSupport init];
  v6 = [(NSArray *)self->_intentsRestrictedWhileLockeds copyWithZone:zone];
  [(_INPBIntentSupport *)v5 setIntentsRestrictedWhileLockeds:v6];

  v7 = [(NSArray *)self->_intentsSupporteds copyWithZone:zone];
  [(_INPBIntentSupport *)v5 setIntentsSupporteds:v7];

  v8 = [(NSArray *)self->_supportedMediaCategories copyWithZone:zone];
  [(_INPBIntentSupport *)v5 setSupportedMediaCategories:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentSupport *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentSupport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentSupport *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_intentsRestrictedWhileLockeds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_intentsSupporteds;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_supportedMediaCategories;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)addSupportedMediaCategories:(id)categories
{
  categoriesCopy = categories;
  supportedMediaCategories = self->_supportedMediaCategories;
  v8 = categoriesCopy;
  if (!supportedMediaCategories)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedMediaCategories;
    self->_supportedMediaCategories = array;

    categoriesCopy = v8;
    supportedMediaCategories = self->_supportedMediaCategories;
  }

  [(NSArray *)supportedMediaCategories addObject:categoriesCopy];
}

- (void)setSupportedMediaCategories:(id)categories
{
  v4 = [categories mutableCopy];
  supportedMediaCategories = self->_supportedMediaCategories;
  self->_supportedMediaCategories = v4;

  MEMORY[0x1EEE66BB8](v4, supportedMediaCategories);
}

- (void)addIntentsSupported:(id)supported
{
  supportedCopy = supported;
  intentsSupporteds = self->_intentsSupporteds;
  v8 = supportedCopy;
  if (!intentsSupporteds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentsSupporteds;
    self->_intentsSupporteds = array;

    supportedCopy = v8;
    intentsSupporteds = self->_intentsSupporteds;
  }

  [(NSArray *)intentsSupporteds addObject:supportedCopy];
}

- (void)setIntentsSupporteds:(id)supporteds
{
  v4 = [supporteds mutableCopy];
  intentsSupporteds = self->_intentsSupporteds;
  self->_intentsSupporteds = v4;

  MEMORY[0x1EEE66BB8](v4, intentsSupporteds);
}

- (void)addIntentsRestrictedWhileLocked:(id)locked
{
  lockedCopy = locked;
  intentsRestrictedWhileLockeds = self->_intentsRestrictedWhileLockeds;
  v8 = lockedCopy;
  if (!intentsRestrictedWhileLockeds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentsRestrictedWhileLockeds;
    self->_intentsRestrictedWhileLockeds = array;

    lockedCopy = v8;
    intentsRestrictedWhileLockeds = self->_intentsRestrictedWhileLockeds;
  }

  [(NSArray *)intentsRestrictedWhileLockeds addObject:lockedCopy];
}

- (void)setIntentsRestrictedWhileLockeds:(id)lockeds
{
  v4 = [lockeds mutableCopy];
  intentsRestrictedWhileLockeds = self->_intentsRestrictedWhileLockeds;
  self->_intentsRestrictedWhileLockeds = v4;

  MEMORY[0x1EEE66BB8](v4, intentsRestrictedWhileLockeds);
}

@end