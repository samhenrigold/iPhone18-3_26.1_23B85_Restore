@interface ASCodableActivityDataPreview
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAchievements:(id)achievements;
- (void)addWorkouts:(id)workouts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableActivityDataPreview

- (void)addWorkouts:(id)workouts
{
  workoutsCopy = workouts;
  workouts = self->_workouts;
  v8 = workoutsCopy;
  if (!workouts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_workouts;
    self->_workouts = v6;

    workoutsCopy = v8;
    workouts = self->_workouts;
  }

  [(NSMutableArray *)workouts addObject:workoutsCopy];
}

- (void)addAchievements:(id)achievements
{
  achievementsCopy = achievements;
  achievements = self->_achievements;
  v8 = achievementsCopy;
  if (!achievements)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_achievements;
    self->_achievements = v6;

    achievementsCopy = v8;
    achievements = self->_achievements;
  }

  [(NSMutableArray *)achievements addObject:achievementsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableActivityDataPreview;
  v4 = [(ASCodableActivityDataPreview *)&v8 description];
  dictionaryRepresentation = [(ASCodableActivityDataPreview *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot)
  {
    dictionaryRepresentation = [(ASCodableCloudKitActivitySnapshot *)activitySnapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"activitySnapshot"];
  }

  if ([(NSMutableArray *)self->_workouts count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_workouts, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_workouts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"workouts"];
  }

  if ([(NSMutableArray *)self->_achievements count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_achievements, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_achievements;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"achievements"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [dictionary setObject:v20 forKey:@"date"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_activitySnapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_workouts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_achievements;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_activitySnapshot)
  {
    [toCopy setActivitySnapshot:?];
  }

  if ([(ASCodableActivityDataPreview *)self workoutsCount])
  {
    [toCopy clearWorkouts];
    workoutsCount = [(ASCodableActivityDataPreview *)self workoutsCount];
    if (workoutsCount)
    {
      v5 = workoutsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ASCodableActivityDataPreview *)self workoutsAtIndex:i];
        [toCopy addWorkouts:v7];
      }
    }
  }

  if ([(ASCodableActivityDataPreview *)self achievementsCount])
  {
    [toCopy clearAchievements];
    achievementsCount = [(ASCodableActivityDataPreview *)self achievementsCount];
    if (achievementsCount)
    {
      v9 = achievementsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ASCodableActivityDataPreview *)self achievementsAtIndex:j];
        [toCopy addAchievements:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_date;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ASCodableCloudKitActivitySnapshot *)self->_activitySnapshot copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_workouts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addWorkouts:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_achievements;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addAchievements:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot | *(equalCopy + 3))
  {
    if (![(ASCodableCloudKitActivitySnapshot *)activitySnapshot isEqual:?])
    {
      goto LABEL_12;
    }
  }

  workouts = self->_workouts;
  if (workouts | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)workouts isEqual:?])
    {
      goto LABEL_12;
    }
  }

  achievements = self->_achievements;
  if (achievements | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)achievements isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_date == *(equalCopy + 1))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(ASCodableCloudKitActivitySnapshot *)self->_activitySnapshot hash];
  v4 = [(NSMutableArray *)self->_workouts hash];
  v5 = [(NSMutableArray *)self->_achievements hash];
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v6.i64 = floor(date + 0.5);
    v10 = (date - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  activitySnapshot = self->_activitySnapshot;
  v6 = *(fromCopy + 3);
  if (activitySnapshot)
  {
    if (v6)
    {
      [(ASCodableCloudKitActivitySnapshot *)activitySnapshot mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ASCodableActivityDataPreview *)self setActivitySnapshot:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ASCodableActivityDataPreview *)self addWorkouts:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(fromCopy + 2);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ASCodableActivityDataPreview *)self addAchievements:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  if (*(fromCopy + 40))
  {
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end