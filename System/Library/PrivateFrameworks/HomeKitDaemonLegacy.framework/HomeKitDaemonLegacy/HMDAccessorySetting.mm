@interface HMDAccessorySetting
+ (id)decodedValue:(id)value error:(id *)error;
+ (id)logCategory;
+ (id)supportedConstraintClasses;
+ (id)supportedValueClasses;
- (BOOL)canAddConstraint:(id)constraint error:(id *)error;
- (BOOL)canRemoveConstraint:(id)constraint;
- (BOOL)compareConstraints:(id)constraints;
- (BOOL)isConstraintMergeStrategyReflection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid:(id *)valid;
- (BOOL)shouldBlockSettingUpdateFromVersion:(id)version isMultiUserEnabled:(BOOL)enabled;
- (BOOL)shouldTurnOffPersonalRequestsOnLanguageChangeTo:(id)to supportedMultiUserLanguageCodes:(id)codes isMultiUserEnabled:(BOOL)enabled;
- (HMDAccessorySetting)init;
- (HMDAccessorySetting)initWithCoder:(id)coder;
- (HMDAccessorySetting)initWithIdentifier:(id)identifier name:(id)name;
- (HMDAccessorySetting)initWithModel:(id)model;
- (NSArray)constraints;
- (NSString)description;
- (id)_initWithCoder:(id)coder;
- (id)_modelsForMergeStrategyConstraintsUpdate:(id)update;
- (id)constraintWithIdentifier:(id)identifier;
- (id)constraintsForCodingXPC;
- (id)copyIdentical;
- (id)copyReplica;
- (id)counterpartConstraintFor:(id)for;
- (id)inMemoryConstraintWithIdentifier:(id)identifier;
- (id)logIdentifier;
- (id)modelsForConstraintsUpdate:(id)update;
- (id)replicatedMissingConstraintsFrom:(id)from;
- (id)value;
- (int64_t)type;
- (unint64_t)configurationVersion;
- (unint64_t)hash;
- (void)_encodeWithCoder:(id)coder;
- (void)_mergeConstraintsLocallyWithAdditions:(id)additions removals:(id)removals;
- (void)_setType:(int64_t)type;
- (void)addConstraint:(id)constraint;
- (void)addConstraintsInMemory:(id)memory;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
- (void)mergeConstraintsFromOther:(id)other;
- (void)removeConstraint:(id)constraint;
- (void)removeConstraintsInMemory:(id)memory;
- (void)setConfigurationVersion:(unint64_t)version;
- (void)setConstraints:(id)constraints;
- (void)setGroup:(id)group;
- (void)setValue:(id)value;
@end

@implementation HMDAccessorySetting

- (void)_encodeWithCoder:(id)coder
{
  v34 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForRemoteTransport = [coderCopy hmd_isForRemoteTransport];
  identifier = [(HMDAccessorySetting *)self identifier];
  [coderCopy encodeObject:identifier forKey:*MEMORY[0x277CCED58]];

  properties = [(HMDAccessorySetting *)self properties];
  [coderCopy encodeInteger:properties forKey:*MEMORY[0x277CCED68]];
  name = [(HMDAccessorySetting *)self name];
  [coderCopy encodeObject:name forKey:*MEMORY[0x277CCED60]];

  value = [(HMDAccessorySetting *)self value];
  [coderCopy encodeObject:value forKey:*MEMORY[0x277CCEDA0]];

  if ((hmd_isForRemoteTransport & 1) == 0)
  {
    if (hmd_isForXPCTransport)
    {
      [(HMDAccessorySetting *)self constraintsForCodingXPC];
    }

    else
    {
      [(HMDAccessorySetting *)self constraints];
    }
    v24 = ;
    [coderCopy encodeObject:v24 forKey:*MEMORY[0x277CCED30]];

    if (hmd_isForXPCTransport)
    {
      goto LABEL_21;
    }

LABEL_20:
    [coderCopy encodeInteger:-[HMDAccessorySetting configurationVersion](self forKey:{"configurationVersion"), @"HM.version"}];
    goto LABEL_21;
  }

  v27 = hmd_isForXPCTransport;
  v28 = coderCopy;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  constraints = [(HMDAccessorySetting *)self constraints];
  v14 = [constraints countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(constraints);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        value2 = [v18 value];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v21 = array2;
        }

        else
        {
          v21 = array;
        }

        [v21 addObject:v18];
      }

      v15 = [constraints countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v22 = objc_msgSend_copy(array);
  coderCopy = v28;
  [v28 encodeObject:v22 forKey:*MEMORY[0x277CCED30]];

  if ([array2 count])
  {
    v23 = objc_msgSend_copy(array2);
    [v28 encodeObject:v23 forKey:@"HM.constraintsV1"];
  }

  hmd_isForXPCTransport = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  if ([coderCopy hmd_isForXPCTransport])
  {
    isReflected = [(HMDAccessorySetting *)self isReflected];
    [coderCopy encodeBool:isReflected forKey:*MEMORY[0x277CCED70]];
  }

  if (hmd_isForXPCTransport)
  {
    Type = [(HMDAccessorySetting *)self type];
  }

  else
  {
    Type = __getType(self);
  }

  [coderCopy encodeInteger:Type forKey:*MEMORY[0x277CCED88]];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDAccessorySetting *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (id)constraintsForCodingXPC
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__180885;
  v15 = __Block_byref_object_dispose__180886;
  v16 = 0;
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_constraints);
  v4 = objc_msgSend_copy(self->_inMemoryCachedConstraints);
  v5 = objc_msgSend_copy(self->_inMemoryCachedConstraintRemovals);
  v6 = v12[5];
  v12[5] = v5;

  os_unfair_lock_unlock(&self->_lock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HMDAccessorySetting_constraintsForCodingXPC__block_invoke;
  v10[3] = &unk_2797337A8;
  v10[4] = &v11;
  v7 = [v3 hmf_objectsPassingTest:v10];

  v8 = [v7 arrayByAddingObjectsFromArray:v4];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __46__HMDAccessorySetting_constraintsForCodingXPC__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)_initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED58]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED60]];
  v7 = [(HMDAccessorySetting *)self initWithIdentifier:v5 name:v6];
  if (v7)
  {
    v7->_type = [coderCopy decodeIntegerForKey:*MEMORY[0x277CCED88]];
    v7->_properties = [coderCopy decodeIntegerForKey:*MEMORY[0x277CCED68]];
    supportedConstraintClasses = [objc_opt_class() supportedConstraintClasses];
    v9 = [coderCopy decodeObjectOfClasses:supportedConstraintClasses forKey:*MEMORY[0x277CCED30]];
    v10 = [v9 mutableCopy];

    if (v10)
    {
      supportedConstraintClasses2 = [objc_opt_class() supportedConstraintClasses];
      v12 = [coderCopy decodeObjectOfClasses:supportedConstraintClasses2 forKey:@"HM.constraintsV1"];

      if (v12)
      {
        [v10 addObjectsFromArray:v12];
      }

      objc_storeStrong(&v7->_constraints, v10);
    }

    supportedValueClasses = [objc_opt_class() supportedValueClasses];
    v14 = [coderCopy decodeObjectOfClasses:supportedValueClasses forKey:*MEMORY[0x277CCEDA0]];
    value = v7->_value;
    v7->_value = v14;

    v7->_configurationVersion = [coderCopy decodeIntegerForKey:@"HM.version"];
  }

  return v7;
}

- (HMDAccessorySetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDAccessorySetting *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)_modelsForMergeStrategyConstraintsUpdate:(id)update
{
  v57 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  array = [MEMORY[0x277CBEB18] array];
  constraints = [(HMDAccessorySetting *)self constraints];
  v7 = __missingElementsFromLeftNotInRight(constraints, updateCopy);

  v45 = updateCopy;
  v46 = array;
  v44 = v7;
  if (([v7 hmf_isEmpty] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v11;
      v53 = 2112;
      v54 = v7;
      v55 = 2112;
      v56 = selfCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@will remove %@ from %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    identifier = [(HMDAccessorySetting *)selfCopy identifier];
    v13 = v7;
    array2 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v47 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v48;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v48 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v47 + 1) + 8 * i);
          v21 = [HMDAccessorySettingConstraintModel alloc];
          identifier2 = [v20 identifier];
          v23 = [(HMDBackingStoreModelObject *)v21 initWithObjectChangeType:3 uuid:identifier2 parentUUID:identifier];

          [array2 addObject:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v47 objects:buf count:16];
      }

      while (v17);
    }

    array = v46;
    [v46 addObjectsFromArray:array2];

    v7 = v44;
  }

  constraints2 = [(HMDAccessorySetting *)self constraints];
  v25 = __missingElementsFromLeftNotInRight(updateCopy, constraints2);

  if (([v25 hmf_isEmpty] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v29;
      v53 = 2112;
      v54 = v25;
      v55 = 2112;
      v56 = selfCopy2;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@will add %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    identifier3 = [(HMDAccessorySetting *)selfCopy2 identifier];
    v31 = v25;
    array3 = [MEMORY[0x277CBEB18] array];
    v33 = __deepCopiedConstraints(v31);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v47 objects:buf count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v48;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v47 + 1) + 8 * j) modelWithParentIdentifier:identifier3];
          [v38 setObjectChangeType:1];
          [array3 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v47 objects:buf count:16];
      }

      while (v35);
    }

    array = v46;
    [v46 addObjectsFromArray:array3];

    v7 = v44;
    updateCopy = v45;
  }

  if ([array count])
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v42;
      v53 = 2112;
      v54 = array;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@fixing up accessory constraints %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
  }

  return array;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDAccessorySetting *)self identifier];
  uUIDString = [identifier UUIDString];
  name = [(HMDAccessorySetting *)self name];
  v7 = [v3 stringWithFormat:@"%@/%@", uUIDString, name];

  return v7;
}

- (void)setConfigurationVersion:(unint64_t)version
{
  os_unfair_lock_lock_with_options();
  if (self->_configurationVersion < version)
  {
    self->_configurationVersion = version;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)configurationVersion
{
  os_unfair_lock_lock_with_options();
  configurationVersion = self->_configurationVersion;
  os_unfair_lock_unlock(&self->_lock);
  return configurationVersion;
}

- (BOOL)shouldTurnOffPersonalRequestsOnLanguageChangeTo:(id)to supportedMultiUserLanguageCodes:(id)codes isMultiUserEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v50 = *MEMORY[0x277D85DE8];
  toCopy = to;
  codesCopy = codes;
  value = [(HMDAccessorySetting *)self value];
  if (enabledCopy && (-[HMDAccessorySetting keyPath](self, "keyPath"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:@"root.siri.language"], v11, v12))
  {
    v13 = value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = toCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v42 = v15;
    title = [v15 title];
    title2 = [v18 title];
    v21 = [title componentsSeparatedByString:{@", "}];
    v43 = title2;
    v22 = [title2 componentsSeparatedByString:{@", "}];
    if ([v21 count] < 4)
    {
      v30 = v22;
      v31 = objc_autoreleasePoolPush();
      selfCopy = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = loga = v18;
        *buf = 138543362;
        v45 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to deserialize selected language.", buf, 0xCu);

        v18 = loga;
      }

      objc_autoreleasePoolPop(v31);
      v29 = 0;
      v22 = v30;
    }

    else
    {
      v23 = [v21 objectAtIndexedSubscript:0];
      if ([codesCopy containsObject:v23])
      {
        v41 = v22;
        if ([v22 count] >= 4 && (objc_msgSend(v22, "objectAtIndexedSubscript:", 0), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(codesCopy, "containsObject:", v24), v24, v25))
        {
          context = objc_autoreleasePoolPush();
          selfCopy2 = self;
          log = HMFGetOSLogHandle();
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            v28 = [v41 objectAtIndexedSubscript:0];
            *buf = 138543874;
            v45 = v27;
            v46 = 2112;
            v47 = v23;
            v48 = 2112;
            v49 = v28;
            _os_log_impl(&dword_2531F8000, log, OS_LOG_TYPE_INFO, "%{public}@Language changing from %@ to %@ and both are supported.", buf, 0x20u);
          }

          v29 = 0;
        }

        else
        {
          context = objc_autoreleasePoolPush();
          selfCopy3 = self;
          HMFGetOSLogHandle();
          log = v29 = 1;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v45 = v36;
            v46 = 2112;
            v47 = v23;
            _os_log_impl(&dword_2531F8000, log, OS_LOG_TYPE_INFO, "%{public}@Found recognition language %@ in supported languages need to turn off personal requests.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
        v22 = v41;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)shouldBlockSettingUpdateFromVersion:(id)version isMultiUserEnabled:(BOOL)enabled
{
  LODWORD(v4) = enabled;
  v18 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v7 = +[HMDHomeKitVersion version6];
  keyPath = [(HMDAccessorySetting *)self keyPath];
  v9 = [keyPath isEqual:@"root.siri.language"];
  if (versionCopy && v9 && [versionCopy compare:v7] == -1)
  {

    if (v4)
    {
      v4 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v13;
        v16 = 2112;
        v17 = versionCopy;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Settings update blocked due to attempting language setting update with homekit version: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      LOBYTE(v4) = 1;
    }
  }

  else
  {

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_value, value);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)modelsForConstraintsUpdate:(id)update
{
  v61 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([(HMDAccessorySetting *)self isConstraintMergeStrategyReflection])
  {
    v5 = [(HMDAccessorySetting *)self _modelsForMergeStrategyConstraintsUpdate:updateCopy];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v10;
      v59 = 2112;
      v60 = updateCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Updating constraints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277CBEB98];
    constraints = [(HMDAccessorySetting *)selfCopy constraints];
    v13 = [v11 setWithArray:constraints];

    v45 = updateCopy;
    v14 = [MEMORY[0x277CBEB98] setWithArray:updateCopy];
    v46 = v13;
    v15 = [v13 mutableCopy];
    v44 = v14;
    [v15 minusSet:v14];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v19;
      v59 = 2112;
      v60 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing constraints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v52;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          v26 = [HMDAccessorySettingConstraintModel alloc];
          identifier = [v25 identifier];
          identifier2 = [(HMDAccessorySetting *)v17 identifier];
          v29 = [(HMDBackingStoreModelObject *)v26 initWithObjectChangeType:3 uuid:identifier parentUUID:identifier2];

          [array addObject:v29];
        }

        v22 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v22);
    }

    v30 = [v44 mutableCopy];
    [v30 minusSet:v46];
    v31 = objc_autoreleasePoolPush();
    v32 = v17;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v34;
      v59 = 2112;
      v60 = v30;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Adding constraints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35 = v30;
    v36 = [v35 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v48;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v47 + 1) + 8 * j);
          identifier3 = [(HMDAccessorySetting *)v32 identifier];
          v42 = [v40 modelWithParentIdentifier:identifier3];

          [v42 setObjectChangeType:1];
          [array addObject:v42];
        }

        v37 = [v35 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v37);
    }

    v5 = objc_msgSend_copy(array);
    updateCopy = v45;
  }

  return v5;
}

- (BOOL)isConstraintMergeStrategyReflection
{
  name = [(HMDAccessorySetting *)self name];
  v3 = [name isEqualToString:@"alarms"];

  return v3;
}

- (void)_mergeConstraintsLocallyWithAdditions:(id)additions removals:(id)removals
{
  v27 = *MEMORY[0x277D85DE8];
  additionsCopy = additions;
  removalsCopy = removals;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [removalsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(removalsCopy);
        }

        [(HMDAccessorySetting *)self removeConstraint:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [removalsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = additionsCopy;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HMDAccessorySetting *)self addConstraint:*(*(&v17 + 1) + 8 * v16++), v17];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)removeConstraintsInMemory:(id)memory
{
  v24 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  v17 = 8;
  os_unfair_lock_lock_with_options();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = memoryCopy;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_constraints containsObject:v8, v17])
        {
          inMemoryCachedConstraintRemovals = self->_inMemoryCachedConstraintRemovals;
          identifier = [v8 identifier];
          LOBYTE(inMemoryCachedConstraintRemovals) = [(NSMutableSet *)inMemoryCachedConstraintRemovals containsObject:identifier];

          if ((inMemoryCachedConstraintRemovals & 1) == 0)
          {
            v11 = self->_inMemoryCachedConstraintRemovals;
            identifier2 = [v8 identifier];
            [(NSMutableSet *)v11 addObject:identifier2];
          }
        }

        if ([(NSMutableArray *)self->_inMemoryCachedConstraints containsObject:v8])
        {
          v13 = self->_inMemoryCachedConstraintRemovals;
          identifier3 = [v8 identifier];
          LOBYTE(v13) = [(NSMutableSet *)v13 containsObject:identifier3];

          if ((v13 & 1) == 0)
          {
            [(NSMutableArray *)self->_inMemoryCachedConstraints removeObject:v8];
            v15 = self->_inMemoryCachedConstraintRemovals;
            identifier4 = [v8 identifier];
            [(NSMutableSet *)v15 addObject:identifier4];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((self + v17));
}

- (void)addConstraintsInMemory:(id)memory
{
  v15 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  os_unfair_lock_lock_with_options();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = memoryCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_constraints containsObject:v9, v10]& 1) == 0 && ([(NSMutableArray *)self->_inMemoryCachedConstraints containsObject:v9]& 1) == 0)
        {
          [(NSMutableArray *)self->_inMemoryCachedConstraints addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (constraintCopy)
  {
    v9 = constraintCopy;
    os_unfair_lock_lock_with_options();
    inMemoryCachedConstraintRemovals = self->_inMemoryCachedConstraintRemovals;
    identifier = [v9 identifier];
    LODWORD(inMemoryCachedConstraintRemovals) = [(NSMutableSet *)inMemoryCachedConstraintRemovals containsObject:identifier];

    if (inMemoryCachedConstraintRemovals)
    {
      v7 = self->_inMemoryCachedConstraintRemovals;
      identifier2 = [v9 identifier];
      [(NSMutableSet *)v7 removeObject:identifier2];
    }

    if ([(NSMutableArray *)self->_constraints containsObject:v9])
    {
      [(NSMutableArray *)self->_constraints removeObject:v9];
    }

    os_unfair_lock_unlock(&self->_lock);
    constraintCopy = v9;
  }
}

- (void)addConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (constraintCopy)
  {
    v5 = constraintCopy;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableArray *)self->_constraints containsObject:v5]& 1) == 0)
    {
      [(NSMutableArray *)self->_constraints addObject:v5];
    }

    if ([(NSMutableArray *)self->_inMemoryCachedConstraints containsObject:v5])
    {
      [(NSMutableArray *)self->_inMemoryCachedConstraints removeObject:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  MEMORY[0x2821F9730]();
}

- (void)mergeConstraintsFromOther:(id)other
{
  v25 = *MEMORY[0x277D85DE8];
  otherCopy = other;
  constraints = [(HMDAccessorySetting *)self constraints];
  v6 = __missingElementsFromLeftNotInRight(otherCopy, constraints);

  if (([v6 hmf_isEmpty] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@found constraints that are not present adding, %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = __deepCopiedConstraints(v6);
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(HMDAccessorySetting *)selfCopy addConstraint:*(*(&v16 + 1) + 8 * v15++), v16];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (id)replicatedMissingConstraintsFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  constraints = [(HMDAccessorySetting *)self constraints];
  v6 = __missingElementsFromLeftNotInRight(fromCopy, constraints);

  if ([v6 hmf_isEmpty])
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@found constraints that are not present returning, %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = __deepCopiedConstraints(v6);
  }

  return v7;
}

- (void)setConstraints:(id)constraints
{
  constraintsCopy = constraints;
  os_unfair_lock_lock_with_options();
  v4 = [constraintsCopy mutableCopy];
  constraints = self->_constraints;
  self->_constraints = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)inMemoryConstraintWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_inMemoryCachedConstraints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier hmf_isEqualToUUID:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)constraintWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_constraints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier hmf_isEqualToUUID:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)counterpartConstraintFor:(id)for
{
  v34 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = __itemFromConstraint(forCopy);
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    constraints = [(HMDAccessorySetting *)self constraints];
    v7 = [constraints countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(constraints);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = __itemFromConstraint(v11);
          if (v12 && [v5 isEqual:v12])
          {
            v18 = objc_autoreleasePoolPush();
            selfCopy = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543874;
              v28 = v21;
              v29 = 2112;
              v30 = v11;
              v31 = 2112;
              v32 = forCopy;
              _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Found counterpart constraint %@ for %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v18);
            v13 = v11;

            goto LABEL_18;
          }
        }

        v8 = [constraints countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_18:
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v17;
      v29 = 2112;
      v30 = forCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Can't decode constraint %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

- (NSArray)constraints
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_constraints);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)canRemoveConstraint:(id)constraint
{
  v16 = *MEMORY[0x277D85DE8];
  constraintCopy = constraint;
  constraints = [(HMDAccessorySetting *)self constraints];
  v6 = [constraints containsObject:constraintCopy];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = constraintCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Missing Constraint: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

- (BOOL)canAddConstraint:(id)constraint error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  constraintCopy = constraint;
  constraints = [(HMDAccessorySetting *)self constraints];
  v8 = [constraints containsObject:constraintCopy];

  if (!v8)
  {
    if (__isConstraintValid(self, constraintCopy, error))
    {
      v13 = 1;
      goto LABEL_12;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *error;
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = constraintCopy;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint, %@, with error: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = constraintCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Duplicate constraint: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (!error)
  {
    goto LABEL_11;
  }

  [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
  *error = v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)isValid:(id *)valid
{
  v107 = *MEMORY[0x277D85DE8];
  if (![(HMDAccessorySetting *)self type])
  {
    if (valid)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      *valid = v14 = 0;
      return v14;
    }

    return 0;
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  constraints = [(HMDAccessorySetting *)self constraints];
  v6 = [constraints countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = *v87;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v87 != v8)
      {
        objc_enumerationMutation(constraints);
      }

      if (!__isConstraintValid(self, *(*(&v86 + 1) + 8 * i), valid))
      {

        return 0;
      }
    }

    v7 = [constraints countByEnumeratingWithState:&v86 objects:v94 count:16];
  }

  while (v7);
LABEL_10:

  value = [(HMDAccessorySetting *)self value];
  selfCopy = self;
  v12 = value;
  if (!v12)
  {
    goto LABEL_75;
  }

  type = [(HMDAccessorySetting *)selfCopy type];
  v14 = 0;
  if (type > 2)
  {
    if (type == 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = objc_autoreleasePoolPush();
        v54 = selfCopy;
        v55 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_98;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = objc_autoreleasePoolPush();
        v54 = selfCopy;
        v55 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          goto LABEL_80;
        }

LABEL_79:
        v56 = HMFGetLogIdentifier();
        v57 = objc_opt_class();
        *v95 = 138543618;
        v96 = v56;
        v97 = 2112;
        v98 = v57;
        v58 = v57;
        _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Unexpected value class: %@", v95, 0x16u);

LABEL_80:
        objc_autoreleasePoolPop(v53);
        if (valid)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
          *valid = v14 = 0;
        }

        else
        {
LABEL_97:
          v14 = 0;
        }

        goto LABEL_98;
      }
    }

LABEL_75:
    v14 = 1;
    goto LABEL_98;
  }

  if (type == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = selfCopy;
      v55 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    goto LABEL_75;
  }

  if (type != 2)
  {
    goto LABEL_98;
  }

  v15 = v12;
  objc_opt_class();
  v16 = objc_opt_isKindOfClass() & 1;
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v82 = v17;

  if (!v16)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = selfCopy;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v76 = v15;
  v77 = v12;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = [(HMDAccessorySetting *)selfCopy constraints];
  v81 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (!v81)
  {
    goto LABEL_61;
  }

  v80 = *v91;
  v78 = selfCopy;
  while (2)
  {
    v18 = 0;
    while (2)
    {
      if (*v91 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v90 + 1) + 8 * v18);
      v20 = selfCopy;
      v21 = v82;
      v22 = v19;
      value2 = [(HMDAccessorySetting *)v20 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = value2;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      type2 = [v22 type];
      switch(type2)
      {
        case 3:
          value3 = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = value3;
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;

          if (v33)
          {
            [v21 doubleValue];
            v35 = v34;
            [v25 doubleValue];
            v37 = vabdd_f64(v35, v36);
            [v33 doubleValue];
            v39 = fmod(v37, v38);
            if (v39 > 0.00000011920929)
            {
              [v33 doubleValue];
              if (v39 < v40 + -0.00000011920929)
              {
                v70 = objc_autoreleasePoolPush();
                v71 = v20;
                v72 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  HMFGetLogIdentifier();
                  v74 = v85 = v70;
                  *buf = 138544130;
                  v100 = v74;
                  v101 = 2112;
                  v102 = v76;
                  v103 = 2112;
                  v104 = v33;
                  v105 = 2112;
                  v106 = v25;
                  _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, does not conform to step, %@, from current value: %@", buf, 0x2Au);

                  v70 = v85;
                }

                objc_autoreleasePoolPop(v70);
                if (valid)
                {
                  v64 = 43;
LABEL_94:
                  selfCopy = v78;
                  v12 = v77;
                  *valid = [MEMORY[0x277CCA9B8] hmErrorWithCode:v64];
LABEL_96:

                  goto LABEL_97;
                }

LABEL_95:
                selfCopy = v78;
                v12 = v77;
                goto LABEL_96;
              }
            }

            goto LABEL_58;
          }

LABEL_57:
          value3 = 0;
          goto LABEL_58;
        case 2:
          value3 = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = value3;
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;

          if (v31)
          {
            if ([v21 compare:v31] == 1)
            {
              v59 = objc_autoreleasePoolPush();
              v60 = v20;
              v61 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v63 = v83 = v59;
                *buf = 138543874;
                v100 = v63;
                v101 = 2112;
                v102 = v76;
                v103 = 2112;
                v104 = v31;
                _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, more than maximum value: %@", buf, 0x20u);

                v59 = v83;
              }

              objc_autoreleasePoolPop(v59);
              if (valid)
              {
                v64 = 45;
                goto LABEL_94;
              }

              goto LABEL_95;
            }

LABEL_58:

            goto LABEL_59;
          }

          v45 = objc_autoreleasePoolPush();
          v46 = v20;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = HMFGetLogIdentifier();
            value4 = [v22 value];
            *buf = 138543618;
            v100 = v48;
            v101 = 2112;
            v102 = value4;
            v50 = v47;
            v51 = "%{public}@Invalid maximum constraint value: %@";
            goto LABEL_55;
          }

LABEL_56:

          objc_autoreleasePoolPop(v45);
          goto LABEL_57;
        case 1:
          value3 = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = value3;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          if (v29)
          {
            if ([v21 compare:v29] == -1)
            {
              v65 = objc_autoreleasePoolPush();
              v66 = v20;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v69 = v84 = v65;
                *buf = 138543874;
                v100 = v69;
                v101 = 2112;
                v102 = v76;
                v103 = 2112;
                v104 = v29;
                _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@Value, %@, less than minimum value: %@", buf, 0x20u);

                v65 = v84;
              }

              objc_autoreleasePoolPop(v65);
              if (valid)
              {
                v64 = 44;
                goto LABEL_94;
              }

              goto LABEL_95;
            }

            goto LABEL_58;
          }

          v45 = objc_autoreleasePoolPush();
          v52 = v20;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = HMFGetLogIdentifier();
            value4 = [v22 value];
            *buf = 138543618;
            v100 = v48;
            v101 = 2112;
            v102 = value4;
            v50 = v47;
            v51 = "%{public}@Invalid minimum constraint value: %@";
LABEL_55:
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 0x16u);

            selfCopy = v78;
          }

          goto LABEL_56;
      }

      v41 = objc_autoreleasePoolPush();
      v42 = v20;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v100 = v44;
        v101 = 2112;
        v102 = v22;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring numeric constraint: %@", buf, 0x16u);

        selfCopy = v78;
      }

      objc_autoreleasePoolPop(v41);
LABEL_59:

      if (v81 != ++v18)
      {
        continue;
      }

      break;
    }

    v81 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
    if (v81)
    {
      continue;
    }

    break;
  }

LABEL_61:

  v14 = 1;
  v12 = v77;
LABEL_98:

  return v14;
}

- (void)_setType:(int64_t)type
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock_with_options();
    selfCopy->_type = type;
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)type
{
  result = __getType(self);
  if (result >= 6)
  {
    return 0;
  }

  return result;
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  identifier = [groupCopy identifier];
  parentIdentifier = self->_parentIdentifier;
  self->_parentIdentifier = identifier;

  keyPath = [groupCopy keyPath];

  name = [(HMDAccessorySetting *)self name];
  if (keyPath)
  {
    v8 = [keyPath stringByAppendingFormat:@".%@", name];
    keyPath = self->_keyPath;
    self->_keyPath = v8;
  }

  else
  {
    v10 = self->_keyPath;
    self->_keyPath = name;
    name = v10;
  }
}

- (id)copyReplica
{
  v3 = [HMDAccessorySetting alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  name = [(HMDAccessorySetting *)self name];
  v6 = [(HMDAccessorySetting *)v3 initWithIdentifier:uUID name:name];

  v6->_type = [(HMDAccessorySetting *)self type];
  v6->_properties = [(HMDAccessorySetting *)self properties];
  constraints = [(HMDAccessorySetting *)self constraints];
  v8 = __deepCopiedConstraints(constraints);
  v9 = [v8 mutableCopy];
  constraints = v6->_constraints;
  v6->_constraints = v9;

  value = [(HMDAccessorySetting *)self value];
  value = v6->_value;
  v6->_value = value;

  return v6;
}

- (id)copyIdentical
{
  v3 = [HMDAccessorySetting alloc];
  identifier = [(HMDAccessorySetting *)self identifier];
  name = [(HMDAccessorySetting *)self name];
  v6 = [(HMDAccessorySetting *)v3 initWithIdentifier:identifier name:name];

  v6->_type = [(HMDAccessorySetting *)self type];
  v6->_properties = [(HMDAccessorySetting *)self properties];
  constraints = [(HMDAccessorySetting *)self constraints];
  v8 = [constraints mutableCopy];
  constraints = v6->_constraints;
  v6->_constraints = v8;

  value = [(HMDAccessorySetting *)self value];
  value = v6->_value;
  v6->_value = value;

  return v6;
}

- (BOOL)compareConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if (self == constraintsCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = constraintsCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      type = [(HMDAccessorySetting *)self type];
      if (type == 4 || type == 2)
      {
        v8 = MEMORY[0x277CBEB98];
        constraints = [(HMDAccessorySetting *)self constraints];
        v10 = [v8 setWithArray:constraints];
        v11 = MEMORY[0x277CBEB98];
        constraints2 = [(HMDAccessorySetting *)v6 constraints];
        v13 = [v11 setWithArray:constraints2];
        v14 = [v10 isEqualToSet:v13];
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      name = [(HMDAccessorySetting *)self name];
      name2 = [(HMDAccessorySetting *)v6 name];
      v9 = [name isEqualToString:name2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  name = [(HMDAccessorySetting *)self name];
  v3 = [name hash];

  return v3;
}

- (void)description:(id)description indent:(id)indent
{
  v20 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  indentCopy = indent;
  name = [(HMDAccessorySetting *)self name];
  identifier = [(HMDAccessorySetting *)self identifier];
  [descriptionCopy appendFormat:@"\r %@ name = %@, identifier = %@\n", indentCopy, name, identifier];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  constraints = [(HMDAccessorySetting *)self constraints];
  v11 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(constraints);
        }

        [descriptionCopy appendFormat:@"\r     %@ %@\n", indentCopy, *(*(&v15 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  keyPath = [(HMDAccessorySetting *)self keyPath];
  identifier = [(HMDAccessorySetting *)self identifier];
  value = [(HMDAccessorySetting *)self value];
  v7 = [v3 stringWithFormat:@"[HMD-Accessory-Setting: %@/%@ - %@]", keyPath, identifier, value];

  return v7;
}

- (HMDAccessorySetting)initWithIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (nameCopy)
  {
    v19.receiver = self;
    v19.super_class = HMDAccessorySetting;
    v9 = [(HMDAccessorySetting *)&v19 init];
    v10 = v9;
    if (v9)
    {
      v9->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v9->_identifier, identifier);
      objc_storeStrong(&v10->_name, name);
      array = [MEMORY[0x277CBEB18] array];
      constraints = v10->_constraints;
      v10->_constraints = array;

      array2 = [MEMORY[0x277CBEB18] array];
      inMemoryCachedConstraints = v10->_inMemoryCachedConstraints;
      v10->_inMemoryCachedConstraints = array2;

      v15 = [MEMORY[0x277CBEB58] set];
      inMemoryCachedConstraintRemovals = v10->_inMemoryCachedConstraintRemovals;
      v10->_inMemoryCachedConstraintRemovals = v15;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDAccessorySetting)initWithModel:(id)model
{
  v29 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  uuid = [modelCopy uuid];
  v6 = objc_msgSend_copy(uuid);
  name = [modelCopy name];
  v8 = objc_msgSend_copy(name);
  v9 = [(HMDAccessorySetting *)self initWithIdentifier:v6 name:v8];

  if (v9)
  {
    type = [modelCopy type];
    v9->_type = [type integerValue];

    properties = [modelCopy properties];
    v9->_properties = [properties unsignedIntegerValue];

    configurationVersion = [modelCopy configurationVersion];
    v9->_configurationVersion = [configurationVersion unsignedIntegerValue];

    v13 = MEMORY[0x277CCAAC8];
    supportedValueClasses = [objc_opt_class() supportedValueClasses];
    value = [modelCopy value];
    v24 = 0;
    v16 = [v13 unarchivedObjectOfClasses:supportedValueClasses fromData:value error:&v24];
    v17 = v24;
    value = v9->_value;
    v9->_value = v16;

    if (!v9->_value)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v9;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive supported value from the model's value data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  return v9;
}

- (HMDAccessorySetting)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)supportedConstraintClasses
{
  if (supportedConstraintClasses_onceToken != -1)
  {
    dispatch_once(&supportedConstraintClasses_onceToken, &__block_literal_global_55_180977);
  }

  v3 = supportedConstraintClasses_supportedConstraintClasses;

  return v3;
}

void __49__HMDAccessorySetting_supportedConstraintClasses__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedConstraintClasses_supportedConstraintClasses;
  supportedConstraintClasses_supportedConstraintClasses = v2;
}

+ (id)supportedValueClasses
{
  if (supportedValueClasses_onceToken != -1)
  {
    dispatch_once(&supportedValueClasses_onceToken, &__block_literal_global_50_180980);
  }

  v3 = supportedValueClasses_supportedValueClasses;

  return v3;
}

void __44__HMDAccessorySetting_supportedValueClasses__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = supportedValueClasses_supportedValueClasses;
  supportedValueClasses_supportedValueClasses = v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t58_180982 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t58_180982, &__block_literal_global_180983);
  }

  v3 = logCategory__hmf_once_v59_180984;

  return v3;
}

uint64_t __34__HMDAccessorySetting_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v59_180984;
  logCategory__hmf_once_v59_180984 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)decodedValue:(id)value error:(id *)error
{
  v5 = MEMORY[0x277CCAAC8];
  valueCopy = value;
  v7 = +[HMDAccessorySetting supportedValueClasses];
  v8 = [v5 unarchivedObjectOfClasses:v7 fromData:valueCopy error:error];

  return v8;
}

@end