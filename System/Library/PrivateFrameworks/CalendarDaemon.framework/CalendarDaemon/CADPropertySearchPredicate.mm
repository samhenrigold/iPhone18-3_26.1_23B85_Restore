@interface CADPropertySearchPredicate
- (BOOL)validate;
- (CADPropertySearchPredicate)initWithCoder:(id)coder;
- (CADPropertySearchPredicate)initWithEntityType:(int)type filters:(id)filters calendar:(id)calendar;
- (CADPropertySearchPredicate)initWithEntityType:(int)type filters:(id)filters calendars:(id)calendars source:(id)source limit:(int64_t)limit randomize:(BOOL)randomize;
- (id)buildWhereClauseWithValues:(id)values andTypes:(id)types forDatabase:(int)database;
- (id)calendarRowIDsByDatabaseID;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)databasesToQuery;
- (id)extendWhereClauseWithCalendarOrSourceLimitation:(id)limitation withValues:(id)values andTypes:(id)types forDatabase:(int)database;
- (id)extendWhereClauseWithEntityTypeLimitation:(id)limitation withValues:(id)values andTypes:(id)types;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADPropertySearchPredicate

- (CADPropertySearchPredicate)initWithEntityType:(int)type filters:(id)filters calendar:(id)calendar
{
  v6 = *&type;
  v14 = *MEMORY[0x277D85DE8];
  filtersCopy = filters;
  if (calendar)
  {
    calendarCopy = calendar;
    v9 = MEMORY[0x277CBEA60];
    calendarCopy2 = calendar;
    calendar = [v9 arrayWithObjects:&calendarCopy count:1];
  }

  v11 = [(CADPropertySearchPredicate *)self initWithEntityType:v6 filters:filtersCopy calendars:calendar source:0, calendarCopy, v14];

  return v11;
}

- (CADPropertySearchPredicate)initWithEntityType:(int)type filters:(id)filters calendars:(id)calendars source:(id)source limit:(int64_t)limit randomize:(BOOL)randomize
{
  filtersCopy = filters;
  calendarsCopy = calendars;
  sourceCopy = source;
  v23.receiver = self;
  v23.super_class = CADPropertySearchPredicate;
  v17 = [(CADPropertySearchPredicate *)&v23 init];
  v18 = v17;
  if (v17 && (v17->_entityType = type, v19 = [filtersCopy copy], filters = v18->_filters, v18->_filters = v19, filters, objc_storeStrong(&v18->_sourceID, source), objc_storeStrong(&v18->_calendarIDs, calendars), v18->_limit = limit, v18->_randomize = randomize, !-[CADPropertySearchPredicate validate](v18, "validate")))
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  return v21;
}

- (BOOL)validate
{
  v33 = *MEMORY[0x277D85DE8];
  calendarIDs = self->_calendarIDs;
  if (calendarIDs && self->_sourceID)
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_calendarIDs;
      sourceID = self->_sourceID;
      *buf = 138412546;
      v30 = v5;
      v31 = 2112;
      v32 = sourceID;
      v7 = "Searching inside both calendars (%@) and source (%@) is not supported.";
      v8 = v4;
      v9 = 22;
LABEL_26:
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      return 0;
    }

    return 0;
  }

  entityType = self->_entityType;
  if ((entityType - 2) >= 2 && entityType != 101)
  {
    if (entityType != 1)
    {
      v21 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v22 = self->_entityType;
        *buf = 67109120;
        LODWORD(v30) = v22;
        v7 = "Searching for the entity type: %i is not supported yet.";
        v8 = v21;
        v9 = 8;
        goto LABEL_26;
      }

      return 0;
    }

    if (calendarIDs)
    {
      v11 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v7 = "Searching for calendars inside of calendars is not supported.";
        v8 = v11;
        v9 = 2;
        goto LABEL_26;
      }

      return 0;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_filters;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        if (([(NSArray *)v17 applicableToEntityType:self->_entityType, v24]& 1) == 0)
        {
          v19 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v20 = self->_entityType;
            *buf = 138412546;
            v30 = v17;
            v31 = 1024;
            LODWORD(v32) = v20;
            _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Cannot use filter %@ with entity type %i", buf, 0x12u);
          }

          v18 = 0;
          goto LABEL_23;
        }
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_23:

  return v18;
}

- (CADPropertySearchPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CADPropertySearchPredicate;
  v5 = [(CADPropertySearchPredicate *)&v20 initWithCoder:coderCopy];
  if (!v5 || (v6 = [coderCopy decodeIntegerForKey:@"entityType"], v5->_entityType = v6, _CADPropertySearchPredicateGetAllowedFilterTypes(v6, v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v8, @"filters"), v9 = objc_claimAutoreleasedReturnValue(), filters = v5->_filters, v5->_filters = v9, filters, v8, v11 = MEMORY[0x277CBEB98], v12 = objc_opt_class(), objc_msgSend(v11, "setWithObjects:", v12, objc_opt_class(), 0), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v13, @"calendarIDs"), v14 = objc_claimAutoreleasedReturnValue(), calendarIDs = v5->_calendarIDs, v5->_calendarIDs = v14, calendarIDs, v13, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"sourceID"), v16 = objc_claimAutoreleasedReturnValue(), sourceID = v5->_sourceID, v5->_sourceID = v16, sourceID, v5->_limit = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"limit"), v5->_randomize = objc_msgSend(coderCopy, "decodeBoolForKey:", @"randomize"), v18 = 0, -[CADPropertySearchPredicate validate](v5, "validate")))
  {
    v18 = v5;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CADPropertySearchPredicate;
  coderCopy = coder;
  [(CADPropertySearchPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_entityType forKey:{@"entityType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_filters forKey:@"filters"];
  [coderCopy encodeObject:self->_calendarIDs forKey:@"calendarIDs"];
  [coderCopy encodeObject:self->_sourceID forKey:@"sourceID"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
  [coderCopy encodeBool:self->_randomize forKey:@"randomize"];
}

- (id)databasesToQuery
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_sourceID)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInt:{-[CADObjectID databaseID](self->_sourceID, "databaseID")}];
    v5[0] = v2;
    calendarRowIDsByDatabaseID = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    calendarRowIDsByDatabaseID = [(CADPropertySearchPredicate *)self calendarRowIDsByDatabaseID];
  }

  return calendarRowIDsByDatabaseID;
}

- (id)extendWhereClauseWithEntityTypeLimitation:(id)limitation withValues:(id)values andTypes:(id)types
{
  limitationCopy = limitation;
  if ((self->_entityType & 0xFFFFFFFE) == 2)
  {
    typesCopy = types;
    valuesCopy = values;
    v11 = _CADPropertySearchPredicateExtendWhereClause(limitationCopy, 0, @"entity_type = ?");

    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_entityType];
    [valuesCopy addObject:v12];

    [typesCopy addObject:&unk_2837C74E0];
    limitationCopy = v11;
  }

  return limitationCopy;
}

- (id)calendarRowIDsByDatabaseID
{
  v23 = *MEMORY[0x277D85DE8];
  calendarRowIDsByDatabaseID = self->_calendarRowIDsByDatabaseID;
  if (!calendarRowIDsByDatabaseID)
  {
    if (self->_calendarIDs)
    {
      v16 = 16;
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      selfCopy = self;
      v5 = self->_calendarIDs;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v18 + 1) + 8 * i);
            v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "databaseID", v16)}];
            v12 = [v4 objectForKeyedSubscript:v11];
            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v4 setObject:v12 forKeyedSubscript:v11];
            }

            v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "entityID")}];
            [v12 addObject:v13];
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);
      }

      v14 = *(&selfCopy->super.super.super.isa + v16);
      *(&selfCopy->super.super.super.isa + v16) = v4;

      calendarRowIDsByDatabaseID = *(&selfCopy->super.super.super.isa + v16);
    }

    else
    {
      calendarRowIDsByDatabaseID = 0;
    }
  }

  return calendarRowIDsByDatabaseID;
}

- (id)extendWhereClauseWithCalendarOrSourceLimitation:(id)limitation withValues:(id)values andTypes:(id)types forDatabase:(int)database
{
  v6 = *&database;
  limitationCopy = limitation;
  valuesCopy = values;
  typesCopy = types;
  if (self->_calendarIDs)
  {
    calendarRowIDsByDatabaseID = [(CADPropertySearchPredicate *)self calendarRowIDsByDatabaseID];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v15 = [calendarRowIDsByDatabaseID objectForKeyedSubscript:v14];

    v16 = [v15 componentsJoinedByString:{@", "}];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"calendar_id IN (%@)", v16];
    v18 = _CADPropertySearchPredicateExtendWhereClause(limitationCopy, 0, v17);

    limitationCopy = v18;
  }

  else if (self->_sourceID)
  {
    v19 = _CADPropertySearchPredicateExtendWhereClause(limitationCopy, 0, @"calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)");

    v20 = [MEMORY[0x277CCABB0] numberWithInt:{-[CADObjectID entityID](self->_sourceID, "entityID")}];
    [valuesCopy addObject:v20];

    [typesCopy addObject:&unk_2837C74E0];
    limitationCopy = v19;
  }

  return limitationCopy;
}

- (id)buildWhereClauseWithValues:(id)values andTypes:(id)types forDatabase:(int)database
{
  v5 = *&database;
  v24 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  typesCopy = types;
  v10 = [(CADPropertySearchPredicate *)self extendWhereClauseWithEntityTypeLimitation:0 withValues:valuesCopy andTypes:typesCopy];
  v11 = [(CADPropertySearchPredicate *)self extendWhereClauseWithCalendarOrSourceLimitation:v10 withValues:valuesCopy andTypes:typesCopy forDatabase:v5];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_filters;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      v17 = v11;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v11 = [*(*(&v19 + 1) + 8 * v16) extendWhereClause:v17 usingOperation:0 withValues:valuesCopy andTypes:{typesCopy, v19}];

        ++v16;
        v17 = v11;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(CADPropertySearchPredicate *)self buildWhereClauseWithValues:v4 andTypes:v5 forDatabase:CalDatabaseGetAuxilliaryDatabaseID()];
  v7 = CalDatabaseCopyEntitiesWhere();

  return v7;
}

- (id)predicateFormat
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  sourceID = self->_sourceID;
  if (sourceID)
  {
    databaseID = [(CADObjectID *)sourceID databaseID];
  }

  else if ([(NSArray *)self->_calendarIDs count])
  {
    firstObject = [(NSArray *)self->_calendarIDs firstObject];
    databaseID = [firstObject databaseID];
  }

  else
  {
    databaseID = *MEMORY[0x277CF7570];
  }

  v25 = v4;
  v8 = [(CADPropertySearchPredicate *)self buildWhereClauseWithValues:v3 andTypes:v4 forDatabase:databaseID];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v8 rangeOfString:@"?"];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v15;
          v18 = v16;
          v19 = [v14 description];
          [v8 replaceCharactersInRange:v17 withString:{v18, v19}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v20 stringWithFormat:@"%@: %@", v22, v8];

  return v23;
}

@end