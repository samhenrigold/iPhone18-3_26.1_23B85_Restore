@interface APKeychainAnalytics
+ (void)sendKeychainAnalytics:(int)analytics keyName:(id)name readCount:(int64_t)count writeCount:(int64_t)writeCount bundleID:(id)d;
@end

@implementation APKeychainAnalytics

+ (void)sendKeychainAnalytics:(int)analytics keyName:(id)name readCount:(int64_t)count writeCount:(int64_t)writeCount bundleID:(id)d
{
  v10 = *&analytics;
  v32[5] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E696AEC0];
  dCopy = d;
  nameCopy = name;
  v16 = objc_msgSend_stringWithFormat_(v11, v14, @"%d", v15, v10);
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"%ld", v18, count);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"%ld", v21, writeCount);
  v24 = v22;
  v31[0] = @"keyName";
  v31[1] = @"errorCode";
  v32[0] = nameCopy;
  v32[1] = v16;
  v31[2] = @"bundleIdentifier";
  v31[3] = @"readCount";
  v25 = @"unknown";
  if (dCopy)
  {
    v25 = dCopy;
  }

  v32[2] = v25;
  v32[3] = v19;
  v31[4] = @"writeCount";
  v32[4] = v22;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v32, v31, 5);
  objc_msgSend_sendEvent_customPayload_(APAnalytics, v27, @"keychain", v26);

  v28 = APLogForCategory(0x18uLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v30 = v10;
    _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_INFO, "Analytics keychain event status %{public}d", buf, 8u);
  }
}

@end