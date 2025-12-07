@interface CLMonitoringRecord
- (BOOL)isEqual:(id)equal;
- (CLMonitoringRecord)initWithCoder:(id)coder;
- (NSString)identifier;
- (id)description;
- (id)initRecordWithCondition:(id)condition identifier:(id)identifier options:(unint64_t)options initialState:(unint64_t)state;
- (id)initRecordWithCondition:(id)condition options:(unint64_t)options event:(id)event;
- (id)initRecordWithMonitoringRecord:(id)record;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateEvent:(id)event;
@end

@implementation CLMonitoringRecord

- (id)initRecordWithMonitoringRecord:(id)record
{
  v6 = objc_msgSend_condition(record, a2, record, v3);
  v10 = objc_msgSend_options(record, v7, v8, v9);
  objc_msgSend_lastEvent(record, v11, v12, v13);

  return MEMORY[0x1EEE66B58](self, sel_initRecordWithCondition_options_event_, v6, v10);
}

- (id)initRecordWithCondition:(id)condition identifier:(id)identifier options:(unint64_t)options initialState:(unint64_t)state
{
  v11 = [CLMonitoringEvent alloc];
  v15 = objc_msgSend_date(MEMORY[0x1E695DF00], v12, v13, v14);
  v17 = objc_msgSend_initWithIdentifier_refinement_state_date_diagnostics_(v11, v16, identifier, 0, state, v15, 0);

  return MEMORY[0x1EEE66B58](self, sel_initRecordWithCondition_options_event_, condition, options);
}

- (id)initRecordWithCondition:(id)condition options:(unint64_t)options event:(id)event
{
  v10.receiver = self;
  v10.super_class = CLMonitoringRecord;
  v8 = [(CLMonitoringRecord *)&v10 init];
  if (v8)
  {
    v8->_condition = condition;
    v8->_options = options;
    v8->_lastEvent = event;
  }

  return v8;
}

- (void)dealloc
{
  self->_condition = 0;

  self->_lastEvent = 0;
  v3.receiver = self;
  v3.super_class = CLMonitoringRecord;
  [(CLMonitoringRecord *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_requiresSecureCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CLMonitoringRecord.m", 98, @"Invalid parameter not satisfying: %@", @"coder.requiresSecureCoding");
  }

  v10 = objc_msgSend_condition(self, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"kCLMonitoringRecordCondition");
  Event = objc_msgSend_lastEvent(self, v12, v13, v14);
  objc_msgSend_encodeObject_forKey_(coder, v16, Event, @"kCLMonitoringRecordLastEvent");
  v21 = objc_msgSend_options(self, v17, v18, v19);

  objc_msgSend_encodeInteger_forKey_(coder, v20, v21, @"kCLMonitoringRecordMonitoringOptions");
}

- (CLMonitoringRecord)initWithCoder:(id)coder
{
  if ((objc_msgSend_requiresSecureCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CLMonitoringRecord.m", 106, @"Invalid parameter not satisfying: %@", @"coder.requiresSecureCoding");
  }

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v17 = objc_msgSend_setWithObjects_(v10, v15, v11, v16, v12, v13, v14, 0);
  self->_condition = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v18, v17, @"kCLMonitoringRecordCondition");
  v19 = objc_opt_class();
  self->_lastEvent = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"kCLMonitoringRecordLastEvent");
  self->_options = objc_msgSend_decodeIntegerForKey_(coder, v21, @"kCLMonitoringRecordMonitoringOptions", v22);
  return self;
}

- (NSString)identifier
{
  Event = objc_msgSend_lastEvent(self, a2, v2, v3);

  return objc_msgSend_identifier(Event, v5, v6, v7);
}

- (id)description
{
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v9 = objc_msgSend_condition(self, v6, v7, v8);
  v13 = objc_msgSend_description(v9, v10, v11, v12);
  objc_msgSend_appendString_(v5, v14, v13, v15);
  v19 = objc_msgSend_options(self, v16, v17, v18);
  objc_msgSend_appendFormat_(v5, v20, @", options: %lu", v21, v19);
  Event = objc_msgSend_lastEvent(self, v22, v23, v24);
  objc_msgSend_appendFormat_(v5, v26, @", lastEvent: %@", v27, Event);
  return v5;
}

- (void)updateEvent:(id)event
{
  eventCopy = event;

  self->_lastEvent = eventCopy;
}

- (unint64_t)hash
{
  Event = objc_msgSend_lastEvent(self, a2, v2, v3);
  v9 = objc_msgSend_identifier(Event, v6, v7, v8);
  v13 = objc_msgSend_hash(v9, v10, v11, v12);
  v17 = objc_msgSend_condition(self, v14, v15, v16);
  return objc_msgSend_hash(v17, v18, v19, v20) ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isEqual) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_condition(self, v5, v6, v7);
      v12 = objc_msgSend_condition(equal, v9, v10, v11);
      isEqual = objc_msgSend_isEqual_(v8, v13, v12, v14);
      if (isEqual)
      {
        Event = objc_msgSend_lastEvent(self, v16, v17, v18);
        v23 = objc_msgSend_identifier(Event, v20, v21, v22);
        v27 = objc_msgSend_lastEvent(equal, v24, v25, v26);
        v32 = objc_msgSend_identifier(v27, v28, v29, v30);

        LOBYTE(isEqual) = objc_msgSend_isEqualToString_(v23, v31, v32, v33);
      }
    }

    else
    {
      LOBYTE(isEqual) = 0;
    }
  }

  return isEqual;
}

@end