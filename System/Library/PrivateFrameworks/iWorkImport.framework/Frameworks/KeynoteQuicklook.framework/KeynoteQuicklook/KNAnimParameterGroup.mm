@interface KNAnimParameterGroup
+ (id)easeInEaseOutPath;
+ (id)easeInPath;
+ (id)easeOutPath;
+ (id)linearPath;
+ (id)mediaTimingFunctionForPath:(id)path reversed:(BOOL)reversed;
+ (id)parameterGroupForName:(id)name;
+ (void)p_loadAllParametersIfNecessary;
- (BOOL)BOOLForKey:(id)key;
- (KNAnimParameterGroup)initWithFileName:(id)name;
- (double)doubleForAnimationCurve:(id)curve atPercent:(double)percent;
- (double)doubleForKey:(id)key;
- (id)mediaTimingFunctionForAnimationCurve:(id)curve reversed:(BOOL)reversed;
- (id)pathForAnimationCurve:(id)curve;
- (void)p_loadParameters;
@end

@implementation KNAnimParameterGroup

+ (id)parameterGroupForName:(id)name
{
  nameCopy = name;
  if (qword_280A3C090 != -1)
  {
    sub_275E5B55C();
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_275DC2384;
  v22 = sub_275DC2394;
  v23 = 0;
  if (!nameCopy)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimParameterGroup parameterGroupForName:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:56 isFatal:0 description:{"invalid nil value for '%{public}s'", "name"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v7 = qword_280A3C098;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275DC239C;
  block[3] = &unk_27A698618;
  v17 = &v18;
  v8 = nameCopy;
  v16 = v8;
  dispatch_sync(v7, block);
  v9 = v19[5];
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimParameterGroup parameterGroupForName:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:93 isFatal:0 description:{"Unable to find parameterGroup for name %@", v8}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    v9 = v19[5];
  }

  v13 = v9;

  _Block_object_dispose(&v18, 8);

  return v13;
}

+ (void)p_loadAllParametersIfNecessary
{
  if (!+[KNAnimationTools isAnimationEditorConnected])
  {
    v2 = qword_280A3C098;

    dispatch_sync(v2, &unk_2884D50F0);
  }
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  savedGroup = [(KNAnimParameterGroup *)self savedGroup];
  v6 = [savedGroup parameterForName:keyCopy];

  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup doubleForKey:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:134 isFatal:0 description:{"Name does not exist for parameter '%@'", keyCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([v6 type] != 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup doubleForKey:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:135 isFatal:0 description:{"Trying to access the constant from the wrong type of parameter '%@'", keyCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [v6 doubleValue];
  v14 = v13;

  return v14;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  savedGroup = [(KNAnimParameterGroup *)self savedGroup];
  v6 = [savedGroup parameterForName:keyCopy];

  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup BOOLForKey:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:144 isFatal:0 description:{"Name does not exist for parameter '%@'", keyCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([v6 type] != 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup BOOLForKey:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:145 isFatal:0 description:{"Trying to access the BOOL from the wrong type of parameter '%@'", keyCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [v6 doubleValue];
  v14 = v13 > 0.0;

  return v14;
}

- (double)doubleForAnimationCurve:(id)curve atPercent:(double)percent
{
  v5 = [(KNAnimParameterGroup *)self pathForAnimationCurve:curve];
  if (percent < 0.0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup doubleForAnimationCurve:atPercent:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:152 isFatal:0 description:"percent less than 0"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (percent > 1.0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup doubleForAnimationCurve:atPercent:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:153 isFatal:0 description:"percent greater than 1"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [v5 yValueFromXValue:percent];
  TSUClamp();
  v13 = v12;

  return v13;
}

- (id)pathForAnimationCurve:(id)curve
{
  curveCopy = curve;
  savedGroup = [(KNAnimParameterGroup *)self savedGroup];
  v6 = [savedGroup parameterForName:curveCopy];

  pathValue = [v6 pathValue];
  if (!v6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup pathForAnimationCurve:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    name = [(KNAnimParameterGroup *)self name];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:164 isFatal:0 description:{"Name does not exist for parameter: %@(%@)", name, curveCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([v6 type] != 11 && objc_msgSend(v6, "type") != 10)
  {
    v12 = MEMORY[0x277D81150];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup pathForAnimationCurve:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    name2 = [(KNAnimParameterGroup *)self name];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:165 isFatal:0 description:{"Trying to access a bezier path from the wrong type of parameter: %@(%@)", name2, curveCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (!pathValue)
  {
    v16 = MEMORY[0x277D81150];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup pathForAnimationCurve:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    name3 = [(KNAnimParameterGroup *)self name];
    [v16 handleFailureInFunction:v17 file:v18 lineNumber:166 isFatal:0 description:{"Bezier path is nil for parameter: %@(%@)", name3, curveCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return pathValue;
}

- (id)mediaTimingFunctionForAnimationCurve:(id)curve reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  curveCopy = curve;
  savedGroup = [(KNAnimParameterGroup *)self savedGroup];
  v8 = [savedGroup parameterForName:curveCopy];

  if (!v8 || [v8 type] != 10)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup mediaTimingFunctionForAnimationCurve:reversed:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    name = [(KNAnimParameterGroup *)self name];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:180 isFatal:0 description:{"Trying to access media timing function from a parameter that is not a simple path for parameter: %@(%@)", name, curveCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v13 = [(KNAnimParameterGroup *)self pathForAnimationCurve:curveCopy];
  v14 = [KNAnimParameterGroup mediaTimingFunctionForPath:v13 reversed:reversedCopy];

  return v14;
}

+ (id)mediaTimingFunctionForPath:(id)path reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v25 = *MEMORY[0x277CBF348];
  if ([pathCopy elementCount] < 2)
  {
    v24 = v25;
  }

  else
  {
    v7 = 1;
    v6.i64[0] = 2;
    v23 = v6;
    v24 = v25;
    do
    {
      v8.i64[0] = [pathCopy elementAtIndex:v7 associatedPoints:{v26, *&v23}];
      v9 = vdupq_lane_s64(vceqq_s64(v8, v23).i64[0], 0);
      v24 = vbslq_s8(v9, v26[1], v24);
      v25 = vbslq_s8(v9, v26[0], v25);
      ++v7;
    }

    while (v7 < [pathCopy elementCount]);
  }

  __asm { FMOV            V0.2D, #1.0 }

  v15 = vsubq_f64(_Q0, v24);
  v16 = vsubq_f64(_Q0, v25);
  if (reversedCopy)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vdupq_n_s64(v17);
  v19 = vbslq_s8(v18, v16, v24);
  v20 = vbslq_s8(v18, v15, v25);
  *v16.i32 = *v20.i64;
  v20.i32[1] = v20.i32[3];
  *v20.i32 = *&v20.i64[1];
  *v18.i32 = *v19.i64;
  v19.i32[1] = v19.i32[3];
  *v19.i32 = *&v19.i64[1];
  v21 = [MEMORY[0x277CD9EF8] functionWithControlPoints:*v16.i64 :*v20.i64 :*v18.i64 :*v19.i64];

  return v21;
}

+ (id)linearPath
{
  bezierPath = [MEMORY[0x277D81160] bezierPath];
  [bezierPath moveToPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [bezierPath curveToPoint:1.0 controlPoint1:1.0 controlPoint2:{0.25, 0.25, 0.75, 0.75}];

  return bezierPath;
}

+ (id)easeInEaseOutPath
{
  bezierPath = [MEMORY[0x277D81160] bezierPath];
  [bezierPath moveToPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [bezierPath curveToPoint:1.0 controlPoint1:1.0 controlPoint2:{0.25, 0.1, 0.75, 0.9}];

  return bezierPath;
}

+ (id)easeInPath
{
  bezierPath = [MEMORY[0x277D81160] bezierPath];
  [bezierPath moveToPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [bezierPath curveToPoint:1.0 controlPoint1:1.0 controlPoint2:{0.25, 0.1, 1.0, 1.0}];

  return bezierPath;
}

+ (id)easeOutPath
{
  bezierPath = [MEMORY[0x277D81160] bezierPath];
  [bezierPath moveToPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [bezierPath curveToPoint:1.0 controlPoint1:1.0 controlPoint2:{0.0, 0.0, 0.75, 0.9}];

  return bezierPath;
}

- (KNAnimParameterGroup)initWithFileName:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = KNAnimParameterGroup;
  v5 = [(KNAnimParameterGroup *)&v16 init];
  if (v5)
  {
    if (!nameCopy)
    {
      v6 = MEMORY[0x277D81150];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup initWithFileName:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:257 isFatal:0 description:"Nil file path to animation parameters."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v9 = [nameCopy copy];
    fileName = v5->_fileName;
    v5->_fileName = v9;

    lastPathComponent = [nameCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v13 = [stringByDeletingPathExtension copy];
    name = v5->_name;
    v5->_name = v13;

    [(KNAnimParameterGroup *)v5 p_loadParameters];
  }

  return v5;
}

- (void)p_loadParameters
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  fileName = [(KNAnimParameterGroup *)self fileName];
  v4 = MEMORY[0x277CCAAC8];
  v5 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v6 = [v4 tsu_securelyUnarchiveObjectWithFile:fileName ofClasses:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  if (+[KNAnimationTools isAnimationEditorConnected])
  {
    v7 = NSHomeDirectory();
    v8 = [v7 stringByAppendingPathComponent:@"Animation Editor"];

    fileName2 = [(KNAnimParameterGroup *)self fileName];
    lastPathComponent = [fileName2 lastPathComponent];
    v11 = [v8 stringByAppendingPathComponent:lastPathComponent];

    if ([defaultManager fileExistsAtPath:v11 isDirectory:0])
    {
      v12 = MEMORY[0x277CCAAC8];
      v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v14 = [v12 tsu_securelyUnarchiveObjectWithFile:v11 ofClasses:v13];

      if (v14)
      {
        [(KNAnimParameterGroup *)self setSavedGroup:v14];
      }
    }
  }

  savedGroup = [(KNAnimParameterGroup *)self savedGroup];

  if (!savedGroup)
  {
    [(KNAnimParameterGroup *)self setSavedGroup:v6];
  }

  savedGroup2 = [(KNAnimParameterGroup *)self savedGroup];

  if (!savedGroup2)
  {
    v17 = MEMORY[0x277D81150];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimParameterGroup p_loadParameters]"];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimParameterGroup.m"];
    name = [(KNAnimParameterGroup *)self name];
    [v17 handleFailureInFunction:v18 file:v19 lineNumber:304 isFatal:0 description:{"No Parameter Group Loaded for Parameter: %@", name}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

@end