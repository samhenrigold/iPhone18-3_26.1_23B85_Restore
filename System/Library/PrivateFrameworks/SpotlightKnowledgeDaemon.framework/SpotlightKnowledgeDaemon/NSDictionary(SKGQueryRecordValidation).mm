@interface NSDictionary(SKGQueryRecordValidation)
- (const)queryRecordNumberValueForKey:()SKGQueryRecordValidation;
- (id)queryRecordEntriesWithKeys:()SKGQueryRecordValidation;
- (uint64_t)queryRecordIncludesAttributes:()SKGQueryRecordValidation;
- (uint64_t)queryRecordIncludesBundles:()SKGQueryRecordValidation;
- (uint64_t)recordIsCurrent:()SKGQueryRecordValidation toCalendarUnit:maxOffset:checkFuture:dateKeys:;
@end

@implementation NSDictionary(SKGQueryRecordValidation)

- (id)queryRecordEntriesWithKeys:()SKGQueryRecordValidation
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        selfCopy = self;
        v13 = v11;
        if (getValueForKey(selfCopy, v13))
        {
          v14 = [selfCopy objectForKeyedSubscript:{v13, v16}];
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          [v5 setObject:v14 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (uint64_t)queryRecordIncludesBundles:()SKGQueryRecordValidation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (self && getValueForKey(self, *(*(&v11 + 1) + 8 * v8)))
        {
          v9 = 1;
          goto LABEL_12;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (uint64_t)queryRecordIncludesAttributes:()SKGQueryRecordValidation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (self && getValueForKey(self, *(*(&v11 + 1) + 8 * v8)))
        {
          v9 = 1;
          goto LABEL_12;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (const)queryRecordNumberValueForKey:()SKGQueryRecordValidation
{
  if (self)
  {
    self = getValueForKey(self, a3);
    v3 = vars8;
  }

  return self;
}

- (uint64_t)recordIsCurrent:()SKGQueryRecordValidation toCalendarUnit:maxOffset:checkFuture:dateKeys:
{
  v47 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = a7;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v41 = a6;
  v40 = a5;
  v15 = *v43;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v43 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v42 + 1) + 8 * i);
      if (v11)
      {
        ValueForKey = getValueForKey(v11, *(*(&v42 + 1) + 8 * i));
        if (ValueForKey)
        {
          v19 = ValueForKey;
          v20 = CFGetTypeID(ValueForKey);
          if (v20 == CFDateGetTypeID())
          {
            v21 = v19;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = [&unk_2846E8190 containsObject:{v17, v40}];
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      if (v23)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      if (v25 | v24)
      {

        if (v25)
        {
          v28 = MEMORY[0x238376E40](v25);
          Current = CFAbsoluteTimeGetCurrent();
          v30 = v41 ^ 1;
          if (v28 < Current)
          {
            v26 = v30;
          }

          else
          {
            v26 = 0;
          }

          if ((v30 & 1) != 0 || v28 < Current)
          {
            goto LABEL_45;
          }

          v31 = a4;
          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          v33 = [MEMORY[0x277CBEAA8] now];
          v34 = currentCalendar;
          v35 = a4;
          v36 = v33;
          v37 = v25;
        }

        else
        {
          if (!v24)
          {
            v25 = 0;
            goto LABEL_39;
          }

          v31 = a4;
          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          v33 = [MEMORY[0x277CBEAA8] now];
          v34 = currentCalendar;
          v35 = a4;
          v36 = v24;
          v37 = v33;
        }

        v27 = [v34 components:v35 fromDate:v36 toDate:v37 options:0];

        if (v27)
        {
          switch(v31)
          {
            case 4:
              year = [v27 year];
              break;
            case 0x2000:
              year = [v27 weekOfYear];
              break;
            case 0x10:
              year = [v27 day];
              break;
            default:
              year = [v27 month];
              break;
          }

          v26 = year <= v40;
          goto LABEL_44;
        }

LABEL_39:
        v26 = 0;
        goto LABEL_45;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v25 = 0;
  v24 = 0;
  v26 = 0;
  v27 = v12;
LABEL_44:

LABEL_45:
  return v26;
}

@end