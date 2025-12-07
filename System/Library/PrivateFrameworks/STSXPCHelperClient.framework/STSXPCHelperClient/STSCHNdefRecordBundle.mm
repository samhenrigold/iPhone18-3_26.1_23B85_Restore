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
    v18 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9 = v6;
    if ((!self->_alternativeRecord || ((objc_msgSend_alternativeRecord(v6, v7, v8), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, alternativeRecord = self->_alternativeRecord, objc_msgSend_alternativeRecord(v9, v7, v8), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(alternativeRecord) = objc_msgSend_isEqual_(alternativeRecord, v14, v13), v13, v11, alternativeRecord)) && !self->_alternativeRecord) && (objc_msgSend_alternativeRecord(v9, v7, v8), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15) && self->_configurationRecord && ((objc_msgSend_configurationRecord(v9, v16, v17), (v20 = objc_claimAutoreleasedReturnValue()) == 0) || (v23 = v20, configurationRecord = self->_configurationRecord, objc_msgSend_configurationRecord(v9, v21, v22), v25 = objc_claimAutoreleasedReturnValue(), LODWORD(configurationRecord) = objc_msgSend_isEqual_(configurationRecord, v26, v25), v25, v23, configurationRecord)) && self->_configurationRecord && (objc_msgSend_configurationRecord(v9, v21, v22), v27 = objc_claimAutoreleasedReturnValue(), v27, v27) && (auxiliaryRecords = self->_auxiliaryRecords, objc_msgSend_auxiliaryRecords(v9, v28, v29), v31 = objc_claimAutoreleasedReturnValue(), LODWORD(auxiliaryRecords) = objc_msgSend_isEqualToArray_(auxiliaryRecords, v32, v31), v31, auxiliaryRecords) && self->_errorRecord && ((objc_msgSend_errorRecord(v9, v33, v34), (v35 = objc_claimAutoreleasedReturnValue()) == 0) || (v38 = v35, v39 = self->_configurationRecord, objc_msgSend_errorRecord(v9, v36, v37), v40 = objc_claimAutoreleasedReturnValue(), LODWORD(v39) = objc_msgSend_isEqual_(v39, v41, v40), v40, v38, v39)) && self->_errorRecord)
    {
      v42 = objc_msgSend_errorRecord(v9, v36, v37);
      v18 = v42 != 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
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