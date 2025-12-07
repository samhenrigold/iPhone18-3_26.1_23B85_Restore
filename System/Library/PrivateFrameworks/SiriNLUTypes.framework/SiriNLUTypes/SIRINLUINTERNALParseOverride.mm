@interface SIRINLUINTERNALParseOverride
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)parserIdentifierAsString:(int)string;
- (int)StringAsParserIdentifier:(id)identifier;
- (int)parserIdentifier;
- (unint64_t)hash;
- (void)addNluRequestRules:(id)rules;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEnabled:(BOOL)enabled;
- (void)setHasParserIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALParseOverride

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALParseOverride *)self setIdA:?];
  }

  v5 = *(fromCopy + 60);
  if ((v5 & 4) != 0)
  {
    self->_enabled = *(fromCopy + 56);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 60);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 60) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_creationTimestampMsSinceUnixEpoch = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 60) & 2) != 0)
  {
LABEL_6:
    self->_parserIdentifier = *(fromCopy + 10);
    *&self->_has |= 2u;
  }

LABEL_7:
  parse = self->_parse;
  v7 = *(fromCopy + 4);
  if (parse)
  {
    if (v7)
    {
      [(SIRINLUEXTERNALUserParse *)parse mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUINTERNALParseOverride *)self setParse:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(fromCopy + 3);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SIRINLUINTERNALParseOverride *)self addNluRequestRules:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  if (*(fromCopy + 6))
  {
    [(SIRINLUINTERNALParseOverride *)self setSerializedParse:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idA hash];
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = 2654435761 * self->_enabled;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761u * self->_creationTimestampMsSinceUnixEpoch;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_parserIdentifier;
LABEL_8:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(SIRINLUEXTERNALUserParse *)self->_parse hash];
  v8 = [(NSMutableArray *)self->_nluRequestRules hash];
  return v7 ^ v8 ^ [(NSData *)self->_serializedParse hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  idA = self->_idA;
  if (idA | *(equalCopy + 2))
  {
    if (![(NSString *)idA isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  if ((*(equalCopy + 60) & 4) == 0)
  {
    goto LABEL_28;
  }

  if (self->_enabled)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_28;
  }

LABEL_6:
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_creationTimestampMsSinceUnixEpoch != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_parserIdentifier != *(equalCopy + 10))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_28;
  }

  parse = self->_parse;
  if (parse | *(equalCopy + 4) && ![(SIRINLUEXTERNALUserParse *)parse isEqual:?])
  {
    goto LABEL_28;
  }

  nluRequestRules = self->_nluRequestRules;
  if (nluRequestRules | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)nluRequestRules isEqual:?])
    {
      goto LABEL_28;
    }
  }

  serializedParse = self->_serializedParse;
  if (serializedParse | *(equalCopy + 6))
  {
    v9 = [(NSData *)serializedParse isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_29:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_idA copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 56) = self->_enabled;
    *(v5 + 60) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_creationTimestampMsSinceUnixEpoch;
  *(v5 + 60) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_parserIdentifier;
    *(v5 + 60) |= 2u;
  }

LABEL_5:
  v9 = [(SIRINLUEXTERNALUserParse *)self->_parse copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_nluRequestRules;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{zone, v20}];
        [v5 addNluRequestRules:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(NSData *)self->_serializedParse copyWithZone:zone];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_idA)
  {
    [toCopy setIdA:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 56) = self->_enabled;
    *(toCopy + 60) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = self->_creationTimestampMsSinceUnixEpoch;
  *(toCopy + 60) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 10) = self->_parserIdentifier;
    *(toCopy + 60) |= 2u;
  }

LABEL_7:
  if (self->_parse)
  {
    [v10 setParse:?];
  }

  if ([(SIRINLUINTERNALParseOverride *)self nluRequestRulesCount])
  {
    [v10 clearNluRequestRules];
    nluRequestRulesCount = [(SIRINLUINTERNALParseOverride *)self nluRequestRulesCount];
    if (nluRequestRulesCount)
    {
      v7 = nluRequestRulesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUINTERNALParseOverride *)self nluRequestRulesAtIndex:i];
        [v10 addNluRequestRules:v9];
      }
    }
  }

  if (self->_serializedParse)
  {
    [v10 setSerializedParse:?];
  }
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_idA)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  if (self->_parse)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_nluRequestRules;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (self->_serializedParse)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  idA = self->_idA;
  if (idA)
  {
    [dictionary setObject:idA forKey:@"id_a"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
    [v4 setObject:v7 forKey:@"enabled"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationTimestampMsSinceUnixEpoch];
  [v4 setObject:v8 forKey:@"creation_timestamp_ms_since_unix_epoch"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  parserIdentifier = self->_parserIdentifier;
  if (parserIdentifier >= 0xA)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_parserIdentifier];
  }

  else
  {
    v10 = off_1E83282B0[parserIdentifier];
  }

  [v4 setObject:v10 forKey:@"parser_identifier"];

LABEL_13:
  parse = self->_parse;
  if (parse)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUserParse *)parse dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"parse"];
  }

  if ([(NSMutableArray *)self->_nluRequestRules count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nluRequestRules, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_nluRequestRules;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"nlu_request_rules"];
  }

  serializedParse = self->_serializedParse;
  if (serializedParse)
  {
    [v4 setObject:serializedParse forKey:@"serialized_parse"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALParseOverride;
  v4 = [(SIRINLUINTERNALParseOverride *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALParseOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addNluRequestRules:(id)rules
{
  rulesCopy = rules;
  nluRequestRules = self->_nluRequestRules;
  v8 = rulesCopy;
  if (!nluRequestRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nluRequestRules;
    self->_nluRequestRules = v6;

    rulesCopy = v8;
    nluRequestRules = self->_nluRequestRules;
  }

  [(NSMutableArray *)nluRequestRules addObject:rulesCopy];
}

- (int)StringAsParserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_UNSET"])
  {
    v4 = 0;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_OVERRIDES"])
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_SNLC"])
  {
    v4 = 2;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_NLV4"])
  {
    v4 = 3;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_CATI"])
  {
    v4 = 4;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_SHORTCUTS_EXACT"])
  {
    v4 = 5;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_UAAP"])
  {
    v4 = 6;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_PSC"])
  {
    v4 = 7;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_LVC"])
  {
    v4 = 8;
  }

  else if ([identifierCopy isEqualToString:@"PARSER_IDENTIFIER_SSU"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parserIdentifierAsString:(int)string
{
  if (string >= 0xA)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E83282B0[string];
  }

  return v4;
}

- (void)setHasParserIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)parserIdentifier
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_parserIdentifier;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end