@interface HMIFaceClassifierVIP
- (HMIFaceClassifierVIP)initWithError:(id *)error;
- (id)classifyFaceEvent:(id)event pixelBuffer:(__CVBuffer *)buffer fastMode:(BOOL)mode homeUUID:(id)d error:(id *)error;
- (id)qualityPredictionFromSVMUsingFaceQualityFilterSVM:(id)m detectorConfidence:(double)confidence laplacian:(double)laplacian yaw:(double)yaw boxSize:(double)size error:(id *)error;
@end

@implementation HMIFaceClassifierVIP

- (HMIFaceClassifierVIP)initWithError:(id *)error
{
  v30.receiver = self;
  v30.super_class = HMIFaceClassifierVIP;
  v4 = [(HMIFaceClassifierVIP *)&v30 init];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = objc_alloc_init(HMIFaceprinter);
  faceprinter = v4->_faceprinter;
  v4->_faceprinter = v5;

  v7 = +[HMIPreference sharedInstance];
  v8 = [v7 numberPreferenceForKey:? defaultValue:?];
  [v8 doubleValue];
  v4->_classificationThresholdKnown = v9;

  v10 = +[HMIPreference sharedInstance];
  v11 = [v10 numberPreferenceForKey:? defaultValue:?];
  [v11 doubleValue];
  v4->_classificationThresholdUnknown = v12;

  v13 = [HMIFaceQualityFilterSVM alloc];
  v14 = +[HMIFaceQualityFilterSVM defaultRecognizabilityModelPath];
  v15 = +[HMIFaceQualityFilterSVM defaultRecognizabilityDataScalerPath];
  v29 = 0;
  v16 = [HMIFaceQualityFilterSVM initWithModelPath:v13 dataScalerPath:"initWithModelPath:dataScalerPath:error:" error:?];
  v17 = v29;
  faceRecognizabilityFilter = v4->_faceRecognizabilityFilter;
  v4->_faceRecognizabilityFilter = v16;

  if (v4->_faceRecognizabilityFilter)
  {
    v19 = [HMIFaceQualityFilterSVM alloc];
    v20 = +[HMIFaceQualityFilterSVM defaultAestheticQualityModelPath];
    v21 = +[HMIFaceQualityFilterSVM defaultAestheticQualityDataScalerPath];
    v28 = v17;
    v22 = [HMIFaceQualityFilterSVM initWithModelPath:v19 dataScalerPath:"initWithModelPath:dataScalerPath:error:" error:?];
    v23 = v28;

    faceAestheticQualityFilter = v4->_faceAestheticQualityFilter;
    v4->_faceAestheticQualityFilter = v22;

    if (v4->_faceAestheticQualityFilter)
    {

LABEL_5:
      v25 = v4;
      goto LABEL_10;
    }

    v17 = v23;
  }

  if (error)
  {
    v26 = v17;
    *error = v17;
  }

  HMIErrorLog(v4, v17);

  v25 = 0;
LABEL_10:

  return v25;
}

- (id)qualityPredictionFromSVMUsingFaceQualityFilterSVM:(id)m detectorConfidence:(double)confidence laplacian:(double)laplacian yaw:(double)yaw boxSize:(double)size error:(id *)error
{
  mCopy = m;
  v11 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:? dataType:? error:?];
  v12 = 0;
  v13 = v12;
  if (v11)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v11 setObject:? atIndexedSubscript:?];

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v11 setObject:? atIndexedSubscript:?];

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v11 setObject:? atIndexedSubscript:?];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v11 setObject:? atIndexedSubscript:?];

    v18 = [mCopy predict:? output:? error:?];
    v19 = v13;

    if (v18)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    }

    else
    {
      if (error)
      {
        v22 = v19;
        *error = v19;
      }

      HMIErrorLog(self, v19);
      v20 = 0;
    }

    v13 = v19;
  }

  else
  {
    if (error)
    {
      v21 = v12;
      *error = v13;
    }

    HMIErrorLog(self, v13);
    v20 = 0;
  }

  return v20;
}

- (id)classifyFaceEvent:(id)event pixelBuffer:(__CVBuffer *)buffer fastMode:(BOOL)mode homeUUID:(id)d error:(id *)error
{
  v148 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  roll = [eventCopy roll];
  v14 = [HMIFaceprinter createFacePixelBufferForFaceEvent:"createFacePixelBufferForFaceEvent:pixelBuffer:roll:error:" pixelBuffer:? roll:? error:?];

  if (v14)
  {
    v133 = dCopy;
    v15 = objc_alloc_init(HMIFaceQualityEntropyOfLaplacian);
    confidence = [eventCopy confidence];
    [confidence value];

    [(HMIFaceQualityEntropyOfLaplacian *)v15 computeJunkScoreForPixelBuffer:?];
    v17 = [eventCopy yaw];
    [v17 doubleValue];
    v19 = v18;

    [eventCopy boundingBox];
    v21 = v20;
    v23 = v22;
    Size = HMICVPixelBufferGetSize(buffer);
    HMICGSizeAreaInPixelsFromNormalized(v21, v23, Size, v25);
    v26 = [HMIFaceClassifierVIP qualityPredictionFromSVMUsingFaceQualityFilterSVM:"qualityPredictionFromSVMUsingFaceQualityFilterSVM:detectorConfidence:laplacian:yaw:boxSize:error:" detectorConfidence:? laplacian:? yaw:? boxSize:? error:?];
    v27 = 0;
    v28 = v27;
    if (v26)
    {
      [v26 doubleValue];
      if (v29 < 0.55 || fabs(v19) > 0.65)
      {
        v49 = v15;
        v50 = objc_autoreleasePoolPush();
        selfCopy = self;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v53 = HMFGetLogIdentifier();
          [v26 doubleValue];
          *buf = 138543874;
          v143 = v53;
          v144 = 2048;
          v145 = v54;
          v146 = 2048;
          v147 = v19;
          _os_log_impl(&dword_22D12F000, v52, OS_LOG_TYPE_DEBUG, "%{public}@Face below face quality thresholds: SVM recognizability = %lf, Yaw = %lf, discarding", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v50);
        CVPixelBufferRelease(v14);
        v141 = HMIFaceFilteredStateAsString(1);
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

        v56 = [HMIVideoAnalyzerEventFace alloc];
        confidence2 = [eventCopy confidence];
        [eventCopy boundingBox];
        v58 = [eventCopy yaw];
        roll2 = [eventCopy roll];
        v47 = [HMIVideoAnalyzerEventFace initWithConfidence:v56 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:userInfo:" yaw:? roll:? faceRecognition:? userInfo:?];

        v15 = v49;
      }

      else
      {
        v132 = v15;
        faceprinter = [(HMIFaceClassifierVIP *)self faceprinter];
        v31 = [faceprinter createFaceprintForFacePixelBuffer:? fastMode:? error:?];

        if (v31)
        {
          faceprint = [v31 faceprint];
          [faceprint confidence];
          v34 = v33;

          if (v34 >= 0.1)
          {
            v60 = [HMIVisionUtilities createJPEGDataFromPixelBuffer:"createJPEGDataFromPixelBuffer:scale:encodeQuality:error:" scale:? encodeQuality:? error:?];
            CVPixelBufferRelease(v14);
            if (v60)
            {
              v61 = +[HMIPersonsModelManager sharedInstance];
              v62 = [v61 predictPersonFromFaceObservation:? homeUUID:? error:?];

              if (v62)
              {
                v130 = v62;
                v126 = v60;
                if ([v62 count])
                {
                  faceAttributes = [v31 faceAttributes];
                  facemaskCategory = [faceAttributes facemaskCategory];

                  v124 = facemaskCategory;
                  label = [facemaskCategory label];
                  [label identifier];
                  v66 = v125 = v31;
                  v120 = [v66 isEqualToString:?];

                  v67 = [HMIFaceCrop alloc];
                  uUID = [MEMORY[0x277CCAD78] UUID];
                  date = [MEMORY[0x277CBEAA8] date];
                  v131 = [HMIFaceCrop initWithUUID:v67 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:" dateCreated:? faceBoundingBox:?];

                  v127 = [HMIFaceprint alloc];
                  uUID2 = [MEMORY[0x277CCAD78] UUID];
                  faceprint2 = [v125 faceprint];
                  descriptorData = [faceprint2 descriptorData];
                  v72 = +[HMIFaceprinter currentModelUUID];
                  uUID3 = [(HMIFaceCrop *)v131 UUID];
                  v128 = [HMIFaceprint initWithUUID:v127 data:"initWithUUID:data:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];

                  v74 = [HMIFaceClassifierVIP qualityPredictionFromSVMUsingFaceQualityFilterSVM:"qualityPredictionFromSVMUsingFaceQualityFilterSVM:detectorConfidence:laplacian:yaw:boxSize:error:" detectorConfidence:? laplacian:? yaw:? boxSize:? error:?];
                  v75 = v28;

                  if (v74)
                  {
                    v117 = [MEMORY[0x277CBEB58] set];
                    v76 = v74;
                    v134 = v76;
                    v77 = eventCopy;
                    v135 = v77;
                    v78 = v128;
                    v136 = v78;
                    v137 = v131;
                    [v130 na_map:?];
                    v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    v131 = v137;
                    v118 = v75;
                    v119 = v79;
                    v129 = v78;
                    v123 = v76;
                    if ([*&v79 count])
                    {
                      v121 = v77;
                      if ([*&v79 na_any:?])
                      {
                        v80 = v78;
                        v81 = objc_autoreleasePoolPush();
                        selfCopy2 = self;
                        v83 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                        {
                          v84 = HMFGetLogIdentifier();
                          *buf = 138543618;
                          v143 = v84;
                          v144 = 2112;
                          v145 = v119;
                          _os_log_impl(&dword_22D12F000, v83, OS_LOG_TYPE_INFO, "%{public}@Positive face classifications: %@ ", buf, 0x16u);
                        }

                        objc_autoreleasePoolPop(v81);
                        v78 = v80;
                      }

                      v85 = [HMIFaceRecognition alloc];
                      [v76 doubleValue];
                      uUID4 = [(HMIFaceprint *)v78 UUID];
                      v87 = v119;
                      v88 = v117;
                      v89 = [HMIFaceRecognition initWithFaceCrop:v85 faceprint:"initWithFaceCrop:faceprint:classifications:predictedLinkedEntityUUIDs:faceQualityScore:sessionEntityAssignment:sessionEntityUUID:" classifications:? predictedLinkedEntityUUIDs:? faceQualityScore:? sessionEntityAssignment:? sessionEntityUUID:?];

                      v138 = HMIFaceFilteredStateAsString(0);
                      confidence4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

                      v91 = [HMIVideoAnalyzerEventFace alloc];
                      confidence3 = [v121 confidence];
                      [v121 boundingBox];
                      roll4 = [v121 yaw];
                      roll3 = [v121 roll];
                      v95 = v91;
                      v96 = v89;
                      v47 = [HMIVideoAnalyzerEventFace initWithConfidence:v95 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:userInfo:" yaw:? roll:? faceRecognition:? userInfo:?];

                      v31 = v125;
                    }

                    else
                    {
                      v108 = objc_autoreleasePoolPush();
                      selfCopy3 = self;
                      v110 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                      {
                        v111 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        v143 = v111;
                        _os_log_impl(&dword_22D12F000, v110, OS_LOG_TYPE_DEBUG, "%{public}@Face recognition set is empty", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v108);
                      v31 = v125;
                      if (v120)
                      {
                        HMIFaceFilteredStateAsString(5);
                      }

                      else
                      {
                        HMIFaceFilteredStateAsString(2);
                      }
                      v112 = ;
                      v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

                      v114 = [HMIVideoAnalyzerEventFace alloc];
                      confidence4 = [v77 confidence];
                      [v77 boundingBox];
                      confidence3 = [v77 yaw];
                      roll4 = [v77 roll];
                      v115 = v114;
                      v96 = v113;
                      v47 = [HMIVideoAnalyzerEventFace initWithConfidence:v115 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:userInfo:" yaw:? roll:? faceRecognition:? userInfo:?];
                      v88 = v117;
                      v87 = v119;
                    }

                    v28 = v118;
                    v15 = v132;
                    v104 = v129;
                    v62 = v130;
                    roll5 = v123;
                    v106 = v124;
                  }

                  else
                  {
                    v15 = v132;
                    v62 = v130;
                    if (error)
                    {
                      v107 = v75;
                      *error = v75;
                    }

                    HMIErrorLog(self, v75);
                    v47 = 0;
                    v28 = v75;
                    v106 = v124;
                    v31 = v125;
                    v104 = v128;
                    roll5 = 0;
                  }
                }

                else
                {
                  v97 = objc_autoreleasePoolPush();
                  selfCopy4 = self;
                  v99 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                  {
                    v100 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v143 = v100;
                    _os_log_impl(&dword_22D12F000, v99, OS_LOG_TYPE_ERROR, "%{public}@personsModelPredictions is empty", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v97);
                  v139 = HMIFaceFilteredStateAsString(4);
                  v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

                  v102 = [HMIVideoAnalyzerEventFace alloc];
                  confidence5 = [eventCopy confidence];
                  [eventCopy boundingBox];
                  v104 = [eventCopy yaw];
                  roll5 = [eventCopy roll];
                  v131 = confidence5;
                  v106 = v101;
                  v47 = [HMIVideoAnalyzerEventFace initWithConfidence:v102 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:userInfo:" yaw:? roll:? faceRecognition:? userInfo:?];
                  v15 = v132;
                  v62 = v130;
                }

                v60 = v126;
              }

              else
              {
                v47 = 0;
                v15 = v132;
              }
            }

            else
            {
              v47 = 0;
              v15 = v132;
            }
          }

          else
          {
            v35 = v31;
            v36 = objc_autoreleasePoolPush();
            selfCopy5 = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = HMFGetLogIdentifier();
              faceprint3 = [v31 faceprint];
              [faceprint3 confidence];
              *buf = 138543618;
              v143 = v39;
              v144 = 2048;
              v145 = v41;
              _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Face below ANFR face quality threshold: ANFR confidence = %lf, discarding", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v36);
            CVPixelBufferRelease(v14);
            v140 = HMIFaceFilteredStateAsString(3);
            v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

            v43 = [HMIVideoAnalyzerEventFace alloc];
            confidence6 = [eventCopy confidence];
            [eventCopy boundingBox];
            v45 = [eventCopy yaw];
            roll6 = [eventCopy roll];
            v47 = [HMIVideoAnalyzerEventFace initWithConfidence:v43 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:userInfo:" yaw:? roll:? faceRecognition:? userInfo:?];

            v15 = v132;
            v31 = v35;
          }
        }

        else
        {
          CVPixelBufferRelease(v14);
          v47 = 0;
          v15 = v132;
        }
      }
    }

    else
    {
      if (error)
      {
        v48 = v27;
        *error = v28;
      }

      HMIErrorLog(self, v28);
      CVPixelBufferRelease(v14);
      v47 = 0;
    }

    dCopy = v133;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

HMIFaceClassification *__78__HMIFaceClassifierVIP_classifyFaceEvent_pixelBuffer_fastMode_homeUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 confidence];
  [v4 floatValue];
  v6 = v5;

  v7 = v6;
  [*(a1 + 32) classificationThresholdKnown];
  if (v8 >= v7)
  {
    if (*(a1 + 88) == 1)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v46 = 138543362;
        v47 = v21;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Face removed from unknown & uncertain bucket: has facemask", &v46, 0xCu);
      }
    }

    else
    {
      [*(a1 + 48) doubleValue];
      if (v22 >= 0.71)
      {
        [*(a1 + 32) classificationThresholdUnknown];
        if (v34 <= v7 || ([*(a1 + 56) confidence], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "value"), v37 = v36, v35, v37 <= 0.65))
        {
          v13 = objc_autoreleasePoolPush();
          v14 = *(a1 + 32);
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v40 = HMFGetLogIdentifier();
            v41 = [*(a1 + 56) yaw];
            v46 = 138543618;
            v47 = v40;
            v48 = 2112;
            v49 = v41;
            _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Added to uncertain bucket yaw: %@", &v46, 0x16u);
          }

          v9 = 0;
        }

        else
        {
          v13 = objc_autoreleasePoolPush();
          v14 = *(a1 + 32);
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v38 = HMFGetLogIdentifier();
            v39 = [*(a1 + 56) yaw];
            v46 = 138543618;
            v47 = v38;
            v48 = 2112;
            v49 = v39;
            _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Added to unknown bucket yaw: %@", &v46, 0x16u);
          }

          v9 = 0;
        }

        goto LABEL_26;
      }

      v18 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [*(a1 + 56) confidence];
        [v26 value];
        v28 = v27;
        v29 = *(a1 + 80);
        v30 = [*(a1 + 56) yaw];
        [v30 doubleValue];
        v31 = *(a1 + 84);
        v46 = 138544386;
        v47 = v25;
        v48 = 2048;
        v49 = v28;
        v50 = 2048;
        v51 = v29;
        v52 = 2048;
        v53 = v32;
        v54 = 2048;
        v55 = v31;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Face removed from unknown and uncertian bucket, SSD confidence = %f, entropy of laplacian = %f, Face yaw = %f, box size: %f", &v46, 0x34u);
      }
    }

    objc_autoreleasePoolPop(v18);
    v33 = 0;
    goto LABEL_28;
  }

  v9 = [v3 personUUID];
  v10 = [v3 linkedEntityUUID];

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = [v3 linkedEntityUUID];
    [v11 addObject:?];
  }

  if (*(a1 + 88) != 1)
  {
    goto LABEL_27;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v3 sourceUUID];
    v46 = 138543874;
    v47 = v16;
    v48 = 2112;
    v49 = v17;
    v50 = 2112;
    v51 = *&v9;
    _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Positively classified face with facemask: (sourceUUID: %@, personUUID: %@)", &v46, 0x20u);
  }

LABEL_26:

  objc_autoreleasePoolPop(v13);
LABEL_27:
  v42 = [HMIFaceClassification alloc];
  v43 = [v3 sourceUUID];
  v44 = [*(a1 + 64) UUID];
  v33 = [HMIFaceClassification initWithUUID:v42 sourceUUID:"initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:familiarity:" sessionEntityUUID:? faceCrop:? faceprint:? confidence:? familiarity:?];

LABEL_28:

  return v33;
}

@end