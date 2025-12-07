@interface HKUserDomainConceptLocalizedString
+ (id)_propertiesByLocale:(id)locale;
+ (id)mergeListsOfPropertiesWithType:(int64_t)type intoListOfProperties:(id)properties fromListOfProperties:(id)ofProperties options:(unint64_t)options;
+ (id)nullPropertyWithType:(int64_t)type locale:(id)locale version:(int64_t)version;
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptLocalizedString)init;
- (HKUserDomainConceptLocalizedString)initWithCoder:(id)coder;
- (HKUserDomainConceptLocalizedString)initWithType:(int64_t)type stringValue:(id)value locale:(id)locale version:(int64_t)version;
- (HKUserDomainConceptLocalizedString)initWithType:(int64_t)type stringValue:(id)value locale:(id)locale version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted;
- (HKUserDomainConceptLocalizedString)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserDomainConceptLocalizedString

- (HKUserDomainConceptLocalizedString)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptLocalizedString)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptLocalizedString)initWithType:(int64_t)type stringValue:(id)value locale:(id)locale version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted
{
  deletedCopy = deleted;
  valueCopy = value;
  localeCopy = locale;
  v16 = localeCopy;
  if (valueCopy)
  {
    if (localeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKUserDomainConceptLocalizedString initWithType:stringValue:locale:version:timestamp:deleted:];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  [HKUserDomainConceptLocalizedString initWithType:stringValue:locale:version:timestamp:deleted:];
LABEL_3:
  v23.receiver = self;
  v23.super_class = HKUserDomainConceptLocalizedString;
  v17 = [(HKUserDomainConceptProperty *)&v23 initWithType:type version:version timestamp:deletedCopy deleted:timestamp];
  if (v17)
  {
    v18 = [valueCopy copy];
    stringValue = v17->_stringValue;
    v17->_stringValue = v18;

    v20 = [v16 copy];
    locale = v17->_locale;
    v17->_locale = v20;
  }

  return v17;
}

+ (id)nullPropertyWithType:(int64_t)type locale:(id)locale version:(int64_t)version
{
  localeCopy = locale;
  v8 = [[HKUserDomainConceptLocalizedString alloc] initWithType:type stringValue:&stru_1F05FF230 locale:localeCopy version:version timestamp:1 deleted:CFAbsoluteTimeGetCurrent()];

  return v8;
}

- (HKUserDomainConceptLocalizedString)initWithType:(int64_t)type stringValue:(id)value locale:(id)locale version:(int64_t)version
{
  localeCopy = locale;
  valueCopy = value;
  v12 = [(HKUserDomainConceptLocalizedString *)self initWithType:type stringValue:valueCopy locale:localeCopy version:version timestamp:CFAbsoluteTimeGetCurrent()];

  return v12;
}

+ (id)mergeListsOfPropertiesWithType:(int64_t)type intoListOfProperties:(id)properties fromListOfProperties:(id)ofProperties options:(unint64_t)options
{
  v52 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  ofPropertiesCopy = ofProperties;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __119__HKUserDomainConceptLocalizedString_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke;
  v49[3] = &__block_descriptor_40_e37_B16__0__HKUserDomainConceptProperty_8l;
  v49[4] = type;
  if (([propertiesCopy hk_allObjectsPassTest:v49] & 1) == 0)
  {
    +[HKUserDomainConceptLocalizedString mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:];
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __119__HKUserDomainConceptLocalizedString_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke_2;
  v48[3] = &__block_descriptor_40_e37_B16__0__HKUserDomainConceptProperty_8l;
  v48[4] = type;
  if (([ofPropertiesCopy hk_allObjectsPassTest:v48] & 1) == 0)
  {
    +[HKUserDomainConceptLocalizedString mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:];
  }

  if (![ofPropertiesCopy count])
  {
    v30 = propertiesCopy;
    goto LABEL_30;
  }

  v10 = [self _propertiesByLocale:propertiesCopy];
  v11 = [self _propertiesByLocale:ofPropertiesCopy];
  v37 = v10;
  v35 = [v10 mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = ofPropertiesCopy;
    v33 = propertiesCopy;
    v34 = 0;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:v17];
        v19 = [v37 objectForKeyedSubscript:v17];
        v20 = v19;
        v21 = MEMORY[0x1E695E0F0];
        if (v19)
        {
          v21 = v19;
        }

        v22 = v21;

        v43.receiver = self;
        v43.super_class = &OBJC_METACLASS___HKUserDomainConceptLocalizedString;
        v23 = objc_msgSendSuper2(&v43, sel_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options_, type, v22, v18, options);

        if (v23 != v22)
        {
          [v35 setObject:v23 forKeyedSubscript:v17];
          v34 = 1;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v14);

    ofPropertiesCopy = v32;
    propertiesCopy = v33;
    if (v34)
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      allValues = [v35 allValues];
      v26 = [allValues countByEnumeratingWithState:&v39 objects:v50 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(allValues);
            }

            [v24 addObjectsFromArray:*(*(&v39 + 1) + 8 * j)];
          }

          v27 = [allValues countByEnumeratingWithState:&v39 objects:v50 count:16];
        }

        while (v27);
      }

      v30 = [v24 copy];
      goto LABEL_29;
    }
  }

  else
  {
  }

  v30 = propertiesCopy;
LABEL_29:

LABEL_30:

  return v30;
}

uint64_t __119__HKUserDomainConceptLocalizedString_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t __119__HKUserDomainConceptLocalizedString_mergeListsOfPropertiesWithType_intoListOfProperties_fromListOfProperties_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v21.receiver = self;
      v21.super_class = HKUserDomainConceptLocalizedString;
      if (![(HKUserDomainConceptProperty *)&v21 isEqual:v6])
      {
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }

      stringValue3 = 40;
      stringValue = self->_stringValue;
      stringValue = [(HKUserDomainConceptLocalizedString *)v6 stringValue];
      if (stringValue == stringValue)
      {
        goto LABEL_11;
      }

      stringValue2 = [(HKUserDomainConceptLocalizedString *)v6 stringValue];
      if (!stringValue2)
      {
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v3 = stringValue2;
      v11 = self->_stringValue;
      stringValue3 = [(HKUserDomainConceptLocalizedString *)v6 stringValue];
      if ([(NSString *)v11 isEqual:stringValue3])
      {
LABEL_11:
        locale = self->_locale;
        locale = [(HKUserDomainConceptLocalizedString *)v6 locale];
        v15 = locale;
        if (locale == locale)
        {

          v12 = 1;
        }

        else
        {
          locale2 = [(HKUserDomainConceptLocalizedString *)v6 locale];
          if (locale2)
          {
            v17 = locale2;
            v18 = self->_locale;
            locale3 = [(HKUserDomainConceptLocalizedString *)v6 locale];
            v12 = [(NSString *)v18 isEqual:locale3];
          }

          else
          {

            v12 = 0;
          }
        }

        if (stringValue == stringValue)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_19;
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = HKUserDomainConceptLocalizedString;
  v3 = [(HKUserDomainConceptProperty *)&v6 hash];
  v4 = [(NSString *)self->_stringValue hash]^ v3;
  return v4 ^ [(NSString *)self->_locale hash];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptLocalizedString;
  coderCopy = coder;
  [(HKUserDomainConceptProperty *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
}

- (HKUserDomainConceptLocalizedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKUserDomainConceptLocalizedString;
  v5 = [(HKUserDomainConceptProperty *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v8;
  }

  return v5;
}

+ (id)_propertiesByLocale:(id)locale
{
  v20 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = localeCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        locale = [v10 locale];
        v12 = [v4 objectForKeyedSubscript:locale];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v4 setObject:v12 forKeyedSubscript:locale];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (void)initWithType:stringValue:locale:version:timestamp:deleted:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"stringValue" object:? file:? lineNumber:? description:?];
}

- (void)initWithType:stringValue:locale:version:timestamp:deleted:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"locale" object:? file:? lineNumber:? description:?];
}

+ (void)mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"[intoListOfProperties hk_allObjectsPassTest:^BOOL(HKUserDomainConceptProperty *property) { return property.type == type && [property isKindOfClass:HKUserDomainConceptLocalizedString.class]; }]" object:? file:? lineNumber:? description:?];
}

+ (void)mergeListsOfPropertiesWithType:intoListOfProperties:fromListOfProperties:options:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"[fromListOfProperties hk_allObjectsPassTest:^BOOL(HKUserDomainConceptProperty *property) { return property.type == type && [property isKindOfClass:HKUserDomainConceptLocalizedString.class]; }]" object:? file:? lineNumber:? description:?];
}

@end