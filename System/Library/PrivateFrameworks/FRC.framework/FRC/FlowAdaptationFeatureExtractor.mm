@interface FlowAdaptationFeatureExtractor
- (BOOL)extractFeaturesFromImage:(__CVBuffer *)image toFeatures:(id *)features callback:(id)callback;
- (FlowAdaptationFeatureExtractor)initWithMode:(int64_t)mode revision:(int64_t)revision;
- (void)getOutputTensorSize:(id *)size level:(unsigned int)level;
- (void)setupNetworkModel;
@end

@implementation FlowAdaptationFeatureExtractor

- (FlowAdaptationFeatureExtractor)initWithMode:(int64_t)mode revision:(int64_t)revision
{
  [(EspressoModel *)self setUsage:?];
  [(FeatureExtractor *)self setRevision:revision];
  [(FlowAdaptationFeatureExtractor *)self setupNetworkModel];
  espresso_file = self->super._espresso_file;
  v10.receiver = self;
  v10.super_class = FlowAdaptationFeatureExtractor;
  v8 = [(EspressoModel *)&v10 initWithModelName:espresso_file usage:mode];
  if (!v8)
  {
    NSLog(&cfstr_ErrorFailedToC_14.isa, mode);
  }

  return v8;
}

- (void)setupNetworkModel
{
  self->super._inputBlob = "0";
  self->super._outputBlobs = &outputBlobNames_2;
  espresso_file = self->super._espresso_file;
  self->super._espresso_file = @"flow_adaptation_feature_extractor";

  if ([(FeatureExtractor *)self revision]!= 1)
  {
    self->super._espresso_file = [(NSString *)self->super._espresso_file stringByAppendingFormat:@"_rev%ld", [(FeatureExtractor *)self revision]];

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)extractFeaturesFromImage:(__CVBuffer *)image toFeatures:(id *)features callback:(id)callback
{
  callbackCopy = callback;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_Flowadaptation_0.isa);
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_Flowadaptation_1.isa);
    goto LABEL_5;
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = callbackCopy;
  v9 = espresso_plan_submit();
  v7 = v9 == 0;
  if (v9)
  {
    NSLog(&cfstr_Flowadaptation_2.isa, [(EspressoModel *)self usage], v10, 3221225472, __79__FlowAdaptationFeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke, &unk_278FEA538, v11);
  }

LABEL_6:
  return v7;
}

uint64_t __79__FlowAdaptationFeatureExtractor_extractFeaturesFromImage_toFeatures_callback___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getOutputTensorSize:(id *)size level:(unsigned int)level
{
  v5.receiver = self;
  v5.super_class = FlowAdaptationFeatureExtractor;
  [(FeatureExtractor *)&v5 getOutputTensorSize:size level:0];
  *&size->var0 = vshrq_n_u64(*&size->var0, 1uLL);
  size->var2 = 64;
}

@end