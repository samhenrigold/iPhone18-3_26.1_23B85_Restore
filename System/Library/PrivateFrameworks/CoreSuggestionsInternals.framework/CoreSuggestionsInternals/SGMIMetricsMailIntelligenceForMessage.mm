@interface SGMIMetricsMailIntelligenceForMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMailAttachmentHistogram:(id)histogram;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNbCharactersInMailSubject:(BOOL)subject;
- (void)setHasNbTokensInMailSubject:(BOOL)subject;
- (void)setHasPreviousInteractionFromUserOnConversationInMinutes:(BOOL)minutes;
- (void)setHasPreviousInteractionOnConversationInMinutes:(BOOL)minutes;
- (void)setHasSenderConnectionScore:(BOOL)score;
- (void)setHasTimeDifferenceFromReceptionToSaliencyInferenceInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsMailIntelligenceForMessage

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[20])
  {
    self->_hoursSinceReference = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(SGMIMetricsMailIntelligenceForMessage *)self setLocale:?];
  }

  if (*(v5 + 4))
  {
    [(SGMIMetricsMailIntelligenceForMessage *)self setLang:?];
  }

  v6 = *(v5 + 80);
  if ((v6 & 0x40) != 0)
  {
    self->_timeDifferenceFromReceptionToSaliencyInferenceInSeconds = *(v5 + 19);
    *&self->_has |= 0x40u;
    v6 = *(v5 + 80);
  }

  if ((v6 & 0x20) != 0)
  {
    self->_senderConnectionScore = *(v5 + 18);
    *&self->_has |= 0x20u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(v5 + 6);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SGMIMetricsMailIntelligenceForMessage *)self addMailAttachmentHistogram:*(*(&v17 + 1) + 8 * i), v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 80);
  if ((v12 & 2) != 0)
  {
    self->_nbCharactersInMailSubject = *(v5 + 14);
    *&self->_has |= 2u;
    v12 = *(v5 + 80);
    if ((v12 & 4) == 0)
    {
LABEL_20:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  else if ((*(v5 + 80) & 4) == 0)
  {
    goto LABEL_20;
  }

  self->_nbTokensInMailSubject = *(v5 + 15);
  *&self->_has |= 4u;
  v12 = *(v5 + 80);
  if ((v12 & 0x10) == 0)
  {
LABEL_21:
    if ((v12 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_28:
  self->_previousInteractionOnConversationInMinutes = *(v5 + 17);
  *&self->_has |= 0x10u;
  if ((*(v5 + 80) & 8) != 0)
  {
LABEL_22:
    self->_previousInteractionFromUserOnConversationInMinutes = *(v5 + 16);
    *&self->_has |= 8u;
  }

LABEL_23:
  active = self->_active;
  v14 = *(v5 + 1);
  if (active)
  {
    if (v14)
    {
      [(SGMIMetricsInferenceAndGroundTruth *)active mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SGMIMetricsMailIntelligenceForMessage *)self setActive:?];
  }

  background = self->_background;
  v16 = *(v5 + 2);
  if (background)
  {
    if (v16)
    {
      [(SGMIMetricsInferenceAndGroundTruth *)background mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SGMIMetricsMailIntelligenceForMessage *)self setBackground:?];
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_hoursSinceReference;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_locale hash];
  v5 = [(NSString *)self->_lang hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v8 = 2654435761 * self->_timeDifferenceFromReceptionToSaliencyInferenceInSeconds;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  senderConnectionScore = self->_senderConnectionScore;
  if (senderConnectionScore < 0.0)
  {
    senderConnectionScore = -senderConnectionScore;
  }

  *v6.i32 = floorf(senderConnectionScore + 0.5);
  v10 = (senderConnectionScore - *v6.i32) * 1.8447e19;
  *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = 2654435761u * *vbslq_s8(v11, v7, v6).i32;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabsf(v10);
  }

LABEL_12:
  v13 = [(NSMutableArray *)self->_mailAttachmentHistograms hash];
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_nbCharactersInMailSubject;
    if ((*&self->_has & 4) != 0)
    {
LABEL_14:
      v15 = 2654435761 * self->_nbTokensInMailSubject;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_15;
      }

LABEL_19:
      v16 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v17 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_14;
    }
  }

  v15 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v16 = 2654435761 * self->_previousInteractionOnConversationInMinutes;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v17 = 2654435761 * self->_previousInteractionFromUserOnConversationInMinutes;
LABEL_21:
  v18 = v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14;
  v19 = v15 ^ v16 ^ v17 ^ [(SGMIMetricsInferenceAndGroundTruth *)self->_active hash];
  return v18 ^ v19 ^ [(SGMIMetricsInferenceAndGroundTruth *)self->_background hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_hoursSinceReference != *(equalCopy + 6))
    {
      goto LABEL_48;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_48;
  }

  locale = self->_locale;
  if (locale | *(equalCopy + 5) && ![(NSString *)locale isEqual:?])
  {
    goto LABEL_48;
  }

  lang = self->_lang;
  if (lang | *(equalCopy + 4))
  {
    if (![(NSString *)lang isEqual:?])
    {
      goto LABEL_48;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 80);
  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 80) & 0x40) == 0 || self->_timeDifferenceFromReceptionToSaliencyInferenceInSeconds != *(equalCopy + 19))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 0x40) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 80) & 0x20) == 0 || self->_senderConnectionScore != *(equalCopy + 18))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 0x20) != 0)
  {
    goto LABEL_48;
  }

  mailAttachmentHistograms = self->_mailAttachmentHistograms;
  if (mailAttachmentHistograms | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)mailAttachmentHistograms isEqual:?])
    {
LABEL_48:
      v12 = 0;
      goto LABEL_49;
    }

    has = self->_has;
    v8 = *(equalCopy + 80);
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_nbCharactersInMailSubject != *(equalCopy + 14))
    {
      goto LABEL_48;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_nbTokensInMailSubject != *(equalCopy + 15))
    {
      goto LABEL_48;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_previousInteractionOnConversationInMinutes != *(equalCopy + 17))
    {
      goto LABEL_48;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_previousInteractionFromUserOnConversationInMinutes != *(equalCopy + 16))
    {
      goto LABEL_48;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_48;
  }

  active = self->_active;
  if (active | *(equalCopy + 1) && ![(SGMIMetricsInferenceAndGroundTruth *)active isEqual:?])
  {
    goto LABEL_48;
  }

  background = self->_background;
  if (background | *(equalCopy + 2))
  {
    v12 = [(SGMIMetricsInferenceAndGroundTruth *)background isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_49:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_hoursSinceReference;
    *(v5 + 80) |= 1u;
  }

  v7 = [(NSString *)self->_locale copyWithZone:zone];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  v9 = [(NSString *)self->_lang copyWithZone:zone];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v6 + 76) = self->_timeDifferenceFromReceptionToSaliencyInferenceInSeconds;
    *(v6 + 80) |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v6 + 72) = self->_senderConnectionScore;
    *(v6 + 80) |= 0x20u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_mailAttachmentHistograms;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{zone, v24}];
        [v6 addMailAttachmentHistogram:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = self->_has;
  if ((v18 & 2) != 0)
  {
    *(v6 + 56) = self->_nbCharactersInMailSubject;
    *(v6 + 80) |= 2u;
    v18 = self->_has;
    if ((v18 & 4) == 0)
    {
LABEL_16:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_17;
      }

LABEL_22:
      *(v6 + 68) = self->_previousInteractionOnConversationInMinutes;
      *(v6 + 80) |= 0x10u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 60) = self->_nbTokensInMailSubject;
  *(v6 + 80) |= 4u;
  v18 = self->_has;
  if ((v18 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v18 & 8) != 0)
  {
LABEL_18:
    *(v6 + 64) = self->_previousInteractionFromUserOnConversationInMinutes;
    *(v6 + 80) |= 8u;
  }

LABEL_19:
  v19 = [(SGMIMetricsInferenceAndGroundTruth *)self->_active copyWithZone:zone, v24];
  v20 = *(v6 + 8);
  *(v6 + 8) = v19;

  v21 = [(SGMIMetricsInferenceAndGroundTruth *)self->_background copyWithZone:zone];
  v22 = *(v6 + 16);
  *(v6 + 16) = v21;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_hoursSinceReference;
    *(toCopy + 80) |= 1u;
  }

  v12 = toCopy;
  if (self->_locale)
  {
    [toCopy setLocale:?];
    toCopy = v12;
  }

  if (self->_lang)
  {
    [v12 setLang:?];
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    toCopy[19] = self->_timeDifferenceFromReceptionToSaliencyInferenceInSeconds;
    *(toCopy + 80) |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    toCopy[18] = LODWORD(self->_senderConnectionScore);
    *(toCopy + 80) |= 0x20u;
  }

  if ([(SGMIMetricsMailIntelligenceForMessage *)self mailAttachmentHistogramsCount])
  {
    [v12 clearMailAttachmentHistograms];
    mailAttachmentHistogramsCount = [(SGMIMetricsMailIntelligenceForMessage *)self mailAttachmentHistogramsCount];
    if (mailAttachmentHistogramsCount)
    {
      v7 = mailAttachmentHistogramsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SGMIMetricsMailIntelligenceForMessage *)self mailAttachmentHistogramAtIndex:i];
        [v12 addMailAttachmentHistogram:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v12;
  if ((v10 & 2) != 0)
  {
    v12[14] = self->_nbCharactersInMailSubject;
    *(v12 + 80) |= 2u;
    v10 = self->_has;
    if ((v10 & 4) == 0)
    {
LABEL_17:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  v12[15] = self->_nbTokensInMailSubject;
  *(v12 + 80) |= 4u;
  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
LABEL_18:
    if ((v10 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_29:
  v12[17] = self->_previousInteractionOnConversationInMinutes;
  *(v12 + 80) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_19:
    v12[16] = self->_previousInteractionFromUserOnConversationInMinutes;
    *(v12 + 80) |= 8u;
  }

LABEL_20:
  if (self->_active)
  {
    [v12 setActive:?];
    v11 = v12;
  }

  if (self->_background)
  {
    [v12 setBackground:?];
    v11 = v12;
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lang)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_mailAttachmentHistograms;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if ((v11 & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v11 = self->_has;
    if ((v11 & 4) == 0)
    {
LABEL_20:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_20;
  }

  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((v11 & 0x10) == 0)
  {
LABEL_21:
    if ((v11 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_30:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    PBDataWriterWriteUint32Field();
  }

LABEL_23:
  if (self->_active)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_background)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hoursSinceReference];
    [dictionary setObject:v5 forKey:@"hoursSinceReference"];
  }

  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  lang = self->_lang;
  if (lang)
  {
    [dictionary setObject:lang forKey:@"lang"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timeDifferenceFromReceptionToSaliencyInferenceInSeconds];
    [dictionary setObject:v9 forKey:@"timeDifferenceFromReceptionToSaliencyInferenceInSeconds"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *&v4 = self->_senderConnectionScore;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v10 forKey:@"senderConnectionScore"];
  }

  if (objc_msgSend_count(self->_mailAttachmentHistograms))
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:objc_msgSend_count(self->_mailAttachmentHistograms)];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = self->_mailAttachmentHistograms;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"mailAttachmentHistogram"];
  }

  v18 = self->_has;
  if ((v18 & 2) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nbCharactersInMailSubject];
    [dictionary setObject:v25 forKey:@"nbCharactersInMailSubject"];

    v18 = self->_has;
    if ((v18 & 4) == 0)
    {
LABEL_22:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_22;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_nbTokensInMailSubject, v28}];
  [dictionary setObject:v26 forKey:@"nbTokensInMailSubject"];

  v18 = self->_has;
  if ((v18 & 0x10) == 0)
  {
LABEL_23:
    if ((v18 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_34:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_previousInteractionOnConversationInMinutes, v28}];
  [dictionary setObject:v27 forKey:@"previousInteractionOnConversationInMinutes"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_24:
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_previousInteractionFromUserOnConversationInMinutes, v28}];
    [dictionary setObject:v19 forKey:@"previousInteractionFromUserOnConversationInMinutes"];
  }

LABEL_25:
  active = self->_active;
  if (active)
  {
    dictionaryRepresentation2 = [(SGMIMetricsInferenceAndGroundTruth *)active dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"active"];
  }

  background = self->_background;
  if (background)
  {
    dictionaryRepresentation3 = [(SGMIMetricsInferenceAndGroundTruth *)background dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"background"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsMailIntelligenceForMessage;
  v4 = [(SGMIMetricsMailIntelligenceForMessage *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsMailIntelligenceForMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasPreviousInteractionFromUserOnConversationInMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPreviousInteractionOnConversationInMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNbTokensInMailSubject:(BOOL)subject
{
  if (subject)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNbCharactersInMailSubject:(BOOL)subject
{
  if (subject)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMailAttachmentHistogram:(id)histogram
{
  histogramCopy = histogram;
  mailAttachmentHistograms = self->_mailAttachmentHistograms;
  v8 = histogramCopy;
  if (!mailAttachmentHistograms)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mailAttachmentHistograms;
    self->_mailAttachmentHistograms = v6;

    histogramCopy = v8;
    mailAttachmentHistograms = self->_mailAttachmentHistograms;
  }

  [(NSMutableArray *)mailAttachmentHistograms addObject:histogramCopy];
}

- (void)setHasSenderConnectionScore:(BOOL)score
{
  if (score)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTimeDifferenceFromReceptionToSaliencyInferenceInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

@end