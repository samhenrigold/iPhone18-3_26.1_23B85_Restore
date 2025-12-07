@interface MFIMAPSimpleDownload
- (MFIMAPSimpleDownload)initWithUid:(unsigned int)uid section:(id)section length:(unint64_t)length lengthIsKnown:(BOOL)known range:(_NSRange)range consumer:(id)consumer;
- (unint64_t)bytesFetched;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)handleFetchResult:(id)result;
- (void)processResults;
- (void)setError:(id)error;
@end

@implementation MFIMAPSimpleDownload

- (MFIMAPSimpleDownload)initWithUid:(unsigned int)uid section:(id)section length:(unint64_t)length lengthIsKnown:(BOOL)known range:(_NSRange)range consumer:(id)consumer
{
  length = range.length;
  location = range.location;
  v12 = *&uid;
  v27[2] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  consumerCopy = consumer;
  v26.receiver = self;
  v26.super_class = MFIMAPSimpleDownload;
  v16 = [(MFIMAPDownload *)&v26 initWithUid:v12];
  if (v16)
  {
    v17 = [sectionCopy copy];
    section = v16->_section;
    v16->_section = v17;

    v16->_length = length;
    *(v16 + 72) = *(v16 + 72) & 0xFE | known;
    v16->_range.location = location;
    v16->_range.length = length;
    v19 = objc_alloc_init(MEMORY[0x1E69AD6A8]);
    countingConsumer = v16->super._countingConsumer;
    v16->super._countingConsumer = v19;

    v21 = objc_alloc(MEMORY[0x1E69AD688]);
    v27[0] = v16->super._countingConsumer;
    v27[1] = consumerCopy;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v23 = [v21 initWithConsumers:v22];
    mainConsumer = v16->super._mainConsumer;
    v16->super._mainConsumer = v23;
  }

  return v16;
}

- (unint64_t)bytesFetched
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  v3 = [(MFCountingDataConsumer *)self->super._countingConsumer count];
  [(MFIMAPSimpleDownload *)self mf_unlock];
  return v3;
}

- (void)handleFetchResult:(id)result
{
  resultCopy = result;
  type = [resultCopy type];
  switch(type)
  {
    case 4:
      v8 = [(NSString *)self->_section caseInsensitiveCompare:@"HEADER"];
      break;
    case 5:
      v8 = [(NSString *)self->_section caseInsensitiveCompare:@"TEXT"];
      break;
    case 7:
      section = self->_section;
      section = [resultCopy section];
      v7 = [(NSString *)section caseInsensitiveCompare:section];

      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    default:
      goto LABEL_12;
  }

  if (v8)
  {
    goto LABEL_12;
  }

LABEL_9:
  [(MFIMAPSimpleDownload *)self mf_lock];
  pendingFetchResults = self->super._pendingFetchResults;
  if (!pendingFetchResults)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = self->super._pendingFetchResults;
    self->super._pendingFetchResults = v10;

    pendingFetchResults = self->super._pendingFetchResults;
  }

  [(NSMutableArray *)pendingFetchResults addObject:resultCopy];
  [(MFIMAPSimpleDownload *)self mf_unlock];
LABEL_12:
}

- (void)processResults
{
  v23 = *MEMORY[0x1E69E9840];
  [(MFIMAPSimpleDownload *)self mf_lock];
  if ((*(self + 72) & 2) == 0)
  {
    v3 = +[MFActivityMonitor currentMonitor];
    v4 = [(NSMutableArray *)self->super._pendingFetchResults count];
    [(NSMutableArray *)self->super._pendingFetchResults sortUsingFunction:_comparePartialFetchResults context:0];
    if (v4)
    {
      *&v5 = 138543874;
      v16 = v5;
      do
      {
        if ((*(self + 72) & 2) != 0)
        {
          break;
        }

        [(NSMutableArray *)self->super._pendingFetchResults removeObjectAtIndex:0];
        bytesFetched = [(MFIMAPSimpleDownload *)self bytesFetched];
        v7 = bytesFetched;
        v8 = *(self + 72);
        if ((v8 & 2) == 0 && self->_lastBytesFetched == bytesFetched)
        {
          *(self + 72) = v8 | 2;
          v9 = +[MFIMAPConnection log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            section = self->_section;
            length = self->_length;
            *buf = v16;
            v18 = section;
            v19 = 2048;
            v20 = v7;
            v21 = 2048;
            v22 = length;
            _os_log_error_impl(&dword_1B0389000, v9, OS_LOG_TYPE_ERROR, "Server returned less bytes than expected for part %{public}@ (%lu versus %lu)", buf, 0x20u);
          }

          v8 = *(self + 72);
        }

        if ((v8 & 2) != 0 || (*(self + 72) & 1) == 0 || v7 >= self->_length)
        {
          *(self + 72) = v8 | 2;
          error = [v3 error];
          v11 = error;
          if (error)
          {
            v12 = [error mf_shouldFailDownload] ? 0 : 2;
          }

          else
          {
            v12 = 2;
          }

          *(self + 72) = *(self + 72) & 0xFD | v12;
        }

        else
        {
          *(self + 72) = v8;
        }

        --v4;
      }

      while (v4);
    }

    if ((*(self + 72) & 2) != 0 && self->_range.length == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_originalDataLength = [(MFIMAPSimpleDownload *)self bytesFetched];
    }

    mainConsumer = [(MFIMAPDownload *)self mainConsumer];
    [mainConsumer done];
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  pipelineCopy = pipeline;
  [(MFIMAPSimpleDownload *)self mf_lock];
  if (([pipelineCopy isFull] & 1) == 0 && !-[MFIMAPSimpleDownload isComplete](self, "isComplete"))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    bytesFetched = [(MFIMAPSimpleDownload *)self bytesFetched];
    [v5 appendString:@"BODY.PEEK["];
    if (self->_section)
    {
      [v5 appendString:?];
    }

    [v5 appendString:@"]"];
    length = self->_length;
    if (*(self + 72))
    {
      length -= bytesFetched;
      self->_lastBytesFetched = [(MFIMAPSimpleDownload *)self bytesFetched];
      v8 = length;
      if (bytesFetched || (v8 = self->_range.length, v8 != 0x7FFFFFFFFFFFFFFFLL))
      {
        if (v8)
        {
          [v5 appendString:@"<"];
          v9 = EFStringWithUnsignedInteger();
          [v5 appendString:v9];

          [v5 appendString:@"."];
          v10 = EFStringWithUnsignedInteger();
          [v5 appendString:v10];

          [v5 appendString:@">"];
        }
      }
    }

    [pipelineCopy addFetchCommandForUid:self->super._uid fetchItem:v5 expectedLength:length bodyDataConsumer:self->super._mainConsumer consumerSection:self->_section];
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

- (void)setError:(id)error
{
  errorCopy = error;
  [(MFIMAPSimpleDownload *)self mf_lock];
  objc_storeStrong(&self->_error, error);
  [(MFIMAPSimpleDownload *)self mf_unlock];
}

@end