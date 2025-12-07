@interface FudProgressWeights
- (FudProgressWeights)initWithPrepareWeight:(float)weight applyWeight:(float)applyWeight finishWeight:(float)finishWeight;
- (double)calculateOverallProgressWithStepProgress:(double)progress step:(int)step;
@end

@implementation FudProgressWeights

- (FudProgressWeights)initWithPrepareWeight:(float)weight applyWeight:(float)applyWeight finishWeight:(float)finishWeight
{
  v17.receiver = self;
  v17.super_class = FudProgressWeights;
  v14 = [(FudProgressWeights *)&v17 init];
  v14->prepareWeight = weight;
  v14->applyWeight = applyWeight;
  v14->finishWeight = finishWeight;
  if (((weight + applyWeight) + finishWeight) != 1.0)
  {
    FudLog(3, @"Can't create progress weights if total doesn't equal 1", v8, v9, v10, v11, v12, v13, v17.receiver);
    v15 = v14;
    return 0;
  }

  return v14;
}

- (double)calculateOverallProgressWithStepProgress:(double)progress step:(int)step
{
  if (progress < 0.0)
  {
    v9 = @"Can't calculate overall progress with negative step progress";
LABEL_3:
    FudLog(3, v9, *&step, v4, v5, v6, v7, v8, vars0);
    return -1.0;
  }

  if (step == 10)
  {
    v11 = ((self->applyWeight * 100.0) + (self->prepareWeight * 100.0));
    finishWeight = self->finishWeight;
    return v11 + finishWeight * progress;
  }

  if (step == 9)
  {
    v11 = (self->prepareWeight * 100.0);
    finishWeight = self->applyWeight;
    return v11 + finishWeight * progress;
  }

  if (step != 8)
  {
    v9 = @"This is not an operation that supports weighted progress.";
    goto LABEL_3;
  }

  return self->prepareWeight * progress;
}

@end