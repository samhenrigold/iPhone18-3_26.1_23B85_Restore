@interface DTGPURawCounter_GPURawCounter
- (DTGPURawCounter_GPURawCounter)initWithName:(id)name;
- (DTGPURawCounter_GPURawCounter)initWithName:(id)name width:(unsigned int)width;
@end

@implementation DTGPURawCounter_GPURawCounter

- (DTGPURawCounter_GPURawCounter)initWithName:(id)name width:(unsigned int)width
{
  v18[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = DTGPURawCounter_GPURawCounter;
  v7 = [(DTGPURawCounter *)&v16 initWithName:nameCopy];
  v8 = v7;
  if (v7)
  {
    v7->_width = width;
    v9 = MEMORY[0x277D0AF28];
    name = [(DTGPURawCounter *)v7 name];
    v17 = @"Width";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8->_width];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v9 selectWithName:name options:v12];
    rawCounterSelect = v8->_rawCounterSelect;
    v8->_rawCounterSelect = v13;
  }

  return v8;
}

- (DTGPURawCounter_GPURawCounter)initWithName:(id)name
{
  v16[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = DTGPURawCounter_GPURawCounter;
  v5 = [(DTGPURawCounter *)&v14 initWithName:nameCopy];
  v6 = v5;
  if (v5)
  {
    v5->_width = 32;
    v7 = MEMORY[0x277D0AF28];
    name = [(DTGPURawCounter *)v5 name];
    v15 = @"Width";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6->_width];
    v16[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v7 selectWithName:name options:v10];
    rawCounterSelect = v6->_rawCounterSelect;
    v6->_rawCounterSelect = v11;
  }

  return v6;
}

@end