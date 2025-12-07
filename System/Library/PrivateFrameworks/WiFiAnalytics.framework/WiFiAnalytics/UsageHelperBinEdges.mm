@interface UsageHelperBinEdges
+ (id)binEdgesWithLowerEdgeIncluded:(BOOL)included;
- (UsageHelperBinEdges)initWithLowerEdgeIncluded:(BOOL)included;
- (id)description;
- (id)greaterOrEqualTo;
- (id)greaterThan;
- (id)lowerOrEqualTo;
- (id)lowerThan;
- (void)setGreaterOrEqualTo:(id)to;
- (void)setGreaterThan:(id)than;
- (void)setLowerOrEqualTo:(id)to;
- (void)setLowerThan:(id)than;
@end

@implementation UsageHelperBinEdges

- (id)description
{
  v2 = @"greather than";
  v3 = @"lowerOrEqualTo";
  if (self->_lowerEdgeIncluded)
  {
    v2 = @"greaterOrEqualTo";
    v3 = @"lowerThan";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@ %@:%@", v2, self->_lowerEdge, v3, self->_upperEdge];
}

- (id)greaterOrEqualTo
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v2 = self->_lowerEdge;
  }

  else
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446466;
      v6 = "[UsageHelperBinEdges greaterOrEqualTo]";
      v7 = 1024;
      v8 = 33;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use greaterThan instead", &v5, 0x12u);
    }

    v2 = 0;
  }

  return v2;
}

- (void)setGreaterOrEqualTo:(id)to
{
  v11 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_lowerEdgeIncluded)
  {
    objc_storeStrong(&self->_lowerEdge, to);
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446466;
      v8 = "[UsageHelperBinEdges setGreaterOrEqualTo:]";
      v9 = 1024;
      v10 = 39;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use setGreaterThan: instead", &v7, 0x12u);
    }
  }
}

- (id)lowerThan
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v2 = self->_upperEdge;
  }

  else
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446466;
      v6 = "[UsageHelperBinEdges lowerThan]";
      v7 = 1024;
      v8 = 46;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use lowerOrEqualTo instead", &v5, 0x12u);
    }

    v2 = 0;
  }

  return v2;
}

- (void)setLowerThan:(id)than
{
  v11 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  if (self->_lowerEdgeIncluded)
  {
    objc_storeStrong(&self->_upperEdge, than);
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446466;
      v8 = "[UsageHelperBinEdges setLowerThan:]";
      v9 = 1024;
      v10 = 52;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as NOT lowerEdgeIncluded, use setLowerOrEqualTo: instead", &v7, 0x12u);
    }
  }
}

- (id)greaterThan
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446466;
      v6 = "[UsageHelperBinEdges greaterThan]";
      v7 = 1024;
      v8 = 59;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use greaterOrEqualTo instead", &v5, 0x12u);
    }

    v2 = 0;
  }

  else
  {
    v2 = self->_lowerEdge;
  }

  return v2;
}

- (void)setGreaterThan:(id)than
{
  v11 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  if (self->_lowerEdgeIncluded)
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446466;
      v8 = "[UsageHelperBinEdges setGreaterThan:]";
      v9 = 1024;
      v10 = 65;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use setGreaterOrEqualTo: instead", &v7, 0x12u);
    }
  }

  else
  {
    objc_storeStrong(&self->_lowerEdge, than);
  }
}

- (id)lowerOrEqualTo
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_lowerEdgeIncluded)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446466;
      v6 = "[UsageHelperBinEdges lowerOrEqualTo]";
      v7 = 1024;
      v8 = 72;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use lessThan instead", &v5, 0x12u);
    }

    v2 = 0;
  }

  else
  {
    v2 = self->_upperEdge;
  }

  return v2;
}

- (void)setLowerOrEqualTo:(id)to
{
  v11 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_lowerEdgeIncluded)
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446466;
      v8 = "[UsageHelperBinEdges setLowerOrEqualTo:]";
      v9 = 1024;
      v10 = 78;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:This bin has been created as lowerEdgeIncluded, use setLessThan: instead", &v7, 0x12u);
    }
  }

  else
  {
    objc_storeStrong(&self->_upperEdge, to);
  }
}

- (UsageHelperBinEdges)initWithLowerEdgeIncluded:(BOOL)included
{
  includedCopy = included;
  v6.receiver = self;
  v6.super_class = UsageHelperBinEdges;
  v4 = [(UsageHelperBinEdges *)&v6 init];
  [(UsageHelperBinEdges *)v4 setLowerEdgeIncluded:includedCopy];
  return v4;
}

+ (id)binEdgesWithLowerEdgeIncluded:(BOOL)included
{
  v3 = [[UsageHelperBinEdges alloc] initWithLowerEdgeIncluded:included];

  return v3;
}

@end