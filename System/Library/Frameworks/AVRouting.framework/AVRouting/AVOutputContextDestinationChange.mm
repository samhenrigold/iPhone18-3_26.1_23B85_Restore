@interface AVOutputContextDestinationChange
- (AVOutputContextDestinationChange)init;
- (NSString)cancellationReason;
- (id)description;
- (int64_t)status;
- (void)_setStatus:(int64_t)status cancellationReason:(id)reason;
- (void)changeToTerminalStatusBasedOnRouteChangeEndedReason:(__CFString *)reason;
- (void)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:(__CFString *)reason;
- (void)dealloc;
@end

@implementation AVOutputContextDestinationChange

- (void)changeToTerminalStatusBasedOnRouteChangeEndedReason:(__CFString *)reason
{
  if (FigCFEqual())
  {

    [(AVOutputContextDestinationChange *)self markAsFinished];
    return;
  }

  if (FigCFEqual())
  {
    goto LABEL_6;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v5 = @"AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped";
      selfCopy2 = self;
      goto LABEL_13;
    }

    if (!FigCFEqual())
    {
LABEL_6:

      [(AVOutputContextDestinationChange *)self markAsFailed];
      return;
    }
  }

  selfCopy2 = self;
  v5 = 0;
LABEL_13:

  [(AVOutputContextDestinationChange *)selfCopy2 markAsCancelledWithReason:v5];
}

- (void)changeToTerminalStatusBasedOnRouteConfigUpdatedReason:(__CFString *)reason
{
  if (FigCFEqual())
  {
LABEL_2:

    [(AVOutputContextDestinationChange *)self markAsFinished];
    return;
  }

  if (FigCFEqual())
  {
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    selfCopy2 = self;
    v5 = 0;
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual() || FigCFEqual() || FigCFEqual())
      {
        goto LABEL_2;
      }

LABEL_6:

      [(AVOutputContextDestinationChange *)self markAsFailed];
      return;
    }

    v5 = @"AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped";
    selfCopy2 = self;
  }

  [(AVOutputContextDestinationChange *)selfCopy2 markAsCancelledWithReason:v5];
}

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    ivarAccessQueue = ivars->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      ivars = self->_ivars;
    }

    ivars = self->_ivars;
  }

  v5.receiver = self;
  v5.super_class = AVOutputContextDestinationChange;
  [(AVOutputContextDestinationChange *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, status=%d, cancellationReason=%@>", NSStringFromClass(v4), self, -[AVOutputContextDestinationChange status](self, "status"), -[AVOutputContextDestinationChange cancellationReason](self, "cancellationReason")];
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVOutputContextDestinationChange_status__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)cancellationReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVOutputContextDestinationChange_cancellationReason__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__54__AVOutputContextDestinationChange_cancellationReason__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 24) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setStatus:(int64_t)status cancellationReason:(id)reason
{
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVOutputContextDestinationChange__setStatus_cancellationReason___block_invoke;
  block[3] = &unk_1E794E908;
  block[5] = reason;
  block[6] = status;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
}

void *__66__AVOutputContextDestinationChange__setStatus_cancellationReason___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 16) = *(a1 + 48);
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (AVOutputContextDestinationChange)init
{
  v8.receiver = self;
  v8.super_class = AVOutputContextDestinationChange;
  v2 = [(AVOutputContextDestinationChange *)&v8 init];
  if (v2 && (v3 = objc_alloc_init(AVOutputContextDestinationChangeInternal), (v2->_ivars = v3) != 0))
  {
    v4 = av_readwrite_dispatch_queue_create("com.apple.avfoundation.outputcontext.destinationchange");
    OUTLINED_FUNCTION_0_3(v4);
    *(v5 + 16) = 0;
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end