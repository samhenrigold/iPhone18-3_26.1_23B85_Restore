@interface HTDisplayParser
+ ($2825F4736939C4A6D3AD43837233062D)displayStateBeforeOrAtTime:(unint64_t)time timestamps:(id)timestamps states:(id)states;
+ (DisplayStateChangeEvent)displayStateBeforeHangStartTimestamp:(unint64_t)timestamp displayTimestamps:(id)timestamps displayStates:(id)states;
+ (id)displayEventStatesFromDisplayInfo:(id)info;
+ (id)displayEventTimestampsFromDisplayInfo:(id)info;
+ (id)displayInfoForSpindump:(id)spindump startAbsoluteTime:(unint64_t)time endAbsoluteTime:(unint64_t)absoluteTime;
+ (id)displayOnIntervalsForDisplayTimestamps:(id)timestamps displayStates:(id)states startTimestamp:(unint64_t)timestamp endTimestamp:(unint64_t)endTimestamp startState:(id *)state endState:(id *)endState;
@end

@implementation HTDisplayParser

+ (id)displayEventTimestampsFromDisplayInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [infoCopy count];
  if (v5)
  {
    v7 = 0;
    *&v6 = 134217984;
    v14 = v6;
    do
    {
      v8 = sub_100001684(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = [infoCopy objectAtIndexedSubscript:v7];
        unsignedLongLongValue = [v10 unsignedLongLongValue];
        *buf = v14;
        v16 = unsignedLongLongValue;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "display event timestamp: %llu", buf, 0xCu);
      }

      v9 = [infoCopy objectAtIndexedSubscript:v7];
      [v4 addObject:v9];

      v7 += 2;
      v5 = [infoCopy count];
    }

    while (v5 > v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ (id)displayEventStatesFromDisplayInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [infoCopy count];
  if (v5)
  {
    v7 = 1;
    *&v6 = 134217984;
    v14 = v6;
    do
    {
      v8 = sub_100001684(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = [infoCopy objectAtIndexedSubscript:v7];
        unsignedLongLongValue = [v10 unsignedLongLongValue];
        *buf = v14;
        v16 = unsignedLongLongValue;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "display event state: %llu", buf, 0xCu);
      }

      v9 = [infoCopy objectAtIndexedSubscript:v7];
      [v4 addObject:v9];

      v7 += 2;
      v5 = [infoCopy count];
    }

    while (v5 >= v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ ($2825F4736939C4A6D3AD43837233062D)displayStateBeforeOrAtTime:(unint64_t)time timestamps:(id)timestamps states:(id)states
{
  timestampsCopy = timestamps;
  statesCopy = states;
  if ([timestampsCopy count])
  {
    v9 = 0;
    LODWORD(v10) = -1;
    LODWORD(v11) = -1;
    do
    {
      v12 = [timestampsCopy objectAtIndexedSubscript:v9];
      unsignedLongLongValue = [v12 unsignedLongLongValue];

      v14 = [statesCopy objectAtIndexedSubscript:v9];
      intValue = [v14 intValue];

      if (unsignedLongLongValue <= time)
      {
        v11 = v9;
      }

      else
      {
        v11 = v11;
      }

      if (unsignedLongLongValue <= time)
      {
        v10 = intValue;
      }

      else
      {
        v10 = v10;
      }

      ++v9;
    }

    while ([timestampsCopy count] > v9);
    v16 = v10 << 32;
  }

  else
  {
    v16 = 0xFFFFFFFF00000000;
    v11 = 0xFFFFFFFFLL;
  }

  return (v16 | v11);
}

+ (DisplayStateChangeEvent)displayStateBeforeHangStartTimestamp:(unint64_t)timestamp displayTimestamps:(id)timestamps displayStates:(id)states
{
  timestampsCopy = timestamps;
  statesCopy = states;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = &unk_100079A3F;
  v18 = xmmword_100045320;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000147B8;
  v13[3] = &unk_100085628;
  v13[4] = &v14;
  v13[5] = timestamp;
  [timestampsCopy enumerateObjectsWithOptions:2 usingBlock:v13];
  v9 = v15[4];
  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  v11 = v9;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

+ (id)displayOnIntervalsForDisplayTimestamps:(id)timestamps displayStates:(id)states startTimestamp:(unint64_t)timestamp endTimestamp:(unint64_t)endTimestamp startState:(id *)state endState:(id *)endState
{
  timestampsCopy = timestamps;
  statesCopy = states;
  *state = [HTDisplayParser displayStateBeforeOrAtTime:timestamp timestamps:timestampsCopy states:statesCopy];
  v15 = [HTDisplayParser displayStateBeforeOrAtTime:endTimestamp timestamps:timestampsCopy states:statesCopy];
  *endState = v15;
  v16 = sub_100001684(*&v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F454();
  }

  v18 = sub_100001684(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F4CC();
  }

  if (state->var0 == -1)
  {
    v20 = sub_100001684(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F544(v20);
    }

    state->var0 = 0;
  }

  v38 = timestampsCopy;
  v21 = [timestampsCopy mutableCopy];
  v22 = [statesCopy mutableCopy];
  v23 = [NSNumber numberWithUnsignedLongLong:timestamp];
  [v21 setObject:v23 atIndexedSubscript:state->var0];

  v24 = [NSNumber numberWithUnsignedLongLong:endTimestamp];
  [v21 insertObject:v24 atIndex:endState->var0 + 1];

  var1 = endState->var1;
  v26 = &off_10008AA50;
  if (!var1)
  {
    v26 = &off_10008AA38;
  }

  if (var1 == 1)
  {
    v27 = &off_10008AA20;
  }

  else
  {
    v27 = v26;
  }

  [v22 insertObject:v27 atIndex:endState->var0 + 1];
  v28 = +[NSMutableArray array];
  var0 = state->var0;
  if (var0 <= endState->var0)
  {
    do
    {
      v30 = [v22 objectAtIndexedSubscript:var0];
      if ([v30 intValue] == 1)
      {
        v31 = var0 + 1;
        v32 = [v22 objectAtIndexedSubscript:var0 + 1];
        intValue = [v32 intValue];

        if (!intValue)
        {
          v34 = [v21 objectAtIndexedSubscript:var0];
          [v28 addObject:v34];

          v35 = [v21 objectAtIndexedSubscript:var0 + 1];
          [v28 addObject:v35];
        }
      }

      else
      {

        v31 = var0 + 1;
      }

      v36 = var0 < endState->var0;
      var0 = v31;
    }

    while (v36);
  }

  return v28;
}

+ (id)displayInfoForSpindump:(id)spindump startAbsoluteTime:(unint64_t)time endAbsoluteTime:(unint64_t)absoluteTime
{
  v8 = [spindump objectForKeyedSubscript:@"DisplayData"];
  if ([v8 count])
  {
    v49 = -1;
    *buf = -1;
    v9 = [self displayEventTimestampsFromDisplayInfo:v8];
    v10 = [self displayEventStatesFromDisplayInfo:v8];
    v11 = [HTDisplayParser displayStateBeforeHangStartTimestamp:time displayTimestamps:v9 displayStates:v10];
    v12 = [HTDisplayParser displayOnIntervalsForDisplayTimestamps:v9 displayStates:v10 startTimestamp:time endTimestamp:absoluteTime startState:buf endState:&v49];
    v13 = [v12 mutableCopy];
    v15 = sub_10000B548(time, v14);
    v17 = sub_10000B548(absoluteTime, v16);
    if ([v12 count])
    {
      v18 = v17 - v15;
      v19 = [v12 count];
      v20 = 0.0;
      if (v19 != 1)
      {
        v45 = v17 - v15;
        v46 = v11;
        v47 = v10;
        v48 = v9;
        v21 = 0;
        v22 = 0;
        v23 = v15;
        do
        {
          v24 = [v13 objectAtIndexedSubscript:{v21, v20}];
          unsignedLongLongValue = [v24 unsignedLongLongValue];
          v27 = (sub_10000B548(unsignedLongLongValue, v26) - v23);

          v28 = [v13 objectAtIndexedSubscript:v21 + 1];
          unsignedLongLongValue2 = [v28 unsignedLongLongValue];
          v31 = (sub_10000B548(unsignedLongLongValue2, v30) - v23);

          v32 = [NSNumber numberWithUnsignedLongLong:v27];
          [v13 setObject:v32 atIndexedSubscript:v21];

          v33 = [NSNumber numberWithUnsignedLongLong:v31];
          [v13 setObject:v33 atIndexedSubscript:v21 + 1];

          v22 = v22 - v27 + v31;
          v21 += 2;
        }

        while ([v12 count] - 1 > v21);
        *&v20 = v22;
        v10 = v47;
        v9 = v48;
        v18 = v45;
        v11 = v46;
      }

      v34 = *&v20 / v18;
    }

    else
    {
      v34 = 0.0;
    }

    v37 = objc_alloc_init(NSMutableDictionary);
    v38 = [NSNumber numberWithInt:*&buf[4]];
    [v37 setObject:v38 forKeyedSubscript:@"startState"];

    v39 = [NSNumber numberWithInt:HIDWORD(v49)];
    [v37 setObject:v39 forKeyedSubscript:@"endState"];

    [v37 setObject:v13 forKeyedSubscript:@"displayOnIntervals"];
    if (v11)
    {
      v41 = [NSNumber numberWithDouble:sub_10000B590(time - v11, v40)];
      [v37 setObject:v41 forKeyedSubscript:@"secondsSinceDisplayStateBeforeHangStart"];
    }

    else
    {
      [v37 setObject:&off_10008AAA8 forKeyedSubscript:@"secondsSinceDisplayStateBeforeHangStart"];
    }

    *&v42 = v34;
    v43 = [NSNumber numberWithFloat:v42];
    [v37 setObject:v43 forKeyedSubscript:@"displayOnPercent"];

    v51 = @"displayData";
    v52 = v37;
    v36 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  }

  else
  {
    v35 = sub_100001684(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "No display information has been logged. Are you sure you restarted after writing to defaults?", buf, 2u);
    }

    v36 = &__NSDictionary0__struct;
  }

  return v36;
}

@end