@interface CSFTimeUtils
+ (double)getHostClockFrequency;
+ (double)hostTimeToTimeInterval:(unint64_t)interval;
+ (float)hostTimeToSeconds:(unint64_t)seconds;
+ (unint64_t)hostTimeFromSampleCount:(unint64_t)count anchorHostTime:(unint64_t)time anchorSampleCount:(unint64_t)sampleCount sampleRate:(float)rate;
+ (unint64_t)macHostTimeFromBridgeHostTime:(unint64_t)time;
+ (unint64_t)sampleCountFromHostTime:(unint64_t)time anchorHostTime:(unint64_t)hostTime anchorSampleCount:(unint64_t)count sampleRate:(float)rate;
+ (unint64_t)secondsToHostTime:(float)time;
@end

@implementation CSFTimeUtils

+ (unint64_t)macHostTimeFromBridgeHostTime:(unint64_t)time
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "+[CSFTimeUtils macHostTimeFromBridgeHostTime:]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Not supported on this platform", &v6, 0xCu);
  }

  return time;
}

+ (unint64_t)sampleCountFromHostTime:(unint64_t)time anchorHostTime:(unint64_t)hostTime anchorSampleCount:(unint64_t)count sampleRate:(float)rate
{
  v16 = *MEMORY[0x1E69E9840];
  rateCopy = rate;
  [self getHostClockFrequency];
  v11 = llround(rateCopy / v10 * (hostTime - time));
  result = count - v11;
  if (count < v11)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "+[CSFTimeUtils sampleCountFromHostTime:anchorHostTime:anchorSampleCount:sampleRate:]";
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Delta is larger than anchorSampleCount", &v14, 0xCu);
    }

    return 0;
  }

  return result;
}

+ (unint64_t)hostTimeFromSampleCount:(unint64_t)count anchorHostTime:(unint64_t)time anchorSampleCount:(unint64_t)sampleCount sampleRate:(float)rate
{
  v22 = *MEMORY[0x1E69E9840];
  [self getHostClockFrequency];
  v11 = llround(v10 / rate * (sampleCount - count));
  result = time - v11;
  if (time < v11)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315906;
      v15 = "+[CSFTimeUtils hostTimeFromSampleCount:anchorHostTime:anchorSampleCount:sampleRate:]";
      v16 = 2050;
      sampleCountCopy = sampleCount;
      v18 = 2050;
      countCopy = count;
      v20 = 2050;
      timeCopy = time;
      _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Delta is larger than anchorHostTime: anchorSampleCount = %{public}lld, sampleTime = %{public}lld, anchorHostTime = %{public}lld", &v14, 0x2Au);
    }

    return 0;
  }

  return result;
}

+ (double)getHostClockFrequency
{
  if (getHostClockFrequency_onceToken != -1)
  {
    dispatch_once(&getHostClockFrequency_onceToken, &__block_literal_global_7286);
  }

  return *&getHostClockFrequency_frequency;
}

double __37__CSFTimeUtils_getHostClockFrequency__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  if (info.numer)
  {
    LODWORD(result) = info.denom;
    result = *&result / info.numer * 1000000000.0;
    getHostClockFrequency_frequency = *&result;
  }

  return result;
}

+ (double)hostTimeToTimeInterval:(unint64_t)interval
{
  intervalCopy = interval;
  +[CSFTimeUtils getHostClockFrequency];
  return intervalCopy / v4;
}

+ (float)hostTimeToSeconds:(unint64_t)seconds
{
  secondsCopy = seconds;
  +[CSFTimeUtils getHostClockFrequency];
  return secondsCopy / v4;
}

+ (unint64_t)secondsToHostTime:(float)time
{
  timeCopy = time;
  +[CSFTimeUtils getHostClockFrequency];
  return (v4 * timeCopy);
}

@end