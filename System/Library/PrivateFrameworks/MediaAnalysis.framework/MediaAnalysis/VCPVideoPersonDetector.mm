@interface VCPVideoPersonDetector
- (VCPVideoPersonDetector)init;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags;
- (int)detectPersons:(__CVBuffer *)persons persons:(id)a4;
@end

@implementation VCPVideoPersonDetector

- (VCPVideoPersonDetector)init
{
  v6.receiver = self;
  v6.super_class = VCPVideoPersonDetector;
  v2 = [(VCPVideoPersonDetector *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    persons = v2->_persons;
    v2->_persons = array;
  }

  return v2;
}

- (int)detectPersons:(__CVBuffer *)persons persons:(id)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  CVPixelBufferGetWidth(persons);
  CVPixelBufferGetHeight(persons);
  v6 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x1E69845B8]);
  v9 = [v8 initWithCVPixelBuffer:persons options:MEMORY[0x1E695E0F8]];
  v10 = VCPSignPostLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = VCPSignPostLog(v12);
  v14 = v13;
  context = v6;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPVideoPersonDetectorHumanDetection", "", buf, 2u);
  }

  v50 = 0;
  v15 = [VCPFaceUtils configureVNRequest:&v50 withClass:objc_opt_class() andProcessingVersion:15];
  v16 = v50;
  v17 = v16;
  if (v15)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v54[0] = v16;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v49 = 0;
    v21 = [v9 performRequests:v20 error:&v49];
    v19 = v49;

    if (v21)
    {
      v48 = 0;
      v15 = [VCPFaceUtils configureVNRequest:&v48 withClass:objc_opt_class() andProcessingVersion:15];
      v40 = v48;
      if (v15)
      {
        v18 = 0;
      }

      else
      {
        results = [v17 results];
        [v40 setInputDetectedObjectObservations:results];

        v53 = v40;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
        v47 = v19;
        v24 = [v9 performRequests:v23 error:&v47];
        v39 = v47;

        if (v24)
        {
          v26 = VCPSignPostLog(v25);
          v27 = v26;
          if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v11, "VCPVideoPersonDetectorHumanDetection", "", buf, 2u);
          }

          results2 = [v40 results];
          v29 = results2 == 0;

          if (!v29)
          {
            results3 = [v40 results];
            [array addObjectsFromArray:results3];
          }

          v15 = 0;
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v15 = -18;
        }

        v19 = v39;
      }
    }

    else
    {
      v18 = 0;
      v15 = -18;
    }
  }

  objc_autoreleasePoolPop(v7);
  if (v18)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = array;
    v32 = [v31 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v32)
    {
      v33 = *v44;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v43 + 1) + 8 * i);
          v36 = objc_alloc_init(VCPHuman);
          [v35 boundingBox];
          [(VCPHuman *)v36 setBounds:?];
          [v35 confidence];
          [(VCPHuman *)v36 setConfidence:?];
          torsoprint = [v35 torsoprint];
          [(VCPHuman *)v36 setTorsoprint:torsoprint];

          [v5 addObject:v36];
        }

        v32 = [v31 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v32);
    }
  }

  objc_autoreleasePoolPop(context);
  return v15;
}

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags
{
  frameCopy = frame;
  [(NSMutableArray *)self->_persons removeAllObjects:frame];
  v8 = objc_autoreleasePoolPush();
  LODWORD(frameCopy) = [(VCPVideoPersonDetector *)self detectPersons:frameCopy persons:self->_persons];
  objc_autoreleasePoolPop(v8);
  return frameCopy;
}

@end