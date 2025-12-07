@interface BWSharpnessScoreReferenceFrameSelector
+ (id)externalMemoryDescriptorWithMaxInputDimensions:(id)dimensions;
- (BWSharpnessScoreReferenceFrameSelector)initWithCommandQueue:(id)queue externalMemoryResource:(id)resource candidateCount:(int)count;
- (opaqueCMSampleBuffer)addReferenceFrameCandidate:(opaqueCMSampleBuffer *)candidate referenceFrameOut:(opaqueCMSampleBuffer *)out;
- (void)dealloc;
@end

@implementation BWSharpnessScoreReferenceFrameSelector

+ (id)externalMemoryDescriptorWithMaxInputDimensions:(id)dimensions
{
  v3 = [objc_alloc(MEMORY[0x1E69916C8]) initWithMaxInputDimensions:dimensions inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:0];
  v4 = MEMORY[0x1E69916F8];

  return [v4 externalMemoryDescriptorForConfiguration:v3];
}

- (BWSharpnessScoreReferenceFrameSelector)initWithCommandQueue:(id)queue externalMemoryResource:(id)resource candidateCount:(int)count
{
  v10.receiver = self;
  v10.super_class = BWSharpnessScoreReferenceFrameSelector;
  v8 = [(BWSharpnessScoreReferenceFrameSelector *)&v10 init];
  if (v8)
  {
    if (resource)
    {
      v8->_sharpnessScoreCalculator = [objc_alloc(MEMORY[0x1E69916F8]) initWithOptionalCommandQueue:queue externalMemoryResource:resource kernelWeights:0];
    }

    v8->_candidateFrameCount = count;
    v8->_currentCandidateSharpnessScore = NAN;
    v8->_faceScoresEnabled = 0;
    v8->_maxNumberOfFaceScores = 1;
  }

  return v8;
}

- (void)dealloc
{
  currentCandidateFrame = self->_currentCandidateFrame;
  if (currentCandidateFrame)
  {
    CFRelease(currentCandidateFrame);
  }

  v4.receiver = self;
  v4.super_class = BWSharpnessScoreReferenceFrameSelector;
  [(BWSharpnessScoreReferenceFrameSelector *)&v4 dealloc];
}

uint64_t __87__BWSharpnessScoreReferenceFrameSelector_addReferenceFrameCandidate_referenceFrameOut___block_invoke(int a1, CFDictionaryRef dict, const __CFDictionary *a3)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v4;
  v7.origin = rect.origin;
  v7.size = v4;
  if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    return -1;
  }

  v5 = CGRectMakeWithDictionaryRepresentation(a3, &v7);
  result = -1;
  if (v5 && rect.size.width * rect.size.height > v7.size.width * v7.size.height)
  {
    return 1;
  }

  return result;
}

- (opaqueCMSampleBuffer)addReferenceFrameCandidate:(opaqueCMSampleBuffer *)candidate referenceFrameOut:(opaqueCMSampleBuffer *)out
{
  candidateCopy = candidate;
  if (!candidate || (candidateFrameCount = self->_candidateFrameCount, receivedCandidateFrameCount = self->_receivedCandidateFrameCount, v9 = receivedCandidateFrameCount + 1, self->_receivedCandidateFrameCount = receivedCandidateFrameCount + 1, receivedCandidateFrameCount >= candidateFrameCount))
  {
LABEL_41:
    v10 = 0;
    if (!out)
    {
      return candidateCopy;
    }

    goto LABEL_39;
  }

  if (candidateFrameCount <= 1)
  {
    v10 = CFRetain(candidate);
    candidateCopy = 0;
    if (!out)
    {
      return candidateCopy;
    }

    goto LABEL_39;
  }

  if (self->_sharpnessScoreCalculator)
  {
    if (self->_faceScoresEnabled && self->_maxNumberOfFaceScores >= 1 && (v11 = [objc_msgSend(objc_msgSend(CMGetAttachment(candidate *off_1E798A3C8], objc_msgSend(v11, "count")))
    {
      array = [MEMORY[0x1E695DF70] array];
      v13 = BWPixelBufferDimensionsFromSampleBuffer(candidateCopy);
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v21 = OUTLINED_FUNCTION_7_71(v13, v14, v15, v16, v17, v18, v19, v20, v68, *(&v68 + 1), v71, *(&v71 + 1), v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, *(&v122 + 1), v123, *(&v123 + 1));
      if (v21)
      {
        v22 = v21;
        v23 = *v125;
        v24 = v13;
        v25 = SHIDWORD(v13);
        v68 = *(MEMORY[0x1E695F050] + 16);
        v71 = *MEMORY[0x1E695F050];
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v125 != v23)
            {
              objc_enumerationMutation(v11);
            }

            v122 = v71;
            v123 = v68;
            CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
            if (CGRectIfPresent)
            {
              FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v122, *(&v122 + 1), *&v123, *(&v123 + 1), v24, v25);
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v128);
              [array addObject:DictionaryRepresentation];
            }
          }

          v22 = OUTLINED_FUNCTION_7_71(CGRectIfPresent, v28, v29, v30, v31, v32, v33, v34, v68, *(&v68 + 1), v71, *(&v71 + 1), v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v107, v109, v111, v113, v115, v117, v119, v121, v122, *(&v122 + 1), v123, *(&v123 + 1));
        }

        while (v22);
      }

      [array sortedArrayUsingComparator:&__block_literal_global_119];
      v36 = [array count];
      if (v36 >= self->_maxNumberOfFaceScores)
      {
        maxNumberOfFaceScores = self->_maxNumberOfFaceScores;
      }

      else
      {
        maxNumberOfFaceScores = v36;
      }

      v38 = [array subarrayWithRange:{0, maxNumberOfFaceScores}];
    }

    else
    {
      v38 = 0;
    }

    *&v122 = 0;
    v39 = [(CMISharpnessScore *)self->_sharpnessScoreCalculator calculateFromPixelBuffer:CMSampleBufferGetImageBuffer(candidateCopy) andFromRoi:v38 sourceComponent:0 toResult:&v122];
    [v122 fullImageScore];
    v41 = v40;
    facesScores = [v122 facesScores];
    if (v39)
    {
      v41 = 1.1755e-38;
    }

    else
    {
      v46 = facesScores;
      v47 = [facesScores count];
      if (v47)
      {
        v55 = OUTLINED_FUNCTION_21_30(v47, v48, v49, v50, v51, v52, v53, v54, v68, *(&v68 + 1), v71, *(&v71 + 1), v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104);
        if (v55)
        {
          v56 = v55;
          v57 = MEMORY[0];
          do
          {
            for (j = 0; j != v56; ++j)
            {
              if (MEMORY[0] != v57)
              {
                objc_enumerationMutation(v46);
              }

              floatValue = [*(8 * j) floatValue];
              if (v41 < v67)
              {
                v41 = v67;
              }
            }

            v56 = OUTLINED_FUNCTION_21_30(floatValue, v60, v61, v62, v63, v64, v65, v66, v69, v70, v72, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105);
          }

          while (v56);
        }
      }
    }

    candidateFrameCount = self->_candidateFrameCount;
    v9 = self->_receivedCandidateFrameCount;
  }

  else if (receivedCandidateFrameCount <= 0)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.1755e-38;
  }

  currentCandidateSharpnessScore = self->_currentCandidateSharpnessScore;
  if (v9 != candidateFrameCount)
  {
    if (v41 > currentCandidateSharpnessScore)
    {
      currentCandidateFrame = self->_currentCandidateFrame;
      v10 = 0;
      self->_currentCandidateFrame = CFRetain(candidateCopy);
      self->_currentCandidateSharpnessScore = v41;
      candidateCopy = currentCandidateFrame;
      if (!out)
      {
        return candidateCopy;
      }

      goto LABEL_39;
    }

    candidateCopy = CFRetain(candidateCopy);
    goto LABEL_41;
  }

  if (v41 <= currentCandidateSharpnessScore)
  {
    v10 = self->_currentCandidateFrame;
    candidateCopy = CFRetain(candidateCopy);
  }

  else
  {
    v10 = CFRetain(candidateCopy);
    candidateCopy = self->_currentCandidateFrame;
  }

  self->_currentCandidateFrame = 0;
  if (out)
  {
LABEL_39:
    *out = v10;
  }

  return candidateCopy;
}

@end