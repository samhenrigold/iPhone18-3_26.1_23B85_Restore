@interface COAlarmReadResponse
- (COAlarmReadResponse)init;
- (COAlarmReadResponse)initWithAlarms:(id)alarms;
- (COAlarmReadResponse)initWithAlarms:(id)alarms deletes:(id)deletes;
- (COAlarmReadResponse)initWithCoder:(id)coder;
- (COAlarmReadResponse)initWithFilteredAlarms:(id)alarms;
- (COAlarmReadResponse)initWithSkipInMerge;
- (id)initNotModifiedWithDeletes:(id)deletes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COAlarmReadResponse

- (COAlarmReadResponse)init
{
  v6.receiver = self;
  v6.super_class = COAlarmReadResponse;
  v2 = [(COMeshCommand *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    alarms = v2->_alarms;
    v2->_alarms = v3;
  }

  return v2;
}

- (COAlarmReadResponse)initWithAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v5 = [(COAlarmReadResponse *)self init];
  if (v5)
  {
    v6 = [alarmsCopy copy];
    alarms = v5->_alarms;
    v5->_alarms = v6;
  }

  return v5;
}

- (COAlarmReadResponse)initWithFilteredAlarms:(id)alarms
{
  result = [(COAlarmReadResponse *)self initWithAlarms:alarms];
  if (result)
  {
    result->_filtered = 1;
  }

  return result;
}

- (COAlarmReadResponse)initWithAlarms:(id)alarms deletes:(id)deletes
{
  deletesCopy = deletes;
  v7 = [(COAlarmReadResponse *)self initWithAlarms:alarms];
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
  result = [(COAlarmReadResponse *)self initWithAlarms:MEMORY[0x277CBEBF8] deletes:deletes];
  if (result)
  {
    *(result + 18) = 1;
  }

  return result;
}

- (COAlarmReadResponse)initWithSkipInMerge
{
  v2 = [(COAlarmReadResponse *)self init];
  v3 = v2;
  if (v2)
  {
    alarms = v2->_alarms;
    v2->_alarms = MEMORY[0x277CBEBF8];

    v3->_skipInMerge = 1;
  }

  return v3;
}

- (COAlarmReadResponse)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = COAlarmReadResponse;
  v5 = [(COMeshResponse *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = v5;
    v5->_skipInMerge = [coderCopy containsValueForKey:@"skip"];
    v6->_notModified = [coderCopy containsValueForKey:@"unmodified"];
    v6->_filtered = [coderCopy containsValueForKey:@"filtered"];
    if ([coderCopy containsValueForKey:@"deletes"])
    {
      v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"deletes"];
      deletes = v6->_deletes;
      v6->_deletes = v7;
    }

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"alarms"];
    alarms = v6->_alarms;
    v6->_alarms = v12;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = v6->_alarms;
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
  v7.super_class = COAlarmReadResponse;
  [(COMeshResponse *)&v7 encodeWithCoder:coderCopy];
  alarms = [(COAlarmReadResponse *)self alarms];
  [coderCopy encodeObject:alarms forKey:@"alarms"];

  if ([(COAlarmReadResponse *)self isFiltered])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"filtered"];
  }

  deletes = [(COAlarmReadResponse *)self deletes];
  if (deletes)
  {
    [coderCopy encodeObject:deletes forKey:@"deletes"];
  }

  if ([(COAlarmReadResponse *)self skipInMerge])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"skip"];
  }

  if ([(COAlarmReadResponse *)self notModified])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"unmodified"];
  }
}

@end