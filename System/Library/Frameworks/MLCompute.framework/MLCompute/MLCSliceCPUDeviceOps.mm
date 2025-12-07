@interface MLCSliceCPUDeviceOps
+ (id)deviceOpsWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0;
- (MLCSliceCPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4;
@end

@implementation MLCSliceCPUDeviceOps

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

- (MLCSliceCPUDeviceOps)initWithType:(int)type params:(id)params inDeltaData:(id)data outDeltaData:(id)deltaData weightsDeltaData:(id)weightsDeltaData biasDeltaData:(id)biasDeltaData weightsMomentumData:(id)momentumData biasMomentumData:(id)self0 betaDeltaData:(id)self1 gammaDeltaData:(id)self2 betaMomentumData:(id)self3 gammaMomentumData:(id)self4
{
  v24.receiver = self;
  v24.super_class = MLCSliceCPUDeviceOps;
  v14 = [(MLCCPUDeviceOps *)&v24 initWithType:*&type params:params inDeltaData:data outDeltaData:deltaData weightsDeltaData:weightsDeltaData biasDeltaData:biasDeltaData weightsMomentumData:momentumData biasMomentumData:biasMomentumData betaDeltaData:0 gammaDeltaData:0 betaMomentumData:0 gammaMomentumData:0];
  v15 = v14;
  if (v14)
  {
    v14->_beginOffset = 0;
    v16 = MEMORY[0x277CBEBF8];
    v17 = [MEMORY[0x277CBEBF8] mutableCopy];
    begin = v15->_begin;
    v15->_begin = v17;

    v19 = [v16 mutableCopy];
    count = v15->_count;
    v15->_count = v19;

    v21 = [v16 mutableCopy];
    stride = v15->_stride;
    v15->_stride = v21;
  }

  return v15;
}

@end