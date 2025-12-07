@interface W5SummaryLinkTests
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLinkTests:(id)tests;
- (W5SummaryLinkTests)initWithCoder:(id)coder;
- (W5SummaryLinkTests)initWithSummaryLinkTests:(id)tests;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation W5SummaryLinkTests

- (W5SummaryLinkTests)initWithSummaryLinkTests:(id)tests
{
  v19 = *MEMORY[0x277D85DE8];
  testsCopy = tests;
  v10.receiver = self;
  v10.super_class = W5SummaryLinkTests;
  v5 = [(W5SummaryLinkTests *)&v10 init];
  if (v5)
  {
    v6 = testsCopy;
    p_super = &v5->_lastHrLinkTests->super;
    v5->_lastHrLinkTests = v6;
  }

  else
  {
    p_super = W5GetOSLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5SummaryLinkTests initWithSummaryLinkTests:]";
      v13 = 2080;
      v14 = "W5SummaryLinkTests.m";
      v15 = 1024;
      v16 = 31;
      v17 = 2080;
      v18 = "[W5SummaryLinkTests initWithSummaryLinkTests:]";
      LODWORD(v9) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_274216000, p_super, 0, "[wifivelocity] %s (%s:%u) %s: init error!", &v11, v9, LODWORD(v10.receiver), v10.super_class);
    }
  }

  return v5;
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"LinkTests in last Hour: %lu\n", -[NSArray count](self->_lastHrLinkTests, "count")];
  if ([(NSArray *)self->_lastHrLinkTests count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    obj = self->_lastHrLinkTests;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:@"initiatingReason"];
          [v3 appendFormat:@"Initiating Reason: %@\n", v9];

          v10 = [v8 objectForKeyedSubscript:@"date"];
          [v3 appendFormat:@"\tDate: %@\n", v10];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (BOOL)isEqualToLinkTests:(id)tests
{
  v33 = *MEMORY[0x277D85DE8];
  testsCopy = tests;
  v5 = [(NSArray *)self->_lastHrLinkTests count];
  lastHrLinkTests = [testsCopy lastHrLinkTests];
  v7 = [lastHrLinkTests count];

  if (v5 == v7)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [testsCopy lastHrLinkTests];
    v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      v21 = testsCopy;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = self->_lastHrLinkTests;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (!v14)
          {

LABEL_20:
            v19 = 0;
            testsCopy = v21;
            goto LABEL_21;
          }

          v15 = v14;
          v16 = 0;
          v17 = *v24;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v16 |= [*(*(&v23 + 1) + 8 * j) isEqualToDictionary:{v12, v21}];
            }

            v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v15);

          if ((v16 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        v19 = 1;
        testsCopy = v21;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 1;
    }

LABEL_21:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(W5SummaryLinkTests *)self isEqualToLinkTests:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5SummaryLinkTests allocWithZone:?]];
  [(W5SummaryLinkTests *)v4 setLastHrLinkTests:self->_lastHrLinkTests];
  return v4;
}

- (W5SummaryLinkTests)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = W5SummaryLinkTests;
  v5 = [(W5SummaryLinkTests *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_lastHrLinkTests"];
    v13 = [v12 copy];
    lastHrLinkTests = v5->_lastHrLinkTests;
    v5->_lastHrLinkTests = v13;
  }

  return v5;
}

@end