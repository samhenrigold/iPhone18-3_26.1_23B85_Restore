@interface CESRCorrectionPronunciation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTtsPronunciations:(id)pronunciations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CESRCorrectionPronunciation

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(CESRCorrectionPronunciation *)self setOrthography:?];
  }

  if (*(fromCopy + 3))
  {
    [(CESRCorrectionPronunciation *)self setLanguage:?];
  }

  if (*(fromCopy + 1))
  {
    [(CESRCorrectionPronunciation *)self setApgId:?];
  }

  if (*(fromCopy + 7))
  {
    [(CESRCorrectionPronunciation *)self setTtsVersion:?];
  }

  if (*(fromCopy + 64))
  {
    self->_tokenOffset = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 6);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CESRCorrectionPronunciation *)self addTtsPronunciations:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 2))
  {
    [(CESRCorrectionPronunciation *)self setAsrPronunciationData:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_orthography hash];
  v4 = [(NSString *)self->_language hash];
  v5 = [(NSString *)self->_apgId hash];
  v6 = [(NSString *)self->_ttsVersion hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_tokenOffset;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSMutableArray *)self->_ttsPronunciations hash];
  return v8 ^ v9 ^ [(NSData *)self->_asrPronunciationData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  orthography = self->_orthography;
  if (orthography | *(equalCopy + 4))
  {
    if (![(NSString *)orthography isEqual:?])
    {
      goto LABEL_19;
    }
  }

  language = self->_language;
  if (language | *(equalCopy + 3))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_19;
    }
  }

  apgId = self->_apgId;
  if (apgId | *(equalCopy + 1))
  {
    if (![(NSString *)apgId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  ttsVersion = self->_ttsVersion;
  if (ttsVersion | *(equalCopy + 7))
  {
    if (![(NSString *)ttsVersion isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_tokenOffset != *(equalCopy + 10))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  ttsPronunciations = self->_ttsPronunciations;
  if (ttsPronunciations | *(equalCopy + 6) && ![(NSMutableArray *)ttsPronunciations isEqual:?])
  {
    goto LABEL_19;
  }

  asrPronunciationData = self->_asrPronunciationData;
  if (asrPronunciationData | *(equalCopy + 2))
  {
    v11 = [(NSData *)asrPronunciationData isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_orthography copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_language copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_apgId copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_ttsVersion copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_tokenOffset;
    *(v5 + 64) |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_ttsPronunciations;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * v18) copyWithZone:{zone, v23}];
        [v5 addTtsPronunciations:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [(NSData *)self->_asrPronunciationData copyWithZone:zone];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_orthography)
  {
    [toCopy setOrthography:?];
    toCopy = v9;
  }

  if (self->_language)
  {
    [v9 setLanguage:?];
    toCopy = v9;
  }

  if (self->_apgId)
  {
    [v9 setApgId:?];
    toCopy = v9;
  }

  if (self->_ttsVersion)
  {
    [v9 setTtsVersion:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_tokenOffset;
    *(toCopy + 64) |= 1u;
  }

  if ([(CESRCorrectionPronunciation *)self ttsPronunciationsCount])
  {
    [v9 clearTtsPronunciations];
    ttsPronunciationsCount = [(CESRCorrectionPronunciation *)self ttsPronunciationsCount];
    if (ttsPronunciationsCount)
    {
      v6 = ttsPronunciationsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CESRCorrectionPronunciation *)self ttsPronunciationsAtIndex:i];
        [v9 addTtsPronunciations:v8];
      }
    }
  }

  if (self->_asrPronunciationData)
  {
    [v9 setAsrPronunciationData:?];
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_orthography)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_apgId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ttsVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_ttsPronunciations;
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

  if (self->_asrPronunciationData)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  orthography = self->_orthography;
  if (orthography)
  {
    [dictionary setObject:orthography forKey:@"orthography"];
  }

  language = self->_language;
  if (language)
  {
    [v4 setObject:language forKey:@"language"];
  }

  apgId = self->_apgId;
  if (apgId)
  {
    [v4 setObject:apgId forKey:@"apg_id"];
  }

  ttsVersion = self->_ttsVersion;
  if (ttsVersion)
  {
    [v4 setObject:ttsVersion forKey:@"tts_version"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_tokenOffset];
    [v4 setObject:v9 forKey:@"token_offset"];
  }

  ttsPronunciations = self->_ttsPronunciations;
  if (ttsPronunciations)
  {
    [v4 setObject:ttsPronunciations forKey:@"tts_pronunciations"];
  }

  asrPronunciationData = self->_asrPronunciationData;
  if (asrPronunciationData)
  {
    [v4 setObject:asrPronunciationData forKey:@"asr_pronunciation_data"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CESRCorrectionPronunciation;
  v4 = [(CESRCorrectionPronunciation *)&v8 description];
  dictionaryRepresentation = [(CESRCorrectionPronunciation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTtsPronunciations:(id)pronunciations
{
  pronunciationsCopy = pronunciations;
  ttsPronunciations = self->_ttsPronunciations;
  v8 = pronunciationsCopy;
  if (!ttsPronunciations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ttsPronunciations;
    self->_ttsPronunciations = v6;

    pronunciationsCopy = v8;
    ttsPronunciations = self->_ttsPronunciations;
  }

  [(NSMutableArray *)ttsPronunciations addObject:pronunciationsCopy];
}

@end