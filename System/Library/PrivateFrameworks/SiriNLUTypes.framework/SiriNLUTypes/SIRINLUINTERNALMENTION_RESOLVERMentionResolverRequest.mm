@interface SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContextualSpans:(id)spans;
- (void)addDetectedMentions:(id)mentions;
- (void)addEntityCandidates:(id)candidates;
- (void)addMatchingSpans:(id)spans;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTurnIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest

- (void)mergeFrom:(id)from
{
  v55 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 10);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setRequestId:?];
  }

  nluRequestId = self->_nluRequestId;
  v8 = *(fromCopy + 9);
  if (nluRequestId)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUUID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setNluRequestId:?];
  }

  if (*(fromCopy + 11))
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setResultCandidateId:?];
  }

  if (*(fromCopy + 13))
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setUtterance:?];
  }

  tokenChain = self->_tokenChain;
  v10 = *(fromCopy + 12);
  if (tokenChain)
  {
    if (v10)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setTokenChain:?];
  }

  embeddingTensor = self->_embeddingTensor;
  v12 = *(fromCopy + 6);
  if (embeddingTensor)
  {
    if (v12)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setEmbeddingTensor:?];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = *(fromCopy + 7);
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addEntityCandidates:*(*(&v47 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v15);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = *(fromCopy + 5);
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addDetectedMentions:*(*(&v43 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v20);
  }

  if (*(fromCopy + 112))
  {
    self->_maxCandidates = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = *(fromCopy + 8);
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addMatchingSpans:*(*(&v39 + 1) + 8 * k)];
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v25);
  }

  if ((*(fromCopy + 112) & 2) != 0)
  {
    self->_turnIndex = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  cdmRequestId = self->_cdmRequestId;
  v29 = *(fromCopy + 3);
  if (cdmRequestId)
  {
    if (v29)
    {
      [(SIRINLUEXTERNALRequestID *)cdmRequestId mergeFrom:?];
    }
  }

  else if (v29)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setCdmRequestId:?];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = *(fromCopy + 4);
  v31 = [v30 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addContextualSpans:*(*(&v35 + 1) + 8 * m), v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v32);
  }
}

- (unint64_t)hash
{
  v16 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v15 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId hash];
  v3 = [(NSString *)self->_resultCandidateId hash];
  v4 = [(NSString *)self->_utterance hash];
  v5 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
  v6 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor hash];
  v7 = [(NSMutableArray *)self->_entityCandidates hash];
  v8 = [(NSMutableArray *)self->_detectedMentions hash];
  if (*&self->_has)
  {
    v9 = 2654435761u * self->_maxCandidates;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSMutableArray *)self->_matchingSpans hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761u * self->_turnIndex;
  }

  else
  {
    v11 = 0;
  }

  v12 = v15 ^ v16 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v13 = [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId hash];
  return v12 ^ v13 ^ [(NSMutableArray *)self->_contextualSpans hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 10))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId | *(equalCopy + 9))
  {
    if (![(SIRINLUEXTERNALUUID *)nluRequestId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId | *(equalCopy + 11))
  {
    if (![(NSString *)resultCandidateId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(equalCopy + 13))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_35;
    }
  }

  tokenChain = self->_tokenChain;
  if (tokenChain | *(equalCopy + 12))
  {
    if (![(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?])
    {
      goto LABEL_35;
    }
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor | *(equalCopy + 6))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor isEqual:?])
    {
      goto LABEL_35;
    }
  }

  entityCandidates = self->_entityCandidates;
  if (entityCandidates | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)entityCandidates isEqual:?])
    {
      goto LABEL_35;
    }
  }

  detectedMentions = self->_detectedMentions;
  if (detectedMentions | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)detectedMentions isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 112);
  if (has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_maxCandidates != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 112))
  {
    goto LABEL_35;
  }

  matchingSpans = self->_matchingSpans;
  if (matchingSpans | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)matchingSpans isEqual:?])
    {
LABEL_35:
      v18 = 0;
      goto LABEL_36;
    }

    has = self->_has;
    v14 = *(equalCopy + 112);
  }

  if ((has & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_turnIndex != *(equalCopy + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_35;
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId | *(equalCopy + 3) && ![(SIRINLUEXTERNALRequestID *)cdmRequestId isEqual:?])
  {
    goto LABEL_35;
  }

  contextualSpans = self->_contextualSpans;
  if (contextualSpans | *(equalCopy + 4))
  {
    v18 = [(NSMutableArray *)contextualSpans isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_36:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_resultCandidateId copyWithZone:zone];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(NSString *)self->_utterance copyWithZone:zone];
  v13 = *(v5 + 104);
  *(v5 + 104) = v12;

  v14 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v15 = *(v5 + 96);
  *(v5 + 96) = v14;

  v16 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v18 = self->_entityCandidates;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v58;
    do
    {
      v22 = 0;
      do
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v57 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addEntityCandidates:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v20);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = self->_detectedMentions;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      v28 = 0;
      do
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v53 + 1) + 8 * v28) copyWithZone:zone];
        [v5 addDetectedMentions:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v26);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_maxCandidates;
    *(v5 + 112) |= 1u;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = self->_matchingSpans;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v50;
    do
    {
      v34 = 0;
      do
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v49 + 1) + 8 * v34) copyWithZone:zone];
        [v5 addMatchingSpans:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v32);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_turnIndex;
    *(v5 + 112) |= 2u;
  }

  v36 = [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId copyWithZone:zone];
  v37 = *(v5 + 24);
  *(v5 + 24) = v36;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = self->_contextualSpans;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v46;
    do
    {
      v42 = 0;
      do
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v45 + 1) + 8 * v42) copyWithZone:{zone, v45}];
        [v5 addContextualSpans:v43];

        ++v42;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v40);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if (self->_nluRequestId)
  {
    [toCopy setNluRequestId:?];
  }

  if (self->_resultCandidateId)
  {
    [toCopy setResultCandidateId:?];
  }

  if (self->_utterance)
  {
    [toCopy setUtterance:?];
  }

  if (self->_tokenChain)
  {
    [toCopy setTokenChain:?];
  }

  if (self->_embeddingTensor)
  {
    [toCopy setEmbeddingTensor:?];
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self entityCandidatesCount])
  {
    [toCopy clearEntityCandidates];
    entityCandidatesCount = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self entityCandidatesCount];
    if (entityCandidatesCount)
    {
      v5 = entityCandidatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self entityCandidatesAtIndex:i];
        [toCopy addEntityCandidates:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self detectedMentionsCount])
  {
    [toCopy clearDetectedMentions];
    detectedMentionsCount = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self detectedMentionsCount];
    if (detectedMentionsCount)
    {
      v9 = detectedMentionsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self detectedMentionsAtIndex:j];
        [toCopy addDetectedMentions:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_maxCandidates;
    *(toCopy + 112) |= 1u;
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v13 = matchingSpansCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self matchingSpansAtIndex:k];
        [toCopy addMatchingSpans:v15];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_turnIndex;
    *(toCopy + 112) |= 2u;
  }

  if (self->_cdmRequestId)
  {
    [toCopy setCdmRequestId:?];
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self contextualSpansCount])
  {
    [toCopy clearContextualSpans];
    contextualSpansCount = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self contextualSpansCount];
    if (contextualSpansCount)
    {
      v17 = contextualSpansCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self contextualSpansAtIndex:m];
        [toCopy addContextualSpans:v19];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_embeddingTensor)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_entityCandidates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_detectedMentions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_matchingSpans;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_cdmRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_contextualSpans;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (id)dictionaryRepresentation
{
  v67 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"nlu_request_id"];
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId)
  {
    [dictionary setObject:resultCandidateId forKey:@"result_candidate_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation3 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"token_chain"];
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor)
  {
    dictionaryRepresentation4 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"embedding_tensor"];
  }

  if ([(NSMutableArray *)self->_entityCandidates count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_entityCandidates, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v15 = self->_entityCandidates;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v60;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation5 = [*(*(&v59 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation5];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"entity_candidates"];
  }

  if ([(NSMutableArray *)self->_detectedMentions count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_detectedMentions, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v22 = self->_detectedMentions;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v56;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation6 = [*(*(&v55 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation6];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"detected_mentions"];
  }

  if (*&self->_has)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_maxCandidates];
    [dictionary setObject:v28 forKey:@"max_candidates"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v30 = self->_matchingSpans;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v52;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation7 = [*(*(&v51 + 1) + 8 * k) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation7];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v32);
    }

    [dictionary setObject:v29 forKey:@"matching_spans"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_turnIndex];
    [dictionary setObject:v36 forKey:@"turn_index"];
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId)
  {
    dictionaryRepresentation8 = [(SIRINLUEXTERNALRequestID *)cdmRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"cdm_request_id"];
  }

  if ([(NSMutableArray *)self->_contextualSpans count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contextualSpans, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = self->_contextualSpans;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v48;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v48 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation9 = [*(*(&v47 + 1) + 8 * m) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation9];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v42);
    }

    [dictionary setObject:v39 forKey:@"contextual_spans"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest;
  v4 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addContextualSpans:(id)spans
{
  spansCopy = spans;
  contextualSpans = self->_contextualSpans;
  v8 = spansCopy;
  if (!contextualSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contextualSpans;
    self->_contextualSpans = v6;

    spansCopy = v8;
    contextualSpans = self->_contextualSpans;
  }

  [(NSMutableArray *)contextualSpans addObject:spansCopy];
}

- (void)setHasTurnIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMatchingSpans:(id)spans
{
  spansCopy = spans;
  matchingSpans = self->_matchingSpans;
  v8 = spansCopy;
  if (!matchingSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    spansCopy = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSMutableArray *)matchingSpans addObject:spansCopy];
}

- (void)addDetectedMentions:(id)mentions
{
  mentionsCopy = mentions;
  detectedMentions = self->_detectedMentions;
  v8 = mentionsCopy;
  if (!detectedMentions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_detectedMentions;
    self->_detectedMentions = v6;

    mentionsCopy = v8;
    detectedMentions = self->_detectedMentions;
  }

  [(NSMutableArray *)detectedMentions addObject:mentionsCopy];
}

- (void)addEntityCandidates:(id)candidates
{
  candidatesCopy = candidates;
  entityCandidates = self->_entityCandidates;
  v8 = candidatesCopy;
  if (!entityCandidates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_entityCandidates;
    self->_entityCandidates = v6;

    candidatesCopy = v8;
    entityCandidates = self->_entityCandidates;
  }

  [(NSMutableArray *)entityCandidates addObject:candidatesCopy];
}

@end