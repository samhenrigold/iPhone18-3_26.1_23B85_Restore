@interface TMLJSEnvironment
+ (id)convertJsValue:(id)value toType:(unint64_t)type;
+ (id)convertTmlValue:(id)value;
+ (id)createJSContextWithRuntimeContext:(id)context;
+ (id)defaultModules;
+ (id)protoJSContext;
+ (id)sharedVM;
+ (void)addGCCallback:(id)callback;
+ (void)addToDefaultModules:(id)modules;
+ (void)forceGC;
+ (void)initializeJSContext:(id)context;
+ (void)requireModule:(id)module forJSContext:(id)context;
+ (void)runInContext:(id)context block:(id)block;
@end

@implementation TMLJSEnvironment

+ (id)sharedVM
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1AAE80;
  block[3] = &unk_279DC5818;
  block[4] = self;
  if (qword_2806D9178 != -1)
  {
    dispatch_once(&qword_2806D9178, block);
  }

  v2 = qword_2806D9170;

  return v2;
}

+ (id)protoJSContext
{
  if (!qword_2806D9160)
  {
    v3 = objc_alloc(MEMORY[0x277CD4640]);
    sharedVM = [self sharedVM];
    v5 = [v3 initWithVirtualMachine:sharedVM];
    v6 = qword_2806D9160;
    qword_2806D9160 = v5;

    [self initializeJSContext:qword_2806D9160];
  }

  v7 = qword_2806D9160;

  return v7;
}

+ (id)createJSContextWithRuntimeContext:(id)context
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](v3, sel_protoJSContext);
}

+ (void)runInContext:(id)context block:(id)block
{
  contextCopy = context;
  blockCopy = block;
  if ([contextCopy valid])
  {
    v7 = qword_2806D9150;
    objc_storeStrong(&qword_2806D9150, context);
    blockCopy[2](blockCopy);
    v8 = qword_2806D9150;
    qword_2806D9150 = v7;
  }
}

+ (void)forceGC
{
  v6 = [qword_2806D9180 copy];
  [qword_2806D9180 removeAllObjects];
  v3 = objc_alloc(MEMORY[0x277CD4640]);
  sharedVM = [self sharedVM];
  v5 = [v3 initWithVirtualMachine:sharedVM];

  JSGarbageCollect([v5 JSGlobalContextRef]);
  [v6 enumerateObjectsWithOptions:2 usingBlock:&unk_287F2BD50];
}

+ (void)addGCCallback:(id)callback
{
  v3 = qword_2806D9180;
  v4 = MEMORY[0x27438BB60](callback, a2);
  [v3 addObject:v4];
}

+ (void)requireModule:(id)module forJSContext:(id)context
{
  moduleCopy = module;
  contextCopy = context;
  if (qword_2806D9160 != contextCopy || ([qword_2806D9168 containsObject:moduleCopy] & 1) == 0)
  {
    v6 = [TMLRuntime requireModule:moduleCopy];
    if (objc_opt_respondsToSelector())
    {
      globalObject = [contextCopy globalObject];
      [v6 initializeJSContext:globalObject];

      if (qword_2806D9160 == contextCopy)
      {
        v8 = qword_2806D9168;
        if (!qword_2806D9168)
        {
          v9 = [MEMORY[0x277CBEB58] set];
          v10 = qword_2806D9168;
          qword_2806D9168 = v9;

          v8 = qword_2806D9168;
        }

        [v8 addObject:moduleCopy];
      }
    }
  }
}

+ (void)addToDefaultModules:(id)modules
{
  v3 = qword_2806D9160;
  qword_2806D9160 = 0;
  modulesCopy = modules;

  defaultModules = [objc_opt_class() defaultModules];
  array = [defaultModules array];
  v9 = [array arrayByAddingObjectsFromArray:modulesCopy];

  v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v9];
  v8 = qword_2806D9158;
  qword_2806D9158 = v7;
}

+ (id)defaultModules
{
  v2 = qword_2806D9158;
  if (!qword_2806D9158)
  {
    v3 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{@"Foundation", @"CoreGraphics", @"UIKit", 0}];
    v4 = qword_2806D9158;
    qword_2806D9158 = v3;

    v2 = qword_2806D9158;
  }

  return v2;
}

+ (void)initializeJSContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [contextCopy setExceptionHandler:&unk_287F2BD70];
  [TMLContext initializeJSContext:contextCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  defaultModules = [objc_opt_class() defaultModules];
  v5 = [defaultModules countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(defaultModules);
        }

        [objc_opt_class() requireModule:*(*(&v13 + 1) + 8 * v8++) forJSContext:contextCopy];
      }

      while (v6 != v8);
      v6 = [defaultModules countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  globalObject = [contextCopy globalObject];
  v10 = [TMLJSNil jsValueInContext:contextCopy];
  [globalObject setObject:v10 forKeyedSubscript:@"Nil"];
  [globalObject setObject:v10 forKeyedSubscript:@"nil"];

  v11 = [MEMORY[0x277CD4658] valueWithBool:0 inContext:contextCopy];
  [globalObject setObject:v11 forKeyedSubscript:@"NO"];

  v12 = [MEMORY[0x277CD4658] valueWithBool:1 inContext:contextCopy];
  [globalObject setObject:v12 forKeyedSubscript:@"YES"];

  [globalObject setObject:&unk_287F2BD90 forKeyedSubscript:@"object"];
  [globalObject setObject:&unk_287F2BD90 forKeyedSubscript:@"value"];
  [globalObject setObject:&unk_287F2BDB0 forKeyedSubscript:@"isNil"];
  [globalObject setObject:&unk_287F2BDD0 forKeyedSubscript:@"isEmpty"];
  [globalObject setObject:&unk_287F2BDF0 forKeyedSubscript:@"safearray"];
}

+ (id)convertTmlValue:(id)value
{
  v45[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  valueType = [valueCopy valueType];
  value = [valueCopy value];
  v6 = value;
  v7 = 0;
  switch(valueType)
  {
    case 1:
      goto LABEL_37;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_33;
      }

      v7 = 0;
      goto LABEL_37;
    case 8:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v10 = [TMLSize alloc];
      [v6 CGSizeValue];
      v9 = [(TMLSize *)v10 initWithSize:?];
      goto LABEL_34;
    case 9:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v12 = [TMLRect alloc];
      [v6 CGRectValue];
      v9 = [(TMLRect *)v12 initWithRect:?];
      goto LABEL_34;
    case 10:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v8 = [TMLPoint alloc];
      [v6 CGPointValue];
      v9 = [(TMLPoint *)v8 initWithPoint:?];
      goto LABEL_34;
    case 11:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v11 = [TMLAffineTransform alloc];
      if (v6)
      {
        objc_msgSend_CGAffineTransformValue(v6);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
      }

      v9 = [(TMLAffineTransform *)v11 initWithAffineTransform:&v36];
      goto LABEL_34;
    case 12:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v13 = [TMLTransform3D alloc];
      if (v6)
      {
        objc_msgSend_CATransform3DValue(v6);
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
      }

      v9 = [(TMLTransform3D *)v13 initWithTransform3D:&v36];
      goto LABEL_34;
    case 13:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v14 = [TMLInsets alloc];
      [v6 UIEdgeInsetsValue];
      v9 = [(TMLInsets *)v14 initWithInsets:?];
      goto LABEL_34;
    case 14:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v15 = [TMLRange alloc];
      rangeValue = [v6 rangeValue];
      v9 = [(TMLRange *)v15 initWithRange:rangeValue, v17];
      goto LABEL_34;
    case 15:
      goto LABEL_33;
    case 16:
      if (!value)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 17:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 27:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_33:
      v9 = v6;
      goto LABEL_34;
    case 18:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v9 = [[TMLAttributedString alloc] initWithAttributedString:v6];
      goto LABEL_34;
    case 22:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v9 = [[TMLFont alloc] initWithFont:v6];
      goto LABEL_34;
    case 25:
      goto LABEL_35;
    case 28:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v36 = 0uLL;
      [v6 getValue:&v36];
      v18 = [TMLVector alloc];
      v9 = [(TMLVector *)v18 initWithVector:v36];
      goto LABEL_34;
    case 29:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      v20 = [TMLOffset alloc];
      [v6 UIOffsetValue];
      v9 = [(TMLOffset *)v20 initWithOffset:?];
      goto LABEL_34;
    case 30:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [TMLDirectionalEdgeInsets alloc];
        [v6 directionalEdgeInsetsValue];
        v9 = [(TMLDirectionalEdgeInsets *)v19 initWithDirectionalEdgeInsets:?];
LABEL_34:
        v7 = v9;
      }

      else
      {
LABEL_35:
        if (v6)
        {
          v23 = MEMORY[0x277CBEAD8];
          v24 = MEMORY[0x277CCACA8];
          v25 = [TMLTypeRegistry typeNameForType:valueType];
          v26 = [v24 stringWithFormat:@"Value conversion failed for type '%@'", v25];
          v44 = @"value";
          v45[0] = v6;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
          v28 = [v23 exceptionWithName:@"TMLRuntimeException" reason:v26 userInfo:v27];
          v29 = v28;

          objc_exception_throw(v28);
        }

LABEL_36:
        currentContext = [MEMORY[0x277CD4640] currentContext];
        v7 = [TMLJSNil jsValueInContext:currentContext];
      }

LABEL_37:

      return v7;
    default:
      v30 = MEMORY[0x277CBEAD8];
      v31 = MEMORY[0x277CCACA8];
      v32 = [TMLTypeRegistry typeNameForType:valueType];
      v33 = [v31 stringWithFormat:@"Unsupported value type '%@'", v32];
      v34 = [v30 exceptionWithName:@"TMLRuntimeException" reason:v33 userInfo:0];
      v35 = v34;

      objc_exception_throw(v34);
  }
}

+ (id)convertJsValue:(id)value toType:(unint64_t)type
{
  valueCopy = value;
  v6 = valueCopy;
  v7 = 0;
  switch(type)
  {
    case 1uLL:
      break;
    case 2uLL:
      toObject = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(valueCopy, "toBool")}];
      goto LABEL_30;
    case 3uLL:
      v15 = MEMORY[0x277CCABB0];
      [valueCopy toDouble];
      *&v16 = v16;
      toObject = [v15 numberWithFloat:v16];
      goto LABEL_30;
    case 4uLL:
      v12 = MEMORY[0x277CCABB0];
      [valueCopy toDouble];
      toObject = [v12 numberWithDouble:?];
      goto LABEL_30;
    case 5uLL:
      toObject = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(valueCopy, "toUInt32")}];
      goto LABEL_30;
    case 6uLL:
      toObject = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(valueCopy, "toInt32")}];
      goto LABEL_30;
    case 7uLL:
      v11 = MEMORY[0x277CCABB0];
      toNumber = [valueCopy toNumber];
      cGSizeValue = [v11 numberWithUnsignedLongLong:{objc_msgSend(toNumber, "unsignedLongLongValue")}];
      goto LABEL_34;
    case 8uLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber CGSizeValue];
      goto LABEL_34;
    case 9uLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber CGRectValue];
      goto LABEL_34;
    case 0xAuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber CGPointValue];
      goto LABEL_34;
    case 0xBuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = objc_msgSend_CGAffineTransformValue(toNumber);
      goto LABEL_34;
    case 0xCuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = objc_msgSend_CATransform3DValue(toNumber);
      goto LABEL_34;
    case 0xDuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber UIEdgeInsetsValue];
      goto LABEL_34;
    case 0xEuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber NSRangeValue];
      goto LABEL_34;
    case 0xFuLL:
      toObject = [valueCopy toObject];
      goto LABEL_30;
    case 0x10uLL:
      if ([valueCopy isUndefined])
      {
        goto LABEL_19;
      }

      toNumber = [v6 toObject];
      if ([TMLJSNil isNil:toNumber])
      {
        v7 = 0;
      }

      else
      {
        cGSizeValue = toNumber;
LABEL_34:
        v7 = cGSizeValue;
      }

      break;
    case 0x11uLL:
      if (([valueCopy isUndefined] & 1) != 0 || (objc_msgSend(v6, "toObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = +[TMLJSNil isNil:](TMLJSNil, "isNil:", v13), v13, v14))
      {
LABEL_19:
        v7 = 0;
      }

      else
      {
        toObject = [v6 toString];
LABEL_30:
        v7 = toObject;
      }

      break;
    case 0x12uLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber NSAttributedString];
      goto LABEL_34;
    case 0x13uLL:
      toNumber = [valueCopy toArray];
      cGSizeValue = sub_26F1AC6C4(toNumber);
      goto LABEL_34;
    case 0x14uLL:
      toNumber = [valueCopy toDictionary];
      cGSizeValue = sub_26F1AC794(toNumber);
      goto LABEL_34;
    case 0x15uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x1BuLL:
      toObject = [valueCopy toObjectOfClass:objc_opt_class()];
      goto LABEL_30;
    case 0x16uLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber UIFontValue];
      goto LABEL_34;
    case 0x19uLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber blockValue];
      goto LABEL_34;
    case 0x1CuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber CGVectorValue];
      goto LABEL_34;
    case 0x1DuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber UIOffsetValue];
      goto LABEL_34;
    case 0x1EuLL:
      toNumber = [valueCopy toObjectOfClass:objc_opt_class()];
      cGSizeValue = [toNumber NSDirectionalEdgeInsetsValue];
      goto LABEL_34;
    default:
      v18 = MEMORY[0x277CBEAD8];
      v19 = MEMORY[0x277CCACA8];
      v20 = [TMLTypeRegistry typeNameForType:type];
      v21 = [v19 stringWithFormat:@"Unsupported value type '%@'", v20];
      v22 = [v18 exceptionWithName:@"TMLRuntimeException" reason:v21 userInfo:0];
      v23 = v22;

      objc_exception_throw(v22);
  }

  return v7;
}

@end