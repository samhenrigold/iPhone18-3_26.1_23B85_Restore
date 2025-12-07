@interface CLMonitoringEvent
- (BOOL)authorizationDenied;
- (CLMonitoringEvent)initWithCoder:(id)coder;
- (CLMonitoringEvent)initWithIdentifier:(id)identifier refinement:(id)refinement state:(unint64_t)state date:(id)date diagnostics:(unint64_t)diagnostics;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMonitoringEvent

- (CLMonitoringEvent)initWithIdentifier:(id)identifier refinement:(id)refinement state:(unint64_t)state date:(id)date diagnostics:(unint64_t)diagnostics
{
  v17.receiver = self;
  v17.super_class = CLMonitoringEvent;
  v15 = [(CLMonitoringEvent *)&v17 init];
  if (v15)
  {
    v15->_identifier = objc_msgSend_copy(identifier, v12, v13, v14);
    v15->_refinement = refinement;
    v15->_state = state;
    v15->_date = date;
    v15->_diagnosticMask = diagnostics;
  }

  return v15;
}

- (void)dealloc
{
  self->_identifier = 0;

  self->_refinement = 0;
  self->_date = 0;
  v3.receiver = self;
  v3.super_class = CLMonitoringEvent;
  [(CLMonitoringEvent *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_requiresSecureCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CLMonitoringEvent.m", 89, @"Invalid parameter not satisfying: %@", @"coder.requiresSecureCoding");
  }

  v10 = objc_msgSend_identifier(self, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"kCLMonitoringEventIdentifier");
  v15 = objc_msgSend_refinement(self, v12, v13, v14);
  objc_msgSend_encodeObject_forKey_(coder, v16, v15, @"kCLMonitoringEventRefinement");
  v20 = objc_msgSend_state(self, v17, v18, v19);
  objc_msgSend_encodeInteger_forKey_(coder, v21, v20, @"kCLMonitoringEventState");
  v25 = objc_msgSend_date(self, v22, v23, v24);
  objc_msgSend_encodeObject_forKey_(coder, v26, v25, @"kCLMonitoringEventDate");
  v31 = objc_msgSend_diagnosticMask(self, v27, v28, v29);

  objc_msgSend_encodeInteger_forKey_(coder, v30, v31, @"kCLMonitoringEventDiagnosticMask");
}

- (CLMonitoringEvent)initWithCoder:(id)coder
{
  if ((objc_msgSend_requiresSecureCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CLMonitoringEvent.m", 99, @"Invalid parameter not satisfying: %@", @"coder.requiresSecureCoding");
  }

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v17 = objc_msgSend_setWithObjects_(v10, v15, v11, v16, v12, v13, v14, 0);
  v18 = objc_opt_class();
  self->_identifier = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"kCLMonitoringEventIdentifier");
  self->_refinement = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v20, v17, @"kCLMonitoringEventRefinement");
  self->_state = objc_msgSend_decodeIntegerForKey_(coder, v21, @"kCLMonitoringEventState", v22);
  v23 = objc_opt_class();
  self->_date = objc_msgSend_decodeObjectOfClass_forKey_(coder, v24, v23, @"kCLMonitoringEventDate");
  self->_diagnosticMask = objc_msgSend_decodeIntegerForKey_(coder, v25, @"kCLMonitoringEventDiagnosticMask", v26);
  return self;
}

- (id)description
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v9 = objc_msgSend_identifier(self, v6, v7, v8);
  v13 = objc_msgSend_state(self, v10, v11, v12);
  if (v13 >= 4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8A0);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported monitoring state}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8A0);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported monitoring state", "{msg%{public}.0s:Unsupported monitoring state}", buf, 0x12u);
    }

    v17 = @".unsupported state";
  }

  else
  {
    v17 = off_1E753D590[v13];
  }

  v20 = objc_msgSend_refinement(self, v14, v15, v16);
  v24 = objc_msgSend_description(v20, v21, v22, v23);
  v28 = objc_msgSend_date(self, v25, v26, v27);
  v32 = objc_msgSend_description(v28, v29, v30, v31);
  v36 = objc_msgSend_diagnosticMask(self, v33, v34, v35);
  objc_msgSend_appendFormat_(v5, v37, @"CLMonitoringEvent(identifier: %@, state: %@, refinement: %@, date: %@, diagnosticMask: %d)", v38, v9, v17, v24, v32, v36);
  return v5;
}

- (BOOL)authorizationDenied
{
  if (objc_msgSend_authorizationDeniedGlobally(self, a2, v2, v3))
  {
    return 1;
  }

  else
  {
    return objc_msgSend_diagnosticMask(self, v5, v6, v7) & 1;
  }
}

@end