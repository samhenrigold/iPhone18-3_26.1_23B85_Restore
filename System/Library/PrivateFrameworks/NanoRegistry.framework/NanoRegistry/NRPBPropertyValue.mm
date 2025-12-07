@interface NRPBPropertyValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArrayValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsError:(BOOL)error;
- (void)setHasIsMiniUUIDSet:(BOOL)set;
- (void)setHasIsSecurePropertyValue:(BOOL)value;
- (void)setHasIsSet:(BOOL)set;
- (void)writeTo:(id)to;
@end

@implementation NRPBPropertyValue

- (void)addArrayValues:(id)values
{
  valuesCopy = values;
  arrayValues = self->_arrayValues;
  v8 = valuesCopy;
  if (!arrayValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_arrayValues;
    self->_arrayValues = v6;

    valuesCopy = v8;
    arrayValues = self->_arrayValues;
  }

  [(NSMutableArray *)arrayValues addObject:valuesCopy];
}

- (void)setHasIsSet:(BOOL)set
{
  if (set)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsSecurePropertyValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsError:(BOOL)error
{
  if (error)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsMiniUUIDSet:(BOOL)set
{
  if (set)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBPropertyValue;
  v4 = [(NRPBPropertyValue *)&v8 description];
  dictionaryRepresentation = [(NRPBPropertyValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [dictionary setObject:stringValue forKey:@"stringValue"];
  }

  numberValue = self->_numberValue;
  if (numberValue)
  {
    dictionaryRepresentation = [(NRPBNumber *)numberValue dictionaryRepresentation];
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
    dictionaryRepresentation2 = [(NRPBSize *)sizeValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"sizeValue"];
  }

  dictionaryKey = self->_dictionaryKey;
  if (dictionaryKey)
  {
    dictionaryRepresentation3 = [(NRPBPropertyValue *)dictionaryKey dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"dictionaryKey"];
  }

  if ([(NSMutableArray *)self->_arrayValues count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_arrayValues, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = self->_arrayValues;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation4 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation4];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"arrayValues"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSet];
    [v4 setObject:v24 forKey:@"isSet"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_24:
      if ((has & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_24;
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isSecurePropertyValue, v28}];
  [v4 setObject:v25 forKey:@"isSecurePropertyValue"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_25:
    if ((has & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isDate, v28}];
  [v4 setObject:v26 forKey:@"isDate"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_26:
    if ((has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_34:
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isError, v28}];
  [v4 setObject:v27 forKey:@"isError"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_27:
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isMiniUUIDSet, v28}];
    [v4 setObject:v22 forKey:@"isMiniUUIDSet"];
  }

LABEL_28:

  return v4;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
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

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_arrayValues;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_22:
      if ((has & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_22;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_23:
    if ((has & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_30:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_29:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((has & 4) != 0)
  {
LABEL_25:
    PBDataWriterWriteBOOLField();
  }

LABEL_26:
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

  if ([(NRPBPropertyValue *)self arrayValuesCount])
  {
    [toCopy clearArrayValues];
    arrayValuesCount = [(NRPBPropertyValue *)self arrayValuesCount];
    if (arrayValuesCount)
    {
      v5 = arrayValuesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NRPBPropertyValue *)self arrayValuesAtIndex:i];
        [toCopy addArrayValues:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[68] = self->_isSet;
    toCopy[72] |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_19:
      if ((has & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_19;
  }

  toCopy[67] = self->_isSecurePropertyValue;
  toCopy[72] |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_20:
    if ((has & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[64] = self->_isDate;
  toCopy[72] |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_21:
    if ((has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_29:
  toCopy[65] = self->_isError;
  toCopy[72] |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_22:
    toCopy[66] = self->_isMiniUUIDSet;
    toCopy[72] |= 4u;
  }

LABEL_23:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NRPBNumber *)self->_numberValue copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_uUIDValue copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSData *)self->_dataValue copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NRPBSize *)self->_sizeValue copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NRPBPropertyValue *)self->_dictionaryKey copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_arrayValues;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * i) copyWithZone:{zone, v26}];
        [v5 addArrayValues:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 68) = self->_isSet;
    *(v5 + 72) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 67) = self->_isSecurePropertyValue;
  *(v5 + 72) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    *(v5 + 65) = self->_isError;
    *(v5 + 72) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_13;
  }

LABEL_17:
  *(v5 + 64) = self->_isDate;
  *(v5 + 72) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    *(v5 + 66) = self->_isMiniUUIDSet;
    *(v5 + 72) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 6))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  numberValue = self->_numberValue;
  if (numberValue | *(equalCopy + 4))
  {
    if (![(NRPBNumber *)numberValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  uUIDValue = self->_uUIDValue;
  if (uUIDValue | *(equalCopy + 7))
  {
    if (![(NSData *)uUIDValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 2))
  {
    if (![(NSData *)dataValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  sizeValue = self->_sizeValue;
  if (sizeValue | *(equalCopy + 5))
  {
    if (![(NRPBSize *)sizeValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dictionaryKey = self->_dictionaryKey;
  if (dictionaryKey | *(equalCopy + 3))
  {
    if (![(NRPBPropertyValue *)dictionaryKey isEqual:?])
    {
      goto LABEL_54;
    }
  }

  arrayValues = self->_arrayValues;
  if (arrayValues | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)arrayValues isEqual:?])
    {
      goto LABEL_54;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 72) & 0x10) == 0)
    {
      goto LABEL_54;
    }

    if (self->_isSet)
    {
      if ((*(equalCopy + 68) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(equalCopy + 68))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 72) & 0x10) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0)
    {
      goto LABEL_54;
    }

    if (self->_isSecurePropertyValue)
    {
      if ((*(equalCopy + 67) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(equalCopy + 67))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_54;
    }

    if (self->_isDate)
    {
      if ((*(equalCopy + 64) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(equalCopy + 64))
    {
      goto LABEL_54;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 72) & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    v12 = 0;
    goto LABEL_55;
  }

  if ((*(equalCopy + 72) & 2) == 0)
  {
    goto LABEL_54;
  }

  if (self->_isError)
  {
    if ((*(equalCopy + 65) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (*(equalCopy + 65))
  {
    goto LABEL_54;
  }

LABEL_24:
  v12 = (*(equalCopy + 72) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) != 0)
    {
      if (self->_isMiniUUIDSet)
      {
        if (*(equalCopy + 66))
        {
          goto LABEL_56;
        }
      }

      else if (!*(equalCopy + 66))
      {
LABEL_56:
        v12 = 1;
        goto LABEL_55;
      }
    }

    goto LABEL_54;
  }

LABEL_55:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  v4 = [(NRPBNumber *)self->_numberValue hash];
  v5 = [(NSData *)self->_uUIDValue hash];
  v6 = [(NSData *)self->_dataValue hash];
  v7 = [(NRPBSize *)self->_sizeValue hash];
  v8 = [(NRPBPropertyValue *)self->_dictionaryKey hash];
  v9 = [(NSMutableArray *)self->_arrayValues hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v10 = 2654435761 * self->_isSet;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v11 = 2654435761 * self->_isSecurePropertyValue;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v12 = 2654435761 * self->_isDate;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v13 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_9:
  v12 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v13 = 2654435761 * self->_isError;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = 2654435761 * self->_isMiniUUIDSet;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(NRPBPropertyValue *)self setStringValue:?];
  }

  numberValue = self->_numberValue;
  v6 = *(fromCopy + 4);
  if (numberValue)
  {
    if (v6)
    {
      [(NRPBNumber *)numberValue mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NRPBPropertyValue *)self setNumberValue:?];
  }

  if (*(fromCopy + 7))
  {
    [(NRPBPropertyValue *)self setUUIDValue:?];
  }

  if (*(fromCopy + 2))
  {
    [(NRPBPropertyValue *)self setDataValue:?];
  }

  sizeValue = self->_sizeValue;
  v8 = *(fromCopy + 5);
  if (sizeValue)
  {
    if (v8)
    {
      [(NRPBSize *)sizeValue mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NRPBPropertyValue *)self setSizeValue:?];
  }

  dictionaryKey = self->_dictionaryKey;
  v10 = *(fromCopy + 3);
  if (dictionaryKey)
  {
    if (v10)
    {
      [(NRPBPropertyValue *)dictionaryKey mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(NRPBPropertyValue *)self setDictionaryKey:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(fromCopy + 1);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NRPBPropertyValue *)self addArrayValues:*(*(&v17 + 1) + 8 * i), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *(fromCopy + 72);
  if ((v16 & 0x10) != 0)
  {
    self->_isSet = *(fromCopy + 68);
    *&self->_has |= 0x10u;
    v16 = *(fromCopy + 72);
    if ((v16 & 8) == 0)
    {
LABEL_31:
      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }
  }

  else if ((*(fromCopy + 72) & 8) == 0)
  {
    goto LABEL_31;
  }

  self->_isSecurePropertyValue = *(fromCopy + 67);
  *&self->_has |= 8u;
  v16 = *(fromCopy + 72);
  if ((v16 & 1) == 0)
  {
LABEL_32:
    if ((v16 & 2) == 0)
    {
      goto LABEL_33;
    }

LABEL_39:
    self->_isError = *(fromCopy + 65);
    *&self->_has |= 2u;
    if ((*(fromCopy + 72) & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_38:
  self->_isDate = *(fromCopy + 64);
  *&self->_has |= 1u;
  v16 = *(fromCopy + 72);
  if ((v16 & 2) != 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  if ((v16 & 4) != 0)
  {
LABEL_34:
    self->_isMiniUUIDSet = *(fromCopy + 66);
    *&self->_has |= 4u;
  }

LABEL_35:
}

@end