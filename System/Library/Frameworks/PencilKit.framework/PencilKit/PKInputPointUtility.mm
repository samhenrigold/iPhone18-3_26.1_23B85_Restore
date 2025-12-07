@interface PKInputPointUtility
+ (double)correctedTimestampFromOldTimestampIfNecessary:(uint64_t)necessary;
+ (double)timestampFromTouchTimestamp:(uint64_t)timestamp;
+ (void)drawingInputPoint:(char)point@<W3> view:(char)view@<W4> touch:(uint64_t)touch@<X8> predicted:(double)predicted@<D0> activeInputProperties:(double)properties@<D1>;
@end

@implementation PKInputPointUtility

+ (double)timestampFromTouchTimestamp:(uint64_t)timestamp
{
  objc_opt_self();
  if (qword_1ED6A55C8 != -1)
  {
    dispatch_once(&qword_1ED6A55C8, &__block_literal_global_98);
  }

  return *&_MergedGlobals_176 + a2;
}

+ (double)correctedTimestampFromOldTimestampIfNecessary:(uint64_t)necessary
{
  v3 = objc_opt_self();
  v4 = a2 - CACurrentMediaTime();
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 >= 5.0)
  {
    return a2;
  }

  return [(PKInputPointUtility *)v3 timestampFromTouchTimestamp:a2];
}

+ (void)drawingInputPoint:(char)point@<W3> view:(char)view@<W4> touch:(uint64_t)touch@<X8> predicted:(double)predicted@<D0> activeInputProperties:(double)properties@<D1>
{
  v14 = a2;
  v15 = a3;
  v16 = objc_opt_self();
  [v15 PK_rollAngle];
  v18 = v17;
  [v15 maximumPossibleForce];
  v19 = -1.0;
  if (v20 > 0.0)
  {
    [v15 force];
    if ((v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [v15 force];
      v19 = v24;
    }

    else
    {
      v22 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_ERROR, "Got non-finite force from UITouch", buf, 2u);
      }

      [v15 maximumPossibleForce];
      v19 = v23 * 0.5;
    }
  }

  if ([v15 type] == 2)
  {
    v25 = 0.0;
    if (view)
    {
      [v15 azimuthAngleInView:v14];
      if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v25 = v26 + -3.14159265;
      }

      else
      {
        v27 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v41 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_ERROR, "Got non-finite azimuthAngle from UITouch", v41, 2u);
        }
      }
    }

    v28 = 0.785398163;
    if ((view & 2) != 0)
    {
      [v15 altitudeAngle];
      if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v28 = 1.57079633 - v30;
      }

      else
      {
        v31 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *v40 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v31, OS_LOG_TYPE_ERROR, "Got non-finite altitudeAngle from UITouch", v40, 2u);
        }
      }
    }

    estimationUpdateIndex = [v15 estimationUpdateIndex];

    if (estimationUpdateIndex)
    {
      estimationUpdateIndex2 = [v15 estimationUpdateIndex];
      integerValue = [estimationUpdateIndex2 integerValue];
    }

    else
    {
      integerValue = -1;
    }
  }

  else
  {
    v28 = 0.0;
    integerValue = -1;
    v25 = 0.0;
  }

  *(touch + 104) = 0;
  *(touch + 88) = 0u;
  *(touch + 72) = 0u;
  *touch = predicted;
  *(touch + 8) = properties;
  *(touch + 16) = v19;
  *(touch + 24) = v25;
  *(touch + 32) = v28;
  *(touch + 48) = 0;
  *(touch + 56) = 0;
  *(touch + 40) = 0;
  [v15 timestamp];
  *(touch + 64) = [(PKInputPointUtility *)v16 timestampFromTouchTimestamp:v34];
  *(touch + 72) = point;
  *(touch + 88) = 0;
  *(touch + 96) = 0;
  *(touch + 80) = integerValue;
  if (([v15 estimatedProperties] & 2) != 0)
  {
    LOBYTE(v35) = 1;
  }

  else
  {
    v35 = ([v15 estimatedProperties] >> 2) & 1;
  }

  *(touch + 104) = v35;
  *(touch + 112) = v18;
  estimatedProperties = [v15 estimatedProperties];
  objc_opt_self();
  estimatedPropertiesExpectingUpdates = [v15 estimatedPropertiesExpectingUpdates];
  objc_opt_self();
  v38.i64[0] = estimatedProperties;
  v38.i64[1] = estimatedPropertiesExpectingUpdates;
  v39 = vshrq_n_u64(v38, 1uLL);
  *(touch + 120) = vorrq_s8(vorrq_s8(vandq_s8(v39, vdupq_n_s64(1uLL)), vandq_s8(v38, vdupq_n_s64(0x10uLL))), vorrq_s8(vandq_s8(vshlq_n_s64(v38, 2uLL), vdupq_n_s64(4uLL)), vandq_s8(v39, vdupq_n_s64(2uLL))));
}

@end