@interface CADIdleChangeTrackingCleanupInfo
+ (id)serverIdleChangeTrackingCleanupInfo;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInfo:(id)info;
- (CADIdleChangeTrackingCleanupInfo)initWithLanguishPeriod:(double)period numberOfChanges:(int)changes;
- (id)description;
@end

@implementation CADIdleChangeTrackingCleanupInfo

- (CADIdleChangeTrackingCleanupInfo)initWithLanguishPeriod:(double)period numberOfChanges:(int)changes
{
  v4 = *&changes;
  v10.receiver = self;
  v10.super_class = CADIdleChangeTrackingCleanupInfo;
  v6 = [(CADIdleChangeTrackingCleanupInfo *)&v10 init];
  v8 = v6;
  if (v6)
  {
    CADLogInitIfNeeded(v6, v7);
    [(CADIdleChangeTrackingCleanupInfo *)v8 setLanguishPeriod:period];
    [(CADIdleChangeTrackingCleanupInfo *)v8 setNumberOfChanges:v4];
  }

  return v8;
}

+ (id)serverIdleChangeTrackingCleanupInfo
{
  v2 = [[CADIdleChangeTrackingCleanupInfo alloc] initWithLanguishPeriod:1000 numberOfChanges:2592000.0];

  return v2;
}

- (BOOL)isEqualToInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy)
  {
    goto LABEL_5;
  }

  if (self == infoCopy)
  {
    v10 = 1;
    goto LABEL_7;
  }

  [(CADIdleChangeTrackingCleanupInfo *)self languishPeriod];
  v7 = v6;
  [(CADIdleChangeTrackingCleanupInfo *)v5 languishPeriod];
  if (vabdd_f64(v7, v8) < 2.22044605e-16)
  {
    numberOfChanges = [(CADIdleChangeTrackingCleanupInfo *)self numberOfChanges];
    v10 = numberOfChanges == [(CADIdleChangeTrackingCleanupInfo *)v5 numberOfChanges];
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

LABEL_7:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  v17 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CADIdleChangeTrackingCleanupInfo *)self isEqualToInfo:equalCopy];
  }

  else
  {
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412802;
      selfCopy = self;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = equalCopy;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "WARNING: Comparing %@ to object whose class is not: [%@]. Object: %@.", &v11, 0x20u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCABB0];
  [(CADIdleChangeTrackingCleanupInfo *)self languishPeriod];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[CADIdleChangeTrackingCleanupInfo numberOfChanges](self, "numberOfChanges")}];
  v8 = [v3 stringWithFormat:@"%@ <%p> {\n    Languish Period = %@\n    Number of Changes = %@\n}", v4, self, v6, v7];

  return v8;
}

@end