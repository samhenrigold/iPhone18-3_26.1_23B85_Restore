@interface AVOutputContextModificationResult
- (AVOutputContextModificationResult)initWithFigRouteConfigUpdatedReason:(__CFString *)reason metrics:(id)metrics;
- (id)cancellationReason;
- (void)dealloc;
@end

@implementation AVOutputContextModificationResult

- (AVOutputContextModificationResult)initWithFigRouteConfigUpdatedReason:(__CFString *)reason metrics:(id)metrics
{
  v10.receiver = self;
  v10.super_class = AVOutputContextModificationResult;
  v5 = [(AVOutputContextDestinationChange *)&v10 init];
  if (FigCFEqual())
  {
    goto LABEL_2;
  }

  if (FigCFEqual())
  {
    v6 = 3;
  }

  else if (FigCFEqual() || FigCFEqual())
  {
    v6 = 4;
  }

  else
  {
    if (FigCFEqual() || FigCFEqual())
    {
LABEL_2:
      v6 = 2;
      goto LABEL_8;
    }

    v9 = FigCFEqual();
    v6 = 2;
    if (!v9)
    {
      v6 = 3;
    }
  }

LABEL_8:
  v5->mStatus = v6;
  if (FigCFEqual())
  {
    v7 = @"AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped";
  }

  else
  {
    v7 = 0;
  }

  v5->mCancellationReason = &v7->isa;
  v5->_modificationMetrics = metrics;
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputContextModificationResult;
  [(AVOutputContextDestinationChange *)&v3 dealloc];
}

- (id)cancellationReason
{
  v2 = self->mCancellationReason;

  return v2;
}

@end