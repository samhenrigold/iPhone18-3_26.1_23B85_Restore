@interface ABCPbSigGrantResponse
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)globalDecisionAsString:(int)string;
- (int)StringAsGlobalDecision:(id)decision;
- (int)globalDecision;
- (unint64_t)hash;
- (void)addSigResponse:(id)response;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSigGrantResponse

- (int)globalDecision
{
  if (*&self->_has)
  {
    return self->_globalDecision;
  }

  else
  {
    return 0;
  }
}

- (id)globalDecisionAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278CF1FA0[string];
  }

  return v4;
}

- (int)StringAsGlobalDecision:(id)decision
{
  decisionCopy = decision;
  if ([decisionCopy isEqualToString:@"ALL_FALSE"])
  {
    v4 = 0;
  }

  else if ([decisionCopy isEqualToString:@"ALL_TRUE"])
  {
    v4 = 1;
  }

  else if ([decisionCopy isEqualToString:@"FOLLOW_SIG_RESPONSE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSigResponse:(id)response
{
  responseCopy = response;
  sigResponses = self->_sigResponses;
  v8 = responseCopy;
  if (!sigResponses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sigResponses;
    self->_sigResponses = v6;

    responseCopy = v8;
    sigResponses = self->_sigResponses;
  }

  [(NSMutableArray *)sigResponses addObject:responseCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigGrantResponse;
  v4 = [(ABCPbSigGrantResponse *)&v8 description];
  dictionaryRepresentation = [(ABCPbSigGrantResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    globalDecision = self->_globalDecision;
    if (globalDecision >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_globalDecision];
    }

    else
    {
      v5 = off_278CF1FA0[globalDecision];
    }

    [dictionary setObject:v5 forKey:@"global_decision"];
  }

  status = self->_status;
  if (status)
  {
    [dictionary setObject:status forKey:@"status"];
  }

  if ([(NSMutableArray *)self->_sigResponses count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sigResponses, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_sigResponses;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"sig_response"];
  }

  sigConfigWhitelist = self->_sigConfigWhitelist;
  if (sigConfigWhitelist)
  {
    dictionaryRepresentation2 = [(ABCPbSigConfigWhitelist *)sigConfigWhitelist dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sig_config_whitelist"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_status)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sigResponses;
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

  if (self->_sigConfigWhitelist)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_globalDecision;
    *(toCopy + 40) |= 1u;
  }

  v9 = toCopy;
  if (self->_status)
  {
    [toCopy setStatus:?];
  }

  if ([(ABCPbSigGrantResponse *)self sigResponsesCount])
  {
    [v9 clearSigResponses];
    sigResponsesCount = [(ABCPbSigGrantResponse *)self sigResponsesCount];
    if (sigResponsesCount)
    {
      v6 = sigResponsesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ABCPbSigGrantResponse *)self sigResponseAtIndex:i];
        [v9 addSigResponse:v8];
      }
    }
  }

  if (self->_sigConfigWhitelist)
  {
    [v9 setSigConfigWhitelist:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_globalDecision;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_status copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_sigResponses;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) copyWithZone:{zone, v18}];
        [v6 addSigResponse:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(ABCPbSigConfigWhitelist *)self->_sigConfigWhitelist copyWithZone:zone];
  v16 = v6[2];
  v6[2] = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_globalDecision != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  status = self->_status;
  if (status | *(equalCopy + 4) && ![(NSString *)status isEqual:?])
  {
    goto LABEL_13;
  }

  sigResponses = self->_sigResponses;
  if (sigResponses | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)sigResponses isEqual:?])
    {
      goto LABEL_13;
    }
  }

  sigConfigWhitelist = self->_sigConfigWhitelist;
  if (sigConfigWhitelist | *(equalCopy + 2))
  {
    v8 = [(ABCPbSigConfigWhitelist *)sigConfigWhitelist isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_globalDecision;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_status hash]^ v3;
  v5 = [(NSMutableArray *)self->_sigResponses hash];
  return v4 ^ v5 ^ [(ABCPbSigConfigWhitelist *)self->_sigConfigWhitelist hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_globalDecision = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (fromCopy[4])
  {
    [(ABCPbSigGrantResponse *)self setStatus:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5[3];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ABCPbSigGrantResponse *)self addSigResponse:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  sigConfigWhitelist = self->_sigConfigWhitelist;
  v12 = v5[2];
  if (sigConfigWhitelist)
  {
    if (v12)
    {
      [(ABCPbSigConfigWhitelist *)sigConfigWhitelist mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ABCPbSigGrantResponse *)self setSigConfigWhitelist:?];
  }
}

@end