@interface CUTAsyncReducer
- (CUTAsyncReducer)initWithInput:(id)input initialValue:(id)value;
- (void)_completeWithResult:(id)result;
- (void)_reduceWithPending:(id)pending visited:(id)visited currentResult:(id)result completion:(id)completion;
- (void)reduceWithCompletion:(id)completion;
@end

@implementation CUTAsyncReducer

- (CUTAsyncReducer)initWithInput:(id)input initialValue:(id)value
{
  inputCopy = input;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = CUTAsyncReducer;
  v9 = [(CUTAsyncReducer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, input);
    v11 = [CUTResult alloc];
    v13 = objc_msgSend_initWithSuccess_(v11, v12, valueCopy);
    v14 = v10->_result;
    v10->_result = v13;
  }

  return v10;
}

- (void)reduceWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  objc_msgSend_setCompletionBlock_(self, a2, completion);
  v6 = objc_msgSend_utilities(CUTLog, v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_input(self, v7, v8);
    *buf = 134217984;
    v28 = objc_msgSend_count(v9, v10, v11);
    _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_INFO, "Reduce {input: %ld}", buf, 0xCu);
  }

  v14 = objc_msgSend_reducerBlock(self, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_input(self, v15, v16);
    v20 = objc_msgSend_result(self, v18, v19);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1B2324114;
    v26[3] = &unk_1E7B20C58;
    v26[4] = self;
    objc_msgSend__reduceWithPending_visited_currentResult_completion_(self, v21, v17, MEMORY[0x1E695E0F0], v20, v26);
  }

  else
  {
    v22 = objc_msgSend_utilities(CUTLog, v15, v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2321000, v22, OS_LOG_TYPE_DEFAULT, "Missing reduce block -- Done", buf, 2u);
    }

    v17 = objc_msgSend_result(self, v23, v24);
    objc_msgSend__completeWithResult_(self, v25, v17);
  }
}

- (void)_completeWithResult:(id)result
{
  resultCopy = result;
  objc_msgSend_setResult_(self, v5, resultCopy);
  v8 = objc_msgSend_completionBlock(self, v6, v7);
  (v8)[2](v8, resultCopy);

  objc_msgSend_setCompletionBlock_(self, v9, 0);

  MEMORY[0x1EEE66B58](self, sel_setReducerBlock_, 0);
}

- (void)_reduceWithPending:(id)pending visited:(id)visited currentResult:(id)result completion:(id)completion
{
  pendingCopy = pending;
  visitedCopy = visited;
  resultCopy = result;
  completionCopy = completion;
  if (objc_msgSend_count(pendingCopy, v14, v15))
  {
    v18 = objc_msgSend_firstObject(pendingCopy, v16, v17);
    v21 = objc_msgSend_count(pendingCopy, v19, v20);
    v23 = objc_msgSend_subarrayWithRange_(pendingCopy, v22, 1, v21 - 1);
    v25 = objc_msgSend_arrayByAddingObject_(visitedCopy, v24, v18);
    v26 = objc_alloc_init(CUTAsyncReducerState);
    objc_msgSend_setVisitedItems_(v26, v27, visitedCopy);
    objc_msgSend_setPendingItems_(v26, v28, v23);
    objc_msgSend_setCurrentItem_(v26, v29, v18);
    v32 = objc_msgSend_state(resultCopy, v30, v31);
    if (v32 == 1)
    {
      objc_msgSend_setCurrentResult_(v26, v33, 0);
    }

    else if (!v32)
    {
      v35 = objc_msgSend_value(resultCopy, v33, v34);
      objc_msgSend_setCurrentResult_(v26, v36, v35);
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = sub_1B2324590;
    v55[3] = &unk_1E7B20C80;
    v38 = completionCopy;
    v56 = v38;
    objc_msgSend_setCancelBlock_(v26, v39, v55);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1B2324610;
    v53[3] = &unk_1E7B20CA8;
    v40 = v38;
    v54 = v40;
    objc_msgSend_setStopBlock_(v26, v41, v53);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1B2324690;
    v49[3] = &unk_1E7B20CD0;
    v49[4] = self;
    v50 = v23;
    v51 = v25;
    v52 = v40;
    v42 = v25;
    v43 = v23;
    objc_msgSend_setContinueBlock_(v26, v44, v49);
    v47 = objc_msgSend_reducerBlock(self, v45, v46);
    (v47)[2](v47, v26);
  }

  else
  {
    v37 = objc_msgSend_utilities(CUTLog, v16, v17);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *v48 = 0;
      _os_log_impl(&dword_1B2321000, v37, OS_LOG_TYPE_INFO, "No more items -- Done", v48, 2u);
    }

    (*(completionCopy + 2))(completionCopy, resultCopy);
  }
}

@end