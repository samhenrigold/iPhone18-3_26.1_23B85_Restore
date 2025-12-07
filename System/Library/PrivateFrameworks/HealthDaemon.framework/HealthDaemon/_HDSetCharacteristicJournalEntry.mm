@interface _HDSetCharacteristicJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDSetCharacteristicJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDSetCharacteristicJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v43 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = entriesCopy;
  v6 = [entriesCopy countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v29 = *v33;
    v10 = *MEMORY[0x277CCBB18];
    *&v7 = 138543874;
    v27 = v7;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        v12 = v9;
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        value = [v13 value];
        dataType = [v13 dataType];
        identifier = [dataType identifier];
        if (![identifier isEqualToString:v10])
        {
          goto LABEL_9;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          identifier = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
          v18 = [identifier hk_dateOfBirthDateComponentsWithDate:value];

          value = v18;
LABEL_9:
        }

        userCharacteristicsManager = [profileCopy userCharacteristicsManager];
        v31 = v12;
        v20 = [userCharacteristicsManager setUserCharacteristic:value forType:dataType error:&v31];
        v9 = v31;

        if ((v20 & 1) == 0)
        {
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            v23 = objc_opt_class();
            v24 = v23;
            dataType2 = [v13 dataType];
            code = [dataType2 code];
            *buf = v27;
            v37 = v23;
            v38 = 2048;
            v39 = code;
            v40 = 2114;
            v41 = v9;
            _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set characteristic for type %ld, %{public}@", buf, 0x20u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (!v8)
      {

        break;
      }
    }
  }
}

- (_HDSetCharacteristicJournalEntry)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"value"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataType"];
  v13.receiver = self;
  v13.super_class = _HDSetCharacteristicJournalEntry;
  v11 = [(HDJournalEntry *)&v13 initWithCoder:coderCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_value, v9);
    objc_storeStrong(&v11->_dataType, v10);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v6 = 138543362;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: encoding is not supported", &v6, 0xCu);
  }
}

@end