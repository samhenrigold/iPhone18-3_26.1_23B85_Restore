@interface PSYActivityInfo
+ (id)activityWithPlist:(id)plist;
+ (unint64_t)buddyStageValueForString:(id)string;
- (PSYActivityInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSYActivityInfo

+ (id)activityWithPlist:(id)plist
{
  v54 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v5 = [plistCopy objectForKey:@"Label"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [plistCopy objectForKey:@"MachServiceName"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [plistCopy objectForKey:@"SessionTypes"];
      v8 = 0x277CBE000uLL;
      v39 = v7;
      v40 = v6;
      if (v7)
      {
        v9 = v7;
        array = [MEMORY[0x277CBEB18] array];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v9;
        v10 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v48;
          do
          {
            v13 = 0;
            do
            {
              if (*v48 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v47 + 1) + 8 * v13);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_26;
              }

              v15 = v14;
              if ([v15 isEqualToString:@"Initial"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"FullSync"))
              {
                v16 = &unk_286FC2AF0;
              }

              else
              {
                v16 = &unk_286FC2B08;
                if (([v15 isEqualToString:@"Reunion"] & 1) == 0)
                {
                  if ([v15 isEqualToString:@"Migration"])
                  {
                    v16 = &unk_286FC2B20;
                  }

                  else
                  {
                    v16 = 0;
                  }
                }
              }

              if (!v16)
              {
LABEL_26:
                v18 = 0;
                v6 = v40;
                goto LABEL_45;
              }

              [array addObject:v16];
              ++v13;
            }

            while (v11 != v13);
            v17 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
            v11 = v17;
          }

          while (v17);
        }

        v6 = v40;
        v8 = 0x277CBE000;
      }

      else
      {
        array = 0;
      }

      obj = [plistCopy objectForKey:@"BackboardPrelaunchBundleIdentifier"];
      v19 = [plistCopy objectForKey:@"DependentServices"];
      v20 = [plistCopy objectForKey:@"DependentBuddyStages"];
      v21 = MEMORY[0x277CBEB98];
      v52[0] = @"InstallAllAvailableAppsSelection";
      v52[1] = @"Activation";
      v52[2] = @"AppleID";
      v52[3] = @"ApplePay";
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
      v23 = [v21 setWithArray:v22];

      v24 = v20;
      v25 = objc_alloc_init(*(v8 + 2840));
      if ([v20 count])
      {
        v36 = v19;
        v37 = v5;
        v38 = plistCopy;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v35 = v20;
        v26 = v20;
        v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v44;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v44 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v43 + 1) + 8 * i);
              if ([v23 containsObject:{v31, v35, v36, v37, v38, v39}])
              {
                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "buddyStageValueForString:", v31)}];
                [v25 addObject:v32];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v28);
        }

        v5 = v37;
        plistCopy = v38;
        v6 = v40;
        v24 = v35;
        v19 = v36;
      }

      v18 = objc_alloc_init(self);
      [v18 setLabel:v5];
      [v18 setMachServiceName:v6];
      [v18 setBackboardPrelaunchBundleIdentifier:obj];
      [v18 setSessionTypes:array];
      [v18 setDependentServices:v19];
      if ([v25 count])
      {
        [v18 setDependentBuddyStages:v25];
      }

      v33 = [plistCopy objectForKey:{@"Timeout", v35, v36, v37, v38}];
      if (v33)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 setTimeoutSeconds:v33];
        }
      }

LABEL_45:
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (unint64_t)buddyStageValueForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"InstallAllAvailableAppsSelection"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Activation"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"AppleID"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"ApplePay"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(PSYActivityInfo *)self label];
  [coderCopy encodeObject:label forKey:@"Label"];

  machServiceName = [(PSYActivityInfo *)self machServiceName];
  [coderCopy encodeObject:machServiceName forKey:@"MachServiceName"];

  priority = [(PSYActivityInfo *)self priority];
  [coderCopy encodeObject:priority forKey:@"Priority"];

  backboardPrelaunchBundleIdentifier = [(PSYActivityInfo *)self backboardPrelaunchBundleIdentifier];
  [coderCopy encodeObject:backboardPrelaunchBundleIdentifier forKey:@"BackboardPrelaunchBundleIdentifier"];

  timeoutSeconds = [(PSYActivityInfo *)self timeoutSeconds];
  [coderCopy encodeObject:timeoutSeconds forKey:@"Timeout"];

  sessionTypes = [(PSYActivityInfo *)self sessionTypes];
  [coderCopy encodeObject:sessionTypes forKey:@"SessionTypes"];

  dependentServices = [(PSYActivityInfo *)self dependentServices];
  [coderCopy encodeObject:dependentServices forKey:@"DependentServices"];

  dependentBuddyStages = [(PSYActivityInfo *)self dependentBuddyStages];
  [coderCopy encodeObject:dependentBuddyStages forKey:@"DependentBuddyStages"];
}

- (PSYActivityInfo)initWithCoder:(id)coder
{
  v35[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PSYActivityInfo;
  v5 = [(PSYActivityInfo *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MachServiceName"];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Priority"];
    priority = v5->_priority;
    v5->_priority = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BackboardPrelaunchBundleIdentifier"];
    backboardPrelaunchBundleIdentifier = v5->_backboardPrelaunchBundleIdentifier;
    v5->_backboardPrelaunchBundleIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Timeout"];
    timeoutSeconds = v5->_timeoutSeconds;
    v5->_timeoutSeconds = v14;

    v16 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"SessionTypes"];
    sessionTypes = v5->_sessionTypes;
    v5->_sessionTypes = v19;

    v21 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"DependentServices"];
    dependentServices = v5->_dependentServices;
    v5->_dependentServices = v24;

    v26 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v28 = [v26 setWithArray:v27];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"DependentBuddyStages"];
    dependentBuddyStages = v5->_dependentBuddyStages;
    v5->_dependentBuddyStages = v29;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PSYActivityInfo *)self label];
  machServiceName = [(PSYActivityInfo *)self machServiceName];
  v8 = [v3 stringWithFormat:@"<%@ %p label=%@; machServiceName=%@>", v5, self, label, machServiceName];;

  return v8;
}

@end