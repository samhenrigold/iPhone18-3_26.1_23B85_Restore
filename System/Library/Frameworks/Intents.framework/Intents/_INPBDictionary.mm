@interface _INPBDictionary
- (BOOL)isEqual:(id)equal;
- (_INPBDictionary)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addPair:(id)pair;
- (void)encodeWithCoder:(id)coder;
- (void)setPairs:(id)pairs;
- (void)writeTo:(id)to;
@end

@implementation _INPBDictionary

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_pairs count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_pairs;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"pair"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    pairs = [(_INPBDictionary *)self pairs];
    pairs2 = [equalCopy pairs];
    v7 = pairs2;
    if ((pairs != 0) != (pairs2 == 0))
    {
      pairs3 = [(_INPBDictionary *)self pairs];
      if (!pairs3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = pairs3;
      pairs4 = [(_INPBDictionary *)self pairs];
      pairs5 = [equalCopy pairs];
      v12 = [pairs4 isEqual:pairs5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDictionary allocWithZone:](_INPBDictionary init];
  v6 = [(NSArray *)self->_pairs copyWithZone:zone];
  [(_INPBDictionary *)v5 setPairs:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDictionary *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDictionary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDictionary *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_pairs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addPair:(id)pair
{
  pairCopy = pair;
  pairs = self->_pairs;
  v8 = pairCopy;
  if (!pairs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairs;
    self->_pairs = array;

    pairCopy = v8;
    pairs = self->_pairs;
  }

  [(NSArray *)pairs addObject:pairCopy];
}

- (void)setPairs:(id)pairs
{
  v4 = [pairs mutableCopy];
  pairs = self->_pairs;
  self->_pairs = v4;

  MEMORY[0x1EEE66BB8](v4, pairs);
}

@end