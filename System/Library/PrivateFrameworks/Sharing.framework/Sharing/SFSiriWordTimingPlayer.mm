@interface SFSiriWordTimingPlayer
- (SFSiriWordTimingPlayer)init;
- (void)_processNextWord;
- (void)_processWord;
- (void)activate;
- (void)invalidate;
@end

@implementation SFSiriWordTimingPlayer

- (SFSiriWordTimingPlayer)init
{
  v6.receiver = self;
  v6.super_class = SFSiriWordTimingPlayer;
  v2 = [(SFSiriWordTimingPlayer *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFSiriWordTimingPlayer_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__SFSiriWordTimingPlayer_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __34__SFSiriWordTimingPlayer_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  if (v4[6] == 0.0)
  {
    *(*(v3 + 32) + 48) = CFAbsoluteTimeGetCurrent();
    v4 = *(v3 + 32);
  }

  return [v4 _processNextWord];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFSiriWordTimingPlayer_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __36__SFSiriWordTimingPlayer_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __36__SFSiriWordTimingPlayer_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(*(v3 + 32) + 8);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(v3 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;
  }

  v8 = *(v3 + 32);
  v9 = *(v8 + 64);
  if (v9)
  {
    v10 = NSErrorWithOSStatusF(4294960573, "Invalidated");
    (*(v9 + 16))(v9, 0, 0, 4, v10);

    v8 = *(v3 + 32);
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 64) = 0;
}

- (void)_processNextWord
{
  wordIndex = self->_wordIndex;
  v4 = [(NSArray *)self->_wordTimings count];
  if (wordIndex >= v4)
  {
    if (gLogCategory_SFSiriClient <= 30)
    {
      if (gLogCategory_SFSiriClient != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        [(SFSiriWordTimingPlayer *)v4 _processNextWord];
      }
    }

    timer = self->_timer;
    if (timer)
    {
      v11 = timer;
      dispatch_source_cancel(v11);
      v12 = self->_timer;
      self->_timer = 0;
    }

    wordHandler = self->_wordHandler;
    if (wordHandler)
    {
      (*(wordHandler + 2))(wordHandler, 0, 0, 4, 0);
      wordHandler = self->_wordHandler;
    }

    self->_wordHandler = 0;
  }

  else
  {
    wordTimings = self->_wordTimings;
    ++self->_wordIndex;
    v8 = [(NSArray *)wordTimings objectAtIndexedSubscript:?];
    wordInfo = self->_wordInfo;
    self->_wordInfo = v8;

    [(SFSiriWordTimingInfo *)self->_wordInfo timeOffset];
    CFAbsoluteTimeGetCurrent();
    if (self->_timer)
    {

      CUDispatchTimerSet();
    }

    else
    {
      v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      v15 = self->_timer;
      self->_timer = v14;

      v16 = self->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __42__SFSiriWordTimingPlayer__processNextWord__block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v16, handler);
      CUDispatchTimerSet();
      dispatch_activate(self->_timer);
    }
  }
}

- (void)_processWord
{
  wordID = [(SFSiriWordTimingInfo *)self->_wordInfo wordID];
  if (wordID)
  {
    wordHandler = self->_wordHandler;
    if (!wordHandler)
    {
      goto LABEL_18;
    }

    localizedText = [(SFSiriWordTimingInfo *)self->_wordInfo localizedText];
    v5 = wordHandler[2];
    v6 = wordHandler;
    v7 = wordID;
    v8 = localizedText;
  }

  else
  {
    textRange = [(SFSiriWordTimingInfo *)self->_wordInfo textRange];
    v11 = v10;
    v12 = [(NSString *)self->_text length];
    if (v12 < textRange || v12 - textRange < v11)
    {
      v14 = self->_wordHandler;
      if (!v14)
      {
        goto LABEL_18;
      }

      localizedText = NSErrorWithOSStatusF(4294960586, "Timing info out-of-rage (%d, %d, %d)", v12, textRange, v11);
      (*(v14 + 2))(v14, &stru_1F1D30528, 0, 0, localizedText);
      goto LABEL_17;
    }

    v15 = self->_wordHandler;
    if ((self->_flags & 8) != 0)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = [(NSString *)self->_text substringToIndex:textRange + v11];
    }

    else
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = [(NSString *)self->_text substringWithRange:textRange, v11];
    }

    localizedText = v16;
    v5 = v15[2];
    v6 = v15;
    v7 = localizedText;
    v8 = 0;
  }

  v5(v6, v7, v8, 0, 0);
LABEL_17:

LABEL_18:
  [(SFSiriWordTimingPlayer *)self _processNextWord];
}

@end