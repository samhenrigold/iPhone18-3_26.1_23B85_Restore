@interface SynthesisGridNet
- (BOOL)synthesizeFrameFromFeatureForward:(id *)forward backward:(id *)backward destination:(__CVBuffer *)destination pyramidStartLevel:(unint64_t)level callback:(id)callback;
- (SynthesisGridNet)initWithMode:(int64_t)mode;
- (void)dealloc;
@end

@implementation SynthesisGridNet

- (SynthesisGridNet)initWithMode:(int64_t)mode
{
  v12 = 0;
  v13 = 0;
  FRCGetInputFrameSizeForUsage(mode, &v13, &v12);
  if (v13 <= 0x3E8)
  {
    v5 = @"synthesis_net_GridNet_pyrlite";
  }

  else
  {
    v5 = @"synthesis_net_GridNet_pyrlite_HD";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5];
  v11.receiver = self;
  v11.super_class = SynthesisGridNet;
  v7 = [(EspressoModel *)&v11 initWithModelName:v6 usage:mode];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SynthesisGridNet;
  [(EspressoModel *)&v2 dealloc];
}

- (BOOL)synthesizeFrameFromFeatureForward:(id *)forward backward:(id *)backward destination:(__CVBuffer *)destination pyramidStartLevel:(unint64_t)level callback:(id)callback
{
  callbackCopy = callback;
  v9 = 0;
  v10 = off_278FEA7E0;
  do
  {
    if (espresso_network_bind_cvpixelbuffer() || espresso_network_bind_cvpixelbuffer())
    {
      NSLog(&cfstr_GridnetErrorFa.isa);
      goto LABEL_8;
    }

    v9 += 8;
    v10 += 2;
  }

  while (v9 != 24);
  if (espresso_network_bind_cvpixelbuffer())
  {
    NSLog(&cfstr_GridnetErrorFa_0.isa);
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  kdebug_trace();
  if (callbackCopy)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __102__SynthesisGridNet_synthesizeFrameFromFeatureForward_backward_destination_pyramidStartLevel_callback___block_invoke;
    v18 = &unk_278FEA538;
    v19 = callbackCopy;
    v13 = espresso_plan_submit();

    if (v13)
    {
LABEL_12:
      NSLog(&cfstr_GridnetErrorNe.isa, [(EspressoModel *)self usage], v15, v16, v17, v18);
      goto LABEL_8;
    }
  }

  else
  {
    v14 = espresso_plan_execute_sync();
    kdebug_trace();
    if (v14)
    {
      goto LABEL_12;
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

uint64_t __102__SynthesisGridNet_synthesizeFrameFromFeatureForward_backward_destination_pyramidStartLevel_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

@end