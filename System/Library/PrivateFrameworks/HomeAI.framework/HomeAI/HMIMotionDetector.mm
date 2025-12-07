@interface HMIMotionDetector
- (BOOL)applyActivityZoneFilteringOnSourcePoint:(CGPoint)point destinationPoint:(CGPoint)destinationPoint frameSize:(CGSize)size activityZones:(id)zones;
- (HMIMotionDetector)init;
- (id)_computeOpticalFlow:(__CVBuffer *)flow with:(__CVBuffer *)with globalMotionScore:(float *)score activityZones:(id)zones operationMode:(unint64_t)mode;
- (id)calculateMotionDetection:(vector<unsigned)char score:(std:()vector<float :(std:()vector<cv:(std:()vector<cv:(std:(id)cv :(unint64_t)a8 allocator<cv:()vector<cv:(std:(CGSize)self0 :(float)self1 allocator<cv::Mat>> *)a9 :Mat :Point_<float>>> *)a6 :Point_<float> :allocator<cv::Point_<float>>> *)a5 :Point_<float> :allocator<float>> *)a4 allocator<unsigned char>> *)a3 srcFeatureCVPoints:dstFeatreCVPoints:activityZones:operationMode:srcPyramid:frameSize:brightnessChange:;
- (id)detectWithGlobalMotionScore:(float *)score referencePixelBuffer:(__CVBuffer *)buffer targetPixelBuffer:(__CVBuffer *)pixelBuffer activityZones:(id)zones detectorMode:(unint64_t)mode;
- (id)visualizeMotionDetections:(id)detections frameSize:(CGSize)size timeStamp:(id *)stamp;
- (void)dealloc;
@end

@implementation HMIMotionDetector

- (HMIMotionDetector)init
{
  v4.receiver = self;
  v4.super_class = HMIMotionDetector;
  v2 = [(HMIMotionDetector *)&v4 init];
  if (v2)
  {
    v2->_resizedSampleBuffers = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  }

  return v2;
}

- (void)dealloc
{
  CFArrayRemoveAllValues(self->_resizedSampleBuffers);
  CFRelease(self->_resizedSampleBuffers);
  v3.receiver = self;
  v3.super_class = HMIMotionDetector;
  [(HMIMotionDetector *)&v3 dealloc];
}

- (id)_computeOpticalFlow:(__CVBuffer *)flow with:(__CVBuffer *)with globalMotionScore:(float *)score activityZones:(id)zones operationMode:(unint64_t)mode
{
  zonesCopy = zones;
  *score = 0.0;
  Size = HMICVPixelBufferGetSize(with);
  v13 = v12;
  if (Size == HMICVPixelBufferGetSize(flow) && v13 == v14)
  {
    v69[2] = [[HMISignpost alloc] initWithName:?];
    CVPixelBufferLockBaseAddress(with, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(with, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(with, 0);
    v19 = v13;
    v20 = Size;
    v60[0] = v13;
    v60[1] = Size;
    v61 = BaseAddressOfPlane;
    v62 = 0;
    if (v13 == 1)
    {
      v21 = v20;
    }

    else
    {
      v21 = BytesPerRowOfPlane;
    }

    if (v21 == v20 || BytesPerRowOfPlane == 0)
    {
      v23 = 1124024320;
    }

    else
    {
      v23 = 1124007936;
    }

    v67 = v60;
    v68 = v69;
    if (BytesPerRowOfPlane)
    {
      v24 = v21;
    }

    else
    {
      v24 = v20;
    }

    v59[0] = v23;
    v59[1] = 2;
    v69[0] = v24;
    v69[1] = 1;
    v65 = &BaseAddressOfPlane[v24 * v19];
    v66 = 0;
    v63 = BaseAddressOfPlane;
    v64 = &v65[v20 - v24];
    memset(v58, 0, sizeof(v58));
    cv::_InputArray::_InputArray(v32, v59);
    cv::_OutputArray::_OutputArray(v47, v58);
    v36[0] = 0xA0000000ALL;
    cv::buildOpticalFlowPyramid(v32, v47, v36, 2, 1, 4u, 0, 1);
    CVPixelBufferLockBaseAddress(flow, 1uLL);
    v25 = CVPixelBufferGetBaseAddressOfPlane(flow, 0);
    v26 = CVPixelBufferGetBytesPerRowOfPlane(flow, 0);
    v48[0] = v13;
    v48[1] = Size;
    v49 = v25;
    v50 = 0;
    if (v19 == 1)
    {
      v27 = v20;
    }

    else
    {
      v27 = v26;
    }

    if (v27 == v20 || v26 == 0)
    {
      v29 = 1124024320;
    }

    else
    {
      v29 = 1124007936;
    }

    v55 = v48;
    v56 = v57;
    if (v26)
    {
      v30 = v27;
    }

    else
    {
      v30 = v20;
    }

    v47[1] = 2;
    v47[0] = v29;
    v57[0] = v30;
    v57[1] = 1;
    v54 = 0;
    v53 = &v25[v30 * v19];
    v51 = v25;
    v52 = &v53[v20 - v30];
    memset(v46, 0, sizeof(v46));
    cv::_InputArray::_InputArray(v32, v47);
    cv::_OutputArray::_OutputArray(v36, v46);
    v38 = 0xA0000000ALL;
    cv::buildOpticalFlowPyramid(v32, v36, &v38, 2, 1, 4u, 0, 1);
    memset(v45, 0, sizeof(v45));
    v43 = 0;
    v42 = 0;
    v44 = 0;
    cv::_InputArray::_InputArray(v36, v47);
    v39 = -2147287027;
    v40 = v45;
    v41 = 0;
    v38 = &unk_2840567A8;
    v33 = &v32[2];
    v34 = v35;
    v35[0] = 0;
    v35[1] = 0;
    v32[0] = 1124007936;
    memset(&v32[1], 0, 60);
    cv::_InputArray::_InputArray(&v37, v32);
    cv::goodFeaturesToTrack(v36, &v38, 0x1F4, &v37, 0.0299999993, 5.0, 5, 0, 0.04);
  }

  v16 = MEMORY[0x277CBEBF8];

  return v16;
}

- (id)calculateMotionDetection:(vector<unsigned)char score:(std:()vector<float :(std:()vector<cv:(std:()vector<cv:(std:(id)cv :(unint64_t)a8 allocator<cv:()vector<cv:(std:(CGSize)self0 :(float)self1 allocator<cv::Mat>> *)a9 :Mat :Point_<float>>> *)a6 :Point_<float> :allocator<cv::Point_<float>>> *)a5 :Point_<float> :allocator<float>> *)a4 allocator<unsigned char>> *)a3 srcFeatureCVPoints:dstFeatreCVPoints:activityZones:operationMode:srcPyramid:frameSize:brightnessChange:
{
  height = a10.height;
  width = a10.width;
  v14 = a8;
  v20 = a9;
  cvCopy = cv;
  v108 = 9999.0;
  v109 = 9999.0;
  v106 = 9999.0;
  v107 = 9999.0;
  v104 = -9999.0;
  v105 = -9999.0;
  v102 = -9999.0;
  v103 = -9999.0;
  v99 = malloc_type_malloc(2 * (a5->var1 - a5->var0), 0x1000040451B5BE8uLL);
  v98 = malloc_type_malloc(2 * (a5->var1 - a5->var0), 0x1000040451B5BE8uLL);
  var0 = a3->var0;
  if (a3->var1 != a3->var0)
  {
    v23 = 0;
    v24 = 0;
    v25 = flt_22D298570[(v14 & 1) == 0];
    v26 = 0.0;
    v27 = 4;
    while (1)
    {
      if (!var0[v23] || a4->__begin_[v23] <= v25)
      {
        goto LABEL_53;
      }

      v28 = hypotf(*(a5->var0 + v27 - 4) - *(a6->var0 + v27 - 4), *(a5->var0 + v27) - *(a6->var0 + v27));
      v29 = [cvCopy count];
      v30 = 1;
      if ((v14 & 1) != 0 && v29)
      {
        v30 = [HMIMotionDetector applyActivityZoneFilteringOnSourcePoint:"applyActivityZoneFilteringOnSourcePoint:destinationPoint:frameSize:activityZones:" destinationPoint:? frameSize:? activityZones:?];
      }

      if (v28 <= 1.0 || v30 == 0)
      {
        goto LABEL_53;
      }

      v32 = (a5->var0 + v27);
      v33 = (a6->var0 + v27);
      v34 = *(v32 - 1);
      v35 = *v32;
      v37 = *(v33 - 1);
      v36 = *v33;
      if (v34 >= v37)
      {
        v38 = *(v33 - 1);
      }

      else
      {
        v38 = *(v32 - 1);
      }

      v39 = v38;
      if (v35 >= v36)
      {
        v40 = *v33;
      }

      else
      {
        v40 = *v32;
      }

      v41 = v109;
      if (v109 <= v39)
      {
        if (v107 <= v39)
        {
          goto LABEL_25;
        }

        v42 = &v107;
      }

      else
      {
        if (v109 >= 9998.0)
        {
          v41 = v39;
        }

        v107 = v41;
        v42 = &v109;
      }

      *v42 = v39;
LABEL_25:
      v43 = v40;
      v44 = v108;
      if (v108 <= v43)
      {
        if (v106 <= v43)
        {
          goto LABEL_32;
        }

        v45 = &v106;
      }

      else
      {
        if (v108 >= 9998.0)
        {
          v44 = v43;
        }

        v106 = v44;
        v45 = &v108;
      }

      *v45 = v43;
LABEL_32:
      if (v34 >= v37)
      {
        v46 = v34;
      }

      else
      {
        v46 = v37;
      }

      v47 = v46;
      if (v35 >= v36)
      {
        v48 = v35;
      }

      else
      {
        v48 = v36;
      }

      v49 = v105;
      if (v105 >= v47)
      {
        if (v103 >= v47)
        {
          goto LABEL_45;
        }

        v50 = &v103;
      }

      else
      {
        if (v105 <= -9998.0)
        {
          v49 = v47;
        }

        v103 = v49;
        v50 = &v105;
      }

      *v50 = v47;
LABEL_45:
      v51 = v48;
      v52 = v104;
      if (v104 < v51)
      {
        if (v104 <= -9998.0)
        {
          v52 = v51;
        }

        v102 = v52;
        v53 = &v104;
        goto LABEL_51;
      }

      if (v102 < v51)
      {
        v53 = &v102;
LABEL_51:
        *v53 = v51;
      }

      v26 = v26 + sqrtf(v28);
      v54 = &v99[16 * v24];
      *v54 = rint(v34);
      v54[1] = rint(v35);
      v55 = &v98[16 * v24];
      *v55 = rint(v37);
      v55[1] = rint(v36);
      ++v24;
LABEL_53:
      ++v23;
      var0 = a3->var0;
      v27 += 8;
      if (a3->var1 - a3->var0 <= v23)
      {
        v56 = v104;
        v57 = v105;
        v58 = v106;
        v59 = v107;
        v60 = v108;
        v61 = v109;
        v62 = v102;
        v63 = v103;
        v20 = a9;
        goto LABEL_56;
      }
    }
  }

  v24 = 0;
  v60 = 9999.0;
  v62 = -9999.0;
  v63 = -9999.0;
  v58 = 9999.0;
  v26 = 0.0;
  v56 = -9999.0;
  v61 = 9999.0;
  v59 = 9999.0;
  v57 = -9999.0;
LABEL_56:
  v64 = flt_22D298598[v26 < 20.0];
  v65 = (v57 - v61 + 40.0) * v64;
  if (v57 - v59 + 40.0 >= v65)
  {
    v59 = v61;
  }

  v66 = (v56 - v60 + 40.0) * v64;
  if (v56 - v58 + 40.0 >= v66)
  {
    v58 = v60;
  }

  if (v63 - v61 + 40.0 >= v65)
  {
    v63 = v57;
  }

  if (v62 - v60 + 40.0 >= v66)
  {
    v67 = v56;
  }

  else
  {
    v67 = v62;
  }

  v68 = v63;
  v69 = v67;
  v70 = (v68 + 20.0);
  v71 = (v69 + 20.0);
  v72 = *(v20->var0 + 3) - 1;
  if (v70 <= v72)
  {
    v73 = v70;
  }

  else
  {
    v73 = v72;
  }

  v74 = *(v20->var0 + 2) - 1;
  if (v71 <= v74)
  {
    v75 = v71;
  }

  else
  {
    v75 = v74;
  }

  if (v26 == 0.0)
  {
    v73 = *MEMORY[0x277CBF348];
    v75 = *(MEMORY[0x277CBF348] + 8);
    v76 = v75;
    v77 = *MEMORY[0x277CBF348];
  }

  else
  {
    v78 = v59;
    v79 = v58;
    v77 = fmax((v78 + -20.0), 0.0);
    v76 = fmax((v79 + -20.0), 0.0);
  }

  v80 = pow((fabsf(a11) + 5.0) / 5.0, 3.0);
  v111.size.width = v73 - v77;
  v111.size.height = v75 - v76;
  v111.origin.x = v77;
  v111.origin.y = v76;
  v112 = CGRectStandardize(v111);
  x = v112.origin.x;
  y = v112.origin.y;
  v83 = v112.size.width;
  v84 = v112.size.height;
  v97 = v80;
  memset(&v101, 0, sizeof(v101));
  *&v112.origin.x = width;
  *&v112.size.width = height;
  CGAffineTransformMakeScale(&v101, (1.0 / *&v112.origin.x), (1.0 / *&v112.size.width));
  v100 = v101;
  v113.origin.x = x;
  v113.origin.y = y;
  v113.size.width = v83;
  v113.size.height = v84;
  v114 = CGRectApplyAffineTransform(v113, &v100);
  v85 = v114.origin.x;
  v86 = v114.origin.y;
  v87 = v114.size.width;
  array = [MEMORY[0x277CBEB18] array];
  v96 = v87;
  if (v24 >= 1)
  {
    v89 = v98 + 8;
    v90 = v99 + 8;
    v91 = v24;
    do
    {
      v92 = [HMIMotionVector initWithOrigin:"initWithOrigin:motion:" motion:?];
      [array addObject:?];

      v89 += 16;
      v90 += 16;
      --v91;
    }

    while (v91);
  }

  v93 = v26 / v97;
  free(v99);
  free(v98);
  if (v93 >= 0.001)
  {
    v94 = [HMIMotionDetection initWithBoundingBox:"initWithBoundingBox:size:motionVectors:motionScore:motionMode:" size:*&v96 motionVectors:*&v86 motionScore:*&v85 motionMode:?];
  }

  else
  {
    v94 = 0;
  }

  return v94;
}

- (BOOL)applyActivityZoneFilteringOnSourcePoint:(CGPoint)point destinationPoint:(CGPoint)destinationPoint frameSize:(CGSize)size activityZones:(id)zones
{
  height = size.height;
  width = size.width;
  y = destinationPoint.y;
  x = destinationPoint.x;
  v10 = point.y;
  v11 = point.x;
  v25 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  firstObject = [zonesCopy firstObject];
  isInclusion = [firstObject isInclusion];

  HMICGPointClampWithSize(v11, v10, width);
  HMICGPointClampWithSize(x, y, width);
  v15 = width;
  v16 = height;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, (1.0 / v15), (1.0 / v16));
  v17 = zonesCopy;
  v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
  isInclusion2 = isInclusion ^ 1;
  if (v18)
  {
    v20 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v18; i = (i + 1))
      {
        if (MEMORY[0] != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(8 * i);
        if ([v22 containsVectorWithSource:? destination:?])
        {
          isInclusion2 = [v22 isInclusion];
          goto LABEL_11;
        }
      }

      v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return isInclusion2;
}

- (id)detectWithGlobalMotionScore:(float *)score referencePixelBuffer:(__CVBuffer *)buffer targetPixelBuffer:(__CVBuffer *)pixelBuffer activityZones:(id)zones detectorMode:(unint64_t)mode
{
  v7 = [HMIMotionDetector _computeOpticalFlow:"_computeOpticalFlow:with:globalMotionScore:activityZones:operationMode:" with:? globalMotionScore:? activityZones:? operationMode:?];

  return v7;
}

- (id)visualizeMotionDetections:(id)detections frameSize:(CGSize)size timeStamp:(id *)stamp
{
  v6 = [HMIMotionDetection firstMotionDetectionInArray:"firstMotionDetectionInArray:withMode:" withMode:?];
  v7 = [HMIVisionUtilities createPixelBufferWithSize:"createPixelBufferWithSize:pixelFormat:useIOSurface:" pixelFormat:? useIOSurface:?];
  HMICVPixelBufferSetValue(v7, 0);
  CVPixelBufferLockBaseAddress(v7, 0);
  CVPixelBufferGetBaseAddressOfPlane(v7, 0);
  CVPixelBufferGetBytesPerRowOfPlane(v7, 0);
  motionVectors = [v6 motionVectors];
  [motionVectors na_each:?];

  CVPixelBufferUnlockBaseAddress(v7, 0);
  v9 = [[HMIVideoFrame alloc] initWithPixelBuffer:*&stamp->var0 presentationTimeStamp:stamp->var3];
  CVPixelBufferRelease(v7);

  return v9;
}

void __67__HMIMotionDetector_visualizeMotionDetections_frameSize_timeStamp___block_invoke(uint64_t a1, void *a2)
{
  v31 = a2;
  [v31 origin];
  v4 = v3;
  v5 = *(a1 + 32);
  [v31 origin];
  v7 = v6;
  v8 = *(a1 + 40);
  [v31 target];
  v10 = v9;
  v11 = *(a1 + 32);
  [v31 target];
  v12 = v4 * v5;
  v13 = v7 * v8;
  v14 = v10 * v11;
  v16 = v15 * *(a1 + 40);
  if (v4 * v5 >= v10 * v11)
  {
    v17 = v10 * v11;
  }

  else
  {
    v17 = v4 * v5;
  }

  if (v4 * v5 >= v10 * v11)
  {
    v18 = v16;
  }

  else
  {
    v18 = v7 * v8;
  }

  v19 = 0.0;
  v20 = v14 - v12;
  v21 = (v16 - v13) / (v14 - v12);
  if (v14 == v12)
  {
    v21 = 0.0;
  }

  for (; (v17 - v12) * (v17 - v14) <= 0.0; v18 = v21 + v18)
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40) + -1.0;
    if (v23 >= v18)
    {
      v23 = v18;
    }

    v24 = fmax(v23, 0.0);
    v25 = v22 + -1.0;
    if (v22 + -1.0 >= v17)
    {
      v25 = v17;
    }

    *(*(a1 + 48) + *(a1 + 56) * v24 + fmax(v25, 0.0)) = -1;
    v17 = v17 + 1.0;
  }

  if (v13 < v16)
  {
    v26 = v7 * v8;
  }

  else
  {
    v12 = v10 * v11;
    v26 = v16;
  }

  if (v16 != v13)
  {
    v19 = v20 / (v16 - v13);
  }

  for (; (v26 - v13) * (v26 - v16) <= 0.0; v26 = v26 + 1.0)
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 40) + -1.0;
    if (v28 >= v26)
    {
      v28 = v26;
    }

    v29 = fmax(v28, 0.0);
    v30 = v27 + -1.0;
    if (v27 + -1.0 >= v12)
    {
      v30 = v12;
    }

    *(*(a1 + 48) + *(a1 + 56) * v29 + fmax(v30, 0.0)) = -1;
    v12 = v19 + v12;
  }
}

@end