@interface CLSSignalNode
- (BOOL)failsHighPrecisionWithSignal:(id)signal;
- (BOOL)failsHighRecallWithSignal:(id)signal;
- (BOOL)failsWithSignal:(id)signal;
- (BOOL)passesHighPrecisionWithSignal:(id)signal;
- (BOOL)passesHighRecallWithSignal:(id)signal;
- (BOOL)passesWithSignal:(id)signal;
- (CLSSignalNode)initWithIdentifier:(unint64_t)identifier name:(id)name operatingPoint:(double)point highPrecisionOperatingPoint:(double)operatingPoint highRecallOperatingPoint:(double)recallOperatingPoint;
- (id)signalInfoWithIsHierarchical:(BOOL)hierarchical;
@end

@implementation CLSSignalNode

- (id)signalInfoWithIsHierarchical:(BOOL)hierarchical
{
  hierarchicalCopy = hierarchical;
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = @"identifier";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_identifier];
  name = self->_name;
  v14[0] = v5;
  v14[1] = name;
  v13[1] = @"name";
  v13[2] = @"operatingPoint";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_operatingPoint];
  v14[2] = v7;
  v13[3] = @"highPrecisionOperatingPoint";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_highPrecisionOperatingPoint];
  v14[3] = v8;
  v13[4] = @"highRecallOperatingPoint";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_highRecallOperatingPoint];
  v14[4] = v9;
  v13[5] = @"isHierarchical";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:hierarchicalCopy];
  v14[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (BOOL)failsHighRecallWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 < self->_highRecallOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)failsHighPrecisionWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 < self->_highPrecisionOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)failsWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 < self->_operatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesHighRecallWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 >= self->_highRecallOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesHighPrecisionWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 >= self->_highPrecisionOperatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)passesWithSignal:(id)signal
{
  signalCopy = signal;
  if ([signalCopy extendedSceneIdentifier] == self->_identifier)
  {
    [signalCopy confidence];
    v6 = v5 >= self->_operatingPoint;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CLSSignalNode)initWithIdentifier:(unint64_t)identifier name:(id)name operatingPoint:(double)point highPrecisionOperatingPoint:(double)operatingPoint highRecallOperatingPoint:(double)recallOperatingPoint
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = CLSSignalNode;
  v14 = [(CLSSignalNode *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_identifier = identifier;
    objc_storeStrong(&v14->_name, name);
    v15->_operatingPoint = point;
    v15->_highPrecisionOperatingPoint = operatingPoint;
    v15->_highRecallOperatingPoint = recallOperatingPoint;
    if (point > operatingPoint)
    {
      __assert_rtn("[CLSSignalNode initWithIdentifier:name:operatingPoint:highPrecisionOperatingPoint:highRecallOperatingPoint:]", "CLSSignalModel.m", 31, "_operatingPoint <= _highPrecisionOperatingPoint");
    }

    if (point < recallOperatingPoint)
    {
      __assert_rtn("[CLSSignalNode initWithIdentifier:name:operatingPoint:highPrecisionOperatingPoint:highRecallOperatingPoint:]", "CLSSignalModel.m", 32, "_operatingPoint >= _highRecallOperatingPoint");
    }
  }

  return v15;
}

@end