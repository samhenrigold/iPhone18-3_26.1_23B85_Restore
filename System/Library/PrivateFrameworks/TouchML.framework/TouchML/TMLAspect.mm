@interface TMLAspect
+ (id)aspectForObjectsImplementingProtocolNamed:(id)named signalOrMethodName:(id)name advice:(int)advice block:(id)block;
+ (id)aspectForObjectsWithClassNamed:(id)named signalOrMethodName:(id)name advice:(int)advice block:(id)block;
+ (id)aspectForRegistrationKey:(id)key signalOrMethodName:(id)name advice:(int)advice block:(id)block;
+ (id)aspectForTarget:(id)target signalOrMethodName:(id)name advice:(int)advice block:(id)block;
+ (id)jsConvertedBlock:(id)block;
+ (id)tmlAspectForObjectsImplementingProtocolNamed:(id)named signalOrMethodName:(id)name advice:(int)advice;
+ (id)tmlAspectForObjectsWithClassNamed:(id)named signalOrMethodName:(id)name advice:(int)advice;
+ (id)tmlAspectForTarget:(id)target signalOrMethodName:(id)name advice:(int)advice;
- (NSObject)target;
- (void)activateWithObject:(id)object arguments:(id)arguments returnValue:(id)value newArguments:(id *)newArguments newReturnValue:(id *)returnValue;
- (void)dealloc;
- (void)unregister;
@end

@implementation TMLAspect

+ (id)aspectForRegistrationKey:(id)key signalOrMethodName:(id)name advice:(int)advice block:(id)block
{
  v7 = *&advice;
  keyCopy = key;
  nameCopy = name;
  blockCopy = block;
  v12 = objc_alloc_init(TMLAspect);
  [(TMLAspect *)v12 setAdvice:v7];
  [(TMLAspect *)v12 setBlock:blockCopy];
  [(TMLAspect *)v12 setSignalName:nameCopy];
  v13 = +[TMLAspectsRegistration shared];
  [v13 registerAspect:v12 withKey:keyCopy];

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26F1A4964;
  v16[3] = &unk_279DC6080;
  objc_copyWeak(&v18, &location);
  v14 = keyCopy;
  v17 = v14;
  [(TMLAspect *)v12 setUnregisterBlock:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

+ (id)aspectForObjectsImplementingProtocolNamed:(id)named signalOrMethodName:(id)name advice:(int)advice block:(id)block
{
  v6 = *&advice;
  blockCopy = block;
  nameCopy = name;
  v11 = [TMLAspectsRegistration keyForProtocolNamed:named signalName:nameCopy advice:v6];
  v12 = [objc_opt_class() aspectForRegistrationKey:v11 signalOrMethodName:nameCopy advice:v6 block:blockCopy];

  return v12;
}

+ (id)aspectForObjectsWithClassNamed:(id)named signalOrMethodName:(id)name advice:(int)advice block:(id)block
{
  v6 = *&advice;
  blockCopy = block;
  nameCopy = name;
  v11 = [TMLAspectsRegistration keyForClassNamed:named signalName:nameCopy advice:v6];
  v12 = [objc_opt_class() aspectForRegistrationKey:v11 signalOrMethodName:nameCopy advice:v6 block:blockCopy];

  return v12;
}

+ (id)aspectForTarget:(id)target signalOrMethodName:(id)name advice:(int)advice block:(id)block
{
  v7 = *&advice;
  targetCopy = target;
  nameCopy = name;
  blockCopy = block;
  v12 = objc_alloc_init(TMLAspect);
  [(TMLAspect *)v12 setAdvice:v7];
  [(TMLAspect *)v12 setBlock:blockCopy];
  [(TMLAspect *)v12 setSignalName:nameCopy];
  [targetCopy registerAspect:v12];
  objc_initWeak(&location, targetCopy);
  objc_initWeak(&from, v12);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26F1A4CE0;
  v14[3] = &unk_279DC60A8;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  [(TMLAspect *)v12 setUnregisterBlock:v14];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v12;
}

+ (id)jsConvertedBlock:(id)block
{
  objc_initWeak(&location, block);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F1A4E38;
  v5[3] = &unk_279DC60D0;
  objc_copyWeak(&v6, &location);
  v3 = MEMORY[0x27438BB60](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

+ (id)tmlAspectForObjectsImplementingProtocolNamed:(id)named signalOrMethodName:(id)name advice:(int)advice
{
  v5 = *&advice;
  nameCopy = name;
  v8 = [TMLAspectsRegistration keyForProtocolNamed:named signalName:nameCopy advice:v5];
  v9 = [objc_opt_class() aspectForRegistrationKey:v8 signalOrMethodName:nameCopy advice:v5 block:0];

  v10 = [objc_opt_class() jsConvertedBlock:v9];
  [v9 setBlock:v10];

  return v9;
}

+ (id)tmlAspectForObjectsWithClassNamed:(id)named signalOrMethodName:(id)name advice:(int)advice
{
  v5 = *&advice;
  nameCopy = name;
  v8 = [TMLAspectsRegistration keyForClassNamed:named signalName:nameCopy advice:v5];
  v9 = [objc_opt_class() aspectForRegistrationKey:v8 signalOrMethodName:nameCopy advice:v5 block:0];

  v10 = [objc_opt_class() jsConvertedBlock:v9];
  [v9 setBlock:v10];

  return v9;
}

+ (id)tmlAspectForTarget:(id)target signalOrMethodName:(id)name advice:(int)advice
{
  v5 = *&advice;
  nameCopy = name;
  targetCopy = target;
  v9 = [objc_opt_class() aspectForTarget:targetCopy signalOrMethodName:nameCopy advice:v5 block:0];

  v10 = [objc_opt_class() jsConvertedBlock:v9];
  [v9 setBlock:v10];

  return v9;
}

- (void)dealloc
{
  [(TMLAspect *)self unregister];
  v3.receiver = self;
  v3.super_class = TMLAspect;
  [(TMLAspect *)&v3 dealloc];
}

- (void)activateWithObject:(id)object arguments:(id)arguments returnValue:(id)value newArguments:(id *)newArguments newReturnValue:(id *)returnValue
{
  objectCopy = object;
  argumentsCopy = arguments;
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      v15 = +[TMLContext currentContext];
      block[2](block, objectCopy, v15, argumentsCopy, valueCopy, newArguments, returnValue);
    }
  }
}

- (void)unregister
{
  unregisterBlock = self->_unregisterBlock;
  if (unregisterBlock)
  {
    unregisterBlock[2]();
  }
}

- (NSObject)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end