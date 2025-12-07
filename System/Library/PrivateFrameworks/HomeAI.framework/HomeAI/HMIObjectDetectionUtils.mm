@interface HMIObjectDetectionUtils
+ (id)convertObjectDetections:(id)detections cropRect:(CGRect)rect originalImageSize:(CGSize)size;
+ (void)nmsMultiClass:(id)class output:(id)output nmsConfiguration:(id)configuration;
+ (void)nonMaximumSuppression:(id)suppression output:(id)output withThreshold:(double)threshold withMetric:(int64_t)metric;
@end

@implementation HMIObjectDetectionUtils

+ (void)nonMaximumSuppression:(id)suppression output:(id)output withThreshold:(double)threshold withMetric:(int64_t)metric
{
  outputCopy = output;
  v9 = [suppression sortedArrayUsingComparator:?];
  v10 = [v9 count];
  Mutable = CFBitVectorCreateMutable(0, v10);
  CFBitVectorSetCount(Mutable, v10);
  CFBitVectorSetAllBits(Mutable, 1u);
  v12 = CFBitVectorCreateMutable(0, v10);
  CFBitVectorSetCount(v12, v10);
  v13 = malloc_type_malloc(32 * v10, 0x1000040E0EAB150uLL);
  v14 = v13;
  if (!v10)
  {
    if (metric != 2)
    {
      v46 = 0;
      v24 = 0;
      goto LABEL_44;
    }

    goto LABEL_7;
  }

  v15 = 0;
  v16 = v13;
  v17 = v13 + 2;
  do
  {
    v18 = [v9 objectAtIndexedSubscript:?];
    [v18 boundingBox];
    *(v17 - 2) = v19;
    *(v17 - 1) = v20;
    *v17 = v21;
    v17[1] = v22;
    v17 += 4;

    ++v15;
  }

  while (v10 != v15);
  v14 = v16;
  if (metric == 2)
  {
LABEL_7:
    v51 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    v23 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
    v24 = v23;
    if (!v10)
    {
      goto LABEL_43;
    }

    v25 = v23;
    for (i = 0; i != v10; ++i)
    {
      v27 = [v9 objectAtIndexedSubscript:?];
      [v27 confidence];
      *&v28 = v28;
      v51[i] = LODWORD(v28);

      v29 = [v9 objectAtIndexedSubscript:?];
      [v29 boundingBox];
      v34 = HMICGRectArea(v30, v31, v32, v33);
      v25[i] = v34;
    }

    v50 = v25;
    goto LABEL_11;
  }

  v50 = 0;
  v51 = 0;
LABEL_11:
  v35 = 0;
  v48 = v14 + 56;
  v49 = v14;
  do
  {
    if (CFBitVectorGetBitAtIndex(Mutable, v35))
    {
      CFBitVectorSetAllBits(v12, 0);
      v36 = v35 + 1;
      if (v35 + 1 < v10)
      {
        v37 = &v49[32 * v35];
        v38 = v35 + 1;
        v39 = &v48[32 * v35];
        while (!CFBitVectorGetBitAtIndex(Mutable, v38))
        {
LABEL_25:
          ++v38;
          v39 += 4;
          if (v10 == v38)
          {
            goto LABEL_33;
          }
        }

        if (metric == 2)
        {
          HMICGRectIntersectionOverMinArea(*v37, v37[1], v37[2], v37[3], *(v39 - 3), *(v39 - 2), *(v39 - 1), *v39);
          v40 = v42;
          if (v42 > threshold && *&v51[v35] * 0.95 < *&v51[v38] && v50[v35] > v50[v38])
          {
            CFBitVectorSetBitAtIndex(v12, v35, 1u);
          }

          goto LABEL_22;
        }

        if (metric == 1)
        {
          HMICGRectIntersectionOverMinArea(*v37, v37[1], v37[2], v37[3], *(v39 - 3), *(v39 - 2), *(v39 - 1), *v39);
        }

        else
        {
          v40 = 0.0;
          if (metric)
          {
LABEL_22:
            if (CFBitVectorGetBitAtIndex(v12, v35))
            {
              goto LABEL_33;
            }

            if (v40 > threshold)
            {
              CFBitVectorSetBitAtIndex(v12, v38, 1u);
            }

            goto LABEL_25;
          }

          HMICGRectIntersectionOverUnion(*v37, v37[1], v37[2], v37[3], *(v39 - 3), *(v39 - 2), *(v39 - 1), *v39);
        }

        v40 = v41;
        goto LABEL_22;
      }

LABEL_33:
      if (!CFBitVectorGetBitAtIndex(v12, v35))
      {
        v44 = [v9 objectAtIndexedSubscript:?];
        [outputCopy addObject:?];

        if (v36 < v10)
        {
          v45 = v36;
          do
          {
            if (CFBitVectorGetBitAtIndex(v12, v45))
            {
              CFBitVectorSetBitAtIndex(Mutable, v45, 0);
            }

            ++v45;
          }

          while (v10 != v45);
        }
      }
    }

    else
    {
      v36 = v35 + 1;
    }

    v35 = v36;
  }

  while (v36 != v10);
  v14 = v49;
  v24 = v50;
LABEL_43:
  v46 = v51;
LABEL_44:
  CFRelease(Mutable);
  CFRelease(v12);
  free(v14);
  free(v46);
  free(v24);
}

BOOL __81__HMIObjectDetectionUtils_nonMaximumSuppression_output_withThreshold_withMetric___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 confidence];
  v6 = v5;
  [v4 confidence];
  v8 = v7;

  return v6 < v8;
}

+ (void)nmsMultiClass:(id)class output:(id)output nmsConfiguration:(id)configuration
{
  classCopy = class;
  outputCopy = output;
  configurationCopy = configuration;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  obj = classCopy;
  v10 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = MEMORY[0x277CCABB0];
        [*(8 * i) labelIndex];
        v15 = [v14 numberWithInt:?];
        v16 = [v9 objectForKeyedSubscript:?];

        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v9 setObject:? forKeyedSubscript:?];
        }

        v18 = [v9 objectForKeyedSubscript:?];
        [v18 addObject:?];
      }

      v11 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0];
    do
    {
      for (j = 0; j != v22; j = (j + 1))
      {
        if (MEMORY[0] != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [configurationCopy thresholdForLabel:outputCopy];
        [configurationCopy metricForLabel:?];
        v26 = [v20 objectForKeyedSubscript:?];
        [v25 doubleValue];
        [HMIObjectDetectionUtils nonMaximumSuppression:"nonMaximumSuppression:output:withThreshold:withMetric:" output:? withThreshold:? withMetric:?];
      }

      v22 = [v20 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
  }

  v27 = [v19 sortedArrayUsingComparator:?];
  [outputCopy addObjectsFromArray:?];
}

BOOL __65__HMIObjectDetectionUtils_nmsMultiClass_output_nmsConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 confidence];
  v6 = v5;
  [v4 confidence];
  v8 = v7;

  return v6 < v8;
}

+ (id)convertObjectDetections:(id)detections cropRect:(CGRect)rect originalImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  detectionsCopy = detections;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = v8;
  v19.size.height = v7;
  if (CGRectIsNull(v19))
  {
    v12 = detectionsCopy;
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, 1.0 / width, 1.0 / height);
    v15 = v17;
    CGAffineTransformTranslate(&v16, &v15, x, y);
    v17 = v16;
    v15 = v16;
    CGAffineTransformScale(&v16, &v15, v8, v7);
    v17 = v16;
    v12 = [detectionsCopy na_map:{MEMORY[0x277D85DD0], 3221225472, __78__HMIObjectDetectionUtils_convertObjectDetections_cropRect_originalImageSize___block_invoke, &__block_descriptor_80_e28__16__0__HMIObjectDetection_8l, *&v16.a, *&v16.b, *&v16.c, *&v16.d, *&v16.tx, *&v16.ty}];
  }

  v13 = v12;

  return v13;
}

HMIObjectDetection *__78__HMIObjectDetectionUtils_convertObjectDetections_cropRect_originalImageSize___block_invoke(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = [HMIObjectDetection alloc];
  [v3 labelIndex];
  [v3 confidence];
  [v3 boundingBox];
  v5 = a1[3];
  *&v10.a = a1[2];
  *&v10.c = v5;
  *&v10.tx = a1[4];
  CGRectApplyAffineTransform(v12, &v10);
  v6 = [v3 yaw];
  v7 = [v3 roll];

  v8 = [HMIObjectDetection initWithLabelIndex:v4 confidence:"initWithLabelIndex:confidence:boundingBox:yaw:roll:" boundingBox:? yaw:? roll:?];

  return v8;
}

@end