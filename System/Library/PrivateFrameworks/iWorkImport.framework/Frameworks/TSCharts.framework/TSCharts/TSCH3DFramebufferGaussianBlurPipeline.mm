@interface TSCH3DFramebufferGaussianBlurPipeline
+ (id)effectsArray;
- (TSCH3DFramebufferGaussianBlurPipeline)initWithProcessor:(id)processor session:(id)session;
- (void)updateShaderEffectsStates;
@end

@implementation TSCH3DFramebufferGaussianBlurPipeline

+ (id)effectsArray
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, a2, v2, v3, v4);
  v17[0] = v5;
  v10 = objc_msgSend_effect(TSCH3DGaussianBlurShaderEffect, v6, v7, v8, v9);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);

  return v15;
}

- (TSCH3DFramebufferGaussianBlurPipeline)initWithProcessor:(id)processor session:(id)session
{
  processorCopy = processor;
  sessionCopy = session;
  v20.receiver = self;
  v20.super_class = TSCH3DFramebufferGaussianBlurPipeline;
  v8 = [(TSCH3DFramebufferCopyPipeline *)&v20 initWithProcessor:processorCopy session:sessionCopy];
  if (v8)
  {
    v9 = objc_opt_class();
    v14 = objc_msgSend_effectsArray(v9, v10, v11, v12, v13);
    objc_msgSend_setEffects_(v8, v15, v16, v17, v18, v14);
  }

  return v8;
}

- (void)updateShaderEffectsStates
{
  v21.receiver = self;
  v21.super_class = TSCH3DFramebufferGaussianBlurPipeline;
  [(TSCH3DFramebufferCopyPipeline *)&v21 updateShaderEffectsStates];
  objc_msgSend_tapUnit(self, v3, v4, v5);
  v10 = objc_msgSend_processor(self, v6, v7, v8, v9);
  v15 = objc_msgSend_effectsStates(v10, v11, v12, v13, v14);
  objc_msgSend_setTapUnit_effectsStates_(TSCH3DGaussianBlurShaderEffect, v16, v17, v18, v19, v20, v15);
}

@end