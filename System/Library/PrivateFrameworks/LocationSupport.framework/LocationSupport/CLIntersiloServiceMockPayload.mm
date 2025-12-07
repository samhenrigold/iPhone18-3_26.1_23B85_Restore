@interface CLIntersiloServiceMockPayload
- (CLIntersiloServiceMockPayload)initWithExpectation:(id)expectation inputDictionary:(id)dictionary;
- (void)setInUse:(BOOL)use;
@end

@implementation CLIntersiloServiceMockPayload

- (CLIntersiloServiceMockPayload)initWithExpectation:(id)expectation inputDictionary:(id)dictionary
{
  expectationCopy = expectation;
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CLIntersiloServiceMockPayload;
  v9 = [(CLIntersiloServiceMockPayload *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_expectation, expectation);
    objc_storeStrong(&v10->_inputDictionary, dictionary);
    v11 = objc_opt_new();
    outputDictionary = v10->_outputDictionary;
    v10->_outputDictionary = v11;
  }

  return v10;
}

- (void)setInUse:(BOOL)use
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_inUse)
  {
    v3 = sub_1DF814218();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!_inUse";
      _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Payloads can't be reused!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v4 = sub_1DF814218();
    if (os_signpost_enabled(v4))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!_inUse";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Payloads can't be reused!", "{msg%{public}.0s:Payloads can't be reused!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v5 = sub_1DF814218();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "!_inUse";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Payloads can't be reused!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 129, "[CLIntersiloServiceMockPayload setInUse:]");
  }

  self->_inUse = use;
}

@end