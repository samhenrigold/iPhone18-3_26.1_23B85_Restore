@interface HMIHTMLReport
+ (id)boxForRegionOfInterest:(CGRect)interest;
+ (id)boxesForEvent:(id)event isTruth:(BOOL)truth;
- (HMIHTMLReport)initWithTitle:(id)title outputPath:(id)path;
- (id)_loadResource:(id)resource withExtension:(id)extension;
- (void)appendFaceCrop:(id)crop imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor;
- (void)appendFragmentResult:(id)result;
- (void)appendFragmentResult:(id)result assetPath:(id)path;
- (void)appendFrame:(id)frame text:(id)text boxes:(id)boxes imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor;
- (void)appendFrameResult:(id)result frameTruth:(id)truth description:(id)description;
- (void)appendHeaderWithTitle:(id)title textColor:(id)color backgroundColor:(id)backgroundColor;
- (void)appendJPEG:(id)g imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor;
- (void)appendString:(id)string;
- (void)appendText:(id)text;
- (void)dealloc;
- (void)flush;
@end

@implementation HMIHTMLReport

- (HMIHTMLReport)initWithTitle:(id)title outputPath:(id)path
{
  titleCopy = title;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = HMIHTMLReport;
  v8 = [(HMIHTMLReport *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputPath, path);
    v10 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:? append:?];
    stream = v9->_stream;
    v9->_stream = v10;

    stream = [(HMIHTMLReport *)v9 stream];
    [stream open];

    [HMIHTMLReport appendHeaderWithTitle:v9 textColor:"appendHeaderWithTitle:textColor:backgroundColor:" backgroundColor:?];
  }

  return v9;
}

- (void)dealloc
{
  [(HMIHTMLReport *)self appendString:?];
  stream = [(HMIHTMLReport *)self stream];
  [stream close];

  outputPath = [(HMIHTMLReport *)self outputPath];
  NSLog(&cfstr_VisualizerSave.isa, outputPath);

  v5.receiver = self;
  v5.super_class = HMIHTMLReport;
  [(HMIHTMLReport *)&v5 dealloc];
}

- (id)_loadResource:(id)resource withExtension:(id)extension
{
  v5 = MEMORY[0x277CCA8D8];
  extensionCopy = extension;
  resourceCopy = resource;
  objc_opt_class();
  v8 = [v5 bundleForClass:?];
  v9 = [v8 URLForResource:? withExtension:?];

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];

  return v11;
}

- (void)appendHeaderWithTitle:(id)title textColor:(id)color backgroundColor:(id)backgroundColor
{
  backgroundColorCopy = backgroundColor;
  colorCopy = color;
  titleCopy = title;
  v13 = [HMIHTMLReport _loadResource:"_loadResource:withExtension:" withExtension:?];
  v11 = [HMIHTMLReport _loadResource:"_loadResource:withExtension:" withExtension:?];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:titleCopy, v13, colorCopy, backgroundColorCopy, v11];

  [(HMIHTMLReport *)self appendString:?];
}

- (void)appendString:(id)string
{
  v6 = [string dataUsingEncoding:?];
  stream = [(HMIHTMLReport *)self stream];
  v5 = v6;
  [v6 bytes];
  [v6 length];
  [stream write:? maxLength:?];
}

- (void)appendText:(id)text
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:text];
  [(HMIHTMLReport *)self appendString:?];
}

- (void)appendFrame:(id)frame text:(id)text boxes:(id)boxes imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor
{
  v9 = *&outlineBorder;
  v11 = *&border;
  textCopy = text;
  colorCopy = color;
  outlineColorCopy = outlineColor;
  boxesCopy = boxes;
  frameCopy = frame;
  [frameCopy size];
  v20 = v19;
  [frameCopy size];
  if (v20 >= v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = 480.0 / v22;
  if (v23 > 1.0)
  {
    v23 = 1.0;
  }

  v24 = fmax(v23, 0.0);
  v25 = v24;
  [frameCopy size];
  v27 = v26 * v25;
  [frameCopy size];
  v29 = v28 * v25;
  v30 = [frameCopy compressedFrameWithScale:? quality:? error:?];

  v42 = 0;
  array = [MEMORY[0x277CBEB18] array];
  if (v11 >= 1)
  {
    if ([colorCopy length])
    {
      if (![colorCopy length])
      {
        goto LABEL_12;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:v11, colorCopy];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v11, v41];
    }
    v32 = ;
    [array addObject:?];
  }

LABEL_12:
  v33 = v27;
  if (v9 < 1)
  {
    goto LABEL_18;
  }

  if ([outlineColorCopy length])
  {
    if (![outlineColorCopy length])
    {
      goto LABEL_18;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:v9, outlineColorCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:v9, v41];
  }
  v35 = ;
  [array addObject:?];

LABEL_18:
  v36 = MEMORY[0x277CCACA8];
  base64Encoded = [v30 base64Encoded];
  v38 = [array componentsJoinedByString:?];
  v34 = v29;
  v39 = [v36 stringWithFormat:v33, v34, base64Encoded, v38];
  [(HMIHTMLReport *)self appendString:?];

  [boxesCopy enumerateObjectsUsingBlock:?];
  if ([textCopy length])
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:textCopy];
    [(HMIHTMLReport *)self appendString:?];
  }

  [(HMIHTMLReport *)self appendString:?];
}

void __90__HMIHTMLReport_appendFrame_text_boxes_imageBorder_imageColor_outlineBorder_outlineColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  [v5 boundingBox];
  v7 = (v6 * *(a1 + 40));
  [v5 boundingBox];
  v9 = (v8 * *(a1 + 44));
  [v5 boundingBox];
  v11 = (v10 * *(a1 + 44));
  [v5 boundingBox];
  v13 = (v12 * *(a1 + 40));
  v20 = [v5 color];
  [v5 opacity];
  v15 = v14;
  [v5 value];
  v17 = v16;
  v18 = [v5 text];

  v19 = [v4 stringWithFormat:v7, v9, v11, v13, v20, *&v15, *&v17, v18];
  [v3 appendString:?];
}

- (void)appendFaceCrop:(id)crop imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor
{
  outlineColorCopy = outlineColor;
  colorCopy = color;
  dataRepresentation = [crop dataRepresentation];
  [HMIHTMLReport appendJPEG:"appendJPEG:imageBorder:imageColor:outlineBorder:outlineColor:" imageBorder:? imageColor:? outlineBorder:? outlineColor:?];
}

- (void)appendJPEG:(id)g imageBorder:(int)border imageColor:(id)color outlineBorder:(int)outlineBorder outlineColor:(id)outlineColor
{
  v8 = *&outlineBorder;
  v9 = *&border;
  colorCopy = color;
  outlineColorCopy = outlineColor;
  gCopy = g;
  v15 = [HMIVisionUtilities createPixelBufferFromJPEGData:"createPixelBufferFromJPEGData:error:" error:?];
  Size = HMICVPixelBufferGetSize(v15);
  v18 = v17;
  CVPixelBufferRelease(v15);
  v19 = [gCopy base64EncodedStringWithOptions:?];

  array = [MEMORY[0x277CBEB18] array];
  if (v9 >= 1)
  {
    if ([colorCopy length])
    {
      if (![colorCopy length])
      {
        goto LABEL_7;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:v9, colorCopy];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v9, v30];
    }
    v21 = ;
    [array addObject:?];
  }

LABEL_7:
  if (v8 >= 1)
  {
    if (![outlineColorCopy length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v8, v30];
      goto LABEL_12;
    }

    if ([outlineColorCopy length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v8, outlineColorCopy];
      v22 = LABEL_12:;
      [array addObject:?];
    }
  }

  v23 = v18;
  v24 = Size;
  v25 = MEMORY[0x277CCACA8];
  v26 = v24;
  v27 = v23;
  v28 = [array componentsJoinedByString:?];
  v29 = [v25 stringWithFormat:v26, v27, v19, v28];
  [(HMIHTMLReport *)self appendString:?];

  [(HMIHTMLReport *)self appendString:?];
}

- (void)appendFragmentResult:(id)result
{
  frameResults = [result frameResults];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __38__HMIHTMLReport_appendFragmentResult___block_invoke;
  v8 = &unk_278752710;
  selfCopy = self;
  [frameResults na_each:?];
}

void __38__HMIHTMLReport_appendFragmentResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 frame];
  if (v4)
  {
    [&time presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:Seconds];
  [*(a1 + 32) appendFrameResult:? frameTruth:? description:?];
}

- (void)appendFragmentResult:(id)result assetPath:(id)path
{
  resultCopy = result;
  pathCopy = path;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  v9 = [[HMIVideoFragment alloc] initWithData:?];
  v10 = [[HMIVideoFrameGenerator alloc] initWithVideoFragment:?];
  frameResults = [resultCopy frameResults];
  v12 = [frameResults na_map:?];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_2;
  v20 = &unk_278752780;
  v21 = resultCopy;
  v22 = v12;
  v23 = pathCopy;
  selfCopy = self;
  v13 = pathCopy;
  v14 = v12;
  v15 = resultCopy;
  v16 = MEMORY[0x2318CB8E0](&v17);
  [(HMIVideoFrameGenerator *)v10 generateVideoFramesForTimes:v17 completionHandler:v18, v19, v20];
}

id __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  v3 = [a2 frame];
  if (v3)
  {
    [v6 presentationTimeStamp];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [v2 valueWithCMTime:?];

  return v4;
}

void __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_2(id *a1, void *a2)
{
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_3;
  v12 = &unk_278752758;
  v4 = a1 + 7;
  v5 = a1[4];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = *v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v13 = v8;
  v14 = v7;
  [a2 enumerateObjectsUsingBlock:{v9, 3221225472, __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_3, &unk_278752758}];
}

void __48__HMIHTMLReport_appendFragmentResult_assetPath___block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HMIVideoAnalyzerFrameResult alloc];
  v7 = [a1[4] frameResults];
  v8 = [v7 objectAtIndexedSubscript:?];
  v9 = [v8 events];
  v10 = [a1[4] frameResults];
  v11 = [v10 objectAtIndexedSubscript:?];
  [v11 regionOfInterest];
  v12 = [HMIVideoAnalyzerFrameResult initWithFrame:v6 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];

  v13 = MEMORY[0x277CCACA8];
  v14 = [a1[5] count];
  v15 = [a1[6] lastPathComponent];
  if (v5)
  {
    [&time presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v16 = [v13 stringWithFormat:a3, v14, v15, CMTimeGetSeconds(&time)];

  [a1[7] appendFrameResult:? frameTruth:? description:?];
}

- (void)appendFrameResult:(id)result frameTruth:(id)truth description:(id)description
{
  v33 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  truthCopy = truth;
  v10 = MEMORY[0x277CBEB18];
  descriptionCopy = description;
  array = [v10 array];
  if (truthCopy)
  {
    events = [truthCopy events];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke;
    v30 = &unk_2787527A8;
    v31 = array;
    [events enumerateObjectsUsingBlock:?];
  }

  [resultCopy regionOfInterest];
  if (!CGRectIsEmpty(v34))
  {
    [resultCopy regionOfInterest];
    v14 = [HMIHTMLReport boxForRegionOfInterest:?];
    [array addObject:?];
  }

  v15 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:? ascending:?];
  events2 = [resultCopy events];
  allObjects = [events2 allObjects];
  v32 = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v19 = [allObjects sortedArrayUsingDescriptors:?];

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke_2;
  v25 = &unk_2787527D0;
  v26 = array;
  v20 = array;
  [v19 na_each:?];
  frame = [resultCopy frame];
  [HMIHTMLReport appendFrame:"appendFrame:text:boxes:imageBorder:imageColor:outlineBorder:outlineColor:" text:&stru_284057FB8 boxes:? imageBorder:? imageColor:? outlineBorder:? outlineColor:?];
}

void __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HMIHTMLReport boxesForEvent:"boxesForEvent:isTruth:" isTruth:?];
  [v2 addObjectsFromArray:?];
}

void __58__HMIHTMLReport_appendFrameResult_frameTruth_description___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HMIHTMLReport boxesForEvent:"boxesForEvent:isTruth:" isTruth:?];
  [v2 addObjectsFromArray:?];
}

+ (id)boxesForEvent:(id)event isTruth:(BOOL)truth
{
  eventCopy = event;
  array = [MEMORY[0x277CBEB18] array];
  v10 = eventCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v10 boundingBox];
  if (!CGRectIsEmpty(v64))
  {
    if (truth)
    {
      v13 = &stru_284057FB8;
    }

    else
    {
      if (v12 && ([v12 sessionEntityUUID], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = v14;
        uUIDString = [v14 UUIDString];
        v17 = [uUIDString substringToIndex:?];
      }

      else
      {
        v17 = &stru_284057FB8;
      }

      v18 = MEMORY[0x277CCACA8];
      confidence = [v10 confidence];
      [confidence value];
      v13 = [v18 stringWithFormat:v20, v17];
    }

    v21 = [HMIHTMLReportBox alloc];
    [v10 boundingBox];
    objc_opt_class();
    v22 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:?];
    if (!truth)
    {
      confidence2 = [v10 confidence];
      [confidence2 value];
    }

    v23 = [HMIHTMLReportBox initWithBoundingBox:v21 text:"initWithBoundingBox:text:color:opacity:value:" color:? opacity:? value:?];
    [array addObject:?];

    if (!truth)
    {
    }
  }

  if (v12)
  {
    face = [v12 face];
    if (face)
    {
      v25 = face;
      face2 = [v12 face];
      [face2 boundingBox];
      IsEmpty = CGRectIsEmpty(v65);

      if (!IsEmpty)
      {
        face3 = [v12 face];
        if (truth)
        {
          v29 = &stru_284057FB8;
        }

        else
        {
          face4 = [v12 face];
          faceRecognition = [face4 faceRecognition];
          classifications = [faceRecognition classifications];
          hmf_isEmpty = [classifications hmf_isEmpty];

          if (hmf_isEmpty)
          {
            v33 = MEMORY[0x277CCACA8];
            confidence3 = [face3 confidence];
            [confidence3 value];
            v29 = [v33 stringWithFormat:v35];
          }

          else
          {
            face5 = [v12 face];
            faceRecognition2 = [face5 faceRecognition];
            classifications2 = [faceRecognition2 classifications];
            confidence3 = [classifications2 anyObject];

            v61 = MEMORY[0x277CCACA8];
            confidence4 = [face3 confidence];
            [confidence4 value];
            v40 = v39;
            if ([confidence3 fromTorsoClassification])
            {
              v41 = @"T";
            }

            else
            {
              v41 = @"F";
            }

            [confidence3 confidence];
            v43 = v42;
            hmf_isEmpty = [confidence3 personUUID];
            uUIDString2 = [hmf_isEmpty UUIDString];
            v44 = [uUIDString2 substringToIndex:?];
            v29 = [v61 stringWithFormat:v40, v41, v43, v44];
          }
        }

        v45 = [HMIHTMLReportBox alloc];
        [face3 boundingBox];
        objc_opt_class();
        v46 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:?];
        if (!truth)
        {
          hmf_isEmpty = [face3 confidence];
          [hmf_isEmpty value];
        }

        v47 = [HMIHTMLReportBox initWithBoundingBox:v45 text:"initWithBoundingBox:text:color:opacity:value:" color:? opacity:? value:?];
        [array addObject:?];

        if (!truth)
        {
        }
      }
    }

    torso = [v12 torso];
    if (torso)
    {
      v49 = torso;
      torso2 = [v12 torso];
      [torso2 boundingBox];
      v51 = CGRectIsEmpty(v66);

      if (!v51)
      {
        torso3 = [v12 torso];
        v53 = [HMIHTMLReportBox alloc];
        [torso3 boundingBox];
        if (truth)
        {
          v54 = &stru_284057FB8;
        }

        else
        {
          v55 = MEMORY[0x277CCACA8];
          torso2 = [torso3 confidence];
          [torso2 value];
          v54 = [v55 stringWithFormat:v56];
        }

        objc_opt_class();
        v57 = [HMIVideoAnalyzerEvent rgbColorCodeForEventClass:?];
        if (!truth)
        {
          uUIDString2 = [torso3 confidence];
          [uUIDString2 value];
        }

        v58 = [HMIHTMLReportBox initWithBoundingBox:v53 text:"initWithBoundingBox:text:color:opacity:value:" color:? opacity:? value:?];
        [array addObject:?];

        if (truth)
        {
          torso2 = v57;
        }

        else
        {
        }
      }
    }
  }

  v59 = [array copy];

  return v59;
}

+ (id)boxForRegionOfInterest:(CGRect)interest
{
  v3 = [HMIHTMLReportBox initWithBoundingBox:"initWithBoundingBox:text:color:opacity:value:" text:? color:? opacity:? value:?];

  return v3;
}

- (void)flush
{
  [(HMIHTMLReport *)self appendString:?];
  stream = [(HMIHTMLReport *)self stream];
  [stream close];

  outputPath = [(HMIHTMLReport *)self outputPath];
  NSLog(&cfstr_VisualizerSave.isa, outputPath);
}

@end