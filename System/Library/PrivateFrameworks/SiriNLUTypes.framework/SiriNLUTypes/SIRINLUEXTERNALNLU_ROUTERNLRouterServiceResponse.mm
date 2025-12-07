@interface SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)routingDecisionAsString:(int)string;
- (id)routingDecisionSourceAsString:(int)string;
- (id)statusAsString:(int)string;
- (int)StringAsRoutingDecision:(id)decision;
- (int)StringAsRoutingDecisionSource:(id)source;
- (int)StringAsStatus:(id)status;
- (int)routingDecision;
- (int)routingDecisionSource;
- (int)status;
- (unint64_t)hash;
- (void)addQueryRewrites:(id)rewrites;
- (void)addSiriXRewriteUtterances:(id)utterances;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRoutingDecisionSource:(BOOL)source;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse

- (void)mergeFrom:(id)from
{
  v29 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 52);
  if (v6)
  {
    self->_routingDecision = *(fromCopy + 8);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 52);
  }

  if ((v6 & 4) != 0)
  {
    self->_status = *(fromCopy + 12);
    *&self->_has |= 4u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(fromCopy + 5);
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self addSiriXRewriteUtterances:*(*(&v23 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(v5 + 3);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self addQueryRewrites:*(*(&v19 + 1) + 8 * j), v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  if ((*(v5 + 52) & 2) != 0)
  {
    self->_routingDecisionSource = *(v5 + 9);
    *&self->_has |= 2u;
  }

  genAiMetadata = self->_genAiMetadata;
  v18 = *(v5 + 1);
  if (genAiMetadata)
  {
    if (v18)
    {
      [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)genAiMetadata mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self setGenAiMetadata:?];
  }

  if (*(v5 + 2))
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self setHeuristicRule:?];
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_routingDecision;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_status;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_siriXRewriteUtterances hash];
  v6 = [(NSMutableArray *)self->_queryRewrites hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_routingDecisionSource;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6 ^ v7;
  v9 = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)self->_genAiMetadata hash];
  return v8 ^ v9 ^ [(NSString *)self->_heuristicRule hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_routingDecision != *(equalCopy + 8))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_status != *(equalCopy + 12))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_25;
  }

  siriXRewriteUtterances = self->_siriXRewriteUtterances;
  if (siriXRewriteUtterances | *(equalCopy + 5) && ![(NSMutableArray *)siriXRewriteUtterances isEqual:?])
  {
    goto LABEL_25;
  }

  queryRewrites = self->_queryRewrites;
  if (queryRewrites | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)queryRewrites isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_routingDecisionSource != *(equalCopy + 9))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_25;
  }

  genAiMetadata = self->_genAiMetadata;
  if (genAiMetadata | *(equalCopy + 1) && ![(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)genAiMetadata isEqual:?])
  {
    goto LABEL_25;
  }

  heuristicRule = self->_heuristicRule;
  if (heuristicRule | *(equalCopy + 2))
  {
    v9 = [(NSString *)heuristicRule isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_26:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_routingDecision;
    *(v5 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_status;
    *(v5 + 52) |= 4u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = self->_siriXRewriteUtterances;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v29 + 1) + 8 * i) copyWithZone:zone];
        [v6 addSiriXRewriteUtterances:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_queryRewrites;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v25 + 1) + 8 * j) copyWithZone:{zone, v25}];
        [v6 addQueryRewrites:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 36) = self->_routingDecisionSource;
    *(v6 + 52) |= 2u;
  }

  v20 = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)self->_genAiMetadata copyWithZone:zone, v25];
  v21 = *(v6 + 8);
  *(v6 + 8) = v20;

  v22 = [(NSString *)self->_heuristicRule copyWithZone:zone];
  v23 = *(v6 + 16);
  *(v6 + 16) = v22;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[8] = self->_routingDecision;
    *(toCopy + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[12] = self->_status;
    *(toCopy + 52) |= 4u;
  }

  v15 = toCopy;
  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self siriXRewriteUtterancesCount])
  {
    [v15 clearSiriXRewriteUtterances];
    siriXRewriteUtterancesCount = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self siriXRewriteUtterancesCount];
    if (siriXRewriteUtterancesCount)
    {
      v7 = siriXRewriteUtterancesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self siriXRewriteUtterancesAtIndex:i];
        [v15 addSiriXRewriteUtterances:v9];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self queryRewritesCount])
  {
    [v15 clearQueryRewrites];
    queryRewritesCount = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self queryRewritesCount];
    if (queryRewritesCount)
    {
      v11 = queryRewritesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self queryRewritesAtIndex:j];
        [v15 addQueryRewrites:v13];
      }
    }
  }

  v14 = v15;
  if ((*&self->_has & 2) != 0)
  {
    *(v15 + 9) = self->_routingDecisionSource;
    *(v15 + 52) |= 2u;
  }

  if (self->_genAiMetadata)
  {
    [v15 setGenAiMetadata:?];
    v14 = v15;
  }

  if (self->_heuristicRule)
  {
    [v15 setHeuristicRule:?];
    v14 = v15;
  }
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_siriXRewriteUtterances;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_queryRewrites;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_genAiMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_heuristicRule)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    routingDecision = self->_routingDecision;
    if (routingDecision >= 7)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_routingDecision];
    }

    else
    {
      v6 = off_1E8327ED0[routingDecision];
    }

    [dictionary setObject:v6 forKey:@"routing_decision"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    status = self->_status;
    if (status >= 6)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v8 = off_1E8327F08[status];
    }

    [dictionary setObject:v8 forKey:@"status"];
  }

  if ([(NSMutableArray *)self->_siriXRewriteUtterances count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_siriXRewriteUtterances, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = self->_siriXRewriteUtterances;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"siri_x_rewrite_utterances"];
  }

  if ([(NSMutableArray *)self->_queryRewrites count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_queryRewrites, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = self->_queryRewrites;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v29 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation2];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"query_rewrites"];
  }

  if ((*&self->_has & 2) != 0)
  {
    routingDecisionSource = self->_routingDecisionSource;
    if (routingDecisionSource >= 4)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_routingDecisionSource];
    }

    else
    {
      v24 = off_1E8327F38[routingDecisionSource];
    }

    [dictionary setObject:v24 forKey:@"routingDecisionSource"];
  }

  genAiMetadata = self->_genAiMetadata;
  if (genAiMetadata)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)genAiMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"gen_ai_metadata"];
  }

  heuristicRule = self->_heuristicRule;
  if (heuristicRule)
  {
    [dictionary setObject:heuristicRule forKey:@"heuristic_rule"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsRoutingDecisionSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"NL_ROUTING_DECISION_SOURCE_UNSET"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"NL_ROUTING_DECISION_SOURCE_OVERRIDE"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"NL_ROUTING_DECISION_SOURCE_MODEL"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"NL_ROUTING_DECISION_SOURCE_HEURISTIC_RULE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)routingDecisionSourceAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E8327F38[string];
  }

  return v4;
}

- (void)setHasRoutingDecisionSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)routingDecisionSource
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_routingDecisionSource;
  }

  else
  {
    return 0;
  }
}

- (void)addQueryRewrites:(id)rewrites
{
  rewritesCopy = rewrites;
  queryRewrites = self->_queryRewrites;
  v8 = rewritesCopy;
  if (!queryRewrites)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_queryRewrites;
    self->_queryRewrites = v6;

    rewritesCopy = v8;
    queryRewrites = self->_queryRewrites;
  }

  [(NSMutableArray *)queryRewrites addObject:rewritesCopy];
}

- (void)addSiriXRewriteUtterances:(id)utterances
{
  utterancesCopy = utterances;
  siriXRewriteUtterances = self->_siriXRewriteUtterances;
  v8 = utterancesCopy;
  if (!siriXRewriteUtterances)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_siriXRewriteUtterances;
    self->_siriXRewriteUtterances = v6;

    utterancesCopy = v8;
    siriXRewriteUtterances = self->_siriXRewriteUtterances;
  }

  [(NSMutableArray *)siriXRewriteUtterances addObject:utterancesCopy];
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"NL_ROUTER_SERVICE_RESPONSE_STATUS_UNSET"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NL_ROUTER_SERVICE_RESPONSE_STATUS_SUCCEEDED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"NL_ROUTER_SERVICE_RESPONSE_STATUS_CLIENT_NOT_INITIALIZED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"NL_ROUTER_SERVICE_RESPONSE_STATUS_INPUT_INVALID"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"NL_ROUTER_SERVICE_RESPONSE_STATUS_NO_CLIENT_RESPONSE"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"NL_ROUTER_SERVICE_RESPONSE_STATUS_OVERRIDES_MATCHED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)statusAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E8327F08[string];
  }

  return v4;
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)status
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRoutingDecision:(id)decision
{
  decisionCopy = decision;
  if ([decisionCopy isEqualToString:@"NL_ROUTING_DECISION_UNSET"])
  {
    v4 = 0;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTING_DECISION_SIRI_X_NO_REWRITE"])
  {
    v4 = 1;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTING_DECISION_SIRI_X_REWRITE"])
  {
    v4 = 2;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTING_DECISION_PLANNER"])
  {
    v4 = 3;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTING_DECISION_QUERY_REWRITE"])
  {
    v4 = 4;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTING_DECISION_GEN_AI"])
  {
    v4 = 5;
  }

  else if ([decisionCopy isEqualToString:@"NL_ROUTING_DECISION_SEARCH"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)routingDecisionAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E8327ED0[string];
  }

  return v4;
}

- (int)routingDecision
{
  if (*&self->_has)
  {
    return self->_routingDecision;
  }

  else
  {
    return 0;
  }
}

@end