@interface GAXPathInterpolator
- (CGPoint)_pointFromStartingPointAtDistance:(double)distance inPath:(id)path;
- (GAXPathInterpolator)init;
- (GAXPathInterpolator)initWithStartingPath:(id)path endingPath:(id)endingPath;
- (id)_enhancedByAddingPointsMatchingPath:(id)path originalPath:(id)originalPath;
- (id)interpolatedPathForProgress:(float)progress;
- (void)dealloc;
- (void)setInterpolationPathElementMappings:(void *)mappings;
@end

@implementation GAXPathInterpolator

- (GAXPathInterpolator)init
{
  v4.receiver = self;
  v4.super_class = GAXPathInterpolator;
  v2 = [(GAXPathInterpolator *)&v4 init];
  if (v2)
  {
  }

  return 0;
}

- (GAXPathInterpolator)initWithStartingPath:(id)path endingPath:(id)endingPath
{
  pathCopy = path;
  endingPathCopy = endingPath;
  v14.receiver = self;
  v14.super_class = GAXPathInterpolator;
  v8 = [(GAXPathInterpolator *)&v14 init];
  if (v8)
  {
    v9 = v8;
    [(GAXPathInterpolator *)v8 setStartingPath:pathCopy];
    [(GAXPathInterpolator *)v9 setEndingPath:endingPathCopy];
    v10 = AXCArrayCreate();
    [(GAXPathInterpolator *)v9 setInterpolationPathElementMappings:v10];
    if (([pathCopy isEmpty] & 1) == 0 && (v12 = objc_msgSend(endingPathCopy, "isEmpty"), v10) && !v12 || (v9, v9 = 0, v11 = 0, v10))
    {
      CFRelease(v10);
      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  [(GAXPathInterpolator *)self setInterpolationPathElementMappings:0];
  v3.receiver = self;
  v3.super_class = GAXPathInterpolator;
  [(GAXPathInterpolator *)&v3 dealloc];
}

- (void)setInterpolationPathElementMappings:(void *)mappings
{
  interpolationPathElementMappings = self->_interpolationPathElementMappings;
  if (interpolationPathElementMappings != mappings)
  {
    if (interpolationPathElementMappings)
    {
      CFRelease(interpolationPathElementMappings);
    }

    if (mappings)
    {
      v6 = CFRetain(mappings);
    }

    else
    {
      v6 = 0;
    }

    self->_interpolationPathElementMappings = v6;
  }
}

- (CGPoint)_pointFromStartingPointAtDistance:(double)distance inPath:(id)path
{
  pathCopy = path;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = &unk_545BF;
  v18 = CGPointZero;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3010000000;
  v12[3] = &unk_545BF;
  v13 = v18;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_194B8;
  v10[3] = &unk_5D6E8;
  *&v10[7] = distance;
  v10[4] = v11;
  v10[5] = &v14;
  v10[6] = v12;
  [pathCopy enumerateLinePointsContextsUsingBlock:v10];
  v6 = v15[4];
  v7 = v15[5];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_enhancedByAddingPointsMatchingPath:(id)path originalPath:(id)originalPath
{
  pathCopy = path;
  originalPathCopy = originalPath;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x5010000000;
  v16[3] = &unk_545BF;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_196A8;
  v12[3] = &unk_5D738;
  v7 = objc_opt_new();
  v13 = v7;
  v15 = v16;
  v8 = pathCopy;
  v14 = v8;
  [originalPathCopy enumerateLinePointsContextsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  _Block_object_dispose(v16, 8);

  return v10;
}

- (id)interpolatedPathForProgress:(float)progress
{
  startingPath = [(GAXPathInterpolator *)self startingPath];
  endingPath = [(GAXPathInterpolator *)self endingPath];
  context = objc_autoreleasePoolPush();
  interpolationPathElementMappings = [(GAXPathInterpolator *)self interpolationPathElementMappings];
  Count = AXCArrayGetCount();
  if (Count)
  {
    v9 = Count;
    v52 = endingPath;
  }

  else
  {
    v10 = [endingPath equivalentPathForDirection:{objc_msgSend(startingPath, "direction")}];

    v11 = [(GAXPathInterpolator *)self _enhancedByAddingPointsMatchingPath:v10 originalPath:startingPath];
    v12 = [(GAXPathInterpolator *)self _enhancedByAddingPointsMatchingPath:startingPath originalPath:v10];
    v13 = v11;

    v14 = v12;
    v68 = 0;
    v69 = &v68;
    v70 = 0x5010000000;
    v71 = &unk_545BF;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 1;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_19DAC;
    v63[3] = &unk_5D760;
    v63[4] = &v68;
    v63[5] = &v64;
    [v13 enumerateLinePointsContextsUsingBlock:v63];
    v15 = v14;
    if ((v65[3] & 1) == 0)
    {
      [v13 boundsCenter];
      v17 = v16;
      v19 = v18;
      boundsCenter = [v14 boundsCenter];
      v22 = v21;
      v24 = v23;
      GAX_CGPointGetAngleFormedBySegmentToPoint(boundsCenter, v17, v19, v69[4]);
      *(v69 + 7) = v25;
      v26 = AXCArrayCreate();
      v27 = v26;
      v15 = v14;
      if (v26)
      {
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_19DDC;
        v62[3] = &unk_5D788;
        v62[4] = &v68;
        v62[5] = v22;
        v62[6] = v24;
        v62[7] = v26;
        [v14 enumerateLineSegmentContextsUsingBlock:v62];
        v28 = AXCArrayGetCount();
        v15 = v14;
        if (v28)
        {
          v51 = v13;
          v53 = v14;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 1.79769313e308;
          do
          {
            if (v30 >= AXCArrayGetCount())
            {
              v49 = AXCArrayGetCount();
              v50 = v30;
              v48 = v27;
              _AXAssert();
            }

            UnderlyingArray = _AXCArrayGetUnderlyingArray();
            v34 = *(UnderlyingArray + v29 + 32);
            GAX_CGPointGetMiddleOfSegmentToPoint(*(UnderlyingArray + v29), *(UnderlyingArray + v29 + 8), *(UnderlyingArray + v29 + 48));
            AX_CGPointGetDistanceToPoint();
            if (v35 < v32)
            {
              v31 = v34;
              v32 = v35;
            }

            ++v30;
            v29 += 120;
          }

          while (v28 != v30);
          v36 = v32 >= 1.79769313e308 || v31 == 0;
          v13 = v51;
          v14 = v53;
          v15 = v53;
          if (!v36)
          {
            v15 = [v53 equivalentPathStartingWithElementAtIndex:v31];
          }
        }

        CFRelease(v27);
      }
    }

    [v13 length];
    v38 = v37;
    [v15 length];
    v40 = v39;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_19ED4;
    v55[3] = &unk_5D7B0;
    startingPath = v13;
    v56 = startingPath;
    selfCopy = self;
    v59 = v38;
    v60 = v40;
    v41 = v15;
    v58 = v41;
    v61 = interpolationPathElementMappings;
    [startingPath enumerateElementsUsingBlock:v55];
    v9 = AXCArrayGetCount();
    v52 = v41;

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v68, 8);
  }

  v42 = objc_opt_new();
  if (v9)
  {
    v43 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (i >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        _AXAssert();
      }

      v45 = _AXCArrayGetUnderlyingArray();
      v46 = *(v45 + v43);
      if (v46 > 1)
      {
        if (v46 == 4)
        {
          [v42 closePath];
        }
      }

      else
      {
        [v42 appendElementOfType:v46 withSinglePoint:{GAX_CGPointGetInterpolatedPointInSegmentToPoint(*(v45 + v43 + 8), *(v45 + v43 + 16), *(v45 + v43 + 24), *(v45 + v43 + 32), progress)}];
      }

      v43 += 40;
    }
  }

  objc_autoreleasePoolPop(context);

  return v42;
}

@end