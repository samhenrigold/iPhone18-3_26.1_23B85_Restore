@interface BWInferenceSampleBufferPropagator
- (BWInferenceSampleBufferPropagator)initWithVideoRequirements:(id)requirements cloneRequirements:(id)cloneRequirements metadataRequirements:(id)metadataRequirements updateMetadataWithCropRect:(BOOL)rect;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
@end

@implementation BWInferenceSampleBufferPropagator

- (BWInferenceSampleBufferPropagator)initWithVideoRequirements:(id)requirements cloneRequirements:(id)cloneRequirements metadataRequirements:(id)metadataRequirements updateMetadataWithCropRect:(BOOL)rect
{
  v12.receiver = self;
  v12.super_class = BWInferenceSampleBufferPropagator;
  v10 = [(BWInferenceSampleBufferPropagator *)&v12 init];
  if (v10)
  {
    v10->_videoRequirements = [requirements copy];
    v10->_cloneVideoRequirements = [cloneRequirements copy];
    v10->_metadataRequirements = [metadataRequirements copy];
    v10->_updateMetadataWithCropRect = rect;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSampleBufferPropagator;
  [(BWInferenceSampleBufferPropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = self->_videoRequirements;
  dictionary = [(NSArray *)obj countByEnumeratingWithState:&v65 objects:v64 count:16, dictionary];
  if (dictionary)
  {
    v10 = dictionary;
    v11 = *v66;
    key = *off_1E798A3C8;
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v66 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v65 + 1) + 8 * i);
        v18 = [storage newSampleBufferSatisfyingRequirement:v17 withPropagationSampleBuffer:sampleBuffer];
        v19 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v18);
        if (self->_updateMetadataWithCropRect)
        {
          v20 = v19;
          v21 = BWPixelBufferDimensionsFromSampleBuffer(sampleBuffer);
          CMGetAttachment(sampleBuffer, key, 0);
          v22 = *(MEMORY[0x1E695F050] + 16);
          v62 = *MEMORY[0x1E695F050];
          v63 = v22;
          v23 = *&v12;
          v24 = *&v13;
          v25 = *&v14;
          v26 = v15;
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v62, *(&v62 + 1), *&v63, *(&v63 + 1), v21, SHIDWORD(v21));
            v23 = v27;
            v24 = v28;
            v25 = v29;
            v26 = v30;
          }

          v31 = BWPixelBufferDimensionsFromSampleBuffer(v18);
          v32.n128_u64[0] = v23;
          v33.n128_u64[0] = v24;
          v34.n128_u64[0] = v25;
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v20, v21, v31, v32, v33, v34, v26, v12, v13, v14, v15);
        }

        BWSampleBufferSetAttachedMedia(sampleBuffer, [v17 attachedMediaKey], v18);
        if (v18)
        {
          CFRelease(v18);
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v65 objects:v64 count:16];
    }

    while (v10);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  cloneVideoRequirements = self->_cloneVideoRequirements;
  v36 = [(NSArray *)cloneVideoRequirements countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(cloneVideoRequirements);
        }

        v40 = *(*(&v58 + 1) + 8 * j);
        v41 = [storage newSampleBufferSatisfyingCloneRequirement:v40];
        BWSampleBufferSetAttachedMedia(sampleBuffer, [v40 attachedMediaKey], v41);
        if (v41)
        {
          CFRelease(v41);
        }
      }

      v37 = [(NSArray *)cloneVideoRequirements countByEnumeratingWithState:&v58 objects:v57 count:16];
    }

    while (v37);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  metadataRequirements = self->_metadataRequirements;
  v43 = [(NSArray *)metadataRequirements countByEnumeratingWithState:&v53 objects:v52 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v54;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(metadataRequirements);
        }

        v47 = [storage newMetadataDictionarySatisfyingRequirement:*(*(&v53 + 1) + 8 * k)];
        [v49 addEntriesFromDictionary:v47];
      }

      v44 = [(NSArray *)metadataRequirements countByEnumeratingWithState:&v53 objects:v52 count:16];
    }

    while (v44);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }
}

@end