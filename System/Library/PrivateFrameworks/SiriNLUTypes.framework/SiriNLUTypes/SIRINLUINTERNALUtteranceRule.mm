@interface SIRINLUINTERNALUtteranceRule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addSpansForNamedCaptureGroups:(id)groups;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALUtteranceRule

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALUtteranceRule *)self setPattern:?];
  }

  if (*(fromCopy + 36))
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  compareOptions = self->_compareOptions;
  v6 = *(fromCopy + 1);
  if (compareOptions)
  {
    if (v6)
    {
      [(SIRINLUINTERNALCompareOptions *)compareOptions mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALUtteranceRule *)self setCompareOptions:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
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

        [(SIRINLUINTERNALUtteranceRule *)self addSpansForNamedCaptureGroups:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_pattern hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(SIRINLUINTERNALCompareOptions *)self->_compareOptions hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_spansForNamedCaptureGroups hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  pattern = self->_pattern;
  if (pattern | *(equalCopy + 2))
  {
    if (![(NSString *)pattern isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  compareOptions = self->_compareOptions;
  if (compareOptions | *(equalCopy + 1) && ![(SIRINLUINTERNALCompareOptions *)compareOptions isEqual:?])
  {
    goto LABEL_13;
  }

  spansForNamedCaptureGroups = self->_spansForNamedCaptureGroups;
  if (spansForNamedCaptureGroups | *(equalCopy + 3))
  {
    v8 = [(NSMutableArray *)spansForNamedCaptureGroups isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_pattern copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 36) |= 1u;
  }

  v8 = [(SIRINLUINTERNALCompareOptions *)self->_compareOptions copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_spansForNamedCaptureGroups;
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
        [v5 addSpansForNamedCaptureGroups:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_pattern)
  {
    [toCopy setPattern:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_type;
    *(toCopy + 36) |= 1u;
  }

  if (self->_compareOptions)
  {
    [v9 setCompareOptions:?];
  }

  if ([(SIRINLUINTERNALUtteranceRule *)self spansForNamedCaptureGroupsCount])
  {
    [v9 clearSpansForNamedCaptureGroups];
    spansForNamedCaptureGroupsCount = [(SIRINLUINTERNALUtteranceRule *)self spansForNamedCaptureGroupsCount];
    if (spansForNamedCaptureGroupsCount)
    {
      v6 = spansForNamedCaptureGroupsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUINTERNALUtteranceRule *)self spansForNamedCaptureGroupsAtIndex:i];
        [v9 addSpansForNamedCaptureGroups:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_pattern)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_compareOptions)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_spansForNamedCaptureGroups;
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

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  pattern = self->_pattern;
  if (pattern)
  {
    [dictionary setObject:pattern forKey:@"pattern"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v7 = off_1E8327EB8[type];
    }

    [v4 setObject:v7 forKey:@"type"];
  }

  compareOptions = self->_compareOptions;
  if (compareOptions)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALCompareOptions *)compareOptions dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"compare_options"];
  }

  if ([(NSMutableArray *)self->_spansForNamedCaptureGroups count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_spansForNamedCaptureGroups, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_spansForNamedCaptureGroups;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"spans_for_named_capture_groups"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALUtteranceRule;
  v4 = [(SIRINLUINTERNALUtteranceRule *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALUtteranceRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addSpansForNamedCaptureGroups:(id)groups
{
  groupsCopy = groups;
  spansForNamedCaptureGroups = self->_spansForNamedCaptureGroups;
  v8 = groupsCopy;
  if (!spansForNamedCaptureGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_spansForNamedCaptureGroups;
    self->_spansForNamedCaptureGroups = v6;

    groupsCopy = v8;
    spansForNamedCaptureGroups = self->_spansForNamedCaptureGroups;
  }

  [(NSMutableArray *)spansForNamedCaptureGroups addObject:groupsCopy];
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"COMPARISON_TYPE_UNSPECIFIED"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"COMPARISON_TYPE_EXACT_LITERAL"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"COMPARISON_TYPE_REGULAR_EXPRESSION"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)typeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E8327EB8[string];
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end