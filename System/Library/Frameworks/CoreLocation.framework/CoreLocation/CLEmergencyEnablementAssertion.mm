@interface CLEmergencyEnablementAssertion
+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason;
+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason;
+ (id)newAssertionWithReason:(id)reason;
@end

@implementation CLEmergencyEnablementAssertion

+ (id)newAssertionWithReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B660);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    v7 = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Non-specific CLEmergencyEnablementAssertion is no longer supported #CLEEA}", &v7, 0x12u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B660);
    }
  }

  v5 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v7 = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Non-specific CLEmergencyEnablementAssertion is no longer supported #CLEEA", "{msg%{public}.0s:Non-specific CLEmergencyEnablementAssertion is no longer supported #CLEEA}", &v7, 0x12u);
  }

  return sub_19B8943FC(&stru_1F0E6F140, &stru_1F0E6F140, reason, 0);
}

+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason
{
  v5 = objc_msgSend_copy(identifier, a2, identifier, reason);

  return sub_19B8943FC(v5, &stru_1F0E6F140, reason, 0);
}

+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason
{
  v5 = objc_msgSend_bundlePath(bundle, a2, bundle, reason);
  v9 = objc_msgSend_copy(v5, v6, v7, v8);

  return sub_19B8943FC(&stru_1F0E6F140, v9, reason, 0);
}

@end