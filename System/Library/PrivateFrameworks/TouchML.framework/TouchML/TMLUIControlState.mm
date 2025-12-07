@interface TMLUIControlState
+ (BOOL)isControlStateClass:(id)class;
+ (void)registerControlState:(id)state forClass:(Class)class;
+ (void)verifyStateProperty:(id)property withClass:(Class)class;
@end

@implementation TMLUIControlState

+ (BOOL)isControlStateClass:(id)class
{
  className = [class className];
  v4 = [className isEqualToString:@"UIControlState"];

  return v4;
}

+ (void)registerControlState:(id)state forClass:(Class)class
{
  stateCopy = state;
  properties = [stateCopy properties];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26F1F7424;
  v16[3] = &unk_279DC82D0;
  v16[4] = self;
  v16[5] = class;
  [properties enumerateKeysAndObjectsUsingBlock:v16];

  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromClass(class);
  className = [stateCopy className];
  v11 = [v8 stringWithFormat:@"%@_%@", v9, className];
  uTF8String = [v11 UTF8String];

  if (!objc_getClass(uTF8String))
  {
    ClassPair = objc_allocateClassPair(self, uTF8String, 0);
    properties2 = [stateCopy properties];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_26F1F758C;
    v15[3] = &unk_279DC9900;
    v15[4] = ClassPair;
    [properties2 enumerateKeysAndObjectsUsingBlock:v15];

    objc_registerClassPair(ClassPair);
  }
}

+ (void)verifyStateProperty:(id)property withClass:(Class)class
{
  v59[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  if (![propertyCopy type])
  {
    v23 = MEMORY[0x277CBEAD8];
    v24 = MEMORY[0x277CCACA8];
    v25 = [propertyCopy description];
    v26 = [v24 stringWithFormat:@"Cannot register property of unsupported type %@", v25];
    v58 = @"property";
    v59[0] = propertyCopy;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v28 = [v23 exceptionWithName:@"TMLRuntimeException" reason:v26 userInfo:v27];
    v29 = v28;

    objc_exception_throw(v28);
  }

  v5 = MEMORY[0x277CCACA8];
  propertyName = [propertyCopy propertyName];
  v7 = [v5 stringWithFormat:@"%@ForState:", propertyName];

  v8 = NSSelectorFromString(v7);
  InstanceMethod = class_getInstanceMethod(class, v8);
  if (!InstanceMethod)
  {
    v30 = MEMORY[0x277CBEAD8];
    v31 = MEMORY[0x277CCACA8];
    v32 = [(objc_class *)class description];
    v33 = [v31 stringWithFormat:@"Method %@ not found in class %@", v7, v32];
    v56 = @"property";
    v57 = propertyCopy;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v35 = [v30 exceptionWithName:@"TMLRuntimeException" reason:v33 userInfo:v34];
    v36 = v35;

    goto LABEL_22;
  }

  v10 = method_copyReturnType(InstanceMethod);
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v10 length:strlen(v10) encoding:1 freeWhenDone:1];
  }

  else
  {
    v11 = @" ";
  }

  v12 = [TMLTypeRegistry typeForEncodedType:v11];

  v13 = MEMORY[0x277CCACA8];
  propertyName2 = [propertyCopy propertyName];
  v15 = [propertyName2 substringToIndex:1];
  capitalizedString = [v15 capitalizedString];
  propertyName3 = [propertyCopy propertyName];
  v18 = [propertyName3 substringFromIndex:1];
  v19 = [v13 stringWithFormat:@"%@%@", capitalizedString, v18];
  v20 = [v13 stringWithFormat:@"set%@:forState:", v19];

  v21 = NSSelectorFromString(v20);
  if (!class_getInstanceMethod(class, v21))
  {
    v37 = MEMORY[0x277CBEAD8];
    v38 = MEMORY[0x277CCACA8];
    v32 = [(objc_class *)class description];
    v39 = [v38 stringWithFormat:@"Method %@ not found in class %@", v20, v32];
    v54 = @"property";
    v55 = propertyCopy;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v35 = [v37 exceptionWithName:@"TMLRuntimeException" reason:v39 userInfo:v40];
    v41 = v35;

LABEL_22:
    objc_exception_throw(v35);
  }

  type = [propertyCopy type];
  if (type != v12 && (v12 != 4 || type != 3) && (v12 != 3 || type != 4) && (v12 != 5 || type != 7) && (v12 != 16 || [propertyCopy type] <= 0xF))
  {
    v42 = MEMORY[0x277CBEAD8];
    v43 = MEMORY[0x277CCACA8];
    v44 = [TMLTypeRegistry typeNameForType:v12];
    v45 = [propertyCopy description];
    propertyName4 = [propertyCopy propertyName];
    v47 = [v43 stringWithFormat:@"Runtime type mismatch %@ vs %@ for %@", v44, v45, propertyName4];
    v52 = @"property";
    v53 = propertyCopy;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v49 = [v42 exceptionWithName:@"TMLRuntimeException" reason:v47 userInfo:v48];
    v50 = v49;

    objc_exception_throw(v49);
  }
}

@end