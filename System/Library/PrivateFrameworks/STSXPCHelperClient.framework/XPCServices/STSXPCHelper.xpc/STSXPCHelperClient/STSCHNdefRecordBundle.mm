@interface STSCHNdefRecordBundle
- (BOOL)isEqual:(id)equal;
- (STSCHNdefRecordBundle)initWithAlternativeRecord:(id)record configurationRecord:(id)configurationRecord auxiliaryRecords:(id)records errorRecord:(id)errorRecord;
@end

@implementation STSCHNdefRecordBundle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    if ((!self->_alternativeRecord || (([(STSCHNdefRecordBundle *)v6 alternativeRecord], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, alternativeRecord = self->_alternativeRecord, [(STSCHNdefRecordBundle *)v7 alternativeRecord], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(alternativeRecord) = [(STSNDEFRecord *)alternativeRecord isEqual:v11], v11, v9, alternativeRecord)) && !self->_alternativeRecord) && ([(STSCHNdefRecordBundle *)v7 alternativeRecord], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) && self->_configurationRecord && (([(STSCHNdefRecordBundle *)v7 configurationRecord], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, configurationRecord = self->_configurationRecord, [(STSCHNdefRecordBundle *)v7 configurationRecord], v18 = objc_claimAutoreleasedReturnValue(), LODWORD(configurationRecord) = [(STSNDEFRecord *)configurationRecord isEqual:v18], v18, v16, configurationRecord)) && self->_configurationRecord && ([(STSCHNdefRecordBundle *)v7 configurationRecord], v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && (auxiliaryRecords = self->_auxiliaryRecords, [(STSCHNdefRecordBundle *)v7 auxiliaryRecords], v21 = objc_claimAutoreleasedReturnValue(), LODWORD(auxiliaryRecords) = [(NSArray *)auxiliaryRecords isEqualToArray:v21], v21, auxiliaryRecords) && self->_errorRecord && (([(STSCHNdefRecordBundle *)v7 errorRecord], (v22 = objc_claimAutoreleasedReturnValue()) == 0) || (v23 = v22, v24 = self->_configurationRecord, [(STSCHNdefRecordBundle *)v7 errorRecord], v25 = objc_claimAutoreleasedReturnValue(), LODWORD(v24) = [(STSNDEFRecord *)v24 isEqual:v25], v25, v23, v24)) && self->_errorRecord)
    {
      errorRecord = [(STSCHNdefRecordBundle *)v7 errorRecord];
      v13 = errorRecord != 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (STSCHNdefRecordBundle)initWithAlternativeRecord:(id)record configurationRecord:(id)configurationRecord auxiliaryRecords:(id)records errorRecord:(id)errorRecord
{
  recordCopy = record;
  configurationRecordCopy = configurationRecord;
  recordsCopy = records;
  errorRecordCopy = errorRecord;
  v18.receiver = self;
  v18.super_class = STSCHNdefRecordBundle;
  v15 = [(STSCHNdefRecordBundle *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_alternativeRecord, record);
    objc_storeStrong(&v16->_configurationRecord, configurationRecord);
    objc_storeStrong(&v16->_auxiliaryRecords, records);
    objc_storeStrong(&v16->_errorRecord, errorRecord);
  }

  return v16;
}

@end