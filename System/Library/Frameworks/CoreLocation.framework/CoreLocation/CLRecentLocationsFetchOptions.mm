@interface CLRecentLocationsFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (CLRecentLocationsFetchOptions)initWithCoder:(id)coder;
- (CLRecentLocationsFetchOptions)initWithDate:(id)date machContinuousTimeSeconds:(id)seconds numberOfSeconds:(id)ofSeconds allowDelayedResponse:(BOOL)response returnSparseLocations:(BOOL)locations;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRecentLocationsFetchOptions

- (CLRecentLocationsFetchOptions)initWithDate:(id)date machContinuousTimeSeconds:(id)seconds numberOfSeconds:(id)ofSeconds allowDelayedResponse:(BOOL)response returnSparseLocations:(BOOL)locations
{
  v14.receiver = self;
  v14.super_class = CLRecentLocationsFetchOptions;
  v12 = [(CLRecentLocationsFetchOptions *)&v14 init];
  if (v12)
  {
    v12->_date = date;
    v12->_machContinuousTimeSeconds = seconds;
    v12->_numberOfSeconds = ofSeconds;
    v12->_allowDelayedResponse = response;
    v12->_returnSparseLocations = locations;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLRecentLocationsFetchOptions;
  [(CLRecentLocationsFetchOptions *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToFetchOptions_, equal, v5);
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  date = self->_date;
  if (date)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_date(options, a2, options, v3))
  {
    date = self->_date;
LABEL_4:
    v7 = objc_msgSend_date(options, a2, options, v3);
    v10 = objc_msgSend_isEqual_(date, v8, v7, v9) ^ 1;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_5:
  machContinuousTimeSeconds = self->_machContinuousTimeSeconds;
  if (machContinuousTimeSeconds)
  {
LABEL_8:
    v12 = objc_msgSend_machContinuousTimeSeconds(options, a2, options, v3);
    v15 = objc_msgSend_isEqual_(machContinuousTimeSeconds, v13, v12, v14) ^ 1;
    goto LABEL_9;
  }

  if (objc_msgSend_machContinuousTimeSeconds(options, a2, options, v3))
  {
    machContinuousTimeSeconds = self->_machContinuousTimeSeconds;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_9:
  numberOfSeconds = self->_numberOfSeconds;
  if (!numberOfSeconds)
  {
    if (!objc_msgSend_numberOfSeconds(options, a2, options, v3))
    {
      v20 = 0;
      goto LABEL_13;
    }

    numberOfSeconds = self->_numberOfSeconds;
  }

  v17 = objc_msgSend_numberOfSeconds(options, a2, options, v3);
  v20 = objc_msgSend_isEqual_(numberOfSeconds, v18, v17, v19) ^ 1;
LABEL_13:
  allowDelayedResponse = self->_allowDelayedResponse;
  v22 = objc_msgSend_allowDelayedResponse(options, a2, options, v3);
  returnSparseLocations = self->_returnSparseLocations;
  v27 = objc_msgSend_returnSparseLocations(options, v24, v25, v26);
  result = 0;
  if (((v10 | v15) & 1) == 0 && (v20 & 1) == 0)
  {
    v29 = v27 & 1;
    return allowDelayedResponse == v22 && v29 == returnSparseLocations;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_date, @"date");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_machContinuousTimeSeconds, @"machContinuousTimeSeconds");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_numberOfSeconds, @"numberOfSeconds");
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_allowDelayedResponse, @"allowDelayedResponse");
  returnSparseLocations = self->_returnSparseLocations;

  objc_msgSend_encodeBool_forKey_(coder, v8, returnSparseLocations, @"returnSparseLocations");
}

- (CLRecentLocationsFetchOptions)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"date");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"machContinuousTimeSeconds");
  v11 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"numberOfSeconds");
  v16 = objc_msgSend_decodeBoolForKey_(coder, v14, @"allowDelayedResponse", v15);
  v19 = objc_msgSend_decodeBoolForKey_(coder, v17, @"returnSparseLocations", v18);
  v21 = objc_msgSend_initWithDate_machContinuousTimeSeconds_numberOfSeconds_allowDelayedResponse_returnSparseLocations_(self, v20, v7, v10, v13, v16, v19);

  return v21;
}

- (id)description
{
  if (objc_msgSend_date(self, a2, v2, v3))
  {
    if (qword_1ED5192B8 != -1)
    {
      dispatch_once(&qword_1ED5192B8, &unk_1F0E6D6F0);
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_msgSend_date(self, v5, v6, v7);
    objc_msgSend_timeIntervalSinceReferenceDate(v9, v10, v11, v12);
    v14 = v13;
    v15 = qword_1ED5192B0;
    v19 = objc_msgSend_date(self, v16, v17, v18);
    v22 = objc_msgSend_stringFromDate_(v15, v20, v19, v21);
    v50 = objc_msgSend_stringWithFormat_(v8, v23, @"%f (%@)", v24, v14, v22);
    return objc_msgSend_stringWithFormat_(v8, v25, @"Date: %@, allowDelayedResponse, %d", v26, v50, self->_allowDelayedResponse);
  }

  else if (objc_msgSend_machContinuousTimeSeconds(self, v5, v6, v7))
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_msgSend_machContinuousTimeSeconds(self, v28, v29, v30);
    objc_msgSend_doubleValue(v32, v33, v34, v35);
    return objc_msgSend_stringWithFormat_(v31, v36, @"MachContinuousTimeSec: %.3f, allowDelayedResponse, %d", v37, v38, self->_allowDelayedResponse);
  }

  else if (objc_msgSend_numberOfSeconds(self, v28, v29, v30))
  {
    v42 = MEMORY[0x1E696AEC0];
    v43 = objc_msgSend_numberOfSeconds(self, v39, v40, v41);
    v47 = objc_msgSend_unsignedIntValue(v43, v44, v45, v46);
    return objc_msgSend_stringWithFormat_(v42, v48, @"NumberOfSeconds: %u, allowDelayedResponse, %d, returnSparseLocations, %d", v49, v47, self->_allowDelayedResponse, self->_returnSparseLocations);
  }

  else
  {
    return @"<Invalid>";
  }
}

@end