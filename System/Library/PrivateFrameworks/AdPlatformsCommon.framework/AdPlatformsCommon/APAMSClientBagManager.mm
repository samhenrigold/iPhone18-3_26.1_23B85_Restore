@interface APAMSClientBagManager
+ (BOOL)isSubsequentAdsFetchDisabled;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)adprivacydBag;
+ (void)isDisabledAdsPrefetch:(id)prefetch withCompletionHandler:(id)handler;
+ (void)isSubsequentAdsFetchDisabled:(id)disabled withCompletionHandler:(id)handler;
@end

@implementation APAMSClientBagManager

+ (NSString)bagSubProfile
{
  if (qword_1EDD509F0 != -1)
  {
    sub_1BB014220();
  }

  v3 = qword_1EDD509F8;

  return v3;
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1EDD509E0 != -1)
  {
    sub_1BB014234();
  }

  v3 = qword_1EDD509E8;

  return v3;
}

+ (id)adprivacydBag
{
  v3 = MEMORY[0x1E698C7D8];
  v4 = objc_msgSend_bagSubProfile(APAMSClientBagManager, a2, v2);
  v7 = objc_msgSend_bagSubProfileVersion(APAMSClientBagManager, v5, v6);
  v9 = objc_msgSend_bagForProfile_profileVersion_(v3, v8, v4, v7);

  return v9;
}

+ (BOOL)isSubsequentAdsFetchDisabled
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_adprivacydBag(self, a2, v2);
  v5 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = objc_msgSend_BOOLForKey_(v4, v6, @"disablePromotedContentDaemonSubsequentAdsFetch");
  v10 = objc_msgSend_valuePromise(v7, v8, v9);

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1BAFD3884;
  v21[3] = &unk_1E7F20EB8;
  v23 = &v25;
  selfCopy = self;
  v11 = v5;
  v22 = v11;
  objc_msgSend_addFinishBlock_(v10, v12, v21);
  v13 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *buf = 138477827;
      v30 = v15;
      v16 = v15;
      _os_log_impl(&dword_1BAFC4000, v14, OS_LOG_TYPE_ERROR, "%{private}@: Failed to get the 'disablePromotedContentDaemonSubsequentAdsFetch' key from the bag in time.", buf, 0xCu);
    }

    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"Failed to get the 'disablePromotedContentDaemonSubsequentAdsFetch' key from the bag in time.");
    CreateDiagnosticReport();
  }

  v19 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v19 & 1;
}

+ (void)isSubsequentAdsFetchDisabled:(id)disabled withCompletionHandler:(id)handler
{
  disabledCopy = disabled;
  handlerCopy = handler;
  if (!disabledCopy)
  {
    disabledCopy = objc_msgSend_adprivacydBag(self, v7, v8);
  }

  v10 = objc_msgSend_BOOLForKey_(disabledCopy, v7, @"disablePromotedContentDaemonSubsequentAdsFetch");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1BAFD3A68;
  v13[3] = &unk_1E7F20EE0;
  v14 = handlerCopy;
  selfCopy = self;
  v11 = handlerCopy;
  objc_msgSend_valueWithCompletion_(v10, v12, v13);
}

+ (void)isDisabledAdsPrefetch:(id)prefetch withCompletionHandler:(id)handler
{
  prefetchCopy = prefetch;
  handlerCopy = handler;
  if (!prefetchCopy)
  {
    prefetchCopy = objc_msgSend_adprivacydBag(self, v7, v8);
  }

  v10 = objc_msgSend_BOOLForKey_(prefetchCopy, v7, @"disableAdsPreFetch7006");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1BAFD3C58;
  v13[3] = &unk_1E7F20F08;
  v14 = handlerCopy;
  v11 = handlerCopy;
  objc_msgSend_valueWithCompletion_(v10, v12, v13);
}

@end