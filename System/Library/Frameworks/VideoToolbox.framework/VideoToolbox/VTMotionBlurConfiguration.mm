@interface VTMotionBlurConfiguration
+ (NSIndexSet)supportedRevisions;
+ (int64_t)defaultRevision;
- (VTMotionBlurConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
- (void)dealloc;
@end

@implementation VTMotionBlurConfiguration

- (VTMotionBlurConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  flowCopy = flow;
  selfCopy = self;
  v29[4] = *MEMORY[0x1E69E9840];
  if (!loadVEFrameworkOnce(self, a2))
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
LABEL_9:

    return 0;
  }

  v23.receiver = selfCopy;
  v23.super_class = VTMotionBlurConfiguration;
  selfCopy = [(VTMotionBlurConfiguration *)&v23 init];
  if (!selfCopy)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_9;
  }

  v13 = [objc_alloc(NSClassFromString(&cfstr_Vemotionblurco.isa)) initWithFrameWidth:width frameHeight:height usePrecomputedFlow:flowCopy qualityPrioritization:prioritization revision:revision];
  selfCopy->_veConfiguration = v13;
  if (!v13)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    goto LABEL_9;
  }

  selfCopy->_frameWidth = width;
  selfCopy->_frameHeight = height;
  selfCopy->_usePrecomputedFlow = flowCopy;
  selfCopy->_qualityPrioritization = prioritization;
  selfCopy->_revision = revision;
  v14 = [-[VEMotionBlurConfiguration framePreferredPixelFormats](v13 "framePreferredPixelFormats")];
  selfCopy->_frameSupportedPixelFormats = v14;
  v15 = *MEMORY[0x1E6966130];
  v29[0] = v14;
  v16 = *MEMORY[0x1E6966208];
  v26[0] = v15;
  v26[1] = v16;
  v29[1] = [MEMORY[0x1E696AD98] numberWithInteger:width];
  v27 = *MEMORY[0x1E69660B8];
  v17 = v27;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:height];
  v28 = *MEMORY[0x1E69660D8];
  v19 = v28;
  v20 = MEMORY[0x1E695E0F8];
  v29[2] = v18;
  v29[3] = MEMORY[0x1E695E0F8];
  selfCopy->_sourcePixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v26 count:{4), "copy"}];
  v25[0] = selfCopy->_frameSupportedPixelFormats;
  v24[0] = v15;
  v24[1] = v16;
  v25[1] = [MEMORY[0x1E696AD98] numberWithInteger:width];
  v24[2] = v17;
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:height];
  v24[3] = v19;
  v25[2] = v21;
  v25[3] = v20;
  selfCopy->_destinationPixelBufferAttributes = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{4), "copy"}];
  return selfCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTMotionBlurConfiguration;
  [(VTMotionBlurConfiguration *)&v3 dealloc];
}

+ (int64_t)defaultRevision
{
  if (loadVEFrameworkOnce(self, a2))
  {
    v2 = NSClassFromString(&cfstr_Vemotionblurco.isa);

    return [(objc_class *)v2 defaultRevision];
  }

  else
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
    return 0;
  }
}

+ (NSIndexSet)supportedRevisions
{
  if (loadVEFrameworkOnce(self, a2))
  {
    result = [NSClassFromString(&cfstr_Vemotionblurco.isa) supportedRevisions];
    if (result)
    {
      return result;
    }
  }

  else
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
  }

  v3 = MEMORY[0x1E696AC90];

  return objc_alloc_init(v3);
}

@end