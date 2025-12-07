@interface FeatureExtractor
- (BOOL)extractFeaturesFromImage:(__CVBuffer *)image toFeatures:(id *)features callback:(id)callback;
- (FeatureExtractor)initWithMode:(int64_t)mode revision:(int64_t)revision;
- (void)getOutputTensorSize:(id *)size level:(unsigned int)level;
- (void)setupNetworkModel;
@end

@implementation FeatureExtractor

- (FeatureExtractor)initWithMode:(int64_t)mode revision:(int64_t)revision
{
  [(EspressoModel *)self setUsage:?];
  [(FeatureExtractor *)self setRevision:revision];
  [(FeatureExtractor *)self setupNetworkModel];
  espresso_file = self->_espresso_file;
  v11.receiver = self;
  v11.super_class = FeatureExtractor;
  v8 = [(EspressoModel *)&v11 initWithModelName:espresso_file usage:mode];
  if (v8)
  {
    v8->_numLevels = [objc_opt_class() numLevels];
    v9 = v8;
  }

  return v8;
}

- (void)setupNetworkModel
{
  self->_inputBlob = "input_image";
  self->_outputBlobs = &outputBlobNames;
  v8 = 0;
  v9 = 0;
  FRCGetInputFrameSizeForUsage([(EspressoModel *)self usage], &v9, &v8);
  if (v9 <= 0x3E8)
  {
    v3 = @"optical_flow_feature_extractor_pyrlite";
  }

  else
  {
    v3 = @"optical_flow_feature_extractor_pyrlite_HD";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:v3];
  espresso_file = self->_espresso_file;
  self->_espresso_file = v4;

  if (self->_revision != 1)
  {
    v6 = [(NSString *)self->_espresso_file stringByAppendingFormat:@"_rev%ld", self->_revision];
    v7 = self->_espresso_file;
    self->_espresso_file = v6;
  }
}

- (BOOL)extractFeaturesFromImage:(__CVBuffer *)image toFeatures:(id *)features callback:(id)callback
{
  callbackCopy = callback;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_Featureexracto.isa);
LABEL_3:
    v7 = 0;
    goto LABEL_11;
  }

  if (self->_numLevels)
  {
    v8 = 0;
    while (!espresso_network_bind_direct_cvpixelbuffer())
    {
      v8 = (v8 + 1);
      if (self->_numLevels <= v8)
      {
        goto LABEL_8;
      }
    }

    NSLog(&cfstr_Featureexracto_0.isa, v8);
    goto LABEL_3;
  }

LABEL_8:
  kdebug_trace();
  v11 = MEMORY[0x277D85DD0];
  v12 = callbackCopy;
  v9 = espresso_plan_submit();
  v7 = v9 == 0;
  if (v9)
  {
    NSLog(&cfstr_Featureextract.isa, [(EspressoModel *)self usage], v11, 3221225472, __65__FeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke, &unk_278FEA538, v12);
  }

LABEL_11:
  return v7;
}

uint64_t __65__FeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)getOutputTensorSize:(id *)size level:(unsigned int)level
{
  v12 = *MEMORY[0x277D85DE8];
  v11[0] = xmmword_24A8FF120;
  v11[1] = xmmword_24A8FF130;
  v11[2] = xmmword_24A8FF140;
  v9 = 0;
  v10 = 0;
  FRCGetInputFrameSizeForUsage([(EspressoModel *)self usage], &v10, &v9);
  v7 = v9;
  v6 = v10;
  v8 = level + 1;
  do
  {
    v6 = (v6 + 1) >> 1;
    v7 = (v7 + 1) >> 1;
    --v8;
  }

  while (v8);
  size->var0 = v6;
  size->var1 = v7;
  size->var2 = *(v11 + level);
}

@end