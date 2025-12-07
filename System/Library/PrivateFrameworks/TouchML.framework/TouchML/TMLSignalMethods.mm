@interface TMLSignalMethods
+ (void)addSignalMethod:(id)method forProtocol:(id)protocol toClass:(Class)class;
+ (void)verifySignalMethod:(id)method forProtocol:(id)protocol;
@end

@implementation TMLSignalMethods

+ (void)addSignalMethod:(id)method forProtocol:(id)protocol toClass:(Class)class
{
  v46[1] = *MEMORY[0x277D85DE8];
  methodCopy = method;
  protocolCopy = protocol;
  methodSelector = [methodCopy methodSelector];
  if (!methodSelector)
  {
    methodName = [methodCopy methodName];
    parameters = [methodCopy parameters];
    methodSelector = [TMLMethodDescriptor methodSelectorForMethodName:methodName parameters:parameters];
  }

  v11 = NSSelectorFromString(methodSelector);
  if (!class_getInstanceMethod(class, v11))
  {
    MethodDescription = protocol_getMethodDescription(protocolCopy, v11, [methodCopy isOptional] != 1, 1);
    if (MethodDescription.name)
    {
      v13 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:MethodDescription.types];
      v14 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCString:objc_msgSend(v13 encoding:{"methodReturnType"), 1}];
      numberOfArguments = [v13 numberOfArguments];
      if (numberOfArguments >= 3)
      {
        v16 = numberOfArguments;
        for (i = 2; i != v16; ++i)
        {
          numberOfArguments = [v14 appendFormat:@"%s", objc_msgSend(v13, "getArgumentTypeAtIndex:", i)];
        }
      }

      v18 = sub_26F1EC974(numberOfArguments);
      v19 = [v18 objectForKeyedSubscript:v14];

      if (v19)
      {
        signalName = [methodCopy signalName];
        v21 = (v19)[2](v19, signalName);

        if (class_addMethod(class, v11, v21, MethodDescription.types))
        {

          goto LABEL_11;
        }

        v33 = MEMORY[0x277CBEAD8];
        v34 = MEMORY[0x277CCACA8];
        signalName2 = [methodCopy signalName];
        v36 = [(objc_class *)class description];
        v37 = [v34 stringWithFormat:@"Failed to add method for signal %@ to class %@", signalName2, v36];
        v41 = @"method";
        v42 = methodCopy;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v31 = [v33 exceptionWithName:@"TMLRuntimeException" reason:v37 userInfo:v38];
        v39 = v31;

LABEL_18:
        objc_exception_throw(v31);
      }

      v22 = MEMORY[0x277CBEAD8];
      v29 = MEMORY[0x277CCACA8];
      signalName3 = [methodCopy signalName];
      v25 = [v29 stringWithFormat:@"Unsupported method signature for signal %@ in protocol %s", signalName3, protocol_getName(protocolCopy)];
      v43 = @"method";
      v44 = methodCopy;
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v44;
      v28 = &v43;
    }

    else
    {
      v22 = MEMORY[0x277CBEAD8];
      v23 = MEMORY[0x277CCACA8];
      signalName3 = [methodCopy methodSelector];
      v25 = [v23 stringWithFormat:@"Protocol method not found %@ in protocol %s", signalName3, protocol_getName(protocolCopy)];
      v45 = @"method";
      v46[0] = methodCopy;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v46;
      v28 = &v45;
    }

    v30 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
    v31 = [v22 exceptionWithName:@"TMLRuntimeException" reason:v25 userInfo:v30];
    v32 = v31;

    goto LABEL_18;
  }

LABEL_11:
}

+ (void)verifySignalMethod:(id)method forProtocol:(id)protocol
{
  v27[1] = *MEMORY[0x277D85DE8];
  methodCopy = method;
  protocolCopy = protocol;
  methodSelector = [methodCopy methodSelector];
  if (!methodSelector)
  {
    methodName = [methodCopy methodName];
    parameters = [methodCopy parameters];
    methodSelector = [TMLMethodDescriptor methodSelectorForMethodName:methodName parameters:parameters];
  }

  v9 = NSSelectorFromString(methodSelector);
  MethodDescription = protocol_getMethodDescription(protocolCopy, v9, [methodCopy isOptional] != 1, 1);
  if (MethodDescription.name)
  {
    v11 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:MethodDescription.types];
    v12 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCString:objc_msgSend(v11 encoding:{"methodReturnType"), 1}];
    numberOfArguments = [v11 numberOfArguments];
    if (numberOfArguments >= 3)
    {
      v14 = numberOfArguments;
      for (i = 2; i != v14; ++i)
      {
        numberOfArguments = [v12 appendFormat:@"%s", objc_msgSend(v11, "getArgumentTypeAtIndex:", i)];
      }
    }

    v16 = sub_26F1EC974(numberOfArguments);
    v17 = [v16 objectForKeyedSubscript:v12];

    if (!v17)
    {
      v18 = MEMORY[0x277CBEAD8];
      v19 = MEMORY[0x277CCACA8];
      signalName = [methodCopy signalName];
      v21 = [v19 stringWithFormat:@"Unsupported method signature for signal %@ in protocol %s", signalName, protocol_getName(protocolCopy)];
      v26 = @"method";
      v27[0] = methodCopy;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v23 = [v18 exceptionWithName:@"TMLRuntimeException" reason:v21 userInfo:v22];
      v24 = v23;

      objc_exception_throw(v23);
    }
  }
}

@end