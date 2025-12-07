@interface SLRequestBodyInputStream
- (BOOL)_setCFClientFlags:(unint64_t)flags callback:(void *)callback context:(id *)context;
- (NSStreamDelegate)delegate;
- (SLRequestBodyInputStream)initWithMultiParts:(id)parts multiPartBoundary:(id)boundary;
- (id)nextStream;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (void)_scheduleInCFRunLoop:(__CFRunLoop *)loop forMode:(__CFString *)mode;
- (void)_streamEventTrigger;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
@end

@implementation SLRequestBodyInputStream

- (SLRequestBodyInputStream)initWithMultiParts:(id)parts multiPartBoundary:(id)boundary
{
  v46 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  boundaryCopy = boundary;
  v43.receiver = self;
  v43.super_class = SLRequestBodyInputStream;
  v9 = [(SLRequestBodyInputStream *)&v43 init];
  if (v9)
  {
    v10 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = partsCopy;
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[SLRequestMultiPartInputStream alloc] initWithMultiPart:*(*(&v39 + 1) + 8 * i)];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v13);
    }

    boundaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"--%@--\r\n", boundaryCopy];
    v18 = [boundaryCopy dataUsingEncoding:4];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v9->_dataLength += [*(*(&v35 + 1) + 8 * j) length];
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v21);
    }

    if ([v19 count])
    {
      v9->_dataLength += [v18 length];
      v24 = [MEMORY[0x1E695DF48] inputStreamWithData:v18];
      [v19 addObject:v24];
      objc_storeStrong(&v9->_inputStreams, v10);
      v25 = [(NSArray *)v9->_inputStreams objectAtIndex:0];
      currentStream = v9->_currentStream;
      v9->_currentStream = v25;
    }

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v9->_inputStreams, "count")}];
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9->_dataLength];
    _SLLog(v4, 7, @"SLRequestBodyInputStream %@ initWithMultiParts:multiPartBoundary: _inputStreams.count %@ _dataLength %@", v28, v29, v30, v31, v32, v9);
  }

  return v9;
}

- (void)dealloc
{
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
    CFRelease(self->_rls);
  }

  release = self->_clientContext.release;
  if (release)
  {
    release(self->_clientContext.info, a2);
  }

  v5.receiver = self;
  v5.super_class = SLRequestBodyInputStream;
  [(SLRequestBodyInputStream *)&v5 dealloc];
}

- (id)nextStream
{
  v3 = self->_currentIndex + 1;
  self->_currentIndex = v3;
  if (v3 == [(NSArray *)self->_inputStreams count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_inputStreams objectAtIndex:self->_currentIndex];
  }

  return v4;
}

- (void)_streamEventTrigger
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SLRequestBodyInputStream.m" lineNumber:140 description:@"sanity check for stream data"];
}

- (void)_scheduleInCFRunLoop:(__CFRunLoop *)loop forMode:(__CFString *)mode
{
  rls = self->_rls;
  if (!rls)
  {
    v9.version = 0;
    memset(&v9.retain, 0, 56);
    v9.info = self;
    v9.perform = _streamEventTrigger;
    rls = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v9);
    self->_rls = rls;
    if (!rls)
    {
      [(SLRequestBodyInputStream *)a2 _scheduleInCFRunLoop:&self->_rls forMode:&v10];
      rls = v10;
    }
  }

  CFRunLoopAddSource(loop, rls, mode);
}

- (BOOL)_setCFClientFlags:(unint64_t)flags callback:(void *)callback context:(id *)context
{
  p_clientContext = &self->_clientContext;
  if (context)
  {
    v8 = *&context->var0;
    v9 = *&context->var2;
    self->_clientContext.copyDescription = context->var4;
    *&p_clientContext->version = v8;
    *&self->_clientContext.retain = v9;
    retain = self->_clientContext.retain;
    if (retain)
    {
      retain(self->_clientContext.info, a2, flags);
    }
  }

  else
  {
    release = self->_clientContext.release;
    if (release)
    {
      release(self->_clientContext.info, a2, flags);
    }

    p_clientContext->copyDescription = 0;
    *&p_clientContext->version = 0u;
    *&p_clientContext->retain = 0u;
  }

  self->_clientCallback = callback;
  return 1;
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  modeCopy = mode;
  -[SLRequestBodyInputStream _scheduleInCFRunLoop:forMode:](self, "_scheduleInCFRunLoop:forMode:", [loop getCFRunLoop], modeCopy);
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  modeCopy = mode;
  -[SLRequestBodyInputStream _unscheduleFromCFRunLoop:forMode:](self, "_unscheduleFromCFRunLoop:forMode:", [loop getCFRunLoop], modeCopy);
}

- (void)open
{
  _SLLog(v7, 7, @"SLRequestBodyInputStream %@ open", v2, v3, v4, v5, v6, self);
  [(SLRequestBodyInputStream *)self _scheduleCallback];
  self->_streamStatus = 2;
}

- (void)close
{
  _SLLog(v7, 7, @"SLRequestBodyInputStream %@ close", v2, v3, v4, v5, v6, self);
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
  }

  self->_streamStatus = 6;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
  _SLLog(v4, 7, @"SLRequestBodyInputStream %@ read: %p maxLength: %@", v8, v9, v10, v11, v12, self);

  v13 = 0;
  if (length)
  {
    while (self->_dataOffset + v13 < self->_dataLength)
    {
      if (![(SLRequestMultiPartInputStream *)self->_currentStream hasBytesAvailable])
      {
        _SLLog(v4, 6, @"SLRequestBodyInputStream %@ Current stream has no bytes, switching", v14, v15, v16, v17, v18, self);
        [(SLRequestMultiPartInputStream *)self->_currentStream close];
        nextStream = [(SLRequestBodyInputStream *)self nextStream];
        currentStream = self->_currentStream;
        self->_currentStream = nextStream;

        v26 = self->_currentStream;
        if (!v26)
        {
          _SLLog(v4, 3, @"Bad state, current stream is nil", v21, v22, v23, v24, v25, v46);
          break;
        }

        [(SLRequestMultiPartInputStream *)v26 open];
      }

      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
      _SLLog(v4, 6, @"SLRequestBodyInputStream %@ read:maxLength: Will source bytes at offset %@", v28, v29, v30, v31, v32, self);

      v13 += [(SLRequestMultiPartInputStream *)self->_currentStream read:&read[v13] maxLength:length - v13];
      v33 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
      _SLLog(v4, 6, @"SLRequestBodyInputStream %@ read:maxLength: Total %@ bytes written to buffer, maxLen %@", v34, v35, v36, v37, v38, self);

      if (v13 >= length)
      {
        break;
      }
    }
  }

  self->_dataOffset += v13;
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dataLength];
  _SLLog(v4, 6, @"SLRequestBodyInputStream %@ read:maxLength: Total %@ bytes streamed, total length is %@", v40, v41, v42, v43, v44, self);

  [(SLRequestBodyInputStream *)self _scheduleCallback];
  return v13;
}

- (NSStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_scheduleInCFRunLoop:(void *)a3 forMode:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SLRequestBodyInputStream.m" lineNumber:176 description:@"should be able to make run loop source"];

  *a4 = *a3;
}

@end