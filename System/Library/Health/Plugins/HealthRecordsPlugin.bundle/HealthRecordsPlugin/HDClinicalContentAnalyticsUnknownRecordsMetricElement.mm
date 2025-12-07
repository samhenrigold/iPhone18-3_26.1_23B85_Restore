@interface HDClinicalContentAnalyticsUnknownRecordsMetricElement
- (BOOL)isEqual:(id)equal;
- (HDClinicalContentAnalyticsUnknownRecordsMetricElement)initWithExtractionRulesVersion:(int64_t)version reportedHost:(id)host resourceType:(id)type propertyName:(id)name resourceKeyPath:(id)path failureCode:(int64_t)code;
- (id)debugDescription;
- (id)payloadForCoreAnalyticsWithEventCount:(id)count deviceContext:(id)context;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HDClinicalContentAnalyticsUnknownRecordsMetricElement

- (HDClinicalContentAnalyticsUnknownRecordsMetricElement)initWithExtractionRulesVersion:(int64_t)version reportedHost:(id)host resourceType:(id)type propertyName:(id)name resourceKeyPath:(id)path failureCode:(int64_t)code
{
  hostCopy = host;
  typeCopy = type;
  nameCopy = name;
  pathCopy = path;
  if (hostCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_A5EB0(a2, self);
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  sub_A5F2C(a2, self);
LABEL_3:
  v29.receiver = self;
  v29.super_class = HDClinicalContentAnalyticsUnknownRecordsMetricElement;
  v19 = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)&v29 init];
  if (v19)
  {
    v20 = [hostCopy copy];
    reportedHost = v19->_reportedHost;
    v19->_reportedHost = v20;

    v22 = [typeCopy copy];
    resourceType = v19->_resourceType;
    v19->_resourceType = v22;

    v24 = [nameCopy copy];
    propertyName = v19->_propertyName;
    v19->_propertyName = v24;

    v26 = [pathCopy copy];
    keyPath = v19->_keyPath;
    v19->_keyPath = v26;

    v19->_failureCode = code;
    v19->_extractionRulesVersion = version;
  }

  return v19;
}

- (id)payloadForCoreAnalyticsWithEventCount:(id)count deviceContext:(id)context
{
  countCopy = count;
  contextCopy = context;
  v8 = [NSMutableDictionary alloc];
  v9 = [contextCopy objectForKeyedSubscript:@"countPairediPad"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &off_110378;
  }

  v31[0] = v11;
  v30[1] = @"countPairediPhone";
  v12 = [contextCopy objectForKeyedSubscript:?];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &off_110378;
  }

  v31[1] = v14;
  v30[2] = @"countPairedWatch";
  v15 = [contextCopy objectForKeyedSubscript:?];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &off_110378;
  }

  v31[2] = v17;
  v30[3] = @"countPairedVisionPro";
  v18 = [contextCopy objectForKeyedSubscript:?];

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &off_110378;
  }

  v31[3] = v19;
  v31[4] = countCopy;
  v30[4] = @"extractionFailureEventCount";
  v30[5] = @"extractionRulesVersion";
  v20 = [NSNumber numberWithInteger:self->_extractionRulesVersion];
  v31[5] = v20;
  v30[6] = @"failureCode";
  v21 = NSStringFromHDClinicalAnalyticsExtractionFailureCode();
  reportedHost = self->_reportedHost;
  resourceType = self->_resourceType;
  v31[6] = v21;
  v31[7] = reportedHost;
  v30[7] = @"host";
  v30[8] = @"resourceType";
  v31[8] = resourceType;
  v24 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];
  v25 = [v8 initWithDictionary:v24];

  propertyName = self->_propertyName;
  if (propertyName)
  {
    [v25 setObject:propertyName forKeyedSubscript:@"propertyName"];
  }

  keyPath = self->_keyPath;
  if (keyPath)
  {
    [v25 setObject:keyPath forKeyedSubscript:@"resourceKeyPath"];
  }

  v28 = [v25 copy];

  return v28;
}

- (unint64_t)hash
{
  extractionRulesVersion = self->_extractionRulesVersion;
  v4 = [(NSString *)self->_reportedHost hash]^ extractionRulesVersion;
  v5 = [(NSString *)self->_resourceType hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_keyPath hash];
  return v6 ^ [(NSString *)self->_propertyName hash]^ self->_failureCode;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v14 = self->_extractionRulesVersion == v5->_extractionRulesVersion && ((reportedHost = self->_reportedHost, v7 = v5->_reportedHost, reportedHost == v7) || v7 && [(NSString *)reportedHost isEqual:?]) && ((resourceType = self->_resourceType, v9 = v5->_resourceType, resourceType == v9) || v9 && [(NSString *)resourceType isEqualToString:?]) && ((keyPath = self->_keyPath, v11 = v5->_keyPath, keyPath == v11) || v11 && [(NSString *)keyPath isEqualToString:?]) && ((propertyName = self->_propertyName, v13 = v5->_propertyName, propertyName == v13) || v13 && [(NSString *)propertyName isEqualToString:?]) && self->_failureCode == v5->_failureCode;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [NSNumber numberWithInteger:self->_extractionRulesVersion];
  v6 = [NSNumber numberWithInteger:compareCopy[1]];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [(NSString *)self->_resourceType compare:compareCopy[3]];
    if (v8)
    {
LABEL_3:
      v7 = v8;
      goto LABEL_4;
    }

    propertyName = self->_propertyName;
    v11 = compareCopy[4];
    if (propertyName)
    {
      if (!v11)
      {
        goto LABEL_14;
      }

      v8 = [(NSString *)propertyName compare:?];
      if (v8)
      {
        goto LABEL_3;
      }
    }

    else if (v11)
    {
      goto LABEL_16;
    }

    keyPath = self->_keyPath;
    v13 = compareCopy[5];
    if (keyPath)
    {
      if (v13)
      {
        v8 = [(NSString *)keyPath compare:?];
        if (v8)
        {
          goto LABEL_3;
        }

LABEL_17:
        v14 = [NSNumber numberWithInteger:self->_failureCode];
        v15 = [NSNumber numberWithInteger:compareCopy[6]];
        v7 = [v14 compare:v15];

        goto LABEL_4;
      }

LABEL_14:
      v7 = 1;
      goto LABEL_4;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v7 = -1;
  }

LABEL_4:

  return v7;
}

- (id)debugDescription
{
  extractionRulesVersion = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self extractionRulesVersion];
  reportedHost = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self reportedHost];
  resourceType = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self resourceType];
  propertyName = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self propertyName];
  keyPath = [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self keyPath];
  [(HDClinicalContentAnalyticsUnknownRecordsMetricElement *)self failureCode];
  v8 = NSStringFromHDClinicalAnalyticsExtractionFailureCode();
  v9 = [NSString stringWithFormat:@"(%ld, %@, %@, %@, %@, %@)", extractionRulesVersion, reportedHost, resourceType, propertyName, keyPath, v8];

  v10 = [NSString stringWithFormat:@"<%@ %p> %@", objc_opt_class(), self, v9];

  return v10;
}

@end