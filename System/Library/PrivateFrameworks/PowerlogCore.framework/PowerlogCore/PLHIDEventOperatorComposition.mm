@interface PLHIDEventOperatorComposition
- (PLHIDEventOperatorComposition)initWithOperator:(id)operator forUsagePage:(unint64_t)page andUsage:(unint64_t)usage withBlock:(id)block;
- (void)handleEvent:(__IOHIDEvent *)event;
@end

@implementation PLHIDEventOperatorComposition

- (PLHIDEventOperatorComposition)initWithOperator:(id)operator forUsagePage:(unint64_t)page andUsage:(unint64_t)usage withBlock:(id)block
{
  v23[2] = *MEMORY[0x1E69E9840];
  operatorCopy = operator;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = PLHIDEventOperatorComposition;
  v12 = [(PLHIDEventOperatorComposition *)&v21 init];
  v13 = v12;
  if (v12)
  {
    if (!v12->_eventSystemClient)
    {
      v12->_eventSystemClient = IOHIDEventSystemClientCreate();
    }

    v14 = MEMORY[0x1DA71B0D0](blockCopy);
    operatorBlock = v13->_operatorBlock;
    v13->_operatorBlock = v14;

    workQueue = [operatorCopy workQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    v22[0] = @"DeviceUsagePage";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:page];
    v22[1] = @"DeviceUsage";
    v23[0] = v17;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:usage];
    v23[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

    IOHIDEventSystemClientSetMatching();
    IOHIDEventSystemClientRegisterEventBlock();
  }

  return v13;
}

- (void)handleEvent:(__IOHIDEvent *)event
{
  operatorBlock = self->_operatorBlock;
  if (operatorBlock)
  {
    operatorBlock[2](operatorBlock, event);
  }
}

@end