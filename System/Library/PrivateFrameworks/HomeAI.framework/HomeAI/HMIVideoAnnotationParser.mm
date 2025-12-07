@interface HMIVideoAnnotationParser
+ (id)eventForClass:(Class)class boundingBox:(CGRect)box UUID:(id)d;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastKnownTimeStamp;
- (HMIVideoAnnotationParser)initWithArray:(id)array;
- (id)eventsForFragment;
- (id)eventsForTimeStamp:(id *)stamp;
@end

@implementation HMIVideoAnnotationParser

- (HMIVideoAnnotationParser)initWithArray:(id)array
{
  arrayCopy = array;
  v16.receiver = self;
  v16.super_class = HMIVideoAnnotationParser;
  v5 = [(HMIVideoAnnotationParser *)&v16 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __42__HMIVideoAnnotationParser_initWithArray___block_invoke;
    v14 = &unk_278753298;
    v15 = dictionary;
    v7 = dictionary;
    v8 = [arrayCopy na_map:?];
    tracks = v5->_tracks;
    v5->_tracks = v8;
  }

  return v5;
}

objc_class *__42__HMIVideoAnnotationParser_initWithArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:?];
  v5 = [v3 objectForKeyedSubscript:?];
  v6 = [v3 objectForKeyedSubscript:?];
  v7 = [HMIVideoAnalyzerEvent eventClassForShortName:?];
  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:?];
    if (v8)
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:?];

      if (!v9)
      {
        v10 = [MEMORY[0x277CCAD78] UUID];
        [*(a1 + 32) setObject:? forKeyedSubscript:?];
      }

      v11 = [*(a1 + 32) objectForKeyedSubscript:?];
    }

    else
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
    }

    v12 = v11;
    v13 = [MEMORY[0x277CBEB18] array];
    v16 = MEMORY[0x277D85DD0];
    v17 = v5;
    v18 = v13;
    v14 = v13;
    [v6 enumerateObjectsUsingBlock:{v16, 3221225472, __42__HMIVideoAnnotationParser_initWithArray___block_invoke_2, &unk_278753270}];
    v7 = [HMIVideoAnnotationParserTrack initWithEventClass:"initWithEventClass:records:UUID:" records:? UUID:?];
  }

  return v7;
}

void __42__HMIVideoAnnotationParser_initWithArray___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:?];
  [v6 floatValue];

  v7 = [v5 objectAtIndexedSubscript:?];
  [v7 floatValue];

  v8 = [v5 objectAtIndexedSubscript:?];
  [v8 floatValue];

  v9 = [v5 objectAtIndexedSubscript:?];
  [v9 floatValue];

  v10 = [v5 objectAtIndexedSubscript:?];

  [v10 floatValue];
  v11 = *(a1 + 40);
  v12 = [HMIVideoAnnotationParserRecord initWithBoundingBox:"initWithBoundingBox:timeStamp:" timeStamp:?];
  [v11 addObject:?];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastKnownTimeStamp
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  tracks = [(HMIVideoAnnotationParser *)self tracks];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __46__HMIVideoAnnotationParser_lastKnownTimeStamp__block_invoke;
  v9 = &unk_2787532C0;
  v10 = &v11;
  [tracks na_each:?];

  CMTimeMakeWithSeconds(retstr, fmax(v12[3] + -0.05, 0.0), 1000);
  _Block_object_dispose(&v11, 8);
  return result;
}

void __46__HMIVideoAnnotationParser_lastKnownTimeStamp__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = [a2 records];
  v5 = [v4 lastObject];
  [v6 timeStamp];
  v8 = v7;

  if (v3 >= v8)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  *(*(*(a1 + 32) + 8) + 24) = v9;
}

- (id)eventsForTimeStamp:(id *)stamp
{
  time = *stamp;
  CMTimeGetSeconds(&time);
  tracks = [(HMIVideoAnnotationParser *)self tracks];
  v5 = [tracks na_map:?];

  v6 = [MEMORY[0x277CBEB98] setWithArray:?];

  return v6;
}

CGFloat __47__HMIVideoAnnotationParser_eventsForTimeStamp___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, float a9, float a10)
{
  MinX = CGRectGetMinX(*&a1);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  v16 = (CGRectGetMinX(v23) * a9 + a10 * MinX) / (a9 + a10);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMinY(v24);
  v25.origin.x = a5;
  v25.size.height = a8;
  v25.origin.y = a6;
  v25.size.width = a7;
  CGRectGetMinY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetWidth(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetWidth(v27);
  v28.origin.x = a1;
  v28.size.width = a3;
  v28.origin.y = a2;
  v28.size.height = a4;
  CGRectGetHeight(v28);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  CGRectGetHeight(v29);
  return v16;
}

id __47__HMIVideoAnnotationParser_eventsForTimeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 records];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 40) + *(a1 + 48);
      v8 = [v3 records];
      v9 = [v8 objectAtIndexedSubscript:?];
      [v10 timeStamp];
      v12 = v11;

      if (v7 < v12)
      {
        goto LABEL_10;
      }

      v13 = *(a1 + 40) - *(a1 + 48);
      v14 = [v3 records];
      v15 = [v14 objectAtIndexedSubscript:?];
      [v16 timeStamp];
      v18 = v17;

      if (v13 < v18)
      {
        break;
      }

      v19 = v6 + 1;
      v20 = [v3 records];
      if (v6 + 1 >= [v20 count])
      {
      }

      else
      {
        v21 = *(a1 + 40) + *(a1 + 48);
        v22 = [v3 records];
        v23 = [v22 objectAtIndexedSubscript:?];
        [v24 timeStamp];
        v26 = v25;

        if (v21 < v26)
        {
          v31 = *(a1 + 32);
          v63 = [v3 records];
          v32 = [v63 objectAtIndexedSubscript:?];
          [v32 boundingBox];
          v62 = v33;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = [v3 records];
          v41 = [v40 objectAtIndexedSubscript:?];
          [v41 boundingBox];
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v50 = *(a1 + 40);
          v51 = [v3 records];
          v52 = [v51 objectAtIndexedSubscript:?];
          [v53 timeStamp];
          *&v50 = v50 - v54;
          v55 = [v3 records];
          v56 = [v55 objectAtIndexedSubscript:?];
          [v57 timeStamp];
          *&v58 = v58 - *(a1 + 40);
          (*(v31 + 16))(v31, v62, v35, v37, v39, v43, v45, v47, v49, COERCE_DOUBLE(__PAIR64__(LODWORD(v58), LODWORD(v50))));

          [v3 eventClass];
          v59 = [v3 UUID];
          v60 = [HMIVideoAnnotationParser eventForClass:"eventForClass:boundingBox:UUID:" boundingBox:? UUID:?];
LABEL_12:

          goto LABEL_13;
        }
      }

      v27 = [v3 records];
      v28 = [v27 count];

      v6 = v19;
      if (v19 >= v28)
      {
        goto LABEL_10;
      }
    }

    [v3 eventClass];
    v59 = [v3 records];
    v29 = [v59 objectAtIndexedSubscript:?];
    [v29 boundingBox];
    v30 = [v3 UUID];
    v60 = [HMIVideoAnnotationParser eventForClass:"eventForClass:boundingBox:UUID:" boundingBox:? UUID:?];

    goto LABEL_12;
  }

LABEL_10:
  v60 = 0;
LABEL_13:

  return v60;
}

- (id)eventsForFragment
{
  v3 = [MEMORY[0x277CBEB58] set];
  tracks = [(HMIVideoAnnotationParser *)self tracks];
  v8 = v3;
  v5 = v3;
  [tracks na_each:?];

  v6 = [v5 na_map:?];

  return v6;
}

void __45__HMIVideoAnnotationParser_eventsForFragment__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v33 = v3;
  [v3 eventClass];
  if (([v4 containsObject:?] & 1) == 0)
  {
    v5 = [v33 eventClass];
    if (v5 != objc_opt_class())
    {
      v6 = [v33 records];
      v7 = [v6 count];

      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = 0;
      while (1)
      {
        ++v8;
        v9 = [v33 records];
        v10 = [v9 count];

        v11 = v8;
        if (v8 < v10)
        {
          break;
        }

LABEL_8:
        v30 = [v33 records];
        v31 = [v30 count];

        if (v8 >= v31)
        {
          goto LABEL_11;
        }
      }

      while (1)
      {
        v12 = [v33 records];
        v13 = [v12 objectAtIndexedSubscript:?];
        [v13 boundingBox];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [v33 records];
        v23 = [v22 objectAtIndexedSubscript:?];
        [v23 boundingBox];
        LODWORD(v15) = HMICGRectMaxParallelEdgeDistanceRatio(v15, v17, v19, v21, v24, v25, v26, v27);

        if (*&v15 > 0.05)
        {
          break;
        }

        ++v11;
        v28 = [v33 records];
        v29 = [v28 count];

        if (v11 >= v29)
        {
          goto LABEL_8;
        }
      }
    }

    v32 = *(a1 + 32);
    [v33 eventClass];
    [v32 addObject:?];
  }

LABEL_11:
}

id __45__HMIVideoAnnotationParser_eventsForFragment__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [HMIVideoAnnotationParser eventForClass:"eventForClass:boundingBox:UUID:" boundingBox:? UUID:?];

  return v3;
}

+ (id)eventForClass:(Class)class boundingBox:(CGRect)box UUID:(id)d
{
  dCopy = d;
  v7 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
  if (objc_opt_class() == class)
  {
    v9 = [HMIFaceCrop alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    data = [MEMORY[0x277CBEA90] data];
    date = [MEMORY[0x277CBEAA8] date];
    v13 = [HMIFaceCrop initWithUUID:v9 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:" dateCreated:? faceBoundingBox:?];

    v14 = [HMIFaceprint alloc];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    data2 = [MEMORY[0x277CBEA90] data];
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    uUID4 = [MEMORY[0x277CCAD78] UUID];
    v19 = [HMIFaceprint initWithUUID:v14 data:"initWithUUID:data:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];

    v20 = [HMIFaceClassification alloc];
    uUID5 = [MEMORY[0x277CCAD78] UUID];
    v22 = [HMIFaceClassification initWithPersonUUID:v20 sourceUUID:"initWithPersonUUID:sourceUUID:sessionEntityUUID:confidence:familiarity:" sessionEntityUUID:? confidence:? familiarity:?];

    v23 = [HMIFaceRecognition alloc];
    v24 = [MEMORY[0x277CBEB98] setWithObject:?];
    v25 = [HMIFaceRecognition initWithFaceCrop:v23 faceprint:"initWithFaceCrop:faceprint:classifications:predictedLinkedEntityUUIDs:faceQualityScore:sessionEntityAssignment:sessionEntityUUID:" classifications:? predictedLinkedEntityUUIDs:? faceQualityScore:? sessionEntityAssignment:? sessionEntityUUID:?];

    v26 = [HMIVideoAnalyzerEventFace initWithConfidence:"initWithConfidence:boundingBox:faceRecognition:" boundingBox:? faceRecognition:?];
    v8 = [HMIVideoAnalyzerEventPerson initWithConfidence:"initWithConfidence:boundingBox:face:" boundingBox:? face:?];
  }

  else
  {
    v8 = [[class alloc] initWithConfidence:? boundingBox:?];
  }

  return v8;
}

@end