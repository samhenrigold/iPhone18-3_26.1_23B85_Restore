@interface PPPBFeedbackLog
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)predictionType;
- (unint64_t)hash;
- (void)addExperimentalGroups:(id)groups;
- (void)addExtractedDonations:(id)donations;
- (void)addScoredItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPPBFeedbackLog

- (void)mergeFrom:(id)from
{
  v37 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  feedbackMetadata = self->_feedbackMetadata;
  v6 = *(fromCopy + 4);
  if (feedbackMetadata)
  {
    if (v6)
    {
      [(PPPBFeedbackMetadata *)feedbackMetadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PPPBFeedbackLog *)self setFeedbackMetadata:?];
  }

  if (*(fromCopy + 64))
  {
    self->_predictionType = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = *(fromCopy + 7);
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PPPBFeedbackLog *)self addScoredItems:*(*(&v30 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = *(fromCopy + 3);
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PPPBFeedbackLog *)self addExtractedDonations:*(*(&v26 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = *(fromCopy + 2);
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(PPPBFeedbackLog *)self addExperimentalGroups:*(*(&v22 + 1) + 8 * k), v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v19);
  }

  if (*(fromCopy + 5))
  {
    [(PPPBFeedbackLog *)self setHomeLocationGeohash:?];
  }

  if (*(fromCopy + 1))
  {
    [(PPPBFeedbackLog *)self setAssetVersion:?];
  }
}

- (unint64_t)hash
{
  v3 = [(PPPBFeedbackMetadata *)self->_feedbackMetadata hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_predictionType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSMutableArray *)self->_scoredItems hash];
  v7 = v5 ^ v6 ^ [(NSMutableArray *)self->_extractedDonations hash];
  v8 = [(NSMutableArray *)self->_experimentalGroups hash];
  v9 = v8 ^ [(NSString *)self->_homeLocationGeohash hash];
  return v7 ^ v9 ^ [(NSString *)self->_assetVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata | *(equalCopy + 4))
  {
    if (![(PPPBFeedbackMetadata *)feedbackMetadata isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_predictionType != *(equalCopy + 12))
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

  scoredItems = self->_scoredItems;
  if (scoredItems | *(equalCopy + 7) && ![(NSMutableArray *)scoredItems isEqual:?])
  {
    goto LABEL_19;
  }

  extractedDonations = self->_extractedDonations;
  if (extractedDonations | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)extractedDonations isEqual:?])
    {
      goto LABEL_19;
    }
  }

  experimentalGroups = self->_experimentalGroups;
  if (experimentalGroups | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)experimentalGroups isEqual:?])
    {
      goto LABEL_19;
    }
  }

  homeLocationGeohash = self->_homeLocationGeohash;
  if (homeLocationGeohash | *(equalCopy + 5))
  {
    if (![(NSString *)homeLocationGeohash isEqual:?])
    {
      goto LABEL_19;
    }
  }

  assetVersion = self->_assetVersion;
  if (assetVersion | *(equalCopy + 1))
  {
    v11 = [(NSString *)assetVersion isEqual:?];
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
  v46 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PPPBFeedbackMetadata *)self->_feedbackMetadata copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_predictionType;
    *(v5 + 64) |= 1u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = self->_scoredItems;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v39 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addScoredItems:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = self->_extractedDonations;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v35 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addExtractedDonations:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = self->_experimentalGroups;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      v24 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v31 + 1) + 8 * v24) copyWithZone:{zone, v31}];
        [v5 addExperimentalGroups:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v22);
  }

  v26 = [(NSString *)self->_homeLocationGeohash copyWithZone:zone];
  v27 = *(v5 + 40);
  *(v5 + 40) = v26;

  v28 = [(NSString *)self->_assetVersion copyWithZone:zone];
  v29 = *(v5 + 8);
  *(v5 + 8) = v28;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_feedbackMetadata)
  {
    [toCopy setFeedbackMetadata:?];
    toCopy = v18;
  }

  if (*&self->_has)
  {
    *(toCopy + 12) = self->_predictionType;
    *(toCopy + 64) |= 1u;
  }

  if ([(PPPBFeedbackLog *)self scoredItemsCount])
  {
    [v18 clearScoredItems];
    scoredItemsCount = [(PPPBFeedbackLog *)self scoredItemsCount];
    if (scoredItemsCount)
    {
      v6 = scoredItemsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PPPBFeedbackLog *)self scoredItemsAtIndex:i];
        [v18 addScoredItems:v8];
      }
    }
  }

  if ([(PPPBFeedbackLog *)self extractedDonationsCount])
  {
    [v18 clearExtractedDonations];
    extractedDonationsCount = [(PPPBFeedbackLog *)self extractedDonationsCount];
    if (extractedDonationsCount)
    {
      v10 = extractedDonationsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PPPBFeedbackLog *)self extractedDonationsAtIndex:j];
        [v18 addExtractedDonations:v12];
      }
    }
  }

  if ([(PPPBFeedbackLog *)self experimentalGroupsCount])
  {
    [v18 clearExperimentalGroups];
    experimentalGroupsCount = [(PPPBFeedbackLog *)self experimentalGroupsCount];
    if (experimentalGroupsCount)
    {
      v14 = experimentalGroupsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(PPPBFeedbackLog *)self experimentalGroupsAtIndex:k];
        [v18 addExperimentalGroups:v16];
      }
    }
  }

  if (self->_homeLocationGeohash)
  {
    [v18 setHomeLocationGeohash:?];
  }

  v17 = v18;
  if (self->_assetVersion)
  {
    [v18 setAssetVersion:?];
    v17 = v18;
  }
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_feedbackMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_scoredItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_extractedDonations;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_experimentalGroups;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }

  if (self->_homeLocationGeohash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata)
  {
    dictionaryRepresentation = [(PPPBFeedbackMetadata *)feedbackMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"feedbackMetadata"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_predictionType];
    [dictionary setObject:v6 forKey:@"predictionType"];
  }

  if ([(NSMutableArray *)self->_scoredItems count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_scoredItems, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = self->_scoredItems;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"scoredItems"];
  }

  if ([(NSMutableArray *)self->_extractedDonations count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_extractedDonations, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = self->_extractedDonations;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation3 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation3];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"extractedDonations"];
  }

  if ([(NSMutableArray *)self->_experimentalGroups count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_experimentalGroups, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = self->_experimentalGroups;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation4];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"experimentalGroups"];
  }

  homeLocationGeohash = self->_homeLocationGeohash;
  if (homeLocationGeohash)
  {
    [dictionary setObject:homeLocationGeohash forKey:@"homeLocationGeohash"];
  }

  assetVersion = self->_assetVersion;
  if (assetVersion)
  {
    [dictionary setObject:assetVersion forKey:@"assetVersion"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBFeedbackLog;
  v4 = [(PPPBFeedbackLog *)&v8 description];
  dictionaryRepresentation = [(PPPBFeedbackLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addExperimentalGroups:(id)groups
{
  groupsCopy = groups;
  experimentalGroups = self->_experimentalGroups;
  v8 = groupsCopy;
  if (!experimentalGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_experimentalGroups;
    self->_experimentalGroups = v6;

    groupsCopy = v8;
    experimentalGroups = self->_experimentalGroups;
  }

  [(NSMutableArray *)experimentalGroups addObject:groupsCopy];
}

- (void)addExtractedDonations:(id)donations
{
  donationsCopy = donations;
  extractedDonations = self->_extractedDonations;
  v8 = donationsCopy;
  if (!extractedDonations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_extractedDonations;
    self->_extractedDonations = v6;

    donationsCopy = v8;
    extractedDonations = self->_extractedDonations;
  }

  [(NSMutableArray *)extractedDonations addObject:donationsCopy];
}

- (void)addScoredItems:(id)items
{
  itemsCopy = items;
  scoredItems = self->_scoredItems;
  v8 = itemsCopy;
  if (!scoredItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_scoredItems;
    self->_scoredItems = v6;

    itemsCopy = v8;
    scoredItems = self->_scoredItems;
  }

  [(NSMutableArray *)scoredItems addObject:itemsCopy];
}

- (int)predictionType
{
  if (*&self->_has)
  {
    return self->_predictionType;
  }

  else
  {
    return 0;
  }
}

@end