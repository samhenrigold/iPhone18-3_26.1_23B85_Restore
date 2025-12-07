@interface VCPHandGestureVideoRequest
- (VCPHandGestureVideoRequest)initWithOptions:(id)options;
- (id)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options error:(id *)error;
- (void)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options completion:(id)completion;
- (void)updateWithOptions:(id)options completion:(id)completion;
@end

@implementation VCPHandGestureVideoRequest

- (VCPHandGestureVideoRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = VCPSignPostLog(optionsCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = VCPSignPostLog(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPHandGestureVideoRequest_initWithOptions", "", buf, 2u);
  }

  v28.receiver = self;
  v28.super_class = VCPHandGestureVideoRequest;
  v10 = [(VCPRequest *)&v28 initWithOptions:optionsCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
    v13 = [optionsCopy objectForKeyedSubscript:@"handPoseLite"];

    if (!v13)
    {
      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"handPoseLite"];
    }

    [v12 setObject:&unk_1F49BBEC0 forKeyedSubscript:@"revision"];
    v14 = [[VCPHandPoseImageRequest alloc] initWithOptions:v12];
    poseImageRequest = v11->_poseImageRequest;
    v11->_poseImageRequest = v14;

    v16 = [VCPHandGestureClassifier alloc];
    *&v17 = v11->super._minHandSize;
    v18 = [(VCPHandGestureClassifier *)v16 initWithMinHandSize:optionsCopy options:v17];
    handGestureClassifier = v11->_handGestureClassifier;
    v11->_handGestureClassifier = v18;

    v20 = *(MEMORY[0x1E6960C80] + 16);
    *&v11->_previousTime.value = *MEMORY[0x1E6960C80];
    v11->_previousTime.epoch = v20;
    v11->_minTimeInterval = 0.19;
    if (!v11->_poseImageRequest || !v11->_handGestureClassifier || (queue = v11->_queue, v11->_queue = 0, queue, v11->super._useAsync) && (v22 = dispatch_queue_create("VCPHandGestureVideoRequestSerialQueue", 0), v23 = v11->_queue, v11->_queue = v22, v23, !v11->_queue))
    {
      v25 = 0;
      goto LABEL_17;
    }
  }

  v24 = VCPSignPostLog(v10);
  v12 = v24;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v6, "VCPHandGestureVideoRequest_initWithOptions", "", buf, 2u);
  }

  v25 = v11;
LABEL_17:

  v26 = v25;
  return v26;
}

- (id)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options error:(id *)error
{
  v113 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v8 = VCPSignPostLog(optionsCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = VCPSignPostLog(v10);
  v12 = v11;
  v75 = v9 - 1;
  spid = v9;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf.var0) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPHandGestureVideoRequest_processBuffer", "", &buf, 2u);
  }

  v82 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"faceRects"];
  v78 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"faceYaws"];
  if ([v82 count])
  {
    firstObject = [v82 firstObject];
    NSRectFromString(firstObject);
  }

  v14 = [(VCPHandPoseImageRequest *)self->_poseImageRequest processImage:buffer withOptions:optionsCopy error:error];
  maxNumOfPersons = self->super._maxNumOfPersons;
  if (maxNumOfPersons >= 3)
  {
    maxNumOfPersons = 3;
  }

  if (maxNumOfPersons <= 1)
  {
    maxNumOfPersons = 1;
  }

  v77 = maxNumOfPersons;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (v16)
  {
    v17 = *v103;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v103 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v102 + 1) + 8 * i);
        v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "groupID")}];
        v21 = [dictionary objectForKeyedSubscript:v20];
        v22 = v21 == 0;

        if (v22)
        {
          v25 = MEMORY[0x1E695DF70];
          v110 = v19;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
          v24 = [v25 arrayWithArray:v23];
          v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "groupID")}];
          [dictionary setObject:v24 forKeyedSubscript:v26];
        }

        else
        {
          v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "groupID")}];
          v24 = [dictionary objectForKeyedSubscript:v23];
          [v24 addObject:v19];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v16);
  }

  allKeys = [dictionary allKeys];
  v28 = [allKeys count];
  v29 = v77;
  if (v77 >= v28)
  {
    v29 = v28;
  }

  v81 = v29;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  allKeys2 = [dictionary allKeys];
  v30 = [allKeys2 countByEnumeratingWithState:&v98 objects:v109 count:16];
  if (v30)
  {
    v86 = *v99;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v99 != v86)
        {
          objc_enumerationMutation(allKeys2);
        }

        v32 = *(*(&v98 + 1) + 8 * j);
        v33 = [dictionary objectForKeyedSubscript:v32];
        if ([v33 count])
        {
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v34 = v33;
          v35 = [v34 countByEnumeratingWithState:&v94 objects:v108 count:16];
          if (v35)
          {
            v36 = *v95;
            v37 = 0.0;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v95 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v94 + 1) + 8 * k);
                [v39 bounds];
                v41 = v40;
                [v39 bounds];
                v43 = v42;

                v44 = v41 * v43;
                v37 = v37 + v44;
              }

              v35 = [v34 countByEnumeratingWithState:&v94 objects:v108 count:16];
            }

            while (v35);
          }

          else
          {
            v37 = 0.0;
          }

          *&v45 = v37 / [v34 count];
          v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
          [dictionary2 setObject:v46 forKeyedSubscript:v32];
        }
      }

      v30 = [allKeys2 countByEnumeratingWithState:&v98 objects:v109 count:16];
    }

    while (v30);
  }

  v47 = [dictionary2 keysSortedByValueUsingComparator:&__block_literal_global_31];
  v48 = MediaAnalysisLogLevel();
  if (v48 >= 7)
  {
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v48)
    {
      LODWORD(buf.var0) = 138412802;
      *(&buf.var0 + 4) = v47;
      LOWORD(buf.var2) = 1024;
      *(&buf.var2 + 2) = v77;
      WORD1(buf.var3) = 1024;
      HIDWORD(buf.var3) = v81;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureVideoRequest - sorted groupIDs based on hand size = %@, max number of persons = %d, number of valid persons = %d", &buf, 0x18u);
    }
  }

  p_previousTime = &self->_previousTime;
  if (self->_previousTime.flags)
  {
    buf = *timestamp;
    *&rhs.value = *&p_previousTime->value;
    rhs.epoch = self->_previousTime.epoch;
    CMTimeSubtract(&time, &buf, &rhs);
    if (CMTimeGetSeconds(&time) > self->_minTimeInterval)
    {
      v50 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"rotationInDegrees"];
      v51 = v50 == 0;

      if (!v51)
      {
        RotationInDegrees = getRotationInDegrees(optionsCopy);
        if ([(VCPHandGestureClassifier *)self->_handGestureClassifier rotationInDegrees]!= RotationInDegrees)
        {
          [(VCPHandGestureClassifier *)self->_handGestureClassifier reset];
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            rotationInDegrees = [(VCPHandGestureClassifier *)self->_handGestureClassifier rotationInDegrees];
            LODWORD(buf.var0) = 67109376;
            HIDWORD(buf.var0) = rotationInDegrees;
            LOWORD(buf.var1) = 1024;
            *(&buf.var1 + 2) = RotationInDegrees;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "gesture rotation updated from %d to %d", &buf, 0xEu);
          }
        }

        [(VCPHandGestureClassifier *)self->_handGestureClassifier setRotationInDegrees:RotationInDegrees];
      }

      v54 = *&timestamp->var0;
      self->_previousTime.epoch = timestamp->var3;
      *&p_previousTime->value = v54;
      array2 = [MEMORY[0x1E695DF70] array];
      for (m = 0; ; ++m)
      {
        v57 = [v47 count];
        v58 = v81 >= v57 ? v57 : v81;
        if (m >= v58)
        {
          break;
        }

        v59 = [v47 objectAtIndexedSubscript:m];
        v60 = [dictionary objectForKeyedSubscript:v59];

        if ([v60 count])
        {
          handGestureClassifier = self->_handGestureClassifier;
          v62 = [v47 objectAtIndexedSubscript:m];
          LODWORD(handGestureClassifier) = -[VCPHandGestureClassifier processPerson:withObservations:andFaceRects:faceYaws:](handGestureClassifier, "processPerson:withObservations:andFaceRects:faceYaws:", [v62 intValue], v60, v82, v78);

          if (handGestureClassifier)
          {

LABEL_77:
            v71 = 0;
            goto LABEL_74;
          }

          [array addObjectsFromArray:v60];
          v63 = [v47 objectAtIndexedSubscript:m];
          [array2 addObject:v63];
        }
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      existingGroupIDs = [(VCPHandGestureClassifier *)self->_handGestureClassifier existingGroupIDs];
      v65 = [existingGroupIDs countByEnumeratingWithState:&v89 objects:v107 count:16];
      if (v65)
      {
        v66 = *v90;
        v67 = MEMORY[0x1E695E0F0];
        while (2)
        {
          for (n = 0; n != v65; ++n)
          {
            if (*v90 != v66)
            {
              objc_enumerationMutation(existingGroupIDs);
            }

            v69 = *(*(&v89 + 1) + 8 * n);
            if ((-[NSObject containsObject:](array2, "containsObject:", v69) & 1) == 0 && -[VCPHandGestureClassifier processPerson:withObservations:andFaceRects:faceYaws:](self->_handGestureClassifier, "processPerson:withObservations:andFaceRects:faceYaws:", [v69 intValue], v67, v67, v67))
            {

              goto LABEL_77;
            }
          }

          v65 = [existingGroupIDs countByEnumeratingWithState:&v89 objects:v107 count:16];
          if (v65)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v70 = VCPSignPostLog(v48);
  array2 = v70;
  if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    LOWORD(buf.var0) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, array2, OS_SIGNPOST_INTERVAL_END, spid, "VCPHandGestureVideoRequest_processBuffer", "", &buf, 2u);
  }

  v71 = array;
LABEL_74:

  v72 = v71;
  return v71;
}

- (void)updateWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__VCPHandGestureVideoRequest_updateWithOptions_completion___block_invoke;
    block[3] = &unk_1E834DBD8;
    block[4] = self;
    v12 = optionsCopy;
    v13 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPHandGestureVideoRequest : queue not available for async updateWithOptions", v10, 2u);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

void __59__VCPHandGestureVideoRequest_updateWithOptions_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 64);
  v8 = 0;
  v4 = [v3 updateWithOptions:v2 error:&v8];
  v5 = v8;
  v6 = a1[6];
  if (v4)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (self->_queue)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = CFRetain(buffer);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__VCPHandGestureVideoRequest_processBuffer_timestamp_withOptions_completion___block_invoke;
    block[3] = &unk_1E834DC00;
    block[4] = self;
    v17 = buf;
    v18 = *&timestamp->var0;
    var3 = timestamp->var3;
    v15 = optionsCopy;
    v16 = completionCopy;
    dispatch_async(queue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPHandGestureVideoRequest : queue not available for async processBuffer", buf, 2u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __77__VCPHandGestureVideoRequest_processBuffer_timestamp_withOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 24);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = 0;
  v5 = [v3 processBuffer:v2 timestamp:&v9 withOptions:v4 error:&v8];
  v6 = v8;
  v7 = *(*(*(a1 + 56) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  (*(*(a1 + 48) + 16))();
}

@end