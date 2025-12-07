@interface MLCMHACPUDeviceOps
+ (id)deviceOpsWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0;
- (MLCMHACPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4;
@end

@implementation MLCMHACPUDeviceOps

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

- (MLCMHACPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4
{
  v23.receiver = self;
  v23.super_class = MLCMHACPUDeviceOps;
  v14 = [(MLCCPUDeviceOps *)&v23 initWithType:*&type params:params inDeltaData:data outDeltaData:deltaData weightsDeltaData:weightsDeltaData biasDeltaData:biasDeltaData weightsMomentumData:momentumData biasMomentumData:biasMomentumData betaDeltaData:0 gammaDeltaData:0 betaMomentumData:0 gammaMomentumData:0];
  v15 = v14;
  if (v14)
  {
    v14->_hasAttnBias = 0;
    v14->_hasKeyMask = 0;
    v14->_hasAttnMask = 0;
    keyMask = v14->_keyMask;
    v14->_keyMask = 0;

    attnMask = v15->_attnMask;
    v15->_attnMask = 0;

    v15->_keyMaskStride = 0;
    v15->_backpropCacheSize = 0;
    backpropCacheData = v15->_backpropCacheData;
    v15->_backpropCacheData = 0;

    attnBiasDeltaData = v15->_attnBiasDeltaData;
    v15->_attnBiasDeltaData = 0;

    weightsMomentumDeltaDataArray = v15->_weightsMomentumDeltaDataArray;
    v15->_weightsMomentumDeltaDataArray = 0;

    biasMomentumDeltaDataArray = v15->_biasMomentumDeltaDataArray;
    v15->_biasMomentumDeltaDataArray = 0;
  }

  return v15;
}

@end