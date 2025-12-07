@interface CUTPromise
+ (id)all:(id)all;
+ (id)allWithPartialSuccesses:(id)successes;
+ (id)failedPromiseWithError:(id)error;
+ (id)fulfilledPromiseWithValue:(id)value;
- (void)registerResultBlock:(id)block;
@end

@implementation CUTPromise

- (void)registerResultBlock:(id)block
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, block);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CUTPromise.m", 168, @"CUTPromise is abstract and should never be created");
}

+ (id)failedPromiseWithError:(id)error
{
  errorCopy = error;
  v4 = [_CUTStaticPromise alloc];
  v5 = [CUTResult alloc];
  v7 = objc_msgSend_initWithError_(v5, v6, errorCopy);

  v9 = objc_msgSend_initWithResult_safe_(v4, v8, v7, 1);

  return v9;
}

+ (id)fulfilledPromiseWithValue:(id)value
{
  valueCopy = value;
  v4 = [_CUTStaticPromise alloc];
  v5 = [CUTResult alloc];
  v7 = objc_msgSend_initWithSuccess_(v5, v6, valueCopy);

  v9 = objc_msgSend_initWithResult_safe_(v4, v8, v7, 1);

  return v9;
}

+ (id)all:(id)all
{
  allCopy = all;
  v4 = objc_alloc_init(_CUTLockingPromise);
  v7 = objc_msgSend_lock(v4, v5, v6);
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v11 = objc_msgSend_count(allCopy, v9, v10);
  v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
  if (objc_msgSend_count(allCopy, v14, v15))
  {
    v18 = 0;
    do
    {
      v19 = objc_msgSend_null(MEMORY[0x1E695DFB0], v16, v17);
      objc_msgSend_addObject_(v13, v20, v19);

      ++v18;
    }

    while (objc_msgSend_count(allCopy, v21, v22) > v18);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  if (!objc_msgSend_count(allCopy, v16, v17))
  {
    v25 = [CUTResult alloc];
    v27 = objc_msgSend_initWithSuccess_(v25, v26, v13);
    objc_msgSend__fulfillWithResult_(v4, v28, v27);

    *(v51 + 24) = 1;
  }

  for (i = 0; objc_msgSend_count(allCopy, v23, v24) > i; ++i)
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(allCopy, v30, i);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v38 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v32, v33);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v36, a2, self, @"CUTPromise.m", 195, @"Invalid parameter not satisfying: %@", @"[promise isKindOfClass:[CUTPromise class]]");
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1B232EFB0;
    v41[3] = &unk_1E7B21150;
    v42 = v7;
    v45 = &v50;
    v43 = v4;
    v34 = v13;
    v47 = i;
    v44 = v34;
    v46 = v48;
    objc_msgSend_registerResultBlock_(v31, v35, v41);
  }

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v50, 8);

  return v4;
}

+ (id)allWithPartialSuccesses:(id)successes
{
  successesCopy = successes;
  v4 = objc_alloc_init(_CUTLockingPromise);
  v7 = objc_msgSend_lock(v4, v5, v6);
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v11 = objc_msgSend_count(successesCopy, v9, v10);
  v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
  if (objc_msgSend_count(successesCopy, v14, v15))
  {
    v18 = 0;
    do
    {
      v19 = objc_msgSend_null(MEMORY[0x1E695DFB0], v16, v17);
      objc_msgSend_addObject_(v13, v20, v19);

      ++v18;
    }

    while (objc_msgSend_count(successesCopy, v21, v22) > v18);
  }

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  if (!objc_msgSend_count(successesCopy, v16, v17))
  {
    v25 = [CUTResult alloc];
    v27 = objc_msgSend_initWithSuccess_(v25, v26, v13);
    objc_msgSend__fulfillWithResult_(v4, v28, v27);
  }

  for (i = 0; objc_msgSend_count(successesCopy, v23, v24) > i; ++i)
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(successesCopy, v30, i);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v38 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v32, v33);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v36, a2, self, @"CUTPromise.m", 232, @"Invalid parameter not satisfying: %@", @"[promise isKindOfClass:[CUTPromise class]]");
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1B232F3B0;
    v41[3] = &unk_1E7B21178;
    v42 = v7;
    v34 = v13;
    v46 = i;
    v43 = v34;
    v45 = v47;
    v44 = v4;
    objc_msgSend_registerResultBlock_(v31, v35, v41);
  }

  _Block_object_dispose(v47, 8);

  return v4;
}

@end