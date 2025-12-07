@interface CUTUnsafePromise
+ (id)all:(id)all;
+ (id)allWithPartialSuccesses:(id)successes;
+ (id)failedPromiseWithError:(id)error;
+ (id)fulfilledPromiseWithValue:(id)value;
- (id)_init;
- (void)registerResultBlock:(id)block;
@end

@implementation CUTUnsafePromise

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CUTUnsafePromise;
  return [(CUTUnsafePromise *)&v3 init];
}

- (void)registerResultBlock:(id)block
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, block);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CUTPromise.m", 60, @"CUTUnsafePromise is abstract and should never be created");
}

+ (id)failedPromiseWithError:(id)error
{
  errorCopy = error;
  v4 = [_CUTStaticPromise alloc];
  v5 = [CUTResult alloc];
  v7 = objc_msgSend_initWithError_(v5, v6, errorCopy);

  v9 = objc_msgSend_initWithResult_safe_(v4, v8, v7, 0);

  return v9;
}

+ (id)fulfilledPromiseWithValue:(id)value
{
  valueCopy = value;
  v4 = [_CUTStaticPromise alloc];
  v5 = [CUTResult alloc];
  v7 = objc_msgSend_initWithSuccess_(v5, v6, valueCopy);

  v9 = objc_msgSend_initWithResult_safe_(v4, v8, v7, 0);

  return v9;
}

+ (id)all:(id)all
{
  allCopy = all;
  v4 = objc_alloc_init(CUTUnsafePromiseSeal);
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_count(allCopy, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  if (objc_msgSend_count(allCopy, v11, v12))
  {
    v15 = 0;
    do
    {
      v16 = objc_msgSend_null(MEMORY[0x1E695DFB0], v13, v14);
      objc_msgSend_addObject_(v10, v17, v16);

      ++v15;
    }

    while (objc_msgSend_count(allCopy, v18, v19) > v15);
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  if (!objc_msgSend_count(allCopy, v13, v14))
  {
    objc_msgSend_fulfillWithValue_(v4, v20, v10);
    *(v39 + 24) = 1;
  }

  for (i = 0; objc_msgSend_count(allCopy, v20, v21) > i; ++i)
  {
    v25 = objc_msgSend_objectAtIndexedSubscript_(allCopy, v23, i);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1B232E628;
    v30[3] = &unk_1E7B21100;
    v33 = &v38;
    v31 = v4;
    v26 = v10;
    v35 = i;
    v32 = v26;
    v34 = v36;
    objc_msgSend_registerResultBlock_(v25, v27, v30);
  }

  v28 = objc_msgSend_promise(v4, v23, v24);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);

  return v28;
}

+ (id)allWithPartialSuccesses:(id)successes
{
  successesCopy = successes;
  v4 = objc_alloc_init(CUTUnsafePromiseSeal);
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_count(successesCopy, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  if (objc_msgSend_count(successesCopy, v11, v12))
  {
    v15 = 0;
    do
    {
      v16 = objc_msgSend_null(MEMORY[0x1E695DFB0], v13, v14);
      objc_msgSend_addObject_(v10, v17, v16);

      ++v15;
    }

    while (objc_msgSend_count(successesCopy, v18, v19) > v15);
  }

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  if (!objc_msgSend_count(successesCopy, v13, v14))
  {
    objc_msgSend_fulfillWithValue_(v4, v20, v10);
  }

  for (i = 0; objc_msgSend_count(successesCopy, v20, v21) > i; ++i)
  {
    v25 = objc_msgSend_objectAtIndexedSubscript_(successesCopy, v23, i);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1B232E940;
    v30[3] = &unk_1E7B21128;
    v26 = v10;
    v34 = i;
    v31 = v26;
    v33 = v35;
    v32 = v4;
    objc_msgSend_registerResultBlock_(v25, v27, v30);
  }

  v28 = objc_msgSend_promise(v4, v23, v24);
  _Block_object_dispose(v35, 8);

  return v28;
}

@end