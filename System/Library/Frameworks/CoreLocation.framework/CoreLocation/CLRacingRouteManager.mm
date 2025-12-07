@interface CLRacingRouteManager
- (BOOL)setRaceParameters:(id)parameters;
- (id)advanceToPoint:(id)point;
- (unint64_t)addRoutePoints:(id)points;
- (unint64_t)configureWithWorkoutActivityType:(unint64_t)type bufferSize:(unint64_t)size offRouteGraceDurationInSec:(unint64_t)sec;
@end

@implementation CLRacingRouteManager

- (unint64_t)configureWithWorkoutActivityType:(unint64_t)type bufferSize:(unint64_t)size offRouteGraceDurationInSec:(unint64_t)sec
{
  if (type > 51)
  {
    if (type - 70 < 2)
    {
      v5 = 90603;
      goto LABEL_12;
    }

    if (type != 52)
    {
LABEL_11:
      v5 = 62;
      goto LABEL_12;
    }

LABEL_9:
    v5 = 4;
    goto LABEL_12;
  }

  if (type == 13)
  {
    v5 = 6;
    goto LABEL_12;
  }

  if (type == 24)
  {
    goto LABEL_9;
  }

  if (type != 37)
  {
    goto LABEL_11;
  }

  v5 = 8;
LABEL_12:
  v9 = v5;
  secCopy = sec;
  sizeCopy = size;
  return sub_19B923E48(&self->clrr, &v9, &sizeCopy, &secCopy);
}

- (unint64_t)addRoutePoints:(id)points
{
  if (points)
  {
    return sub_19B920AF0(&self->clrr, points, points, v3);
  }

  else
  {
    return 4;
  }
}

- (id)advanceToPoint:(id)point
{
  v5 = [CLRacingRoutePerformanceResults alloc];
  result = objc_msgSend_initWithTimeAhead_currentDistance_referenceDistance_currentAveragePace_totalOverlapDistance_state_(v5, v6, 4, v7, 604800.0, -1.0, -1.0, -1.0, -1.0);
  if (point)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    v10 = sub_19B924398(&self->clrr, point, v16, v9);
    v11 = *&v23 - *(&v17 + 1);
    v12 = *&v24;
    v13 = [CLRacingRoutePerformanceResults alloc];
    return objc_msgSend_initWithTimeAhead_currentDistance_referenceDistance_currentAveragePace_totalOverlapDistance_state_(v13, v14, v10, v15, v11, *&v20, *(&v25 + 1), *(&v19 + 1), v12);
  }

  return result;
}

- (BOOL)setRaceParameters:(id)parameters
{
  if (parameters)
  {
    return sub_19B926868(&self->clrr, parameters);
  }

  else
  {
    return 0;
  }
}

@end