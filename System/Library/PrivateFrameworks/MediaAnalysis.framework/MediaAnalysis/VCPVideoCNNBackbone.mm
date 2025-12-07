@interface VCPVideoCNNBackbone
+ (id)sharedModel:(id)model outputNames:(id)names properties:(id)properties;
- (VCPVideoCNNBackbone)initWithConfig:(id)config;
- (int)inference:(float *)inference settling:(BOOL)settling;
@end

@implementation VCPVideoCNNBackbone

+ (id)sharedModel:(id)model outputNames:(id)names properties:(id)properties
{
  modelCopy = model;
  namesCopy = names;
  propertiesCopy = properties;
  v10 = +[VCPSharedInstanceManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__VCPVideoCNNBackbone_sharedModel_outputNames_properties___block_invoke;
  v16[3] = &unk_1E834E480;
  v11 = modelCopy;
  v17 = v11;
  v12 = namesCopy;
  v18 = v12;
  v13 = propertiesCopy;
  v19 = v13;
  v14 = [v10 sharedInstanceWithIdentifier:@"VCPVideoCNNBackboneEspresso" andCreationBlock:v16];

  return v14;
}

VCPCNNModelEspresso *__58__VCPVideoCNNBackbone_sharedModel_outputNames_properties___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:a1[4] inputNames:0 outputNames:a1[5] properties:a1[6]];

  return v1;
}

- (VCPVideoCNNBackbone)initWithConfig:(id)config
{
  v28[2] = *MEMORY[0x1E69E9840];
  configCopy = config;
  self->_outputBeforeFc = 0;
  self->_outputBeforeFcSettling = 0;
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"video_backbone.espresso.net" relativeToURL:resourceURL];
  v26.receiver = self;
  v26.super_class = VCPVideoCNNBackbone;
  v8 = [(VCPVideoCNNBackbone *)&v26 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  outputNames = v8->_outputNames;
  v8->_outputNames = &unk_1F49BEB30;

  v13 = DeviceGeqD5x(v11, v12);
  v27[0] = @"forceNNGraph";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v13 ^ 1];
  v28[0] = v14;
  v27[1] = @"sharedContext";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v13];
  v28[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

  if (DeviceHasANE(v17, v18))
  {
    v19 = [objc_opt_class() sharedModel:v7 outputNames:v9->_outputNames properties:v16];
  }

  else
  {
    v19 = [[VCPCNNModelEspresso alloc] initWithParameters:v7 inputNames:0 outputNames:v9->_outputNames properties:v16];
  }

  modelEspresso = v9->_modelEspresso;
  v9->_modelEspresso = v19;

  v21 = v9->_modelEspresso;
  if (!v21)
  {

    goto LABEL_9;
  }

  v22 = [(VCPCNNModelEspresso *)v21 prepareModelWithConfig:configCopy];

  if (v22)
  {
LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v23 = v9;
LABEL_10:
  v24 = v23;

  return v24;
}

- (int)inference:(float *)inference settling:(BOOL)settling
{
  settlingCopy = settling;
  v6 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:inference];
  if (!v6)
  {
    if (settlingCopy)
    {
      objc_msgSend_outputBlobs(self->_modelEspresso);
      self->_outputBeforeFcSettling = __p[21];
      operator delete(__p);
    }

    else
    {
      objc_msgSend_outputBlobs(self->_modelEspresso);
      self->_outputBeforeSpatiialPooling = *__p;
      operator delete(__p);
      objc_msgSend_outputBlobs(self->_modelEspresso);
      self->_outputBeforeFc = __p[21];
      operator delete(__p);
      objc_msgSend_outputBlobs(self->_modelEspresso);
      self->_outputRes4 = __p[42];
      operator delete(__p);
      objc_msgSend_outputBlobs(self->_modelEspresso);
      self->_outputBeforeTemporalPooling = __p[63];
      operator delete(__p);
      objc_msgSend_outputBlobs(self->_modelEspresso);
      v7 = __p[65];
      objc_msgSend_outputBlobs(self->_modelEspresso);
      v8 = v18[66];
      objc_msgSend_outputBlobs(self->_modelEspresso);
      v9 = v17[67];
      objc_msgSend_outputBlobs(self->_modelEspresso);
      v10 = v16[68];
      operator delete(v16);
      if (v17)
      {
        operator delete(v17);
      }

      v11 = v8 * v7;
      if (v18)
      {
        operator delete(v18);
      }

      v12 = v9 * v11;
      if (__p)
      {
        operator delete(__p);
      }

      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_outputBeforeTemporalPooling length:4 * v12 * v10];
      tensorBeforeTemporalPooling = self->_tensorBeforeTemporalPooling;
      self->_tensorBeforeTemporalPooling = v13;
    }
  }

  return v6;
}

@end