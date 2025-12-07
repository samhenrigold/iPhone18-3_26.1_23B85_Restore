@interface VCPCNNHandKeypointsDetectorEspresso
- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth offset:(float *)offset;
- (id)init:(BOOL)init sharedModel:(BOOL)model modelName:(id)name enableHandObject:(BOOL)object options:(id)options;
- (int)generateHandKeypoints:(CGPoint *)keypoints keypointConfidence:(float *)confidence offset:(float)offset handHoldsObjectConfidence:(float *)objectConfidence;
- (void)dealloc;
@end

@implementation VCPCNNHandKeypointsDetectorEspresso

- (id)init:(BOOL)init sharedModel:(BOOL)model modelName:(id)name enableHandObject:(BOOL)object options:(id)options
{
  objectCopy = object;
  modelCopy = model;
  initCopy = init;
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  optionsCopy = options;
  v13 = &unk_1F49BE830;
  if (!objectCopy)
  {
    v13 = 0;
  }

  v14 = v13;
  self->_enableHandObject = objectCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:initCopy];
  [dictionary setObject:v16 forKey:@"forceCPU"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:modelCopy];
  [dictionary setObject:v17 forKey:@"forceCPU"];

  v18 = [optionsCopy objectForKeyedSubscript:@"planPriority"];

  if (v18)
  {
    v19 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
    if ([v19 intValue] == 1)
    {

LABEL_7:
      v22 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
      intValue = [v22 intValue];

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:intValue];
      [dictionary setObject:v24 forKey:@"planPriority"];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:intValue];
        *buf = 138412290;
        v51 = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNHandKeypointsDetectorEspresso - espresso plan priority is set to %@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    v20 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
    intValue2 = [v20 intValue];

    if (intValue2 == 0x2000)
    {
      goto LABEL_7;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v26 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
      *buf = 67109120;
      LODWORD(v51) = [v26 intValue];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPCNNHandKeypointsDetectorEspresso - invalid input espresso plan priority %d", buf, 8u);
    }
  }

LABEL_13:
  v49.receiver = self;
  v49.super_class = VCPCNNHandKeypointsDetectorEspresso;
  v27 = [(VCPCNNHandKeypointsDetectorEspresso *)&v49 init];
  if (v27)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    v30 = [MEMORY[0x1E695DFF8] URLWithString:nameCopy relativeToURL:resourceURL];
    v31 = [[VCPCNNModelEspresso alloc] initWithParameters:v30 inputNames:0 outputNames:v14 properties:dictionary];
    modelEspresso = v27->_modelEspresso;
    v27->_modelEspresso = v31;

    v33 = v27->_modelEspresso;
    if (!v33 || [(VCPCNNModelEspresso *)v33 prepareModelWithConfig:&stru_1F496CB30])
    {
      v34 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v35 = v27->_modelEspresso;
    if (v35 && (objc_msgSend_inputBlob(v35), (v36 = v27->_modelEspresso) != 0))
    {
      v37 = v52;
      objc_msgSend_inputBlob(v36);
      v38 = v27->_modelEspresso;
      v39 = v48 * v37;
      if (v38)
      {
        objc_msgSend_inputBlob(v38);
        v40 = v47;
LABEL_24:
        v41 = v39 * v40;
        if (v41 >> 62)
        {
          v42 = -1;
        }

        else
        {
          v42 = 4 * v41;
        }

        v43 = operator new[](v42, MEMORY[0x1E69E5398]);
        v27->_inputData = v43;
        v27->_forceCPU = initCopy;
        if (v43)
        {
          v34 = v27;
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = 0;
    goto LABEL_24;
  }

  v34 = 0;
LABEL_31:
  v44 = v34;

  return v44;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNHandKeypointsDetectorEspresso;
  [(VCPCNNHandKeypointsDetectorEspresso *)&v4 dealloc];
}

- (float)getInputBuffer:(int)buffer srcWidth:(int)width cnnInputHeight:(int *)height cnnInputWidth:(int *)inputWidth offset:(float *)offset
{
  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    objc_msgSend_inputBlob(modelEspresso, a2, *&buffer, *&width);
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  *height = v12;
  v13 = self->_modelEspresso;
  if (v13)
  {
    objc_msgSend_inputBlob(v13);
    v14 = v17;
  }

  else
  {
    v14 = 0;
  }

  *inputWidth = v14;
  v15 = 2.0;
  if (self->_forceCPU)
  {
    v15 = 0.0;
  }

  *offset = v15;
  return self->_inputData;
}

- (int)generateHandKeypoints:(CGPoint *)keypoints keypointConfidence:(float *)confidence offset:(float)offset handHoldsObjectConfidence:(float *)objectConfidence
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = VCPSignPostLog(self);
  v11 = os_signpost_id_generate(v10);

  v13 = VCPSignPostLog(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "inferenceHandKeypointCallFromSPI", "", buf, 2u);
  }

  v15 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (v15)
  {
    return v15;
  }

  v16 = VCPSignPostLog(v15);
  v17 = v16;
  if (v11 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v16))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_END, v11, "inferenceHandKeypointCallFromSPI", "", buf, 2u);
  }

  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    objc_msgSend_inputBlob(modelEspresso);
    v20 = self->_modelEspresso;
    v21 = v40;
    if (v20)
    {
      objc_msgSend_inputBlob(v20);
      v22 = v39;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (self->_enableHandObject)
  {
    objc_msgSend_outputBlobs(self->_modelEspresso);
    v23 = *(*&buf[0] + 96);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    objc_msgSend_outputBlobs(self->_modelEspresso);
    v24 = *(*&buf[0] + 88);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    objc_msgSend_outputBlobs(self->_modelEspresso);
    v25 = *(*&buf[0] + 80);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    objc_msgSend_outputBlobs(self->_modelEspresso);
    confidenceCopy6 = confidence;
    keypointsCopy5 = keypoints;
    v28 = **&buf[0];
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    goto LABEL_24;
  }

  v29 = self->_modelEspresso;
  if (!v29)
  {
    confidenceCopy6 = confidence;
    v23 = 0;
LABEL_22:
    keypointsCopy5 = keypoints;
    v24 = 0;
LABEL_23:
    v28 = 0;
    v25 = 0;
    goto LABEL_24;
  }

  objc_msgSend_outputBlob(v29);
  v30 = self->_modelEspresso;
  v23 = v41;
  if (!v30)
  {
    confidenceCopy6 = confidence;
    goto LABEL_22;
  }

  objc_msgSend_outputBlob(v30);
  v24 = v40;
  v31 = self->_modelEspresso;
  if (!v31)
  {
    confidenceCopy6 = confidence;
    keypointsCopy5 = keypoints;
    goto LABEL_23;
  }

  objc_msgSend_outputBlob(v31);
  v32 = self->_modelEspresso;
  v25 = v39;
  if (v32)
  {
    objc_msgSend_outputBlob(v32);
    confidenceCopy6 = confidence;
    keypointsCopy5 = keypoints;
    v28 = *&buf[0];
  }

  else
  {
    confidenceCopy6 = confidence;
    keypointsCopy5 = keypoints;
    v28 = 0;
  }

LABEL_24:
  *&v18 = offset;
  LODWORD(v15) = [(VCPCNNHandKeypointsDetector *)self cvtHeatmaps2Keypoints:v28 outHeight:v24 outWidth:v25 inHeight:v21 inWidth:v22 outChannel:v23 keypoints:v18 keypointConfidence:keypointsCopy5 offset:confidenceCopy6];
  if (!v15 && objectConfidence && self->_enableHandObject)
  {
    objc_msgSend_outputBlobs(self->_modelEspresso);
    v33 = **(*&buf[0] + 168);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    v34 = expf(v33);
    *objectConfidence = v34 / (v34 + 1.0);
    if (MediaAnalysisLogLevel() >= 7)
    {
      LODWORD(v15) = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (!v15)
      {
        return v15;
      }

      v35 = *objectConfidence;
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = v35;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNHandKeypointsDetectorEspresso - handHoldsObjectConfidence = %f", buf, 0xCu);
    }

    LODWORD(v15) = 0;
  }

  return v15;
}

@end