@interface ADFeature
- (BOOL)isEqual:(id)equal;
- (double)doubleValueAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStringValue:(id)value;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADFeature

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = ADFeature;
  [(ADFeature *)&v3 dealloc];
}

- (double)doubleValueAtIndex:(unint64_t)index
{
  p_doubleValues = &self->_doubleValues;
  count = self->_doubleValues.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_doubleValues->list[index];
}

- (void)addStringValue:(id)value
{
  valueCopy = value;
  stringValues = self->_stringValues;
  v8 = valueCopy;
  if (!stringValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stringValues;
    self->_stringValues = v6;

    valueCopy = v8;
    stringValues = self->_stringValues;
  }

  [(NSMutableArray *)stringValues addObject:valueCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADFeature;
  v4 = [(ADFeature *)&v8 description];
  dictionaryRepresentation = [(ADFeature *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  version = self->_version;
  if (version)
  {
    [dictionary setObject:version forKey:@"version"];
  }

  v6 = PBRepeatedDoubleNSArray();
  [v4 setObject:v6 forKey:@"doubleValue"];

  stringValues = self->_stringValues;
  if (stringValues)
  {
    [v4 setObject:stringValues forKey:@"stringValue"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_doubleValues.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteDoubleField();
      ++v5;
    }

    while (v5 < self->_doubleValues.count);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_stringValues;
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

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_version)
  {
    [toCopy setVersion:?];
  }

  if ([(ADFeature *)self doubleValuesCount])
  {
    [toCopy clearDoubleValues];
    doubleValuesCount = [(ADFeature *)self doubleValuesCount];
    if (doubleValuesCount)
    {
      v5 = doubleValuesCount;
      for (i = 0; i != v5; ++i)
      {
        [(ADFeature *)self doubleValueAtIndex:i];
        [toCopy addDoubleValue:?];
      }
    }
  }

  if ([(ADFeature *)self stringValuesCount])
  {
    [toCopy clearStringValues];
    stringValuesCount = [(ADFeature *)self stringValuesCount];
    if (stringValuesCount)
    {
      v8 = stringValuesCount;
      for (j = 0; j != v8; ++j)
      {
        v10 = [(ADFeature *)self stringValueAtIndex:j];
        [toCopy addStringValue:v10];
      }
    }
  }

  if (self->_name)
  {
    [toCopy setName:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_version copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  PBRepeatedDoubleCopy();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_stringValues;
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
        [v5 addStringValue:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_name copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((version = self->_version, !(version | equalCopy[6])) || -[NSString isEqual:](version, "isEqual:")) && PBRepeatedDoubleIsEqual() && ((stringValues = self->_stringValues, !(stringValues | equalCopy[5])) || -[NSMutableArray isEqual:](stringValues, "isEqual:")))
  {
    name = self->_name;
    if (name | equalCopy[4])
    {
      v8 = [(NSString *)name isEqual:?];
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
  v3 = [(NSString *)self->_version hash];
  v4 = PBRepeatedDoubleHash() ^ v3;
  v5 = [(NSMutableArray *)self->_stringValues hash];
  return v4 ^ v5 ^ [(NSString *)self->_name hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(ADFeature *)self setVersion:?];
  }

  doubleValuesCount = [fromCopy doubleValuesCount];
  if (doubleValuesCount)
  {
    v6 = doubleValuesCount;
    for (i = 0; i != v6; ++i)
    {
      [fromCopy doubleValueAtIndex:i];
      [(ADFeature *)self addDoubleValue:?];
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(fromCopy + 5);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ADFeature *)self addStringValue:*(*(&v13 + 1) + 8 * j), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  if (*(fromCopy + 4))
  {
    [(ADFeature *)self setName:?];
  }
}

@end