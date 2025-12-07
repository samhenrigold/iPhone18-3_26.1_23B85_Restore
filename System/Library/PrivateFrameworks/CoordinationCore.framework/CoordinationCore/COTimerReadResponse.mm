@interface COTimerReadResponse
- (COTimerReadResponse)init;
- (COTimerReadResponse)initWithCoder:(id)coder;
- (COTimerReadResponse)initWithFilteredTimers:(id)timers;
- (COTimerReadResponse)initWithSkipInMerge;
- (COTimerReadResponse)initWithTimers:(id)timers;
- (COTimerReadResponse)initWithTimers:(id)timers deletes:(id)deletes;
- (id)initNotModifiedWithDeletes:(id)deletes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COTimerReadResponse

- (COTimerReadResponse)init
{
  v6.receiver = self;
  v6.super_class = COTimerReadResponse;
  v2 = [(COMeshCommand *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    timers = v2->_timers;
    v2->_timers = v3;
  }

  return v2;
}

- (COTimerReadResponse)initWithTimers:(id)timers
{
  timersCopy = timers;
  v5 = [(COTimerReadResponse *)self init];
  if (v5)
  {
    v6 = [timersCopy copy];
    timers = v5->_timers;
    v5->_timers = v6;
  }

  return v5;
}

- (COTimerReadResponse)initWithFilteredTimers:(id)timers
{
  result = [(COTimerReadResponse *)self initWithTimers:timers];
  if (result)
  {
    result->_filtered = 1;
  }

  return result;
}

- (COTimerReadResponse)initWithTimers:(id)timers deletes:(id)deletes
{
  deletesCopy = deletes;
  v7 = [(COTimerReadResponse *)self initWithTimers:timers];
  if (v7)
  {
    v8 = [deletesCopy copy];
    deletes = v7->_deletes;
    v7->_deletes = v8;
  }

  return v7;
}

- (id)initNotModifiedWithDeletes:(id)deletes
{
  result = [(COTimerReadResponse *)self initWithTimers:MEMORY[0x277CBEBF8] deletes:deletes];
  if (result)
  {
    *(result + 18) = 1;
  }

  return result;
}

- (COTimerReadResponse)initWithSkipInMerge
{
  v2 = [(COTimerReadResponse *)self init];
  v3 = v2;
  if (v2)
  {
    timers = v2->_timers;
    v2->_timers = MEMORY[0x277CBEBF8];

    v3->_skipInMerge = 1;
  }

  return v3;
}

- (COTimerReadResponse)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = COTimerReadResponse;
  v5 = [(COMeshResponse *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = v5;
    v5->_filtered = [coderCopy containsValueForKey:@"filtered"];
    v6->_notModified = [coderCopy containsValueForKey:@"unmodified"];
    v6->_skipInMerge = [coderCopy containsValueForKey:@"skip"];
    if ([coderCopy containsValueForKey:@"deletes"])
    {
      v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"deletes"];
      deletes = v6->_deletes;
      v6->_deletes = v7;
    }

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"timers"];
    timers = v6->_timers;
    v6->_timers = v12;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = v6->_timers;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v19 = 0;
              goto LABEL_17;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v19 = v6;
    }

    else
    {
      v19 = 0;
      v14 = v6;
    }

LABEL_17:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = COTimerReadResponse;
  [(COMeshResponse *)&v7 encodeWithCoder:coderCopy];
  timers = [(COTimerReadResponse *)self timers];
  [coderCopy encodeObject:timers forKey:@"timers"];

  if ([(COTimerReadResponse *)self isFiltered])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"filtered"];
  }

  deletes = [(COTimerReadResponse *)self deletes];
  if (deletes)
  {
    [coderCopy encodeObject:deletes forKey:@"deletes"];
  }

  if ([(COTimerReadResponse *)self skipInMerge])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"skip"];
  }

  if ([(COTimerReadResponse *)self notModified])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"unmodified"];
  }
}

@end