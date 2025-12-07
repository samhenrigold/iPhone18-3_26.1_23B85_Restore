@interface CSLUIPBPropertyValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArrayValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSLUIPBPropertyValue

- (void)addArrayValues:(id)values
{
  valuesCopy = values;
  arrayValues = self->_arrayValues;
  v8 = valuesCopy;
  if (!arrayValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_arrayValues;
    self->_arrayValues = v6;

    valuesCopy = v8;
    arrayValues = self->_arrayValues;
  }

  [(NSMutableArray *)arrayValues addObject:valuesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBPropertyValue;
  v4 = [(CSLUIPBPropertyValue *)&v8 description];
  dictionaryRepresentation = [(CSLUIPBPropertyValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [dictionary setObject:stringValue forKey:@"stringValue"];
  }

  numberValue = self->_numberValue;
  if (numberValue)
  {
    dictionaryRepresentation = [(CSLUIPBNumber *)numberValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"numberValue"];
  }

  uUIDValue = self->_uUIDValue;
  if (uUIDValue)
  {
    [v4 setObject:uUIDValue forKey:@"UUIDValue"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  sizeValue = self->_sizeValue;
  if (sizeValue)
  {
    dictionaryRepresentation2 = [(CSLUIPBSize *)sizeValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"sizeValue"];
  }

  dictionaryKey = self->_dictionaryKey;
  if (dictionaryKey)
  {
    dictionaryRepresentation3 = [(CSLUIPBPropertyValue *)dictionaryKey dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"dictionaryKey"];
  }

  if ([(NSMutableArray *)self->_arrayValues count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_arrayValues, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_arrayValues;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation4 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation4];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"arrayValues"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_numberValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_uUIDValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sizeValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dictionaryKey)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_arrayValues;
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
  if (self->_stringValue)
  {
    [toCopy setStringValue:?];
  }

  if (self->_numberValue)
  {
    [toCopy setNumberValue:?];
  }

  if (self->_uUIDValue)
  {
    [toCopy setUUIDValue:?];
  }

  if (self->_dataValue)
  {
    [toCopy setDataValue:?];
  }

  if (self->_sizeValue)
  {
    [toCopy setSizeValue:?];
  }

  if (self->_dictionaryKey)
  {
    [toCopy setDictionaryKey:?];
  }

  if ([(CSLUIPBPropertyValue *)self arrayValuesCount])
  {
    [toCopy clearArrayValues];
    arrayValuesCount = [(CSLUIPBPropertyValue *)self arrayValuesCount];
    if (arrayValuesCount)
    {
      v5 = arrayValuesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSLUIPBPropertyValue *)self arrayValuesAtIndex:i];
        [toCopy addArrayValues:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(CSLUIPBNumber *)self->_numberValue copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_uUIDValue copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSData *)self->_dataValue copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(CSLUIPBSize *)self->_sizeValue copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(CSLUIPBPropertyValue *)self->_dictionaryKey copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_arrayValues;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{zone, v25}];
        [v5 addArrayValues:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((stringValue = self->_stringValue, !(stringValue | equalCopy[6])) || -[NSString isEqual:](stringValue, "isEqual:")) && ((numberValue = self->_numberValue, !(numberValue | equalCopy[4])) || -[CSLUIPBNumber isEqual:](numberValue, "isEqual:")) && ((uUIDValue = self->_uUIDValue, !(uUIDValue | equalCopy[7])) || -[NSData isEqual:](uUIDValue, "isEqual:")) && ((dataValue = self->_dataValue, !(dataValue | equalCopy[2])) || -[NSData isEqual:](dataValue, "isEqual:")) && ((sizeValue = self->_sizeValue, !(sizeValue | equalCopy[5])) || -[CSLUIPBSize isEqual:](sizeValue, "isEqual:")) && ((dictionaryKey = self->_dictionaryKey, !(dictionaryKey | equalCopy[3])) || -[CSLUIPBPropertyValue isEqual:](dictionaryKey, "isEqual:")))
  {
    arrayValues = self->_arrayValues;
    if (arrayValues | equalCopy[1])
    {
      v12 = [(NSMutableArray *)arrayValues isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  v4 = [(CSLUIPBNumber *)self->_numberValue hash]^ v3;
  v5 = [(NSData *)self->_uUIDValue hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_dataValue hash];
  v7 = [(CSLUIPBSize *)self->_sizeValue hash];
  v8 = v7 ^ [(CSLUIPBPropertyValue *)self->_dictionaryKey hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_arrayValues hash];
}

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(CSLUIPBPropertyValue *)self setStringValue:?];
  }

  numberValue = self->_numberValue;
  v6 = *(fromCopy + 4);
  if (numberValue)
  {
    if (v6)
    {
      [(CSLUIPBNumber *)numberValue mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(CSLUIPBPropertyValue *)self setNumberValue:?];
  }

  if (*(fromCopy + 7))
  {
    [(CSLUIPBPropertyValue *)self setUUIDValue:?];
  }

  if (*(fromCopy + 2))
  {
    [(CSLUIPBPropertyValue *)self setDataValue:?];
  }

  sizeValue = self->_sizeValue;
  v8 = *(fromCopy + 5);
  if (sizeValue)
  {
    if (v8)
    {
      [(CSLUIPBSize *)sizeValue mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CSLUIPBPropertyValue *)self setSizeValue:?];
  }

  dictionaryKey = self->_dictionaryKey;
  v10 = *(fromCopy + 3);
  if (dictionaryKey)
  {
    if (v10)
    {
      [(CSLUIPBPropertyValue *)dictionaryKey mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(CSLUIPBPropertyValue *)self setDictionaryKey:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(fromCopy + 1);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CSLUIPBPropertyValue *)self addArrayValues:*(*(&v16 + 1) + 8 * i), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

@end