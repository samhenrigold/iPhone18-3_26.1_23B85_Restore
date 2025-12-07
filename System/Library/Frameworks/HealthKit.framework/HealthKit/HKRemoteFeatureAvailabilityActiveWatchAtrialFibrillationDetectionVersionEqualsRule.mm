@interface HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
- (void)setTargetVersion:(id *)version;
@end

@implementation HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionEqualsRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"AtrialFibrillationDetectionVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    HKSemanticVersionFromString(&v7, v4);
    v5 = v7;
    v6 = v8;
    [(HKRemoteFeatureAvailabilityActiveWatchAtrialFibrillationDetectionVersionEqualsRule *)self setTargetVersion:&v5];
  }
}

- (BOOL)evaluate
{
  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    objc_msgSend_watchAtrialFibrillationDetectionVersion(dataSource);
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  if (HKSemanticVersionIsUnknown(&v13))
  {
    v5 = 0;
LABEL_15:

    return v5;
  }

  dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v7 = dataSource2;
  if (dataSource2)
  {
    objc_msgSend_watchAtrialFibrillationDetectionVersion(dataSource2);
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  v11 = 0uLL;
  v12 = 0;
  v8 = HKSemanticVersionsEqual(&v13, &v11);

  if (!v8)
  {
    objc_msgSend_targetVersion(self);
    dataSource3 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
    v4 = dataSource3;
    if (dataSource3)
    {
      objc_msgSend_watchAtrialFibrillationDetectionVersion(dataSource3);
    }

    else
    {
      v11 = 0uLL;
      v12 = 0;
    }

    v5 = HKSemanticVersionCompare(&v13, &v11) == 0;
    goto LABEL_15;
  }

  return 0;
}

- (void)setTargetVersion:(id *)version
{
  var2 = version->var2;
  *&self->_targetVersion.majorVersion = *&version->var0;
  self->_targetVersion.patchVersion = var2;
}

@end