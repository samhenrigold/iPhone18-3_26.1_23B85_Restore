@interface VCPVideoCaptionEncoder
+ (id)sharedModel:(id)model properties:(id)properties;
- (VCPVideoCaptionEncoder)initWithModelPath:(id)path;
- (int)inference:(float *)inference;
@end

@implementation VCPVideoCaptionEncoder

- (VCPVideoCaptionEncoder)initWithModelPath:(id)path
{
  v59[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v38.receiver = self;
  v38.super_class = VCPVideoCaptionEncoder;
  v5 = [(VCPVideoCaptionEncoder *)&v38 init];
  if (v5)
  {
    v6 = MediaAnalysisLogLevel();
    if (v6 >= 7)
    {
      v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        *buf = 138412290;
        *&buf[4] = pathCopy;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VideoCaption] VCPVideoCaptionEncoder: start loading model at: %@", buf, 0xCu);
      }
    }

    if (pathCopy)
    {
      v5->_forceNNGraph = !DeviceGeqD5x(v6, v7);
      v8 = [MEMORY[0x1E695DFF8] URLWithString:@"model_info.json" relativeToURL:pathCopy];
      v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8];
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:0];
      v11 = v10;
      if (v5->_forceNNGraph)
      {
        v12 = [v10 objectForKeyedSubscript:@"net_file"];
        [v12 objectForKeyedSubscript:@"d4x"];
      }

      else
      {
        v12 = [v10 objectForKeyedSubscript:@"net_file"];
        [v12 objectForKeyedSubscript:@"d5x"];
      }
      v14 = ;

      v15 = [MEMORY[0x1E695DFF8] URLWithString:v14 relativeToURL:pathCopy];
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoCaption] VCPVideoCaptionEncoder: model to load %@", buf, 0xCu);
      }

      v58[0] = @"forceNNGraph";
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v5->_forceNNGraph];
      v58[1] = @"sharedContext";
      v59[0] = v16;
      v17 = [MEMORY[0x1E696AD98] numberWithBool:!v5->_forceNNGraph];
      v59[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];

      v19 = [objc_opt_class() sharedModel:v15 properties:v18];
      modelEspresso = v5->_modelEspresso;
      v5->_modelEspresso = v19;

      v21 = v5->_modelEspresso;
      if (!v21 || [(VCPCNNModelEspresso *)v21 prepareModelWithConfig:&stru_1F496CB30])
      {
        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }

      if (MediaAnalysisLogLevel() < 5)
      {
LABEL_31:
        v13 = v5;
        if (MediaAnalysisLogLevel() >= 5)
        {
          v13 = v5;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoCaption] VCPVideoCaptionEncoder: successfully loaded model", buf, 2u);
            v13 = v5;
          }
        }

        goto LABEL_16;
      }

      v24 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

        goto LABEL_31;
      }

      v26 = v5->_modelEspresso;
      if (v26)
      {
        objc_msgSend_inputBlob(v26);
        v27 = v46;
        v28 = v5->_modelEspresso;
        if (v28)
        {
          objc_msgSend_inputBlob(v28);
          v33 = v37;
          v34 = v27;
          v29 = v5->_modelEspresso;
          if (v29)
          {
            objc_msgSend_inputBlob(v29);
            v30 = v36;
            v31 = v5->_modelEspresso;
            if (v31)
            {
              objc_msgSend_inputBlob(v31);
              v32 = v35;
LABEL_29:
              *v50 = 67109888;
              v51 = v34;
              v52 = 1024;
              v53 = v33;
              v54 = 1024;
              v55 = v30;
              v56 = 1024;
              v57 = v32;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VideoCaption] VCPVideoCaptionEncoder: inputBlob.nframes = %d, inputBlob.height = %d, inputBlob.width = %d, inputBlob.channels = %d", v50, 0x1Au);
              goto LABEL_30;
            }

LABEL_28:
            v32 = 0;
            goto LABEL_29;
          }

LABEL_27:
          v30 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        v27 = 0;
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        *buf = 0u;
        v40 = 0u;
      }

      v33 = 0;
      v34 = v27;
      goto LABEL_27;
    }
  }

  v13 = 0;
LABEL_17:
  v22 = v13;

  return v22;
}

+ (id)sharedModel:(id)model properties:(id)properties
{
  modelCopy = model;
  propertiesCopy = properties;
  v7 = +[VCPSharedInstanceManager sharedManager];
  v8 = MEMORY[0x1E696AEC0];
  absoluteString = [modelCopy absoluteString];
  v10 = [v8 stringWithFormat:@"%@_%@", @"VCPVideoCaptionEncoder", absoluteString];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__VCPVideoCaptionEncoder_sharedModel_properties___block_invoke;
  v15[3] = &unk_1E834CD98;
  v11 = modelCopy;
  v16 = v11;
  v12 = propertiesCopy;
  v17 = v12;
  v13 = [v7 sharedInstanceWithIdentifier:v10 andCreationBlock:v15];

  return v13;
}

VCPCNNModelEspresso *__49__VCPVideoCaptionEncoder_sharedModel_properties___block_invoke(uint64_t a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:*(a1 + 32) inputNames:0 outputNames:0 properties:*(a1 + 40)];

  return v1;
}

- (int)inference:(float *)inference
{
  v4 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:inference];
  if (!v4)
  {
    modelEspresso = self->_modelEspresso;
    if (modelEspresso)
    {
      objc_msgSend_outputBlob(modelEspresso);
      v6 = self->_modelEspresso;
      self->_embeddingHeight = v14;
      if (v6)
      {
        objc_msgSend_outputBlob(v6);
        v7 = self->_modelEspresso;
        self->_embeddingWidth = v13;
        if (v7)
        {
          objc_msgSend_outputBlob(v7);
          v8 = self->_modelEspresso;
          self->_embeddingChannels = v15;
          if (v8)
          {
            objc_msgSend_outputBlob(v8);
            v9 = self->_modelEspresso;
            self->_embeddingSequenceLength = v16;
            if (v9)
            {
              objc_msgSend_outputBlob(v9);
              v10 = v12;
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_12;
          }

LABEL_11:
          v10 = 0;
          self->_embeddingSequenceLength = 0;
LABEL_12:
          self->_videoEmbedding = v10;
          return v4;
        }

LABEL_10:
        self->_embeddingChannels = 0;
        goto LABEL_11;
      }
    }

    else
    {
      self->_embeddingHeight = 0;
    }

    self->_embeddingWidth = 0;
    goto LABEL_10;
  }

  return v4;
}

@end