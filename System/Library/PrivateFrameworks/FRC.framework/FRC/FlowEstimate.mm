@interface FlowEstimate
- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output;
- (BOOL)estimateFlow:(__CVBuffer *)flow correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)a5 output:(__CVBuffer *)output callback:(id)callback;
- (FlowEstimate)initWithMode:(int64_t)mode level:(unsigned int)level revision:(int64_t)revision;
- (void)setupNetworkModel;
@end

@implementation FlowEstimate

- (FlowEstimate)initWithMode:(int64_t)mode level:(unsigned int)level revision:(int64_t)revision
{
  v6 = *&level;
  [(FlowEstimate *)self setLevel:*&level];
  [(EspressoModel *)self setUsage:mode];
  [(FlowEstimate *)self setRevision:revision];
  [(FlowEstimate *)self setupNetworkModel];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", self->_espresso_base_name, (v6 + 1)];
  v16.receiver = self;
  v16.super_class = FlowEstimate;
  v10 = [(EspressoModel *)&v16 initWithModelName:v9 usage:mode];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Optical Flow Estimate Level %d", v6];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    submissionQueue = v10->_submissionQueue;
    v10->_submissionQueue = v12;

    v14 = v10;
  }

  return v10;
}

- (void)setupNetworkModel
{
  v9 = 0;
  v10 = 0;
  FRCGetInputFrameSizeForUsage([(EspressoModel *)self usage], &v10, &v9);
  espresso_base_name = self->_espresso_base_name;
  if (v10 <= 0x3E8)
  {
    v4 = @"optical_flow_estimation_pyrlite";
  }

  else
  {
    v4 = @"optical_flow_estimation_pyrlite_HD";
  }

  self->_espresso_base_name = &v4->isa;

  if (self->_revision != 1)
  {
    v5 = [(NSString *)self->_espresso_base_name stringByAppendingFormat:@"_rev%ld", self->_revision];
    v6 = self->_espresso_base_name;
    self->_espresso_base_name = v5;
  }

  v7 = [(NSString *)self->_espresso_base_name stringByAppendingString:@"_stage"];
  v8 = self->_espresso_base_name;
  self->_espresso_base_name = v7;

  self->_inputBlobs = &inputBlobNames_0;
  self->_outputBlobs = &outputBlobNames_0;
  self->_concatenatedInputBlob = *self->_inputBlobs;
}

- (BOOL)bindCVPixelBuffers:(__CVBuffer *)buffers correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)flow output:(__CVBuffer *)output
{
  if (self->_level < 2)
  {
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (espresso_network_bind_cvpixelbuffer())
    {
      NSLog(&cfstr_ErrorFailedToB.isa);
      return 0;
    }

    if (espresso_network_bind_cvpixelbuffer())
    {
LABEL_7:
      NSLog(&cfstr_ErrorFailedToB_0.isa);
      return 0;
    }

    if (_numLevels - 1 != self->_level && espresso_network_bind_cvpixelbuffer())
    {
      NSLog(&cfstr_ErrorFailedToB_1.isa);
      return 0;
    }
  }

  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    NSLog(&cfstr_ErrorFailedToB_2.isa);
    return 0;
  }

  return 1;
}

- (BOOL)estimateFlow:(__CVBuffer *)flow correlation:(__CVBuffer *)correlation flow:(__CVBuffer *)a5 output:(__CVBuffer *)output callback:(id)callback
{
  callbackCopy = callback;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  submissionQueue = self->_submissionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__FlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke;
  block[3] = &unk_278FEA560;
  correlationCopy = correlation;
  v21 = a5;
  outputCopy = output;
  v18 = &v23;
  flowCopy = flow;
  block[4] = self;
  v17 = callbackCopy;
  v14 = callbackCopy;
  dispatch_sync(submissionQueue, block);
  LOBYTE(a5) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return a5;
}

void __62__FlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) bindCVPixelBuffers:*(a1 + 56) correlation:*(a1 + 64) flow:*(a1 + 72) output:*(a1 + 80)])
  {
    kdebug_trace();
    v2 = *(a1 + 40);
    if (espresso_plan_submit())
    {
      NSLog(&cfstr_FlowestimateLe.isa, [*(a1 + 32) level], objc_msgSend(*(a1 + 32), "usage"));
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    NSLog(&cfstr_ErrorFailedToB_3.isa);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t __62__FlowEstimate_estimateFlow_correlation_flow_output_callback___block_invoke_2(uint64_t a1)
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

@end