@interface SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addRuleIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self addRuleIds:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    ruleIds = self->_ruleIds;
    if (ruleIds | equalCopy[1])
    {
      v6 = [(NSMutableArray *)ruleIds isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_ruleIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addRuleIds:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self ruleIdsCount])
  {
    [toCopy clearRuleIds];
    ruleIdsCount = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self ruleIdsCount];
    if (ruleIdsCount)
    {
      v5 = ruleIdsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self ruleIdsAtIndex:i];
        [toCopy addRuleIds:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_ruleIds;
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

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  ruleIds = self->_ruleIds;
  if (ruleIds)
  {
    [dictionary setObject:ruleIds forKey:@"rule_ids"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addRuleIds:(id)ids
{
  idsCopy = ids;
  ruleIds = self->_ruleIds;
  v8 = idsCopy;
  if (!ruleIds)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ruleIds;
    self->_ruleIds = v6;

    idsCopy = v8;
    ruleIds = self->_ruleIds;
  }

  [(NSMutableArray *)ruleIds addObject:idsCopy];
}

@end