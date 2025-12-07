@interface HMDAccessorySettingMetadata
+ (id)settingWithDictonaryRepresentation:(id)representation parentKeyPath:(id)path;
+ (id)settingsWithArrayRepresenation:(id)represenation parentKeyPath:(id)path;
+ (id)valueWithType:(int64_t)type constraints:(id)constraints representation:(id)representation;
- (HMDAccessorySettingMetadata)initWithName:(id)name type:(int64_t)type properties:(unint64_t)properties constraints:(id)constraints mergeStrategy:(id)strategy value:(id)value parentKeyPath:(id)path;
- (NSString)propertyDescription;
- (id)modelWithParentIdentifier:(id)identifier;
- (id)modelsWithParentIdentifier:(id)identifier;
@end

@implementation HMDAccessorySettingMetadata

- (id)modelWithParentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HMDAccessorySettingModel alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:uUID parentUUID:identifierCopy];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySettingMetadata properties](self, "properties")}];
  [(HMDAccessorySettingModel *)v7 setProperties:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessorySettingMetadata type](self, "type")}];
  [(HMDAccessorySettingModel *)v7 setType:v9];

  name = [(HMDAccessorySettingMetadata *)self name];
  [(HMDAccessorySettingModel *)v7 setName:name];

  value = [(HMDAccessorySettingMetadata *)self value];
  v12 = encodeRootObject();
  [(HMDAccessorySettingModel *)v7 setValue:v12];

  [(HMDAccessorySettingModel *)v7 setConfigurationVersion:&unk_286627D00];

  return v7;
}

- (id)modelsWithParentIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccessorySettingMetadata *)self modelWithParentIdentifier:identifier];
  v5 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  constraints = [(HMDAccessorySettingMetadata *)self constraints];
  v7 = [constraints countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(constraints);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        uuid = [v4 uuid];
        v13 = [v11 modelWithParentIdentifier:uuid];

        [v13 setObjectChangeType:1];
        [v5 addObject:v13];
      }

      v8 = [constraints countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = objc_msgSend_copy(v5);

  return v14;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDAccessorySettingMetadata *)self name];
  [(HMDAccessorySettingMetadata *)self type];
  v5 = HMAccessorySettingTypeToString();
  [(HMDAccessorySettingMetadata *)self properties];
  v6 = HMAccessorySettingPropertiesToString();
  value = [(HMDAccessorySettingMetadata *)self value];
  constraints = [(HMDAccessorySettingMetadata *)self constraints];
  v9 = [v3 stringWithFormat:@", Name = %@, Type = %@, Properties = %@, Value = %@, Constraints = %@", name, v5, v6, value, constraints];

  return v9;
}

- (HMDAccessorySettingMetadata)initWithName:(id)name type:(int64_t)type properties:(unint64_t)properties constraints:(id)constraints mergeStrategy:(id)strategy value:(id)value parentKeyPath:(id)path
{
  nameCopy = name;
  constraintsCopy = constraints;
  strategyCopy = strategy;
  valueCopy = value;
  pathCopy = path;
  if (nameCopy)
  {
    v20 = nameCopy;
    if (type)
    {
      v31.receiver = self;
      v31.super_class = HMDAccessorySettingMetadata;
      v21 = [(HMDAccessorySettingMetadata *)&v31 init];
      if (v21)
      {
        v22 = objc_msgSend_copy(v20);
        name = v21->_name;
        v21->_name = v22;

        v24 = [pathCopy stringByAppendingFormat:@".%@", v20];
        keyPath = v21->_keyPath;
        v21->_keyPath = v24;

        v21->_type = type;
        v21->_properties = properties;
        if (constraintsCopy)
        {
          v26 = objc_msgSend_copy(constraintsCopy);
        }

        else
        {
          v26 = MEMORY[0x277CBEBF8];
        }

        objc_storeStrong(&v21->_constraints, v26);
        if (constraintsCopy)
        {
        }

        objc_storeStrong(&v21->_mergeStrategy, strategy);
        v28 = objc_msgSend_copy(valueCopy);
        value = v21->_value;
        v21->_value = v28;
      }

      self = v21;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)valueWithType:(int64_t)type constraints:(id)constraints representation:(id)representation
{
  v47 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  representationCopy = representation;
  v9 = representationCopy;
  v10 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      if (representationCopy)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            v41 = v13;
            v42 = 2112;
            v43 = v9;
            v14 = "%{public}@Invalid data value: %@";
            goto LABEL_45;
          }

LABEL_46:

          objc_autoreleasePoolPop(v11);
          v10 = 0;
          goto LABEL_47;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_47;
      }

      if (representationCopy)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            v41 = v13;
            v42 = 2112;
            v43 = v9;
            v14 = "%{public}@Invalid number value: %@";
LABEL_45:
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);

            goto LABEL_46;
          }

          goto LABEL_46;
        }

        goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  if (type == 3)
  {
    if (representationCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v13;
          v42 = 2112;
          v43 = v9;
          v14 = "%{public}@Invalid string value: %@";
          goto LABEL_45;
        }

        goto LABEL_46;
      }

LABEL_34:
      null = v9;
LABEL_36:
      v10 = null;
      goto LABEL_47;
    }

LABEL_35:
    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_36;
  }

  if (type == 4)
  {
    v15 = representationCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = constraintsCopy;
      v18 = constraintsCopy;
      v19 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v18);
            }

            value = [*(*(&v36 + 1) + 8 * i) value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = value;
            }

            else
            {
              v24 = 0;
            }

            v10 = v24;

            title = [v10 title];
            v26 = [title isEqualToString:v17];

            if (v26)
            {

              goto LABEL_38;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v29;
        v42 = 2112;
        v43 = v17;
        v44 = 2112;
        v45 = v18;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid item with title '%@', constraints: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v10 = 0;
LABEL_38:
      constraintsCopy = v35;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v33;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid string value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v10 = 0;
    }
  }

LABEL_47:

  return v10;
}

+ (id)settingWithDictonaryRepresentation:(id)representation parentKeyPath:(id)path
{
  v44 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  pathCopy = path;
  v8 = [representationCopy hmf_stringForKey:@"Key"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = [representationCopy hmf_stringForKey:@"Type"];
    if (v11)
    {
      v12 = HMAccessorySettingTypeFromString();
      v13 = [representationCopy hmf_arrayForKey:@"Properties"];
      v14 = v13;
      if (v13)
      {
        selfCopy = self;
        v36 = v11;
        v38 = pathCopy;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
        v37 = v10;
        v34 = v12;
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v40;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v40 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v39 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              v22 = v21;

              v23 = HMAccessorySettingPropertiesFromString();
              v17 |= v23;
            }

            v16 = [v14 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v16);
        }

        else
        {
          v17 = 0;
        }

        v25 = MEMORY[0x277CD1780];
        v26 = [representationCopy hmf_arrayForKey:@"Constraints"];
        v27 = [v25 constraintsWithArrayRepresenation:v26];

        v28 = [HMDAccessorySettingMergeStrategy alloc];
        v29 = [representationCopy valueForKey:@"MergeStrategy"];
        v30 = [(HMDAccessorySettingMergeStrategy *)v28 initWithMergeStrategy:v29];

        v31 = [representationCopy objectForKeyedSubscript:@"Value"];
        v32 = [HMDAccessorySettingMetadata valueWithType:v34 constraints:v27 representation:v31];

        v10 = v37;
        pathCopy = v38;
        v24 = [[selfCopy alloc] initWithName:v37 type:v34 properties:v17 constraints:v27 mergeStrategy:v30 value:v32 parentKeyPath:v38];

        v11 = v36;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)settingsWithArrayRepresenation:(id)represenation parentKeyPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  represenationCopy = represenation;
  pathCopy = path;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = represenationCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [HMDAccessorySettingMetadata settingWithDictonaryRepresentation:v13 parentKeyPath:pathCopy, v17];
          if (v14)
          {
            [array addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = objc_msgSend_copy(array);

  return v15;
}

@end