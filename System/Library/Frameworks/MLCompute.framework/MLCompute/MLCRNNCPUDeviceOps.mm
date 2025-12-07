@interface MLCRNNCPUDeviceOps
+ (id)deviceOpsWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0;
- (MLCRNNCPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4;
- (void)dealloc;
@end

@implementation MLCRNNCPUDeviceOps

+ (id)deviceOpsWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0
{
  v15 = *&type;
  biasMomentumDataCopy = biasMomentumData;
  momentumDataCopy = momentumData;
  biasDeltaDataCopy = biasDeltaData;
  weightsDeltaDataCopy = weightsDeltaData;
  deltaDataCopy = deltaData;
  dataCopy = data;
  paramsCopy = params;
  v24 = [[self alloc] initWithType:v15 params:paramsCopy inDeltaData:dataCopy outDeltaData:deltaDataCopy weightsDeltaData:weightsDeltaDataCopy biasDeltaData:biasDeltaDataCopy weightsMomentumData:momentumDataCopy biasMomentumData:biasMomentumDataCopy betaDeltaData:0 gammaDeltaData:0 betaMomentumData:0 gammaMomentumData:0];

  return v24;
}

- (MLCRNNCPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4
{
  v61.receiver = self;
  v61.super_class = MLCRNNCPUDeviceOps;
  v14 = [(MLCCPUDeviceOps *)&v61 initWithType:*&type params:params inDeltaData:data outDeltaData:deltaData weightsDeltaData:weightsDeltaData biasDeltaData:biasDeltaData weightsMomentumData:momentumData biasMomentumData:biasMomentumData betaDeltaData:0 gammaDeltaData:0 betaMomentumData:0 gammaMomentumData:0];
  v15 = v14;
  if (v14)
  {
    v14->_batchFirst = 0;
    v14->_hasPeephole = 0;
    v14->_returnsSequences = 1;
    v14->_biDirectional = 0;
    lstmDeltaParams = v14->_lstmDeltaParams;
    v14->_lstmDeltaParams = 0;

    trainingCache = v15->_trainingCache;
    v15->_trainingCache = 0;

    combinedGateWeightsAndBias = v15->_combinedGateWeightsAndBias;
    v15->_combinedGateWeightsAndBias = 0;

    combinedInputsBuffer = v15->_combinedInputsBuffer;
    v15->_combinedInputsBuffer = 0;

    combinedOutputsBuffer = v15->_combinedOutputsBuffer;
    v15->_combinedOutputsBuffer = 0;

    v15->_numLayers = 0;
    v15->_inputSize = 0;
    v15->_hiddenSize = 0;
    v15->_numAccumulatorsPerParameter = 0;
    v15->_numParametersForSingleLSTM = 0;
    v21 = MEMORY[0x277CBEBF8];
    v22 = [MEMORY[0x277CBEBF8] mutableCopy];
    weightAndBiasGateDeltaBuffers = v15->_weightAndBiasGateDeltaBuffers;
    v15->_weightAndBiasGateDeltaBuffers = v22;

    v24 = [v21 mutableCopy];
    auxBiasTermsAccumulators = v15->_auxBiasTermsAccumulators;
    v15->_auxBiasTermsAccumulators = v24;

    v26 = [v21 mutableCopy];
    auxBiasTerms = v15->_auxBiasTerms;
    v15->_auxBiasTerms = v26;

    v28 = [v21 mutableCopy];
    inputWeightsDeltaPointers = v15->_inputWeightsDeltaPointers;
    v15->_inputWeightsDeltaPointers = v28;

    v30 = [v21 mutableCopy];
    hiddenWeightsDeltaPointers = v15->_hiddenWeightsDeltaPointers;
    v15->_hiddenWeightsDeltaPointers = v30;

    v32 = [v21 mutableCopy];
    bnnsInputWeightsDeltaPointers = v15->_bnnsInputWeightsDeltaPointers;
    v15->_bnnsInputWeightsDeltaPointers = v32;

    v34 = [v21 mutableCopy];
    bnnsHiddenWeightsDeltaPointers = v15->_bnnsHiddenWeightsDeltaPointers;
    v15->_bnnsHiddenWeightsDeltaPointers = v34;

    v36 = [v21 mutableCopy];
    inputWeightsMomentumDescData = v15->_inputWeightsMomentumDescData;
    v15->_inputWeightsMomentumDescData = v36;

    v38 = [v21 mutableCopy];
    hiddenWeightsMomentumDescData = v15->_hiddenWeightsMomentumDescData;
    v15->_hiddenWeightsMomentumDescData = v38;

    v40 = [v21 mutableCopy];
    bnnsInputWeightsMomentumPointers = v15->_bnnsInputWeightsMomentumPointers;
    v15->_bnnsInputWeightsMomentumPointers = v40;

    v42 = [v21 mutableCopy];
    bnnsHiddenWeightsMomentumPointers = v15->_bnnsHiddenWeightsMomentumPointers;
    v15->_bnnsHiddenWeightsMomentumPointers = v42;

    v44 = [v21 mutableCopy];
    inputWeightsMomentumDataBytesArray = v15->_inputWeightsMomentumDataBytesArray;
    v15->_inputWeightsMomentumDataBytesArray = v44;

    v46 = [v21 mutableCopy];
    hiddenWeightsMomentumDataBytesArray = v15->_hiddenWeightsMomentumDataBytesArray;
    v15->_hiddenWeightsMomentumDataBytesArray = v46;

    v48 = [v21 mutableCopy];
    bnnsDesc2DInputWeightParams = v15->_bnnsDesc2DInputWeightParams;
    v15->_bnnsDesc2DInputWeightParams = v48;

    v50 = [v21 mutableCopy];
    bnnsDesc2DHiddenWeightParams = v15->_bnnsDesc2DHiddenWeightParams;
    v15->_bnnsDesc2DHiddenWeightParams = v50;

    v52 = [v21 mutableCopy];
    bnnsDesc2DInputWeightGrads = v15->_bnnsDesc2DInputWeightGrads;
    v15->_bnnsDesc2DInputWeightGrads = v52;

    v54 = [v21 mutableCopy];
    bnnsDesc2DHiddenWeightGrads = v15->_bnnsDesc2DHiddenWeightGrads;
    v15->_bnnsDesc2DHiddenWeightGrads = v54;

    v56 = [v21 mutableCopy];
    bnnsDesc2DInputWeightAccumulators = v15->_bnnsDesc2DInputWeightAccumulators;
    v15->_bnnsDesc2DInputWeightAccumulators = v56;

    v58 = [v21 mutableCopy];
    bnnsDesc2DHiddenWeightAccumulators = v15->_bnnsDesc2DHiddenWeightAccumulators;
    v15->_bnnsDesc2DHiddenWeightAccumulators = v58;
  }

  return v15;
}

- (void)dealloc
{
  weightsMomentumData = [(MLCCPUDeviceOps *)self weightsMomentumData];
  v4 = [weightsMomentumData count];

  if (v4)
  {
    v5 = 0;
    do
    {
      weightsMomentumData2 = [(MLCCPUDeviceOps *)self weightsMomentumData];
      v7 = [weightsMomentumData2 objectAtIndexedSubscript:v5];
      bytes = [v7 bytes];

      v9 = *(bytes + 136);
      if (v9)
      {
        free(v9);
      }

      ++v5;
      weightsMomentumData3 = [(MLCCPUDeviceOps *)self weightsMomentumData];
      v11 = [weightsMomentumData3 count];
    }

    while (v5 < v11);
  }

  v12.receiver = self;
  v12.super_class = MLCRNNCPUDeviceOps;
  [(MLCCPUDeviceOps *)&v12 dealloc];
}

@end