@interface _LTAssetProgress
+ (id)discreteProgressWithIdentifier:(id)identifier offlineState:(int64_t)state;
+ (id)discreteProgressWithIdentifier:(id)identifier totalUnitCount:(int64_t)count;
- (BOOL)addComponent:(id)component;
- (BOOL)hasComponents;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeComponent:(id)component;
- (BOOL)updatePercentComplete:(double)complete;
- (BOOL)updateTotalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount;
- (NSString)componentFilter;
- (_LTAssetProgress)initWithCoder:(id)coder;
- (_LTAssetProgress)initWithIdentifier:(id)identifier offlineState:(int64_t)state;
- (_LTAssetProgress)initWithIdentifier:(id)identifier totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount;
- (double)fractionCompleted;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)identifierPrefix;
- (int64_t)completedUnitCount;
- (int64_t)offlineState;
- (int64_t)totalUnitCount;
- (unint64_t)hash;
- (void)_fastReadTotal:(int64_t *)total completed:(int64_t *)completed;
- (void)encodeWithCoder:(id)coder;
- (void)removeAllComponents;
- (void)setComponentFilter:(id)filter;
- (void)setGreaterThanOrEqualToOfflineState:(int64_t)state;
- (void)setOfflineState:(int64_t)state;
@end

@implementation _LTAssetProgress

- (int64_t)offlineState
{
  v4 = 0;
  v5 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v5 completed:&v4];
  v2 = 1;
  if (v4 == v5)
  {
    v2 = 2;
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (_LTAssetProgress)initWithIdentifier:(id)identifier totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = _LTAssetProgress;
  v9 = [(_LTAssetProgress *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    if ([identifierCopy length])
    {
      v11 = identifierCopy;
      identifier = v10->_identifier;
      v10->_identifier = v11;
    }

    else
    {
      identifier = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [identifier UUIDString];
      v14 = v10->_identifier;
      v10->_identifier = uUIDString;
    }

    v10->_totalUnitCount = count;
    v10->_completedUnitCount = unitCount;
    v15 = v10;
  }

  return v10;
}

- (_LTAssetProgress)initWithIdentifier:(id)identifier offlineState:(int64_t)state
{
  v5 = [(_LTAssetProgress *)self initWithIdentifier:identifier totalUnitCount:314572800 completedUnitCount:0];
  [(_LTAssetProgress *)v5 setOfflineState:state];
  return v5;
}

+ (id)discreteProgressWithIdentifier:(id)identifier totalUnitCount:(int64_t)count
{
  if (count <= 100)
  {
    countCopy = 100;
  }

  else
  {
    countCopy = count;
  }

  identifierCopy = identifier;
  v7 = [[self alloc] initWithIdentifier:identifierCopy totalUnitCount:countCopy completedUnitCount:0];

  return v7;
}

+ (id)discreteProgressWithIdentifier:(id)identifier offlineState:(int64_t)state
{
  identifierCopy = identifier;
  v7 = [[self alloc] initWithIdentifier:identifierCopy offlineState:state];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = 0;
  v7 = 0;
  coderCopy = coder;
  [(_LTAssetProgress *)self _fastReadTotal:&v7 completed:&v6];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:v7 forKey:@"totalUnitCount"];
  [coderCopy encodeInteger:v6 forKey:@"completedUnitCount"];
  [coderCopy encodeObject:self->_componentFilter forKey:@"componentFilter"];
  allValues = [(NSMutableDictionary *)self->_components allValues];
  [coderCopy encodeObject:allValues forKey:@"components"];
}

- (_LTAssetProgress)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(_LTAssetProgress *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_totalUnitCount = [coderCopy decodeIntegerForKey:@"totalUnitCount"];
    v6->_completedUnitCount = [coderCopy decodeIntegerForKey:@"completedUnitCount"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"componentFilter"];
    componentFilter = v6->_componentFilter;
    v6->_componentFilter = v9;

    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v12 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"components"];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          components = v6->_components;
          identifier = [v19 identifier];
          [(NSMutableDictionary *)components setObject:v19 forKeyedSubscript:identifier];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    v22 = v6;
  }

  return v6;
}

- (int64_t)totalUnitCount
{
  v3 = 0;
  v4 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v4 completed:&v3];
  return v4;
}

- (int64_t)completedUnitCount
{
  v3 = 0;
  v4 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v4 completed:&v3];
  return v3;
}

- (id)identifierPrefix
{
  identifierPrefix = self->_identifierPrefix;
  if (!identifierPrefix)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_identifierPrefix)
    {
      v4 = [(NSString *)self->_identifier componentsSeparatedByString:@"-"];
      firstObject = [v4 firstObject];
      v6 = self->_identifierPrefix;
      self->_identifierPrefix = firstObject;
    }

    os_unfair_lock_unlock(&self->_lock);
    identifierPrefix = self->_identifierPrefix;
  }

  return identifierPrefix;
}

- (void)_fastReadTotal:(int64_t *)total completed:(int64_t *)completed
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_components count])
  {
    componentFilter = self->_componentFilter;
    if (componentFilter)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = [(NSString *)componentFilter componentsSeparatedByString:@"|"];
      v22 = [v8 setWithArray:v9];
    }

    else
    {
      v22 = 0;
    }

    totalCopy = total;
    completedCopy = completed;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allValues = [(NSMutableDictionary *)self->_components allValues];
    v11 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      v15 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if (self->_componentFilter)
          {
            identifierPrefix = [*(*(&v25 + 1) + 8 * i) identifierPrefix];
            v19 = [v22 containsObject:identifierPrefix];

            if (!v19)
            {
              continue;
            }
          }

          v23 = 0;
          v24 = 0;
          [v17 _fastReadTotal:&v24 completed:&v23];
          v14 += v24;
          v13 += v23;
        }

        v12 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *totalCopy = v14;
    *completedCopy = v13;
  }

  else
  {
    *total = self->_totalUnitCount;
    *completed = self->_completedUnitCount;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setOfflineState:(int64_t)state
{
  v20[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_components count])
  {
    allValues = [(NSMutableDictionary *)self->_components allValues];
  }

  else
  {
    v20[0] = self;
    allValues = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  v6 = allValues;
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        switch(state)
        {
          case 0:
            v9 = 0.0;
            goto LABEL_16;
          case 2:
            v9 = 1.0;
LABEL_16:
            [v13 updatePercentComplete:{v9, v15}];
            break;
          case 1:
            offlineState = [*(*(&v15 + 1) + 8 * v12) offlineState];
            v9 = 0.01;
            if (!offlineState)
            {
              goto LABEL_16;
            }

            break;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:{16, v9}];
    }

    while (v10);
  }
}

- (void)setGreaterThanOrEqualToOfflineState:(int64_t)state
{
  if ([(_LTAssetProgress *)self offlineState]< state)
  {
    [(_LTAssetProgress *)self removeAllComponents];

    [(_LTAssetProgress *)self setOfflineState:state];
  }
}

- (void)setComponentFilter:(id)filter
{
  filterCopy = filter;
  os_unfair_lock_lock(&self->_lock);
  v5 = [filterCopy copy];

  componentFilter = self->_componentFilter;
  self->_componentFilter = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)componentFilter
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_componentFilter copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)removeAllComponents
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_components removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasComponents
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_components count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)addComponent:(id)component
{
  componentCopy = component;
  v6 = componentCopy;
  if (!componentCopy)
  {
    v12 = _LTOSLogAssets(0, v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress addComponent:];
    }

    goto LABEL_10;
  }

  if (self == componentCopy)
  {
    v13 = _LTOSLogAssets(componentCopy, v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress addComponent:];
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_lock);
  components = self->_components;
  if (!components)
  {
    v8 = objc_opt_new();
    v9 = self->_components;
    self->_components = v8;

    components = self->_components;
  }

  identifier = [(_LTAssetProgress *)v6 identifier];
  [(NSMutableDictionary *)components setObject:v6 forKeyedSubscript:identifier];

  os_unfair_lock_unlock(&self->_lock);
  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)removeComponent:(id)component
{
  componentCopy = component;
  if (componentCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    components = self->_components;
    identifier = [componentCopy identifier];
    [(NSMutableDictionary *)components removeObjectForKey:identifier];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = _LTOSLogAssets(0, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress removeComponent:];
    }
  }

  return componentCopy != 0;
}

- (BOOL)updateTotalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount
{
  hasComponents = [(_LTAssetProgress *)self hasComponents];
  if (hasComponents)
  {
    v9 = _LTOSLogAssets(hasComponents, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress updateTotalUnitCount:completedUnitCount:];
    }

    return 0;
  }

  if (count <= 0)
  {
    v11 = _LTOSLogAssets(hasComponents, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTAssetProgress updateTotalUnitCount:completedUnitCount:];
    }

    return 0;
  }

  if (unitCount > count)
  {
    v10 = _LTOSLogAssets(hasComponents, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTAssetProgress updateTotalUnitCount:completedUnitCount:];
    }

    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  totalUnitCount = self->_totalUnitCount;
  v12 = totalUnitCount != count;
  if (totalUnitCount != count)
  {
    self->_totalUnitCount = count;
  }

  if (self->_completedUnitCount != unitCount)
  {
    self->_completedUnitCount = unitCount;
    v12 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v12;
}

- (BOOL)updatePercentComplete:(double)complete
{
  hasComponents = [(_LTAssetProgress *)self hasComponents];
  if (hasComponents)
  {
    v7 = _LTOSLogAssets(hasComponents, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_LTAssetProgress updatePercentComplete:];
    }

    return 0;
  }

  if (complete < 0.0 || complete > 1.0)
  {
    v9 = _LTOSLogAssets(hasComponents, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_LTAssetProgress *)v9 updatePercentComplete:complete];
    }

    return 0;
  }

  totalUnitCount = [(_LTAssetProgress *)self totalUnitCount];
  if (complete <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v12 = totalUnitCount * complete;
    if (v12 < 1.0)
    {
      v12 = 1.0;
    }

    v13 = v12;
  }

  return [(_LTAssetProgress *)self updateTotalUnitCount:totalUnitCount completedUnitCount:v13];
}

- (double)fractionCompleted
{
  v3 = 0;
  v4 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v4 completed:&v3];
  if (v4)
  {
    return v3 / v4;
  }

  else
  {
    return 0.0;
  }
}

- (unint64_t)hash
{
  identifier = [(_LTAssetProgress *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(_LTAssetProgress *)self identifier];
      identifier2 = [(_LTAssetProgress *)v5 identifier];
      v8 = [identifier isEqualToString:identifier2];

      if (v8)
      {
        v14 = 0;
        v15 = 0;
        [(_LTAssetProgress *)self _fastReadTotal:&v15 completed:&v14];
        v12 = 0;
        v13 = 0;
        [(_LTAssetProgress *)v5 _fastReadTotal:&v13 completed:&v12];
        v10 = v14 == v12 && v15 == v13;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithIdentifier:totalUnitCount:completedUnitCount:", self->_identifier, self->_totalUnitCount, self->_completedUnitCount}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_components allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [v5 addComponent:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)debugDescription
{
  v11 = 0;
  v12 = 0;
  [(_LTAssetProgress *)self _fastReadTotal:&v12 completed:&v11];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_components count])
  {
    v3 = [(NSMutableDictionary *)self->_components debugDescription];
  }

  else
  {
    v3 = &stru_284DBB9B8;
  }

  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (v12)
  {
    v8 = v11 / v12;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v4 stringWithFormat:@"<%@: %p %@ [%zd / %zd : %.02f] %@>", v6, self, self->_identifier, v11, v12, *&v8, v3];;

  return v9;
}

- (void)updateTotalUnitCount:completedUnitCount:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_23AAF5000, v1, OS_LOG_TYPE_ERROR, "Completed count outside of range 0...%zd: %zd", v2, 0x16u);
}

- (void)updateTotalUnitCount:completedUnitCount:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_ERROR, "Total count cannot be 0: %zd", v1, 0xCu);
}

- (void)updatePercentComplete:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Percent completion outside of range 0.0...1.0: %f", &v2, 0xCu);
}

@end