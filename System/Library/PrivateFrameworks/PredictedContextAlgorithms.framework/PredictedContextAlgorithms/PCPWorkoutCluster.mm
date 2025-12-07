@interface PCPWorkoutCluster
- (BOOL)isEqual:(id)equal;
- (PCPWorkoutCluster)initWithCluster:(id)cluster;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEmbeddingIdentifiers:(id)identifiers;
- (void)addEmbeddingIdentifiersWithPhenotype:(id)phenotype;
- (void)copyTo:(id)to;
- (void)mapPhenotypeData:(id)data toCluster:(id)cluster;
- (void)mapTimeProperties:(id)properties toPhenotype:(id)phenotype;
- (void)mergeFrom:(id)from;
- (void)setHasStartTimeCFAbsolute:(BOOL)absolute;
- (void)writeTo:(id)to;
@end

@implementation PCPWorkoutCluster

- (void)setHasStartTimeCFAbsolute:(BOOL)absolute
{
  if (absolute)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addEmbeddingIdentifiersWithPhenotype:(id)phenotype
{
  phenotypeCopy = phenotype;
  embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  v8 = phenotypeCopy;
  if (!embeddingIdentifiersWithPhenotypes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_embeddingIdentifiersWithPhenotypes;
    self->_embeddingIdentifiersWithPhenotypes = v6;

    phenotypeCopy = v8;
    embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  }

  [(NSMutableArray *)embeddingIdentifiersWithPhenotypes addObject:phenotypeCopy];
}

- (void)addEmbeddingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  embeddingIdentifiers = self->_embeddingIdentifiers;
  v8 = identifiersCopy;
  if (!embeddingIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_embeddingIdentifiers;
    self->_embeddingIdentifiers = v6;

    identifiersCopy = v8;
    embeddingIdentifiers = self->_embeddingIdentifiers;
  }

  [(NSMutableArray *)embeddingIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPWorkoutCluster;
  v4 = [(PCPWorkoutCluster *)&v8 description];
  dictionaryRepresentation = [(PCPWorkoutCluster *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimeCFAbsolute];
    [v4 setObject:v7 forKey:@"startTimeCFAbsolute"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTimeCFAbsolute];
    [v4 setObject:v8 forKey:@"endTimeCFAbsolute"];
  }

  embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  if (embeddingIdentifiersWithPhenotypes)
  {
    [v4 setObject:embeddingIdentifiersWithPhenotypes forKey:@"embeddingIdentifiersWithPhenotype"];
  }

  embeddingIdentifiers = self->_embeddingIdentifiers;
  if (embeddingIdentifiers)
  {
    [v4 setObject:embeddingIdentifiers forKey:@"embeddingIdentifiers"];
  }

  clusterPhenotype = self->_clusterPhenotype;
  if (clusterPhenotype)
  {
    dictionaryRepresentation = [(PCPClusterPhenotype *)clusterPhenotype dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"clusterPhenotype"];
  }

  dominantSourceBundleIdentifier = self->_dominantSourceBundleIdentifier;
  if (dominantSourceBundleIdentifier)
  {
    [v4 setObject:dominantSourceBundleIdentifier forKey:@"dominantSourceBundleIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_embeddingIdentifiersWithPhenotypes;
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

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_embeddingIdentifiers;
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

        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  if (self->_clusterPhenotype)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dominantSourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v15;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_startTimeCFAbsolute;
    *(toCopy + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_endTimeCFAbsolute;
    *(toCopy + 64) |= 1u;
  }

  if ([(PCPWorkoutCluster *)self embeddingIdentifiersWithPhenotypesCount])
  {
    [v15 clearEmbeddingIdentifiersWithPhenotypes];
    embeddingIdentifiersWithPhenotypesCount = [(PCPWorkoutCluster *)self embeddingIdentifiersWithPhenotypesCount];
    if (embeddingIdentifiersWithPhenotypesCount)
    {
      v7 = embeddingIdentifiersWithPhenotypesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PCPWorkoutCluster *)self embeddingIdentifiersWithPhenotypeAtIndex:i];
        [v15 addEmbeddingIdentifiersWithPhenotype:v9];
      }
    }
  }

  if ([(PCPWorkoutCluster *)self embeddingIdentifiersCount])
  {
    [v15 clearEmbeddingIdentifiers];
    embeddingIdentifiersCount = [(PCPWorkoutCluster *)self embeddingIdentifiersCount];
    if (embeddingIdentifiersCount)
    {
      v11 = embeddingIdentifiersCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PCPWorkoutCluster *)self embeddingIdentifiersAtIndex:j];
        [v15 addEmbeddingIdentifiers:v13];
      }
    }
  }

  if (self->_clusterPhenotype)
  {
    [v15 setClusterPhenotype:?];
  }

  v14 = v15;
  if (self->_dominantSourceBundleIdentifier)
  {
    [v15 setDominantSourceBundleIdentifier:?];
    v14 = v15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startTimeCFAbsolute;
    *(v5 + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endTimeCFAbsolute;
    *(v5 + 64) |= 1u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = self->_embeddingIdentifiersWithPhenotypes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v30 + 1) + 8 * i) copyWithZone:zone];
        [v5 addEmbeddingIdentifiersWithPhenotype:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = self->_embeddingIdentifiers;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v26 + 1) + 8 * j) copyWithZone:{zone, v26}];
        [v5 addEmbeddingIdentifiers:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  v21 = [(PCPClusterPhenotype *)self->_clusterPhenotype copyWithZone:zone];
  v22 = *(v5 + 24);
  *(v5 + 24) = v21;

  v23 = [(NSString *)self->_dominantSourceBundleIdentifier copyWithZone:zone];
  v24 = *(v5 + 32);
  *(v5 + 32) = v23;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 7))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_startTimeCFAbsolute != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_endTimeCFAbsolute != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_22;
  }

  embeddingIdentifiersWithPhenotypes = self->_embeddingIdentifiersWithPhenotypes;
  if (embeddingIdentifiersWithPhenotypes | *(equalCopy + 6) && ![(NSMutableArray *)embeddingIdentifiersWithPhenotypes isEqual:?])
  {
    goto LABEL_22;
  }

  embeddingIdentifiers = self->_embeddingIdentifiers;
  if (embeddingIdentifiers | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)embeddingIdentifiers isEqual:?])
    {
      goto LABEL_22;
    }
  }

  clusterPhenotype = self->_clusterPhenotype;
  if (clusterPhenotype | *(equalCopy + 3))
  {
    if (![(PCPClusterPhenotype *)clusterPhenotype isEqual:?])
    {
      goto LABEL_22;
    }
  }

  dominantSourceBundleIdentifier = self->_dominantSourceBundleIdentifier;
  if (dominantSourceBundleIdentifier | *(equalCopy + 4))
  {
    v10 = [(NSString *)dominantSourceBundleIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    if (startTimeCFAbsolute < 0.0)
    {
      startTimeCFAbsolute = -startTimeCFAbsolute;
    }

    *v4.i64 = floor(startTimeCFAbsolute + 0.5);
    v8 = (startTimeCFAbsolute - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    endTimeCFAbsolute = self->_endTimeCFAbsolute;
    if (endTimeCFAbsolute < 0.0)
    {
      endTimeCFAbsolute = -endTimeCFAbsolute;
    }

    *v4.i64 = floor(endTimeCFAbsolute + 0.5);
    v12 = (endTimeCFAbsolute - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = v6 ^ v3 ^ v10 ^ [(NSMutableArray *)self->_embeddingIdentifiersWithPhenotypes hash];
  v15 = [(NSMutableArray *)self->_embeddingIdentifiers hash];
  v16 = v15 ^ [(PCPClusterPhenotype *)self->_clusterPhenotype hash];
  return v14 ^ v16 ^ [(NSString *)self->_dominantSourceBundleIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(PCPWorkoutCluster *)self setIdentifier:?];
  }

  v5 = *(fromCopy + 64);
  if ((v5 & 2) != 0)
  {
    self->_startTimeCFAbsolute = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 64);
  }

  if (v5)
  {
    self->_endTimeCFAbsolute = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(fromCopy + 6);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PCPWorkoutCluster *)self addEmbeddingIdentifiersWithPhenotype:*(*(&v22 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(fromCopy + 5);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PCPWorkoutCluster *)self addEmbeddingIdentifiers:*(*(&v18 + 1) + 8 * j), v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  clusterPhenotype = self->_clusterPhenotype;
  v17 = *(fromCopy + 3);
  if (clusterPhenotype)
  {
    if (v17)
    {
      [(PCPClusterPhenotype *)clusterPhenotype mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(PCPWorkoutCluster *)self setClusterPhenotype:?];
  }

  if (*(fromCopy + 4))
  {
    [(PCPWorkoutCluster *)self setDominantSourceBundleIdentifier:?];
  }
}

- (PCPWorkoutCluster)initWithCluster:(id)cluster
{
  v40 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  if (clusterCopy)
  {
    v5 = objc_alloc_init(PCPWorkoutCluster);
    identifier = [clusterCopy identifier];
    uUIDString = [identifier UUIDString];
    [(PCPWorkoutCluster *)v5 setIdentifier:uUIDString];

    sourceBundleIdentifier = [clusterCopy sourceBundleIdentifier];
    [(PCPWorkoutCluster *)v5 setDominantSourceBundleIdentifier:sourceBundleIdentifier];

    startDate = [clusterCopy startDate];

    if (startDate)
    {
      startDate2 = [clusterCopy startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      [(PCPWorkoutCluster *)v5 setStartTimeCFAbsolute:?];

      [(PCPWorkoutCluster *)v5 setHasStartTimeCFAbsolute:1];
    }

    endDate = [clusterCopy endDate];

    if (endDate)
    {
      endDate2 = [clusterCopy endDate];
      [endDate2 timeIntervalSinceReferenceDate];
      [(PCPWorkoutCluster *)v5 setEndTimeCFAbsolute:?];

      [(PCPWorkoutCluster *)v5 setHasEndTimeCFAbsolute:1];
    }

    subSuggestionIDs = [clusterCopy subSuggestionIDs];
    v14 = [subSuggestionIDs count];

    if (v14)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      subSuggestionIDs2 = [clusterCopy subSuggestionIDs];
      v16 = [subSuggestionIDs2 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(subSuggestionIDs2);
            }

            [(PCPWorkoutCluster *)v5 addEmbeddingIdentifiersWithPhenotype:*(*(&v34 + 1) + 8 * i)];
          }

          v17 = [subSuggestionIDs2 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v17);
      }
    }

    clusterMetadata = [clusterCopy clusterMetadata];
    subSuggestionIDsBeforePruning = [clusterMetadata subSuggestionIDsBeforePruning];
    v22 = [subSuggestionIDsBeforePruning count];

    if (v22)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      clusterMetadata2 = [clusterCopy clusterMetadata];
      subSuggestionIDsBeforePruning2 = [clusterMetadata2 subSuggestionIDsBeforePruning];

      v25 = [subSuggestionIDsBeforePruning2 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v31;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v31 != v27)
            {
              objc_enumerationMutation(subSuggestionIDsBeforePruning2);
            }

            [(PCPWorkoutCluster *)v5 addEmbeddingIdentifiers:*(*(&v30 + 1) + 8 * j)];
          }

          v26 = [subSuggestionIDsBeforePruning2 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v26);
      }
    }

    [(PCPWorkoutCluster *)self mapPhenotypeData:clusterCopy toCluster:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mapPhenotypeData:(id)data toCluster:(id)cluster
{
  dataCopy = data;
  clusterCopy = cluster;
  if (dataCopy)
  {
    clusterMetadata = [dataCopy clusterMetadata];

    if (clusterMetadata)
    {
      v8 = objc_alloc_init(PCPClusterPhenotype);
      activityType = [dataCopy activityType];
      [(PCPClusterPhenotype *)v8 setActivityType:activityType];

      placeName = [dataCopy placeName];
      [(PCPClusterPhenotype *)v8 setPlaceName:placeName];

      placeType = [dataCopy placeType];
      v12 = @"PlaceType_Unknown";
      switch(placeType)
      {
        case 0:
          break;
        case 1:
          v12 = @"AreaOfInterest";
          break;
        case 2:
          v12 = @"PointOfInterest";
          break;
        case 3:
          v12 = @"Address";
          break;
        case 4:
          v12 = @"Country";
          break;
        case 5:
          v12 = @"AdministrativeArea";
          break;
        case 6:
          v12 = @"SubAdministrativeArea";
          break;
        case 7:
          v12 = @"Locality";
          break;
        case 8:
          v12 = @"TimeZone";
          break;
        case 9:
          v12 = @"SubLocality";
          break;
        case 10:
          v12 = @"Ocean";
          break;
        case 11:
          v12 = @"InlandWater";
          break;
        case 12:
          v12 = @"Island";
          break;
        case 13:
          v12 = @"Street";
          break;
        case 14:
          v12 = @"Admin";
          break;
        case 15:
          v12 = @"Postal";
          break;
        case 16:
          v12 = @"Intersection";
          break;
        case 17:
          v12 = @"Building";
          break;
        case 18:
          v12 = @"Continent";
          break;
        case 19:
          v12 = @"Region";
          break;
        case 20:
          v12 = @"Division";
          break;
        default:
          if (placeType == 1000)
          {
            v12 = @"Undefined";
          }

          else
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", placeType];
          }

          break;
      }

      [(PCPClusterPhenotype *)v8 setPlaceType:v12];

      location = [dataCopy location];
      [(PCPClusterPhenotype *)v8 setPlaceLocation:location];

      poiCategory = [dataCopy poiCategory];
      v15 = [poiCategory length];

      if (v15)
      {
        poiCategory2 = [dataCopy poiCategory];
        [(PCPClusterPhenotype *)v8 setPlaceType:poiCategory2];
      }

      if ([dataCopy placeUserType])
      {
        placeUserType = [dataCopy placeUserType];
        if (placeUserType >= 5)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", placeUserType];
        }

        else
        {
          v18 = off_1E83B8928[placeUserType];
        }

        [(PCPClusterPhenotype *)v8 setPlaceType:v18];
      }

      [dataCopy timeOfDayCircularStd];
      [(PCPClusterPhenotype *)v8 setTimeOfDayCircularStd:?];
      [dataCopy latLongCircularStd];
      [(PCPClusterPhenotype *)v8 setLatLongCircularStd:?];
      clusterMetadata2 = [dataCopy clusterMetadata];
      phenotype = [clusterMetadata2 phenotype];
      [(PCPWorkoutCluster *)self mapTimeProperties:phenotype toPhenotype:v8];

      if ([(PCPClusterPhenotype *)v8 hasActivityType]|| [(PCPClusterPhenotype *)v8 hasPlaceName]|| [(PCPClusterPhenotype *)v8 hasPlaceType]|| [(PCPClusterPhenotype *)v8 hasPlaceLocation]|| [(PCPClusterPhenotype *)v8 hasDayOfWeekCos]|| [(PCPClusterPhenotype *)v8 hasDayOfWeekSin]|| [(PCPClusterPhenotype *)v8 hasIsWeekend]|| [(PCPClusterPhenotype *)v8 hasTimeOfDayCos]|| [(PCPClusterPhenotype *)v8 hasTimeOfDaySin]|| [(PCPClusterPhenotype *)v8 hasWeekOfYear]|| [(PCPClusterPhenotype *)v8 hasNormalizedDuration]|| ([(PCPClusterPhenotype *)v8 timeOfDayCircularStd], v21 != 0.0) || ([(PCPClusterPhenotype *)v8 latLongCircularStd], v22 != 0.0))
      {
        [clusterCopy setClusterPhenotype:v8];
      }
    }
  }
}

- (void)mapTimeProperties:(id)properties toPhenotype:(id)phenotype
{
  propertiesCopy = properties;
  phenotypeCopy = phenotype;
  v6 = [propertiesCopy objectForKeyedSubscript:@"timeOfDayCos"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    [phenotypeCopy setTimeOfDayCos:?];
    [phenotypeCopy setHasTimeOfDayCos:1];
  }

  v7 = [propertiesCopy objectForKeyedSubscript:@"timeOfDaySin"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 doubleValue];
    [phenotypeCopy setTimeOfDaySin:?];
    [phenotypeCopy setHasTimeOfDaySin:1];
  }

  v8 = [propertiesCopy objectForKeyedSubscript:@"dayOfWeekCos"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 doubleValue];
    [phenotypeCopy setDayOfWeekCos:?];
    [phenotypeCopy setHasDayOfWeekCos:1];
  }

  v9 = [propertiesCopy objectForKeyedSubscript:@"dayOfWeekSin"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 doubleValue];
    [phenotypeCopy setDayOfWeekSin:?];
    [phenotypeCopy setHasDayOfWeekSin:1];
  }

  v10 = [propertiesCopy objectForKeyedSubscript:@"normalizedDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 doubleValue];
    [phenotypeCopy setNormalizedDuration:?];
    [phenotypeCopy setHasNormalizedDuration:1];
  }

  v11 = [propertiesCopy objectForKeyedSubscript:@"weekOfYear"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [phenotypeCopy setWeekOfYear:{objc_msgSend(v11, "unsignedIntValue")}];
    [phenotypeCopy setHasWeekOfYear:1];
  }

  v12 = [propertiesCopy objectForKeyedSubscript:@"isWeekend"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [phenotypeCopy setIsWeekend:{objc_msgSend(v12, "BOOLValue")}];
    [phenotypeCopy setHasIsWeekend:1];
  }
}

@end