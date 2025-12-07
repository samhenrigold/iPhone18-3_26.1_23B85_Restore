@interface EKPredicate
- (EKPredicate)initWithCalendars:(id)calendars;
- (EKPredicate)initWithCoder:(id)coder;
- (id)calendarRowIDSetForDatabaseID:(int)d;
- (id)calendarRowIDsForDatabaseID:(int)d;
- (id)databasesToQuery;
- (id)predicateFormat;
- (id)restrictedCalendarRowIDsForDatabaseID:(int)d;
- (void)createCalendarMaps;
- (void)encodeWithCoder:(id)coder;
- (void)setRestrictedCalendarRowIDs:(id)ds forDatabaseID:(int)d;
@end

@implementation EKPredicate

- (id)databasesToQuery
{
  [(EKPredicate *)self createCalendarMaps];
  databaseToCalendarRowIDs = self->_databaseToCalendarRowIDs;

  return databaseToCalendarRowIDs;
}

- (void)createCalendarMaps
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = self->_calendars;
  v4 = v3;
  if (!self->_databaseToCalendarRowIDs && [(NSArray *)v3 count])
  {
    selfCopy = self;
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "databaseID")}];
          v13 = [(NSDictionary *)v5 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [(NSDictionary *)v5 setObject:v13 forKeyedSubscript:v12];
          }

          v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "entityID")}];
          [v13 addObject:v14];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    databaseToCalendarRowIDs = selfCopy->_databaseToCalendarRowIDs;
    selfCopy->_databaseToCalendarRowIDs = v5;
  }
}

- (EKPredicate)initWithCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v9.receiver = self;
  v9.super_class = EKPredicate;
  v5 = [(EKPredicate *)&v9 init];
  if (v5)
  {
    v6 = [calendarsCopy CalFilter:&__block_literal_global_23];
    calendars = v5->_calendars;
    v5->_calendars = v6;
  }

  return v5;
}

- (EKPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EKPredicate;
  v5 = [(EKPredicate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    if (initWithCoder__onceToken_0 != -1)
    {
      [EKPredicate initWithCoder:];
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder____whitelistedClasses_0 forKey:@"calendars"];
    calendars = v5->_calendars;
    v5->_calendars = v6;
  }

  return v5;
}

uint64_t __29__EKPredicate_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
  initWithCoder____whitelistedClasses_0 = v3;

  return MEMORY[0x2821F96F8](v3);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = EKPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_calendars forKey:{@"calendars", v5.receiver, v5.super_class}];
}

- (id)calendarRowIDsForDatabaseID:(int)d
{
  v3 = *&d;
  [(EKPredicate *)self createCalendarMaps];
  databaseToCalendarRowIDs = self->_databaseToCalendarRowIDs;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v7 = [(NSDictionary *)databaseToCalendarRowIDs objectForKeyedSubscript:v6];

  return v7;
}

- (id)restrictedCalendarRowIDsForDatabaseID:(int)d
{
  databaseToRestrictedCalendarRowIDs = self->_databaseToRestrictedCalendarRowIDs;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&d];
  v5 = [(NSMutableDictionary *)databaseToRestrictedCalendarRowIDs objectForKeyedSubscript:v4];

  return v5;
}

- (void)setRestrictedCalendarRowIDs:(id)ds forDatabaseID:(int)d
{
  v4 = *&d;
  dsCopy = ds;
  databaseToRestrictedCalendarRowIDs = self->_databaseToRestrictedCalendarRowIDs;
  if (!databaseToRestrictedCalendarRowIDs)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_databaseToRestrictedCalendarRowIDs;
    self->_databaseToRestrictedCalendarRowIDs = v7;

    databaseToRestrictedCalendarRowIDs = self->_databaseToRestrictedCalendarRowIDs;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)databaseToRestrictedCalendarRowIDs setObject:dsCopy forKeyedSubscript:v9];
}

- (id)calendarRowIDSetForDatabaseID:(int)d
{
  v3 = *&d;
  v27 = *MEMORY[0x277D85DE8];
  if (self->_databaseToCalendarRowIDSets)
  {
LABEL_11:
    databaseToCalendarRowIDSets = self->_databaseToCalendarRowIDSets;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v18 = [(NSMutableDictionary *)databaseToCalendarRowIDSets objectForKeyedSubscript:v17];

    goto LABEL_12;
  }

  v5 = [(EKPredicate *)self calendarRowIDsForDatabaseID:*&d];
  if (v5)
  {
    v20 = v5;
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSDictionary count](self->_databaseToCalendarRowIDs, "count")}];
    v7 = self->_databaseToCalendarRowIDSets;
    self->_databaseToCalendarRowIDSets = v6;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_databaseToCalendarRowIDs;
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = MEMORY[0x277CBEB98];
          v14 = [(NSDictionary *)self->_databaseToCalendarRowIDs objectForKeyedSubscript:v12];
          v15 = [v13 setWithArray:v14];
          [(NSMutableDictionary *)self->_databaseToCalendarRowIDSets setObject:v15 forKeyedSubscript:v12];
        }

        v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v3 = v3;
    goto LABEL_11;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (id)predicateFormat
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 stringFromDate:self->_startDate];
  v8 = [v3 stringFromDate:self->_endDate];
  calendars = [(EKPredicate *)self calendars];
  v10 = [CADPredicate conciseCalendarList:calendars];
  v11 = [v4 stringWithFormat:@"%@ start:%@ end:%@; cals:%@", v6, v7, v8, v10];;

  return v11;
}

@end