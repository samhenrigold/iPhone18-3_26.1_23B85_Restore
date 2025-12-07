@interface HDCodableWorkout
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEvents:(id)events;
- (void)addSubActivities:(id)activities;
- (void)addZones:(id)zones;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGoal:(BOOL)goal;
- (void)setHasGoalType:(BOOL)type;
- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)unit;
- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)unit;
- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)unit;
- (void)setHasTotalFlightsClimbedInCanonicalUnit:(BOOL)unit;
- (void)setHasTotalSwimmingStrokeCountInCanonicalUnit:(BOOL)unit;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableWorkout

- (BOOL)applyToObject:(id)object
{
  v82 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableWorkout sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:objectCopy], v5, v6) && _HKWorkoutActivityTypeIsValid())
  {
    [objectCopy _setWorkoutActivityType:self->_type];
    [objectCopy _setDuration:self->_duration];
    if ([(NSMutableArray *)self->_events count])
    {
      array = [MEMORY[0x277CBEB18] array];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v8 = self->_events;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v77;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v77 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [MEMORY[0x277CCDC68] createWithCodable:*(*(&v76 + 1) + 8 * i)];
            if (v13)
            {
              [array addObject:v13];
            }
          }

          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v76 objects:v81 count:16];
        }

        while (v10);
      }
    }

    else
    {
      array = 0;
    }

    [objectCopy _setWorkoutEvents:array];

    if ([(NSMutableArray *)self->_zones count])
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      selfCopy = self;
      v17 = self->_zones;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v77;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v77 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [MEMORY[0x277CCDCE0] createWithCodable:*(*(&v76 + 1) + 8 * j)];
            v23 = v22;
            if (v22)
            {
              type = [v22 type];
              v25 = [v16 objectForKeyedSubscript:type];

              if (!v25)
              {
                v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v16 setObject:v26 forKeyedSubscript:type];
              }

              v27 = [v16 objectForKeyedSubscript:type];
              [v27 addObject:v23];
            }
          }

          v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v76 objects:v81 count:16];
        }

        while (v19);
      }

      self = selfCopy;
    }

    else
    {
      v16 = 0;
    }

    [objectCopy _setWorkoutZonesByType:v16];

    v28 = [MEMORY[0x277CCDBF0] createWithCodable:self->_primaryActivity];
    if (!v28)
    {
      [objectCopy workoutActivityType];
      metadata = [objectCopy metadata];
      v30 = _HKWorkoutConfigurationWithActivityTypeAndMetadata();

      v31 = objc_alloc(MEMORY[0x277CCDBF0]);
      uUID = [objectCopy UUID];
      startDate = [objectCopy startDate];
      endDate = [objectCopy endDate];
      workoutEvents = [objectCopy workoutEvents];
      [objectCopy duration];
      v28 = [v31 _initWithUUID:uUID workoutConfiguration:v30 startDate:startDate endDate:endDate workoutEvents:workoutEvents startsPaused:0 duration:0 metadata:0 statisticsPerType:?];
    }

    [objectCopy _setPrimaryActivity:v28];
    if ([(NSMutableArray *)self->_subActivities count])
    {
      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v37 = self->_subActivities;
      v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v77;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v77 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = [MEMORY[0x277CCDBF0] createWithCodable:*(*(&v76 + 1) + 8 * k)];
            if (v42)
            {
              [v36 addObject:v42];
            }
          }

          v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v76 objects:v81 count:16];
        }

        while (v39);
      }
    }

    else
    {
      v36 = 0;
    }

    [objectCopy _setSubActivities:v36];

    workoutEvents2 = [objectCopy workoutEvents];
    v44 = [workoutEvents2 count];

    if (v44)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      _subActivities = [objectCopy _subActivities];
      v46 = [_subActivities countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v73;
        do
        {
          for (m = 0; m != v47; ++m)
          {
            if (*v73 != v48)
            {
              objc_enumerationMutation(_subActivities);
            }

            v50 = *(*(&v72 + 1) + 8 * m);
            workoutEvents3 = [objectCopy workoutEvents];
            [v50 _filterAndSetWorkoutEvents:workoutEvents3];
          }

          v47 = [_subActivities countByEnumeratingWithState:&v72 objects:v80 count:16];
        }

        while (v47);
      }
    }

    if ([(HDCodableWorkout *)self hasTotalEnergyBurnedInCanonicalUnit])
    {
      if ((*&self->_has & 0x20) != 0)
      {
        v53 = MEMORY[0x277CCD7E8];
        v54 = _HKWorkoutCanonicalEnergyBurnedUnit();
        v52 = [v53 quantityWithUnit:v54 doubleValue:self->_totalEnergyBurnedInCanonicalUnit];
      }

      else
      {
        v52 = 0;
      }

      [objectCopy _setTotalEnergyBurned:v52];
    }

    if ([(HDCodableWorkout *)self hasTotalBasalEnergyBurnedInCanonicalUnit])
    {
      if ((*&self->_has & 8) != 0)
      {
        v56 = MEMORY[0x277CCD7E8];
        v57 = _HKWorkoutCanonicalEnergyBurnedUnit();
        v55 = [v56 quantityWithUnit:v57 doubleValue:self->_totalBasalEnergyBurnedInCanonicalUnit];
      }

      else
      {
        v55 = 0;
      }

      [objectCopy _setTotalBasalEnergyBurned:v55];
    }

    if ([(HDCodableWorkout *)self hasTotalDistanceInCanonicalUnit])
    {
      if ((*&self->_has & 0x10) != 0)
      {
        v59 = MEMORY[0x277CCD7E8];
        v60 = _HKWorkoutCanonicalDistanceUnit();
        v58 = [v59 quantityWithUnit:v60 doubleValue:self->_totalDistanceInCanonicalUnit];
      }

      else
      {
        v58 = 0;
      }

      [objectCopy _setTotalDistance:v58];
    }

    if ([(HDCodableWorkout *)self hasTotalSwimmingStrokeCountInCanonicalUnit])
    {
      if ((*&self->_has & 0x80) != 0)
      {
        v62 = MEMORY[0x277CCD7E8];
        v63 = _HKWorkoutCanonicalSwimmingStrokeCountUnit();
        v61 = [v62 quantityWithUnit:v63 doubleValue:self->_totalSwimmingStrokeCountInCanonicalUnit];
      }

      else
      {
        v61 = 0;
      }

      [objectCopy _setTotalSwimmingStrokeCount:v61];
    }

    if ([(HDCodableWorkout *)self hasTotalFlightsClimbedInCanonicalUnit])
    {
      if ((*&self->_has & 0x40) != 0)
      {
        v65 = MEMORY[0x277CCD7E8];
        v66 = _HKWorkoutCanonicalFlightsClimbedUnit();
        v64 = [v65 quantityWithUnit:v66 doubleValue:self->_totalFlightsClimbedInCanonicalUnit];
      }

      else
      {
        v64 = 0;
      }

      [objectCopy _setTotalFlightsClimbed:v64];
    }

    if ([(HDCodableWorkout *)self hasGoalType])
    {
      if ((*&self->_has & 4) != 0)
      {
        goalType = self->_goalType;
      }

      else
      {
        goalType = 0;
      }

      [objectCopy _setGoalType:goalType];
    }

    if ([(HDCodableWorkout *)self hasGoal])
    {
      if ((~*&self->_has & 6) != 0)
      {
        v70 = 0;
      }

      else
      {
        v68 = MEMORY[0x277CCD7E8];
        v69 = _HKWorkoutCanonicalUnitForGoalType();
        v70 = [v68 quantityWithUnit:v69 doubleValue:self->_goal];
      }

      [objectCopy _setGoal:v70];
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  events = self->_events;
  v8 = eventsCopy;
  if (!events)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_events;
    self->_events = v6;

    eventsCopy = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:eventsCopy];
}

- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasGoalType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTotalSwimmingStrokeCountInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTotalFlightsClimbedInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)addSubActivities:(id)activities
{
  activitiesCopy = activities;
  subActivities = self->_subActivities;
  v8 = activitiesCopy;
  if (!subActivities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subActivities;
    self->_subActivities = v6;

    activitiesCopy = v8;
    subActivities = self->_subActivities;
  }

  [(NSMutableArray *)subActivities addObject:activitiesCopy];
}

- (void)addZones:(id)zones
{
  zonesCopy = zones;
  zones = self->_zones;
  v8 = zonesCopy;
  if (!zones)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_zones;
    self->_zones = v6;

    zonesCopy = v8;
    zones = self->_zones;
  }

  [(NSMutableArray *)zones addObject:zonesCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkout;
  v4 = [(HDCodableWorkout *)&v8 description];
  dictionaryRepresentation = [(HDCodableWorkout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v55 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [dictionary setObject:v6 forKey:@"type"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = self->_events;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"events"];
  }

  has = self->_has;
  if (has)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [dictionary setObject:v33 forKey:@"duration"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_16:
      if ((has & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalEnergyBurnedInCanonicalUnit];
  [dictionary setObject:v34 forKey:@"totalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalDistanceInCanonicalUnit];
  [dictionary setObject:v35 forKey:@"totalDistanceInCanonicalUnit"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v36 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_goalType];
  [dictionary setObject:v36 forKey:@"goalType"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goal];
  [dictionary setObject:v37 forKey:@"goal"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalBasalEnergyBurnedInCanonicalUnit];
  [dictionary setObject:v38 forKey:@"totalBasalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_21:
    if ((has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_52:
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalSwimmingStrokeCountInCanonicalUnit];
  [dictionary setObject:v39 forKey:@"totalSwimmingStrokeCountInCanonicalUnit"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_22:
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalFlightsClimbedInCanonicalUnit];
    [dictionary setObject:v15 forKey:@"totalFlightsClimbedInCanonicalUnit"];
  }

LABEL_23:
  primaryActivity = self->_primaryActivity;
  if (primaryActivity)
  {
    dictionaryRepresentation3 = [(HDCodableWorkoutActivity *)primaryActivity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"primaryActivity"];
  }

  if ([(NSMutableArray *)self->_subActivities count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_subActivities, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = self->_subActivities;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation4 = [*(*(&v44 + 1) + 8 * j) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation4];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"subActivities"];
  }

  if ([(NSMutableArray *)self->_zones count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_zones, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = self->_zones;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation5 = [*(*(&v40 + 1) + 8 * k) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation5];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"zones"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x100) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_events;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_14:
      if ((has & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_14;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_20:
    PBDataWriterWriteDoubleField();
  }

LABEL_21:
  if (self->_primaryActivity)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_subActivities;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_zones;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v18;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(toCopy + 9) = self->_type;
    *(toCopy + 60) |= 0x100u;
  }

  if ([(HDCodableWorkout *)self eventsCount])
  {
    [v18 clearEvents];
    eventsCount = [(HDCodableWorkout *)self eventsCount];
    if (eventsCount)
    {
      v6 = eventsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HDCodableWorkout *)self eventsAtIndex:i];
        [v18 addEvents:v8];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v18 + 1) = *&self->_duration;
    *(v18 + 60) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_11;
  }

  *(v18 + 6) = *&self->_totalEnergyBurnedInCanonicalUnit;
  *(v18 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v18 + 5) = *&self->_totalDistanceInCanonicalUnit;
  *(v18 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v18 + 3) = self->_goalType;
  *(v18 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v18 + 2) = *&self->_goal;
  *(v18 + 60) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v18 + 4) = *&self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v18 + 60) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_37:
  *(v18 + 8) = *&self->_totalSwimmingStrokeCountInCanonicalUnit;
  *(v18 + 60) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    *(v18 + 7) = *&self->_totalFlightsClimbedInCanonicalUnit;
    *(v18 + 60) |= 0x40u;
  }

LABEL_18:
  if (self->_primaryActivity)
  {
    [v18 setPrimaryActivity:?];
  }

  if ([(HDCodableWorkout *)self subActivitiesCount])
  {
    [v18 clearSubActivities];
    subActivitiesCount = [(HDCodableWorkout *)self subActivitiesCount];
    if (subActivitiesCount)
    {
      v11 = subActivitiesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCodableWorkout *)self subActivitiesAtIndex:j];
        [v18 addSubActivities:v13];
      }
    }
  }

  if ([(HDCodableWorkout *)self zonesCount])
  {
    [v18 clearZones];
    zonesCount = [(HDCodableWorkout *)self zonesCount];
    if (zonesCount)
    {
      v15 = zonesCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(HDCodableWorkout *)self zonesAtIndex:k];
        [v18 addZones:v17];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 72) = self->_type;
    *(v5 + 120) |= 0x100u;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_events;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v38 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addEvents:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 120) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_12:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 48) = self->_totalEnergyBurnedInCanonicalUnit;
  *(v5 + 120) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 40) = self->_totalDistanceInCanonicalUnit;
  *(v5 + 120) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 24) = self->_goalType;
  *(v5 + 120) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 16) = self->_goal;
  *(v5 + 120) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 32) = self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v5 + 120) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_40:
  *(v5 + 64) = self->_totalSwimmingStrokeCountInCanonicalUnit;
  *(v5 + 120) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_18:
    *(v5 + 56) = self->_totalFlightsClimbedInCanonicalUnit;
    *(v5 + 120) |= 0x40u;
  }

LABEL_19:
  v15 = [(HDCodableWorkoutActivity *)self->_primaryActivity copyWithZone:zone];
  v16 = *(v5 + 88);
  *(v5 + 88) = v15;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_subActivities;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v34 + 1) + 8 * v21) copyWithZone:zone];
        [v5 addSubActivities:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_zones;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v30 + 1) + 8 * v27) copyWithZone:{zone, v30}];
        [v5 addZones:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v25);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 12))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_58;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 60);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 60) & 0x100) == 0 || self->_type != *(equalCopy + 9))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 60) & 0x100) != 0)
  {
    goto LABEL_58;
  }

  events = self->_events;
  if (events | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)events isEqual:?])
    {
LABEL_58:
      v12 = 0;
      goto LABEL_59;
    }

    has = self->_has;
    v7 = *(equalCopy + 60);
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_totalEnergyBurnedInCanonicalUnit != *(equalCopy + 6))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_totalDistanceInCanonicalUnit != *(equalCopy + 5))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_goalType != *(equalCopy + 3))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_goal != *(equalCopy + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_totalBasalEnergyBurnedInCanonicalUnit != *(equalCopy + 4))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_totalSwimmingStrokeCountInCanonicalUnit != *(equalCopy + 8))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_totalFlightsClimbedInCanonicalUnit != *(equalCopy + 7))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_58;
  }

  primaryActivity = self->_primaryActivity;
  if (primaryActivity | *(equalCopy + 11) && ![(HDCodableWorkoutActivity *)primaryActivity isEqual:?])
  {
    goto LABEL_58;
  }

  subActivities = self->_subActivities;
  if (subActivities | *(equalCopy + 13))
  {
    if (![(NSMutableArray *)subActivities isEqual:?])
    {
      goto LABEL_58;
    }
  }

  zones = self->_zones;
  if (zones | *(equalCopy + 14))
  {
    v12 = [(NSMutableArray *)zones isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_59:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_events hash];
  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v6.i64 = floor(duration + 0.5);
    v11 = (duration - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
    v9 = 2654435761u * *v6.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((has & 0x20) != 0)
  {
    totalEnergyBurnedInCanonicalUnit = self->_totalEnergyBurnedInCanonicalUnit;
    if (totalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalEnergyBurnedInCanonicalUnit = -totalEnergyBurnedInCanonicalUnit;
    }

    *v6.i64 = floor(totalEnergyBurnedInCanonicalUnit + 0.5);
    v15 = (totalEnergyBurnedInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v16), v7, v6);
    v13 = 2654435761u * *v6.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 0x10) != 0)
  {
    totalDistanceInCanonicalUnit = self->_totalDistanceInCanonicalUnit;
    if (totalDistanceInCanonicalUnit < 0.0)
    {
      totalDistanceInCanonicalUnit = -totalDistanceInCanonicalUnit;
    }

    *v6.i64 = floor(totalDistanceInCanonicalUnit + 0.5);
    v19 = (totalDistanceInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v20), v7, v6);
    v17 = 2654435761u * *v6.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 4) != 0)
  {
    v21 = 2654435761 * self->_goalType;
    if ((has & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    v25 = 0;
    goto LABEL_36;
  }

  v21 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  goal = self->_goal;
  if (goal < 0.0)
  {
    goal = -goal;
  }

  *v6.i64 = floor(goal + 0.5);
  v23 = (goal - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v24), v7, v6);
  v25 = 2654435761u * *v6.i64;
  if (v23 >= 0.0)
  {
    if (v23 > 0.0)
    {
      v25 += v23;
    }
  }

  else
  {
    v25 -= fabs(v23);
  }

LABEL_36:
  if ((has & 8) != 0)
  {
    totalBasalEnergyBurnedInCanonicalUnit = self->_totalBasalEnergyBurnedInCanonicalUnit;
    if (totalBasalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalBasalEnergyBurnedInCanonicalUnit = -totalBasalEnergyBurnedInCanonicalUnit;
    }

    *v6.i64 = floor(totalBasalEnergyBurnedInCanonicalUnit + 0.5);
    v28 = (totalBasalEnergyBurnedInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v29), v7, v6);
    v26 = 2654435761u * *v6.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((has & 0x80) != 0)
  {
    totalSwimmingStrokeCountInCanonicalUnit = self->_totalSwimmingStrokeCountInCanonicalUnit;
    if (totalSwimmingStrokeCountInCanonicalUnit < 0.0)
    {
      totalSwimmingStrokeCountInCanonicalUnit = -totalSwimmingStrokeCountInCanonicalUnit;
    }

    *v6.i64 = floor(totalSwimmingStrokeCountInCanonicalUnit + 0.5);
    v32 = (totalSwimmingStrokeCountInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v33), v7, v6);
    v30 = 2654435761u * *v6.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((has & 0x40) != 0)
  {
    totalFlightsClimbedInCanonicalUnit = self->_totalFlightsClimbedInCanonicalUnit;
    if (totalFlightsClimbedInCanonicalUnit < 0.0)
    {
      totalFlightsClimbedInCanonicalUnit = -totalFlightsClimbedInCanonicalUnit;
    }

    *v6.i64 = floor(totalFlightsClimbedInCanonicalUnit + 0.5);
    v36 = (totalFlightsClimbedInCanonicalUnit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v34 = 2654435761u * *vbslq_s8(vnegq_f64(v37), v7, v6).i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabs(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  v38 = v4 ^ v3 ^ v5 ^ v9;
  v39 = v13 ^ v17 ^ v21 ^ v25 ^ v26 ^ v30 ^ v34 ^ [(HDCodableWorkoutActivity *)self->_primaryActivity hash];
  v40 = v38 ^ v39 ^ [(NSMutableArray *)self->_subActivities hash];
  return v40 ^ [(NSMutableArray *)self->_zones hash];
}

- (void)mergeFrom:(id)from
{
  v40 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 12);
  if (sample)
  {
    if (v6)
    {
      [(HDCodableSample *)sample mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableWorkout *)self setSample:?];
  }

  if ((*(fromCopy + 60) & 0x100) != 0)
  {
    self->_type = *(fromCopy + 9);
    *&self->_has |= 0x100u;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = *(fromCopy + 10);
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCodableWorkout *)self addEvents:*(*(&v33 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v9);
  }

  v12 = *(fromCopy + 60);
  if (v12)
  {
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1u;
    v12 = *(fromCopy + 60);
    if ((v12 & 0x20) == 0)
    {
LABEL_17:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  self->_totalEnergyBurnedInCanonicalUnit = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v12 = *(fromCopy + 60);
  if ((v12 & 0x10) == 0)
  {
LABEL_18:
    if ((v12 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_totalDistanceInCanonicalUnit = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v12 = *(fromCopy + 60);
  if ((v12 & 4) == 0)
  {
LABEL_19:
    if ((v12 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_goalType = *(fromCopy + 3);
  *&self->_has |= 4u;
  v12 = *(fromCopy + 60);
  if ((v12 & 2) == 0)
  {
LABEL_20:
    if ((v12 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_goal = *(fromCopy + 2);
  *&self->_has |= 2u;
  v12 = *(fromCopy + 60);
  if ((v12 & 8) == 0)
  {
LABEL_21:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_totalBasalEnergyBurnedInCanonicalUnit = *(fromCopy + 4);
  *&self->_has |= 8u;
  v12 = *(fromCopy + 60);
  if ((v12 & 0x80) == 0)
  {
LABEL_22:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  self->_totalSwimmingStrokeCountInCanonicalUnit = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 60) & 0x40) != 0)
  {
LABEL_23:
    self->_totalFlightsClimbedInCanonicalUnit = *(fromCopy + 7);
    *&self->_has |= 0x40u;
  }

LABEL_24:
  primaryActivity = self->_primaryActivity;
  v14 = *(fromCopy + 11);
  if (primaryActivity)
  {
    if (v14)
    {
      [(HDCodableWorkoutActivity *)primaryActivity mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(HDCodableWorkout *)self setPrimaryActivity:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = *(fromCopy + 13);
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(HDCodableWorkout *)self addSubActivities:*(*(&v29 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = *(fromCopy + 14);
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(HDCodableWorkout *)self addZones:*(*(&v25 + 1) + 8 * k), v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v22);
  }
}

@end