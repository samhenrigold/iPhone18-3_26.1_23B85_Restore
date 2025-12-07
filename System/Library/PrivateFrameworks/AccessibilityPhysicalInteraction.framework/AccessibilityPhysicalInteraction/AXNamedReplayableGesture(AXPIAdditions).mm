@interface AXNamedReplayableGesture(AXPIAdditions)
+ (id)_pinchGestureWithCenter:()AXPIAdditions bounds:radiusDelta:angleDelta:startingWidth:;
+ (id)_tapGestureAtPoint:()AXPIAdditions isDoubleTap:numberOfFingers:force:;
+ (id)flickGestureStartingAtPoint:()AXPIAdditions endingAtPoint:numberOfFingers:;
+ (id)forceTouchGestureAtPoint:()AXPIAdditions;
+ (id)holdGestureAtPoint:()AXPIAdditions withDuration:numberOfFingers:;
+ (id)lineGestureBetweenPoints:()AXPIAdditions duration:numberOfFingers:initialHoldDuration:;
+ (id)scrollGestureFromPoint:()AXPIAdditions toPoint:duration:;
+ (uint64_t)flickGestureAtPoint:()AXPIAdditions angle:numberOfFingers:;
+ (void)_addAllFingerPointsForPoint:()AXPIAdditions numberOfFingers:toReplayableGesture:atTime:;
+ (void)_addFingerPoints:()AXPIAdditions toReplayableGesture:atTime:;
@end

@implementation AXNamedReplayableGesture(AXPIAdditions)

+ (id)_tapGestureAtPoint:()AXPIAdditions isDoubleTap:numberOfFingers:force:
{
  v9 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:a7 aroundPoint:a2, a3];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__AXNamedReplayableGesture_AXPIAdditions___tapGestureAtPoint_isDoubleTap_numberOfFingers_force___block_invoke;
  v16[3] = &unk_278BE6700;
  v12 = dictionary;
  v17 = v12;
  v13 = dictionary2;
  v18 = v13;
  v19 = a4;
  [v9 enumerateObjectsUsingBlock:v16];
  v14 = objc_alloc_init(objc_opt_class());
  [v14 addPointsByFingerIdentifier:v12 forces:v13 atTime:0.0];
  [v14 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:0.1];
  if (a6)
  {
    [v14 addPointsByFingerIdentifier:v12 forces:v13 atTime:0.15];
    [v14 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:0.25];
  }

  return v14;
}

+ (id)holdGestureAtPoint:()AXPIAdditions withDuration:numberOfFingers:
{
  v5 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:a2 aroundPoint:a3];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __91__AXNamedReplayableGesture_AXPIAdditions__holdGestureAtPoint_withDuration_numberOfFingers___block_invoke;
  v15 = &unk_278BE6728;
  v16 = dictionary;
  v17 = dictionary2;
  v8 = dictionary2;
  v9 = dictionary;
  [v5 enumerateObjectsUsingBlock:&v12];
  v10 = objc_alloc_init(objc_opt_class());
  [v10 addPointsByFingerIdentifier:v9 forces:v8 atTime:{0.0, v12, v13, v14, v15}];
  [v10 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:a4];

  return v10;
}

+ (uint64_t)flickGestureAtPoint:()AXPIAdditions angle:numberOfFingers:
{
  v10 = __sincos_stret(a4);

  return [self flickGestureStartingAtPoint:a6 endingAtPoint:a2 numberOfFingers:{a3, a2 + v10.__cosval * 100.0, a3 + v10.__sinval * 100.0}];
}

+ (id)flickGestureStartingAtPoint:()AXPIAdditions endingAtPoint:numberOfFingers:
{
  v16[2] = *MEMORY[0x277D85DE8];
  v11 = NSStringFromCGPoint(*&a2);
  v16[0] = v11;
  v18.x = a4;
  v18.y = a5;
  v12 = NSStringFromCGPoint(v18);
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [self lineGestureBetweenPoints:v13 duration:a7 numberOfFingers:0.1];

  return v14;
}

+ (id)lineGestureBetweenPoints:()AXPIAdditions duration:numberOfFingers:initialHoldDuration:
{
  v8 = a5;
  v9 = [v8 count];
  v10 = 0.0;
  if (v9 >= 2)
  {
    for (i = 1; i != v9; ++i)
    {
      v12 = [v8 objectAtIndex:i - 1];
      CGPointFromString(v12);

      v13 = [v8 objectAtIndex:i];
      CGPointFromString(v13);

      AX_CGPointGetDistanceToPoint();
      v10 = v10 + v14;
    }
  }

  v15 = ceil(v10 / 20.0);
  if (vcvtpd_u64_f64(v10 / 20.0) && a2 / v15 > 0.05)
  {
    v15 = ceil(a2 / 0.05);
  }

  v16 = objc_alloc_init(objc_opt_class());
  if (v9 >= 2)
  {
    v17 = 1;
    v18 = 0.0;
    v35 = v10 / v15;
    v36 = v10;
    do
    {
      v40 = v18;
      v19 = a3;
      if (v17 != 1)
      {
        v19 = 0.0;
      }

      v39 = v19;
      v20 = [v8 objectAtIndex:{v17 - 1, *&v35}];
      v21 = CGPointFromString(v20);

      v22 = [v8 objectAtIndex:v17];
      CGPointFromString(v22);

      AX_CGPointGetDistanceToPoint();
      v24 = vcvtpd_u64_f64(v23 / v35);
      v25 = v23 / v10 * a2;
      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          AX_CGPointGetOffsetAlongVectorWithDistance();
          v28 = v21.x + v27;
          v30 = v21.y + v29;
          v31 = v40 + j / v24 * v25;
          if (j)
          {
            v31 = v39 + v31;
          }

          [self _addAllFingerPointsForPoint:a6 numberOfFingers:v16 toReplayableGesture:v28 atTime:{v30, v31}];
        }
      }

      v18 = v40 + v39 + v25;
      ++v17;
      v10 = v36;
    }

    while (v17 != v9);
  }

  lastObject = [v8 lastObject];
  v33 = CGPointFromString(lastObject);

  [self _addAllFingerPointsForPoint:a6 numberOfFingers:v16 toReplayableGesture:v33.x atTime:{v33.y, a2 + a3}];

  return v16;
}

+ (id)scrollGestureFromPoint:()AXPIAdditions toPoint:duration:
{
  v11 = a2 < a4;
  if (a3 != a5)
  {
    v11 = a3 < a5;
  }

  v12 = -0.5;
  if (v11)
  {
    v13 = 0.5;
  }

  else
  {
    v13 = -0.5;
  }

  if (!v11)
  {
    v12 = 0.5;
  }

  v14 = a3 == a5;
  if (a3 == a5)
  {
    v15 = a4;
  }

  else
  {
    v15 = a5;
  }

  v16 = v15 + v13;
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = a4 + 1.0;
  }

  if (v14)
  {
    v18 = a5 + 1.0;
  }

  else
  {
    v18 = v16;
  }

  v19 = v15 + v12;
  if (v14)
  {
    v20 = v19;
  }

  else
  {
    v20 = a4 + -1.0;
  }

  if (v14)
  {
    v21 = a5 + -1.0;
  }

  else
  {
    v21 = v19;
  }

  array = [MEMORY[0x277CBEB18] array];
  v32.x = a2;
  v32.y = a3;
  v23 = NSStringFromPoint(v32);
  [array addObject:v23];

  v33.x = v17;
  v33.y = v18;
  v24 = NSStringFromPoint(v33);
  [array addObject:v24];

  v34.x = v20;
  v34.y = v21;
  v25 = NSStringFromPoint(v34);
  [array addObject:v25];

  v35.x = a4;
  v35.y = a5;
  v26 = NSStringFromPoint(v35);
  [array addObject:v26];

  v36.x = a4;
  v36.y = a5;
  v27 = NSStringFromPoint(v36);
  [array addObject:v27];

  v28 = [self lineGestureBetweenPoints:array duration:a6];

  return v28;
}

+ (id)forceTouchGestureAtPoint:()AXPIAdditions
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(objc_opt_class());
  AXForceTouchThreshold();
  v7 = v6;
  v19 = &unk_284FC7880;
  v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a2, a3}];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v10 = MEMORY[0x277CE7BE8];
  v11 = *MEMORY[0x277CE7BE8];
  if (*MEMORY[0x277CE7BE8] > 0.0)
  {
    v12 = 0.0;
    v13 = MEMORY[0x277CE7BF0];
    do
    {
      v17 = &unk_284FC7880;
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7 * v12 / v11];
      v18 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

      [v5 addPointsByFingerIdentifier:v9 forces:v15 atTime:v12];
      v12 = v12 + *v13;
      v11 = *v10;
    }

    while (v12 < *v10);
  }

  [v5 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:v11];

  return v5;
}

+ (id)_pinchGestureWithCenter:()AXPIAdditions bounds:radiusDelta:angleDelta:startingWidth:
{
  v67[2] = *MEMORY[0x277D85DE8];
  v14 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:"defaultPinchLocationsAroundPoint:withinBounds:" withinBounds:?];
  v64.x = 0.0;
  v64.y = 0.0;
  firstObject = [v14 firstObject];
  v16 = CGPointFromString(firstObject);

  v63.x = 0.0;
  v63.y = 0.0;
  lastObject = [v14 lastObject];
  v18 = CGPointFromString(lastObject);

  if (a10 == 0.0)
  {
    AX_CGPointGetMidpointToPoint();
    v20 = v19;
    v22 = v21;
    AX_CGPointGetDistanceToPoint();
    v24 = v23;
    v71.origin.x = a4;
    v71.origin.y = a5;
    v71.size.width = a6;
    v71.size.height = a7;
    v25 = fmax(v20, v24 + CGRectGetMinX(v71));
    v72.origin.x = a4;
    v72.origin.y = a5;
    v72.size.width = a6;
    v72.size.height = a7;
    v56 = fmin(v25, CGRectGetMaxX(v72) - v24);
    v73.origin.x = a4;
    v73.origin.y = a5;
    v73.size.width = a6;
    v73.size.height = a7;
    v26 = fmax(v22, v24 + CGRectGetMinY(v73));
    v74.origin.x = a4;
    v74.origin.y = a5;
    v74.size.width = a6;
    v74.size.height = a7;
    v27 = fmin(v26, CGRectGetMaxY(v74) - v24);
    v28 = v16.x + v56 - v20;
    v29 = v27 - v22;
    v30 = v16.y + v29;
    v64.x = v28;
    v64.y = v16.y + v29;
    v31 = v56 - v20 + v18.x;
    v32 = v29 + v18.y;
    v63.x = v31;
    v63.y = v29 + v18.y;
    v33 = a8;
  }

  else
  {
    v28 = a2 - a10 * 0.5;
    v64.x = v28;
    v64.y = a3;
    v31 = a2 + a10 * 0.5;
    v63.x = v31;
    v63.y = a3;
    v57 = a3;
    v33 = a8;
    v34 = fmax(a8, 0.0);
    v75.origin.x = a4;
    v75.origin.y = a5;
    v75.size.width = a6;
    v75.size.height = a7;
    if (v28 - v34 < CGRectGetMinX(v75))
    {
      v76.origin.x = a4;
      v76.origin.y = a5;
      v76.size.width = a6;
      v76.size.height = a7;
      v35 = CGRectGetMinX(v76) - (v28 - v34);
      v28 = v28 + v35;
      v64.x = v28;
      v31 = v35 + v31;
      v63.x = v31;
    }

    v77.origin.x = a4;
    v77.origin.y = a5;
    v77.size.width = a6;
    v77.size.height = a7;
    if (v34 + v31 > CGRectGetMaxX(v77))
    {
      v78.origin.x = a4;
      v78.origin.y = a5;
      v78.size.width = a6;
      v78.size.height = a7;
      v36 = CGRectGetMaxX(v78) - (v34 + v31);
      v28 = v28 + v36;
      v64.x = v28;
      v31 = v36 + v31;
      v63.x = v31;
    }

    v32 = v57;
    v30 = v57;
  }

  objc_opt_class();
  v37 = objc_opt_new();
  v69.x = v28;
  v69.y = v30;
  v38 = NSStringFromCGPoint(v69);
  v67[0] = v38;
  v70.x = v31;
  v70.y = v32;
  v39 = NSStringFromCGPoint(v70);
  v67[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  [self _addFingerPoints:v40 toReplayableGesture:v37 atTime:0.0];

  v41 = -5.0;
  if (v33 >= 0.0)
  {
    v41 = 0.0;
  }

  if (v33 > 0.0)
  {
    v41 = 5.0;
  }

  v42 = -0.0872664626;
  if (a9 >= 0.0)
  {
    v42 = 0.0;
  }

  if (a9 > 0.0)
  {
    v42 = 0.0872664626;
  }

  v43 = (v33 - v41) / 18.0;
  v44 = v41 / 6.0;
  v45 = (a9 - v42) / 18.0;
  v46 = 1;
  v47 = v42 / 6.0;
  do
  {
    [AXPIFingerUtilities updateFirstLocation:&v64 secondLocation:&v63 forPinchWithRadiusDelta:v43 angleDelta:v45, *&v56];
    v48 = NSStringFromCGPoint(v64);
    v66[0] = v48;
    v49 = NSStringFromCGPoint(v63);
    v66[1] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    [self _addFingerPoints:v50 toReplayableGesture:v37 atTime:v46 * 0.0166666667];

    if (v46 == 18)
    {
      for (i = 19; i != 25; ++i)
      {
        [AXPIFingerUtilities updateFirstLocation:&v64 secondLocation:&v63 forPinchWithRadiusDelta:v44 angleDelta:v47];
        v52 = NSStringFromCGPoint(v64);
        v65[0] = v52;
        v53 = NSStringFromCGPoint(v63);
        v65[1] = v53;
        v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
        [self _addFingerPoints:v54 toReplayableGesture:v37 atTime:i * 0.0166666667];
      }
    }

    ++v46;
  }

  while (v46 != 19);

  return v37;
}

+ (void)_addAllFingerPointsForPoint:()AXPIAdditions numberOfFingers:toReplayableGesture:atTime:
{
  v12 = a7;
  v13 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:a6 aroundPoint:a2, a3];
  [self _addFingerPoints:v13 toReplayableGesture:v12 atTime:a4];
}

+ (void)_addFingerPoints:()AXPIAdditions toReplayableGesture:atTime:
{
  v17 = a4;
  v7 = a5;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [v17 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [v17 objectAtIndex:i];
      v13 = MEMORY[0x277CCAE60];
      v14 = CGPointFromString(v12);
      v15 = [v13 valueWithCGPoint:{v14.x, v14.y}];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [dictionary setObject:v15 forKeyedSubscript:v16];
    }
  }

  [v7 addPointsByFingerIdentifier:dictionary forces:MEMORY[0x277CBEC10] atTime:self];
}

@end