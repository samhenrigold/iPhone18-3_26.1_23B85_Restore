@interface IMDRecordBatchFetcher
- (IMDRecordBatchFetcher)init;
- (id)nextBatch;
- (id)nextBatchWithSize:(unint64_t)size;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)fastEnumerationBufferSize;
- (void)dealloc;
@end

@implementation IMDRecordBatchFetcher

- (IMDRecordBatchFetcher)init
{
  v3.receiver = self;
  v3.super_class = IMDRecordBatchFetcher;
  result = [(IMDRecordBatchFetcher *)&v3 init];
  if (result)
  {
    result->_batchSize = 16;
    result->_lastRowID = -1;
  }

  return result;
}

- (void)dealloc
{
  fastEnumerationBuffer = self->_fastEnumerationBuffer;
  if (fastEnumerationBuffer)
  {
    free(fastEnumerationBuffer);
    self->_fastEnumerationBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = IMDRecordBatchFetcher;
  [(IMDRecordBatchFetcher *)&v4 dealloc];
}

- (id)nextBatch
{
  v6 = objc_msgSend_batchSize(self, a2, v2, v3);

  return objc_msgSend_nextBatchWithSize_(self, v5, v6, v7);
}

- (id)nextBatchWithSize:(unint64_t)size
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"%@ is not implemented", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)fastEnumerationBufferSize
{
  if (state->var0 == 2)
  {
    return 0;
  }

  fastEnumerationBuffer = objects;
  if (!state->var0)
  {
    state->var2 = state->var3;
    state->var0 = 1;
  }

  v9 = objc_msgSend_batchSize(self, a2, state, objects);
  if (v9 > fastEnumerationBufferSize)
  {
    fastEnumerationBuffer = self->_fastEnumerationBuffer;
    if (fastEnumerationBuffer)
    {
      fastEnumerationBufferSize = self->_fastEnumerationBufferSize;
    }

    else
    {
      v10 = v9;
      fastEnumerationBuffer = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
      self->_fastEnumerationBuffer = fastEnumerationBuffer;
      self->_fastEnumerationBufferSize = v10;
      fastEnumerationBufferSize = v10;
    }
  }

  state->var1 = fastEnumerationBuffer;
  v11 = objc_autoreleasePoolPush();
  v14 = objc_msgSend_nextBatchWithSize_(self, v12, fastEnumerationBufferSize, v13);
  fastEnumerationLastBatch = self->_fastEnumerationLastBatch;
  self->_fastEnumerationLastBatch = v14;

  if (objc_msgSend_count(self->_fastEnumerationLastBatch, v16, v17, v18) < fastEnumerationBufferSize)
  {
    fastEnumerationBufferSize = objc_msgSend_count(self->_fastEnumerationLastBatch, v19, v20, v21);
  }

  objc_msgSend_count(self->_fastEnumerationLastBatch, v19, v20, v21);
  if (fastEnumerationBufferSize)
  {
    objc_msgSend_getObjects_range_(self->_fastEnumerationLastBatch, v22, state->var1, 0, fastEnumerationBufferSize);
  }

  else
  {
    state->var0 = 2;
    v23 = self->_fastEnumerationLastBatch;
    self->_fastEnumerationLastBatch = 0;

    v26 = self->_fastEnumerationBuffer;
    p_fastEnumerationBuffer = &self->_fastEnumerationBuffer;
    v24 = v26;
    if (v26)
    {
      free(v24);
      *p_fastEnumerationBuffer = 0;
      p_fastEnumerationBuffer[1] = 0;
    }
  }

  objc_autoreleasePoolPop(v11);
  return fastEnumerationBufferSize;
}

@end