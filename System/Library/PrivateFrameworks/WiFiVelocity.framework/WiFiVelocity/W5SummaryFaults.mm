@interface W5SummaryFaults
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFaults:(id)faults;
- (W5SummaryFaults)initWithCoder:(id)coder;
- (W5SummaryFaults)initWithSummaryFaults:(id)faults;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation W5SummaryFaults

- (W5SummaryFaults)initWithSummaryFaults:(id)faults
{
  v19 = *MEMORY[0x277D85DE8];
  faultsCopy = faults;
  v10.receiver = self;
  v10.super_class = W5SummaryFaults;
  v5 = [(W5SummaryFaults *)&v10 init];
  if (v5)
  {
    v6 = faultsCopy;
    p_super = &v5->_lastHrFaults->super;
    v5->_lastHrFaults = v6;
  }

  else
  {
    p_super = W5GetOSLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5SummaryFaults initWithSummaryFaults:]";
      v13 = 2080;
      v14 = "W5SummaryFaults.m";
      v15 = 1024;
      v16 = 31;
      v17 = 2080;
      v18 = "[W5SummaryFaults initWithSummaryFaults:]";
      LODWORD(v9) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_274216000, p_super, 0, "[wifivelocity] %s (%s:%u) %s: init error!", &v11, v9, LODWORD(v10.receiver), v10.super_class);
    }
  }

  return v5;
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Faults in last Hour: %lu\n", -[NSArray count](self->_lastHrFaults, "count")];
  if ([(NSArray *)self->_lastHrFaults count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = self->_lastHrFaults;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:@"type"];
          [v3 appendFormat:@"Fault: %@\n", v9];

          v10 = [v8 objectForKeyedSubscript:@"date"];
          [v3 appendFormat:@"\tDate: %@\n", v10];

          v11 = [v8 objectForKeyedSubscript:@"date"];
          [v3 appendFormat:@"\tInterface: %@\n", v11];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (BOOL)isEqualToFaults:(id)faults
{
  v33 = *MEMORY[0x277D85DE8];
  faultsCopy = faults;
  v5 = [(NSArray *)self->_lastHrFaults count];
  lastHrFaults = [faultsCopy lastHrFaults];
  v7 = [lastHrFaults count];

  if (v5 == v7)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [faultsCopy lastHrFaults];
    v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      v21 = faultsCopy;
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
          v13 = self->_lastHrFaults;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (!v14)
          {

LABEL_20:
            v19 = 0;
            faultsCopy = v21;
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
        faultsCopy = v21;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(W5SummaryFaults *)self isEqualToFaults:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5SummaryFaults allocWithZone:?]];
  [(W5SummaryFaults *)v4 setLastHrFaults:self->_lastHrFaults];
  return v4;
}

- (W5SummaryFaults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = W5SummaryFaults;
  v5 = [(W5SummaryFaults *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_lastHrFaults"];
    v13 = [v12 copy];
    lastHrFaults = v5->_lastHrFaults;
    v5->_lastHrFaults = v13;
  }

  return v5;
}

@end