@interface TMLRuntime
+ (Class)createClass:(id)class;
+ (id)childClassForName:(id)name inClass:(id)class;
+ (id)classForObject:(id)object;
+ (id)createObjectWithIdentifier:(id)identifier ofClass:(id)class initializer:(id)initializer;
+ (id)createObjectWithIdentifier:(id)identifier ofType:(id)type initializer:(id)initializer;
+ (id)createObjectWithIdentifier:(id)identifier ofType:(id)type initializer:(id)initializer parentObject:(id)object;
+ (id)ensureClass:(id)class;
+ (id)ensurePropertyWithKeyPath:(id)path forObject:(id)object writable:(BOOL)writable;
+ (id)property:(id)property forClass:(id)class;
+ (id)property:(id)property forObject:(id)object;
+ (id)propertyWithKeyPath:(id)path forObject:(id)object;
+ (id)propertyWithKeyPath:(id)path inClass:(id)class;
+ (id)requireModule:(id)module;
+ (id)rootClassDescriptor;
+ (id)signal:(id)signal forObject:(id)object;
+ (void)addProperty:(id)property toClass:(Class)class;
+ (void)bootstrap;
+ (void)makeObject:(id)object implementProtocols:(id)protocols;
+ (void)registerClass:(id)class;
+ (void)registerClass:(id)class className:(id)name;
+ (void)registerMethod:(id)method forObject:(id)object;
+ (void)registerProperty:(id)property forObject:(id)object;
+ (void)registerProtocol:(id)protocol;
+ (void)registerSignal:(id)signal forObject:(id)object;
+ (void)verifyMethod:(id)method forProtocol:(id)protocol;
+ (void)verifyMethod:(id)method withClass:(Class)class;
+ (void)verifyProperty:(id)property withClass:(Class)class;
@end

@implementation TMLRuntime

+ (void)bootstrap
{
  TouchML_init(self, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1CE4BC;
  block[3] = &unk_279DC5818;
  block[4] = self;
  if (qword_2806D92B0 != -1)
  {
    dispatch_once(&qword_2806D92B0, block);
  }
}

+ (id)rootClassDescriptor
{
  if (qword_2806D92C0 != -1)
  {
    sub_26F2016B8();
  }

  v3 = qword_2806D92B8;

  return v3;
}

+ (id)requireModule:(id)module
{
  moduleCopy = module;
  if (qword_2806D92D0 != -1)
  {
    sub_26F2016CC();
  }

  v4 = [qword_2806D92C8 objectForKeyedSubscript:moduleCopy];
  if (!v4)
  {
    moduleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_TMLModule", moduleCopy];
    v6 = NSClassFromString(moduleCopy);

    if (v6)
    {
      v4 = v6;
      if (([(objc_class *)v4 loadModule]& 1) != 0)
      {
        [qword_2806D92C8 setObject:v4 forKeyedSubscript:moduleCopy];
        goto LABEL_7;
      }

      v9 = MEMORY[0x277CBEAD8];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot load required module %@", moduleCopy];
    }

    else
    {
      v9 = MEMORY[0x277CBEAD8];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find required module %@", moduleCopy];
    }
    v10 = ;
    v11 = [v9 exceptionWithName:@"TMLRuntimeException" reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

LABEL_7:
  v7 = v4;

  return v4;
}

+ (id)createObjectWithIdentifier:(id)identifier ofType:(id)type initializer:(id)initializer
{
  identifierCopy = identifier;
  typeCopy = type;
  initializerCopy = initializer;
  v11 = [self classForName:typeCopy];
  if (!v11)
  {
    v15 = MEMORY[0x277CBEAD8];
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create object of undeclared type %@", typeCopy];
    v17 = [v15 exceptionWithName:@"TMLRuntimeException" reason:typeCopy userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v12 = v11;
  v13 = [self createObjectWithIdentifier:identifierCopy ofClass:v11 initializer:initializerCopy];

  return v13;
}

+ (id)createObjectWithIdentifier:(id)identifier ofClass:(id)class initializer:(id)initializer
{
  identifierCopy = identifier;
  classCopy = class;
  initializerCopy = initializer;
  objcClass = [classCopy objcClass];
  if (initializerCopy)
  {
    v11 = initializerCopy[2](initializerCopy, objcClass);
  }

  else
  {
    v11 = objc_alloc_init(objcClass);
  }

  v12 = v11;
  if (!v11)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = MEMORY[0x277CCACA8];
    className = [classCopy className];
    v18 = [v16 stringWithFormat:@"Failed to create object type %@", className];
    v19 = [v15 exceptionWithName:@"TMLRuntimeException" reason:v18 userInfo:0];
    v20 = v19;

    objc_exception_throw(v19);
  }

  v13 = objc_getAssociatedObject(v11, "ccppmsc");

  if (!v13)
  {
    objc_setAssociatedObject(v12, "ccppmsc", classCopy, 1);
  }

  [v12 setTmlIdentifier:identifierCopy];

  return v12;
}

+ (id)createObjectWithIdentifier:(id)identifier ofType:(id)type initializer:(id)initializer parentObject:(id)object
{
  identifierCopy = identifier;
  typeCopy = type;
  initializerCopy = initializer;
  objectCopy = object;
  if (objectCopy && ([self classForObject:objectCopy], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "childClassForName:inClass:", typeCopy, v14), v15 = objc_claimAutoreleasedReturnValue(), v14, v15) && (objc_msgSend(self, "createObjectWithIdentifier:ofClass:initializer:", identifierCopy, v15, initializerCopy), v16 = objc_claimAutoreleasedReturnValue(), v15, v16) || (objc_msgSend(self, "createObjectWithIdentifier:ofType:initializer:", identifierCopy, typeCopy, initializerCopy), v16 = objc_claimAutoreleasedReturnValue(), objectCopy))
  {
    [v16 setTmlParent:objectCopy];
  }

  return v16;
}

+ (void)makeObject:(id)object implementProtocols:(id)protocols
{
  objectCopy = object;
  protocolsCopy = protocols;
  if ([protocolsCopy count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:protocolsCopy];
    if ([v8 count])
    {
      do
      {
        v9 = [v8 count];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_26F1CF050;
        v29[3] = &unk_279DC8240;
        selfCopy = self;
        v10 = v8;
        v30 = v10;
        [v10 enumerateObjectsUsingBlock:v29];
      }

      while ([v10 count] != v9);
    }

    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_26F1CF0F4;
    v25[3] = &unk_279DC8268;
    selfCopy2 = self;
    v12 = objectCopy;
    v26 = v12;
    v13 = v11;
    v27 = v13;
    [v8 enumerateObjectsUsingBlock:v25];
    if ([v13 count])
    {
      if (!objc_getAssociatedObject(v12, "cppmsc"))
      {
        Class = object_getClass(v12);
        allObjects = [protocolsCopy allObjects];
        v16 = [allObjects sortedArrayUsingSelector:sel_compare_];
        v23 = [v16 componentsJoinedByString:@"_"];

        v17 = MEMORY[0x277CCACA8];
        v18 = NSStringFromClass(Class);
        qword_2806D92D8 = [v17 stringWithFormat:@"%@_%@_%llu", v18, v23, qword_2806D92D8];
        uTF8String = [qword_2806D92D8 UTF8String];

        ++qword_2806D92D8;
        ClassPair = objc_allocateClassPair(Class, uTF8String, 0);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = sub_26F1CF1EC;
        v24[3] = &unk_279DC82B0;
        v24[4] = ClassPair;
        [v13 enumerateObjectsUsingBlock:v24];
        objc_registerClassPair(ClassPair);
        object_setClass(v12, ClassPair);
        objc_setAssociatedObject(v12, "cppmsc", ClassPair, 0);
      }

      v22 = objc_getAssociatedObject(v12, "ppmsc");
      if (!v22)
      {
        v22 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
        objc_setAssociatedObject(v12, "ppmsc", v22, 1);
      }

      [v22 addObjectsFromArray:v13];
    }
  }
}

+ (void)registerClass:(id)class
{
  classCopy = class;
  className = [classCopy className];
  [self registerClass:classCopy className:className];
}

+ (void)registerClass:(id)class className:(id)name
{
  v83[1] = *MEMORY[0x277D85DE8];
  classCopy = class;
  nameCopy = name;
  objcClass = [classCopy objcClass];
  v9 = objcClass;
  if (objcClass)
  {
    v10 = objc_getAssociatedObject(objcClass, "ccppmsc");
    v11 = v10;
    if (!v10 || ([v10 isEqual:classCopy] & 1) != 0)
    {
      v12 = 0;
      goto LABEL_9;
    }

    if ([v11 canMergeFromClassDescriptor:classCopy])
    {
      v12 = [v11 mergeFromClassDescriptor:classCopy];
LABEL_9:
      superClass = [classCopy superClass];
      if (superClass)
      {
        [self registerClass:superClass];
      }

      else
      {
        superClassName = [classCopy superClassName];
        v46 = [superClassName length];

        if (v46)
        {
          superClassName2 = [classCopy superClassName];
          v48 = [self classForName:superClassName2];
          [classCopy setSuperClass:v48];

          superClass2 = [classCopy superClass];

          superClass = 0;
          if (!superClass2)
          {
            [qword_2806D92A8 addObject:classCopy];
            goto LABEL_27;
          }
        }

        else
        {
          rootClassDescriptor = [self rootClassDescriptor];

          superClass = 0;
          if (rootClassDescriptor != classCopy)
          {
            rootClassDescriptor2 = [self rootClassDescriptor];
            [classCopy setSuperClass:rootClassDescriptor2];
          }
        }
      }

      if ((v12 & 1) == 0)
      {
        v21 = [qword_2806D9298 objectForKeyedSubscript:nameCopy];

        if (v21)
        {
          if (!v11)
          {
            v22 = [qword_2806D9298 objectForKeyedSubscript:nameCopy];

            if (v22)
            {
              v23 = [qword_2806D9298 objectForKeyedSubscript:nameCopy];
              if (([v23 isEqual:classCopy] & 1) == 0)
              {
                v56 = MEMORY[0x277CBEAD8];
                nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to redeclare class %@", nameCopy];
                v80 = @"class";
                v81 = classCopy;
                v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
                v59 = [v56 exceptionWithName:@"TMLRuntimeException" reason:nameCopy userInfo:v58];
                v60 = v59;

                objc_exception_throw(v59);
              }
            }
          }

LABEL_22:
          v28 = qword_2806D9298;
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = sub_26F1CFD50;
          v70[3] = &unk_279DC8338;
          v71 = nameCopy;
          v29 = classCopy;
          v72 = v29;
          [v28 enumerateKeysAndObjectsUsingBlock:v70];
          childClasses = [v29 childClasses];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = sub_26F1CFDC8;
          v69[3] = &unk_279DC8358;
          v69[4] = v9;
          v69[5] = self;
          [childClasses enumerateKeysAndObjectsUsingBlock:v69];

          cls = [TMLState registerState:v29 forClass:v9];
          objc_setAssociatedObject(cls, "ccppmsc", v29, 1);
          v63 = superClass;
          v31 = [[TMLClassDescriptor alloc] initWithName:@"State" superClassName:0 initializer:0 optional:0];
          [v29 inheritedProperties];
          v32 = v62 = v11;
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = sub_26F1CFE58;
          v67[3] = &unk_279DC8380;
          v68 = v31;
          v33 = v31;
          [v32 enumerateKeysAndObjectsUsingBlock:v67];

          v34 = [[TMLPropertyDescriptor alloc] initWithName:@"tmlExtends" type:17 attributes:0];
          [(TMLClassDescriptor *)v33 addProperty:v34];

          v35 = [TMLSignalDescriptor alloc];
          v36 = [[TMLPropertyDescriptor alloc] initWithName:@"fromState" type:17 attributes:0];
          v79 = v36;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
          v38 = [(TMLSignalDescriptor *)v35 initWithName:@"enterState" parameters:v37];
          [(TMLClassDescriptor *)v33 addSignal:v38];

          v39 = [TMLSignalDescriptor alloc];
          v40 = [[TMLPropertyDescriptor alloc] initWithName:@"toState" type:17 attributes:0];
          v78 = v40;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
          v42 = [(TMLSignalDescriptor *)v39 initWithName:@"leaveState" parameters:v41];
          [(TMLClassDescriptor *)v33 addSignal:v42];

          v43 = [MEMORY[0x277CCACA8] stringWithCString:class_getName(cls) encoding:4];
          [(TMLClassDescriptor *)v33 setObjcClassName:v43];

          [v29 addChildClass:v33];
          goto LABEL_23;
        }
      }

      properties = [classCopy properties];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = sub_26F1CFCC4;
      v75[3] = &unk_279DC82D0;
      v75[4] = self;
      v75[5] = v9;
      [properties enumerateKeysAndObjectsUsingBlock:v75];

      methods = [classCopy methods];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = sub_26F1CFCD0;
      v74[3] = &unk_279DC82F0;
      v74[4] = self;
      v74[5] = v9;
      [methods enumerateKeysAndObjectsUsingBlock:v74];

      signals = [classCopy signals];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_26F1CFCDC;
      v73[3] = &unk_279DC8310;
      v73[4] = self;
      v73[5] = v9;
      [signals enumerateKeysAndObjectsUsingBlock:v73];

      if (qword_2806D92E0 != -1)
      {
        sub_26F2016E0();
      }

      v27 = [qword_2806D9298 objectForKeyedSubscript:nameCopy];

      if (!v27)
      {
        [qword_2806D9298 setObject:classCopy forKeyedSubscript:nameCopy];
        [qword_2806D92A8 removeObject:classCopy];
        objc_setAssociatedObject(v9, "ccppmsc", classCopy, 1);
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_27:

      goto LABEL_28;
    }

    v13 = MEMORY[0x277CBEAD8];
    v52 = MEMORY[0x277CCACA8];
    className = [classCopy className];
    v16 = [v52 stringWithFormat:@"Attempt to redeclare class %@", className];
    v82 = @"class";
    v83[0] = classCopy;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v83;
    v19 = &v82;
LABEL_32:
    v53 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v54 = [v13 exceptionWithName:@"TMLRuntimeException" reason:v16 userInfo:v53];
    v55 = v54;

    objc_exception_throw(v54);
  }

  if (([classCopy isOptional] & 1) == 0)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = MEMORY[0x277CCACA8];
    className = [classCopy className];
    v16 = [v14 stringWithFormat:@"Cannot register unknown class %@", className];
    v76 = @"class";
    v77 = classCopy;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v77;
    v19 = &v76;
    goto LABEL_32;
  }

LABEL_23:
  [v9 tmlMakeJSObjectClass];
  v44 = qword_2806D92A8;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_26F1CFE60;
  v64[3] = &unk_279DC83A8;
  v65 = classCopy;
  selfCopy = self;
  [v44 enumerateObjectsUsingBlock:v64];
  v11 = v65;
LABEL_28:
}

+ (void)registerProtocol:(id)protocol
{
  protocolCopy = protocol;
  objcProtocol = [protocolCopy objcProtocol];
  if (objcProtocol)
  {
    protocolName = [protocolCopy protocolName];
    v7 = [qword_2806D92A0 objectForKeyedSubscript:protocolName];

    if (!v7)
    {
      signals = [protocolCopy signals];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = sub_26F1D001C;
      v12 = &unk_279DC83D0;
      selfCopy = self;
      v13 = objcProtocol;
      [signals enumerateKeysAndObjectsUsingBlock:&v9];

      if (qword_2806D92E8 != -1)
      {
        sub_26F201708();
      }

      [qword_2806D92A0 setObject:protocolCopy forKeyedSubscript:{protocolName, v9, v10, v11, v12}];
    }
  }
}

+ (Class)createClass:(id)class
{
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_26F1D072C;
  v55 = sub_26F1D073C;
  classCopy = class;
  v56 = classCopy;
  rootObject = [v52[5] rootObject];
  type = [rootObject type];
  v7 = [self ensureClass:type];
  objcClass = [v7 objcClass];

  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromClass(objcClass);
  qword_2806D92F0 = [v9 stringWithFormat:@"%@_tml_%llu", v10, qword_2806D92F0];
  uTF8String = [qword_2806D92F0 UTF8String];

  ++qword_2806D92F0;
  ClassPair = objc_allocateClassPair(objcClass, uTF8String, 0);
  if ([(objc_class *)objcClass isSubclassOfClass:objc_opt_class()])
  {
    InstanceMethod = class_getInstanceMethod(objcClass, sel_initWithStyle_reuseIdentifier_);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_26F1D0744;
    v50[3] = &unk_279DC83F8;
    v50[5] = objcClass;
    v50[6] = sel_initWithStyle_reuseIdentifier_;
    v50[4] = &v51;
    v15 = MEMORY[0x27438BB60](v50);
    v16 = imp_implementationWithBlock(v15);

    TypeEncoding = method_getTypeEncoding(InstanceMethod);
    class_addMethod(ClassPair, sel_initWithStyle_reuseIdentifier_, v16, TypeEncoding);
  }

  else if ([(objc_class *)objcClass isSubclassOfClass:objc_opt_class()])
  {
    v18 = class_getInstanceMethod(objcClass, sel_initWithReuseIdentifier_);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_26F1D09FC;
    v49[3] = &unk_279DC8420;
    v49[5] = objcClass;
    v49[6] = sel_initWithReuseIdentifier_;
    v49[4] = &v51;
    v19 = MEMORY[0x27438BB60](v49);
    v20 = imp_implementationWithBlock(v19);

    v21 = method_getTypeEncoding(v18);
    class_addMethod(ClassPair, sel_initWithReuseIdentifier_, v20, v21);
  }

  else if ([(objc_class *)objcClass isSubclassOfClass:objc_opt_class()])
  {
    v22 = class_getInstanceMethod(objcClass, sel_initWithFrame_);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_26F1D0AA4;
    v48[3] = &unk_279DC8448;
    v48[5] = objcClass;
    v48[6] = sel_initWithFrame_;
    v48[4] = &v51;
    v23 = MEMORY[0x27438BB60](v48);
    v24 = imp_implementationWithBlock(v23);

    v25 = method_getTypeEncoding(v22);
    class_addMethod(ClassPair, sel_initWithFrame_, v24, v25);
  }

  else
  {
    v26 = class_getInstanceMethod(objcClass, sel_init);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_26F1D0B68;
    v47[3] = &unk_279DC8470;
    v47[5] = objcClass;
    v47[6] = sel_init;
    v47[4] = &v51;
    v27 = MEMORY[0x27438BB60](v47);
    v28 = imp_implementationWithBlock(v27);

    v29 = method_getTypeEncoding(v26);
    class_addMethod(ClassPair, sel_init, v28, v29);
  }

  v30 = class_getInstanceMethod(objcClass, sel_tmlDispose);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_26F1D0BFC;
  v46[3] = &unk_279DC84C0;
  v46[4] = &v51;
  v31 = MEMORY[0x27438BB60](v46);
  v32 = imp_implementationWithBlock(v31);

  Class = object_getClass(ClassPair);
  v34 = method_getTypeEncoding(v30);
  class_addMethod(Class, sel_tmlDispose, v32, v34);
  v35 = objc_alloc(MEMORY[0x277CBEB58]);
  implements = [rootObject implements];
  v37 = [v35 initWithSet:implements];

  if ([v37 count])
  {
    do
    {
      v38 = [v37 count];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_26F1D0CE4;
      v43[3] = &unk_279DC8240;
      selfCopy = self;
      v39 = v37;
      v44 = v39;
      [v39 enumerateObjectsUsingBlock:v43];
    }

    while ([v39 count] != v38);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_26F1D0D88;
  v42[3] = &unk_279DC84E0;
  v42[4] = self;
  v42[5] = ClassPair;
  [v37 enumerateObjectsUsingBlock:v42];
  objc_registerClassPair(ClassPair);
  v40 = ClassPair;

  _Block_object_dispose(&v51, 8);

  return v40;
}

+ (void)verifyProperty:(id)property withClass:(Class)class
{
  v67[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  if (![propertyCopy type])
  {
    v33 = MEMORY[0x277CBEAD8];
    v34 = MEMORY[0x277CCACA8];
    v35 = [propertyCopy description];
    v36 = [v34 stringWithFormat:@"Cannot register property of unsupported type %@", v35];
    v66 = @"property";
    v67[0] = propertyCopy;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    v38 = [v33 exceptionWithName:@"TMLRuntimeException" reason:v36 userInfo:v37];
    v39 = v38;

    goto LABEL_37;
  }

  propertyName = [propertyCopy propertyName];
  Property = class_getProperty(class, [propertyName UTF8String]);

  if (Property)
  {
    v8 = sub_26F1D1530(Property);
    goto LABEL_18;
  }

  propertyName2 = [propertyCopy propertyName];
  v10 = NSSelectorFromString(propertyName2);
  InstanceMethod = class_getInstanceMethod(class, v10);
  if (InstanceMethod)
  {
    v12 = InstanceMethod;
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [(NSString *)propertyName2 substringToIndex:1];
    capitalizedString = [v14 capitalizedString];
    v16 = [(NSString *)propertyName2 substringFromIndex:1];
    v17 = [v13 stringWithFormat:@"is%@%@", capitalizedString, v16];

    v18 = NSSelectorFromString(v17);
    v19 = class_getInstanceMethod(class, v18);
    if (v19)
    {
      v12 = v19;
    }

    else if (![propertyCopy isOptional] || (objc_msgSend(self, "addProperty:toClass:", propertyCopy, class), objc_msgSend(propertyCopy, "propertyName"), v20 = objc_claimAutoreleasedReturnValue(), v21 = NSSelectorFromString(v20), v12 = class_getInstanceMethod(class, v21), v20, !v12))
    {
      v40 = MEMORY[0x277CBEAD8];
      v56 = MEMORY[0x277CCACA8];
      v42 = [(objc_class *)class description];
      v43 = [v56 stringWithFormat:@"Method %@ not found in class %@", v17, v42];
      v64 = @"property";
      v65 = propertyCopy;
      v44 = MEMORY[0x277CBEAC0];
      v45 = &v65;
      v46 = &v64;
      goto LABEL_36;
    }

    propertyName2 = v17;
  }

  v22 = method_copyReturnType(v12);
  if (v22)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v22 length:strlen(v22) encoding:1 freeWhenDone:1];
  }

  else
  {
    v23 = @" ";
  }

  v8 = [TMLTypeRegistry typeForEncodedType:v23];

  if ([propertyCopy isReadonly])
  {
    goto LABEL_17;
  }

  v24 = MEMORY[0x277CCACA8];
  propertyName3 = [propertyCopy propertyName];
  v26 = [propertyName3 substringToIndex:1];
  capitalizedString2 = [v26 capitalizedString];
  propertyName4 = [propertyCopy propertyName];
  v29 = [propertyName4 substringFromIndex:1];
  v30 = [v24 stringWithFormat:@"set%@%@:", capitalizedString2, v29];

  v31 = NSSelectorFromString(v30);
  if (!class_getInstanceMethod(class, v31))
  {
    v40 = MEMORY[0x277CBEAD8];
    v41 = MEMORY[0x277CCACA8];
    v42 = [(objc_class *)class description];
    v43 = [v41 stringWithFormat:@"Method %@ not found in class %@", v30, v42];
    v62 = @"property";
    v63 = propertyCopy;
    v44 = MEMORY[0x277CBEAC0];
    v45 = &v63;
    v46 = &v62;
LABEL_36:
    v57 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
    v38 = [v40 exceptionWithName:@"TMLRuntimeException" reason:v43 userInfo:v57];
    v58 = v38;

LABEL_37:
    objc_exception_throw(v38);
  }

  propertyName2 = v30;
LABEL_17:

LABEL_18:
  type = [propertyCopy type];
  if (type != v8 && (v8 != 4 || type != 3) && (v8 != 3 || type != 4) && (v8 != 5 || type != 7) && (v8 != 16 || [propertyCopy type] <= 0xF))
  {
    if (Property)
    {
      v8 = sub_26F1D1530(Property);
    }

    v47 = MEMORY[0x277CBEAD8];
    v48 = MEMORY[0x277CCACA8];
    v49 = [TMLTypeRegistry typeNameForType:v8];
    v50 = [propertyCopy description];
    propertyName5 = [propertyCopy propertyName];
    v52 = [v48 stringWithFormat:@"Runtime type mismatch %@ vs %@ for %@", v49, v50, propertyName5];
    v60 = @"property";
    v61 = propertyCopy;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v54 = [v47 exceptionWithName:@"TMLRuntimeException" reason:v52 userInfo:v53];
    v55 = v54;

    objc_exception_throw(v54);
  }
}

+ (void)addProperty:(id)property toClass:(Class)class
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  if ([propertyCopy isOptional])
  {
    v6 = +[TMLTypeRegistry encodedTypeForType:](TMLTypeRegistry, "encodedTypeForType:", [propertyCopy type]);
    attributes.name = "T";
    attributes.value = [v6 UTF8String];
    v23 = xmmword_279DC8500;
    propertyName = [propertyCopy propertyName];
    class_addProperty(class, [propertyName UTF8String], &attributes, 2u);

    v8 = imp_implementationWithBlock(&unk_287F2D060);
    propertyName2 = [propertyCopy propertyName];
    v10 = NSSelectorFromString(propertyName2);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@:", v6];
    class_addMethod(class, v10, v8, [v11 UTF8String]);

    if (([propertyCopy isReadonly] & 1) == 0)
    {
      imp = imp_implementationWithBlock(&unk_287F2D080);
      v12 = MEMORY[0x277CCACA8];
      propertyName3 = [propertyCopy propertyName];
      v14 = [propertyName3 substringToIndex:1];
      capitalizedString = [v14 capitalizedString];
      propertyName4 = [propertyCopy propertyName];
      v17 = [propertyName4 substringFromIndex:1];
      v18 = [v12 stringWithFormat:@"set%@%@:", capitalizedString, v17];

      v19 = NSSelectorFromString(v18);
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"v@:%@", v6];
      class_addMethod(class, v19, imp, [v20 UTF8String]);

      propertyName2 = v18;
    }
  }
}

+ (void)registerProperty:(id)property forObject:(id)object
{
  propertyCopy = property;
  objectCopy = object;
  v7 = objc_getAssociatedObject(objectCopy, "pmsc");
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    objc_setAssociatedObject(objectCopy, "pmsc", v7, 1);
  }

  propertyName = [propertyCopy propertyName];
  v9 = [v7 objectForKeyedSubscript:propertyName];

  if (v9 || ([self classForObject:objectCopy], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "properties"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(propertyCopy, "propertyName"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", v12), v9 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v9))
  {
    if (([v9 isEqual:propertyCopy] & 1) == 0)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = MEMORY[0x277CCACA8];
      propertyName2 = [propertyCopy propertyName];
      tmlIdentifier = [objectCopy tmlIdentifier];
      v19 = [v16 stringWithFormat:@"Attempt to redeclare property %@ for %@", propertyName2, tmlIdentifier];
      v20 = [v15 exceptionWithName:@"TMLRuntimeException" reason:v19 userInfo:0];
      v21 = v20;

      objc_exception_throw(v20);
    }
  }

  else
  {
    propertyName3 = [propertyCopy propertyName];
    [v7 setObject:propertyCopy forKeyedSubscript:propertyName3];

    if ([TMLRuntimeObject subclassInstance:objectCopy])
    {
      propertyName4 = [propertyCopy propertyName];
      [objectCopy registerTMLProperty:propertyName4];
    }

    v9 = 0;
  }
}

+ (id)property:(id)property forObject:(id)object
{
  propertyCopy = property;
  objectCopy = object;
  v8 = objc_getAssociatedObject(objectCopy, "pmsc");
  v9 = [v8 objectForKeyedSubscript:propertyCopy];
  if (!v9)
  {
    v10 = [self classForObject:objectCopy];
    properties = [v10 properties];
    v9 = [properties objectForKeyedSubscript:propertyCopy];
  }

  return v9;
}

+ (void)registerMethod:(id)method forObject:(id)object
{
  methodCopy = method;
  objectCopy = object;
  v7 = objc_getAssociatedObject(objectCopy, "msc");
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    objc_setAssociatedObject(objectCopy, "msc", v7, 1);
  }

  methodName = [methodCopy methodName];
  v9 = [v7 objectForKeyedSubscript:methodName];

  if (v9 || ([self classForObject:objectCopy], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "methods"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(methodCopy, "methodName"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", v12), v9 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v9))
  {
    if (([v9 isEqual:methodCopy] & 1) == 0)
    {
      v17 = MEMORY[0x277CBEAD8];
      v18 = MEMORY[0x277CCACA8];
      methodName2 = [methodCopy methodName];
      [v18 stringWithFormat:@"Attempt to redeclare method %@ for %@", methodName2, objectCopy];
      goto LABEL_15;
    }

    if (v9 != methodCopy)
    {
      goto LABEL_11;
    }
  }

  methodName3 = [methodCopy methodName];
  [v7 setObject:methodCopy forKeyedSubscript:methodName3];

  methodSelector = [methodCopy methodSelector];
  if (!methodSelector)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    v17 = MEMORY[0x277CBEAD8];
    v23 = MEMORY[0x277CCACA8];
    methodName2 = [methodCopy methodName];
    [v23 stringWithFormat:@"Method selector unspecified for %@ in %@", methodName2, objectCopy];
    v20 = LABEL_15:;
    v21 = [v17 exceptionWithName:@"TMLRuntimeException" reason:v20 userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

LABEL_10:
  v15 = objc_opt_class();
  [self verifyMethod:methodCopy withClass:v15];
  v16 = [[TMLMethodCall alloc] initWithMethodDescriptor:methodCopy forClass:v15];
  [objectCopy tmlAddMethod:v16];

LABEL_11:
}

+ (void)registerSignal:(id)signal forObject:(id)object
{
  signalCopy = signal;
  objectCopy = object;
  v7 = objc_getAssociatedObject(objectCopy, "sc");
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    objc_setAssociatedObject(objectCopy, "sc", v7, 1);
  }

  signalName = [signalCopy signalName];
  v9 = [v7 objectForKeyedSubscript:signalName];

  if (v9 || ([self classForObject:objectCopy], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "signals"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(signalCopy, "signalName"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", v12), v9 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v9))
  {
    if (([v9 isEqual:signalCopy] & 1) == 0)
    {
      v15 = MEMORY[0x277CBEAD8];
      v18 = MEMORY[0x277CCACA8];
      signalName2 = [signalCopy signalName];
      [v18 stringWithFormat:@"Attempt to redeclare signal %@ for %@", signalName2, objectCopy];
      v19 = LABEL_12:;
      v20 = [v15 exceptionWithName:@"TMLRuntimeException" reason:v19 userInfo:0];
      v21 = v20;

      objc_exception_throw(v20);
    }
  }

  methodSelector = [signalCopy methodSelector];

  if (methodSelector)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = MEMORY[0x277CCACA8];
    signalName2 = [signalCopy signalName];
    [v16 stringWithFormat:@"Attempt to declare signal with method selector %@ for %@", signalName2, objectCopy];
    goto LABEL_12;
  }

  signalName3 = [signalCopy signalName];
  [v7 setObject:signalCopy forKeyedSubscript:signalName3];
}

+ (void)verifyMethod:(id)method forProtocol:(id)protocol
{
  v62[1] = *MEMORY[0x277D85DE8];
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
  MethodDescription = protocol_getMethodDescription(protocolCopy, v9, [methodCopy isOptional] != 1, !-[NSString hasPrefix:](methodSelector, "hasPrefix:", @"+"));
  if (!MethodDescription.name)
  {
    if ([methodCopy isOptional])
    {
      goto LABEL_30;
    }

    v37 = MEMORY[0x277CBEAD8];
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Method %@ not found in protocol %s", methodSelector, protocol_getName(protocolCopy)];
    v61 = @"method";
    v62[0] = methodCopy;
    v39 = MEMORY[0x277CBEAC0];
    v40 = v62;
    v41 = &v61;
LABEL_36:
    v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
    v43 = [v37 exceptionWithName:@"TMLRuntimeException" reason:v38 userInfo:v42];
    v44 = v43;

    objc_exception_throw(v43);
  }

  v11 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:MethodDescription.types];
  numberOfArguments = [v11 numberOfArguments];
  parameters2 = [methodCopy parameters];
  v14 = [parameters2 count];

  if (numberOfArguments - 2 != v14)
  {
    v37 = MEMORY[0x277CBEAD8];
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Argument count mismatch for method %@ in protocol %s", methodSelector, protocol_getName(protocolCopy)];
    v59 = @"method";
    v60 = methodCopy;
    v39 = MEMORY[0x277CBEAC0];
    v40 = &v60;
    v41 = &v59;
    goto LABEL_36;
  }

  if (numberOfArguments != 2)
  {
    for (i = 2; i != numberOfArguments; ++i)
    {
      v16 = [v11 getArgumentTypeAtIndex:i];
      v17 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:1];
      v18 = [TMLTypeRegistry typeForEncodedType:v17];

      parameters3 = [methodCopy parameters];
      v20 = [parameters3 objectAtIndexedSubscript:i - 2];

      type = [v20 type];
      if (type != v18)
      {
        v22 = v18 == 4 && type == 3;
        if (!v22 && (v18 != 3 || type != 4) && (v18 != 5 || type != 7) && (v18 != 16 || [v20 type] <= 0xF))
        {
          v27 = MEMORY[0x277CBEAD8];
          v28 = MEMORY[0x277CCACA8];
          v29 = [TMLTypeRegistry typeNameForType:v18];
          v30 = [v20 description];
          propertyName = [v20 propertyName];
          methodName2 = [methodCopy methodName];
          v33 = [v28 stringWithFormat:@"Runtime type mismatch %@ vs %@ for argument %@ in method %@", v29, v30, propertyName, methodName2];
          v57[0] = @"property";
          v57[1] = @"method";
          v58[0] = v20;
          v58[1] = methodCopy;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
          v35 = [v27 exceptionWithName:@"TMLRuntimeException" reason:v33 userInfo:v34];
          v36 = v35;

          objc_exception_throw(v35);
        }
      }
    }
  }

  methodReturnType = [v11 methodReturnType];
  v24 = [MEMORY[0x277CCACA8] stringWithCString:methodReturnType encoding:1];
  v25 = [TMLTypeRegistry typeForEncodedType:v24];

  returnType = [methodCopy returnType];
  if (returnType != v25 && (v25 != 4 || returnType != 3) && (v25 != 3 || returnType != 4) && (v25 != 5 || returnType != 7) && (v25 != 16 || [methodCopy returnType] <= 0xF))
  {
    v45 = MEMORY[0x277CBEAD8];
    v46 = MEMORY[0x277CCACA8];
    v47 = [TMLTypeRegistry typeNameForType:v25];
    v48 = +[TMLTypeRegistry typeNameForType:](TMLTypeRegistry, "typeNameForType:", [methodCopy returnType]);
    methodName3 = [methodCopy methodName];
    v50 = [v46 stringWithFormat:@"Runtime type mismatch %@ vs %@ for return type in method %@", v47, v48, methodName3];
    v55 = @"method";
    v56 = methodCopy;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v52 = [v45 exceptionWithName:@"TMLRuntimeException" reason:v50 userInfo:v51];
    v53 = v52;

    objc_exception_throw(v52);
  }

LABEL_30:
}

+ (void)verifyMethod:(id)method withClass:(Class)class
{
  v63[1] = *MEMORY[0x277D85DE8];
  methodCopy = method;
  methodSelector = [methodCopy methodSelector];
  if ([methodSelector hasPrefix:@"+"])
  {
    v6 = [methodSelector substringFromIndex:1];

    v7 = NSSelectorFromString(v6);
    ClassMethod = class_getClassMethod(class, v7);
    methodSelector = v6;
    if (ClassMethod)
    {
      goto LABEL_3;
    }

LABEL_29:
    if ([methodCopy isOptional])
    {
      goto LABEL_30;
    }

    v44 = MEMORY[0x277CBEAD8];
    v51 = MEMORY[0x277CCACA8];
    v46 = [(objc_class *)class description];
    v47 = [v51 stringWithFormat:@"Method %@ not found in class %@", methodSelector, v46];
    v62 = @"method";
    v63[0] = methodCopy;
    v48 = MEMORY[0x277CBEAC0];
    v49 = v63;
    v50 = &v62;
LABEL_36:
    v52 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:1];
    v53 = [v44 exceptionWithName:@"TMLRuntimeException" reason:v47 userInfo:v52];
    v54 = v53;

    objc_exception_throw(v53);
  }

  v33 = NSSelectorFromString(methodSelector);
  ClassMethod = class_getInstanceMethod(class, v33);
  if (!ClassMethod)
  {
    goto LABEL_29;
  }

LABEL_3:
  v9 = method_getNumberOfArguments(ClassMethod) - 2;
  parameters = [methodCopy parameters];
  v11 = [parameters count];

  if (v11 != v9)
  {
    v44 = MEMORY[0x277CBEAD8];
    v45 = MEMORY[0x277CCACA8];
    v46 = [(objc_class *)class description];
    v47 = [v45 stringWithFormat:@"Argument count mismatch for method %@ in class %@", methodSelector, v46];
    v60 = @"method";
    v61 = methodCopy;
    v48 = MEMORY[0x277CBEAC0];
    v49 = &v61;
    v50 = &v60;
    goto LABEL_36;
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v13 = method_copyArgumentType(ClassMethod, i + 2);
      v14 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:1];
      v15 = [TMLTypeRegistry typeForEncodedType:v14];

      free(v13);
      parameters2 = [methodCopy parameters];
      v17 = [parameters2 objectAtIndexedSubscript:i];

      type = [v17 type];
      if (type != v15)
      {
        v19 = v15 == 4 && type == 3;
        if (!v19 && (v15 != 3 || type != 4) && (v15 != 5 || type != 7) && (v15 != 16 || [v17 type] <= 0xF))
        {
          v34 = MEMORY[0x277CBEAD8];
          v35 = MEMORY[0x277CCACA8];
          v36 = [TMLTypeRegistry typeNameForType:v15];
          v37 = [v17 description];
          propertyName = [v17 propertyName];
          methodName = [methodCopy methodName];
          v40 = [v35 stringWithFormat:@"Runtime type mismatch %@ vs %@ for argument %@ in method %@", v36, v37, propertyName, methodName];
          v58[0] = @"property";
          v58[1] = @"method";
          v59[0] = v17;
          v59[1] = methodCopy;
          v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
          v42 = [v34 exceptionWithName:@"TMLRuntimeException" reason:v40 userInfo:v41];
          v43 = v42;

          objc_exception_throw(v42);
        }
      }
    }
  }

  v20 = method_copyReturnType(ClassMethod);
  v21 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:1];
  v22 = [TMLTypeRegistry typeForEncodedType:v21];

  free(v20);
  returnType = [methodCopy returnType];
  if (returnType != v22 && (v22 != 4 || returnType != 3) && (v22 != 3 || returnType != 4) && (v22 != 5 || returnType != 7) && (v22 != 16 || [methodCopy returnType] <= 0xF))
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = MEMORY[0x277CCACA8];
    v26 = [TMLTypeRegistry typeNameForType:v22];
    v27 = +[TMLTypeRegistry typeNameForType:](TMLTypeRegistry, "typeNameForType:", [methodCopy returnType]);
    methodName2 = [methodCopy methodName];
    v29 = [v25 stringWithFormat:@"Runtime type mismatch %@ vs %@ for return type in method %@", v26, v27, methodName2];
    v56 = @"method";
    v57 = methodCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v31 = [v24 exceptionWithName:@"TMLRuntimeException" reason:v29 userInfo:v30];
    v32 = v31;

    objc_exception_throw(v31);
  }

LABEL_30:
}

+ (id)signal:(id)signal forObject:(id)object
{
  signalCopy = signal;
  objectCopy = object;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_26F1D072C;
  v31 = sub_26F1D073C;
  v32 = 0;
  v8 = objc_getAssociatedObject(objectCopy, "ppmsc");
  if (v8)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_26F1D2E38;
    v23[3] = &unk_279DC8538;
    v26 = &v27;
    v24 = signalCopy;
    v25 = objectCopy;
    [v8 enumerateObjectsUsingBlock:v23];
    v9 = v28[5];
    if (v9)
    {
      v10 = v9;

      v11 = v24;
      goto LABEL_17;
    }
  }

  v11 = objc_getAssociatedObject(objectCopy, "sc");
  v12 = [v11 objectForKeyedSubscript:signalCopy];
  v13 = v28[5];
  v28[5] = v12;

  v14 = v28[5];
  if (!v14)
  {
    v15 = [self classForObject:objectCopy];
    v16 = v15;
    if (v28[5] || !v15)
    {
      superClass = v15;
    }

    else
    {
      do
      {
        signals = [v16 signals];
        v18 = [signals objectForKeyedSubscript:signalCopy];
        v19 = v28[5];
        v28[5] = v18;

        superClass = [v16 superClass];

        if (v28[5])
        {
          v21 = 1;
        }

        else
        {
          v21 = superClass == 0;
        }

        v16 = superClass;
      }

      while (!v21);
    }

    v14 = v28[5];
  }

  v10 = v14;
LABEL_17:

  _Block_object_dispose(&v27, 8);

  return v10;
}

+ (id)classForObject:(id)object
{
  objectCopy = object;
  v4 = objc_getAssociatedObject(objectCopy, "ccppmsc");
  if (!v4)
  {
    Superclass = objc_opt_class();
    v6 = objc_getAssociatedObject(Superclass, "ccppmsc");
    v4 = v6;
    v7 = v6 == 0;
    if (Superclass && !v6)
    {
      do
      {
        Superclass = class_getSuperclass(Superclass);
        v8 = objc_getAssociatedObject(Superclass, "ccppmsc");
        v4 = v8;
        v7 = v8 == 0;
      }

      while (Superclass && !v8);
    }

    if ((objectCopy & 0x8000000000000000) == 0 && !v7)
    {
      objc_setAssociatedObject(objectCopy, "ccppmsc", v4, 1);
    }
  }

  v9 = v4;

  return v9;
}

+ (id)childClassForName:(id)name inClass:(id)class
{
  nameCopy = name;
  classCopy = class;
  v8 = classCopy;
  if (classCopy)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_26F1D072C;
    v25 = sub_26F1D073C;
    v26 = 0;
    childClasses = [classCopy childClasses];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_26F1D31A8;
    v18 = &unk_279DC8560;
    v10 = nameCopy;
    v19 = v10;
    v20 = &v21;
    [childClasses enumerateKeysAndObjectsUsingBlock:&v15];

    v11 = v22[5];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      superClass = [v8 superClass];
      v12 = [self childClassForName:v10 inClass:superClass];
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)property:(id)property forClass:(id)class
{
  propertyCopy = property;
  classCopy = class;
  properties = [classCopy properties];
  v8 = [properties objectForKeyedSubscript:propertyCopy];

  while (!v8 && classCopy)
  {
    v9 = classCopy;
    classCopy = [classCopy superClass];

    properties2 = [classCopy properties];
    v8 = [properties2 objectForKeyedSubscript:propertyCopy];
  }

  return v8;
}

+ (id)propertyWithKeyPath:(id)path inClass:(id)class
{
  pathCopy = path;
  classCopy = class;
  if (qword_2806D9300 != -1)
  {
    sub_26F201730();
  }

  v8 = 0x277CCA000uLL;
  v9 = MEMORY[0x277CCACA8];
  objcClassName = [classCopy objcClassName];
  if (objcClassName)
  {
    [classCopy objcClassName];
  }

  else
  {
    [classCopy className];
  }
  v11 = ;
  pathCopy = [v9 stringWithFormat:@"%@:%@", v11, pathCopy];

  v13 = [qword_2806D92F8 objectForKeyedSubscript:pathCopy];
  if (v13)
  {
    goto LABEL_7;
  }

  v15 = [pathCopy rangeOfString:@"."];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [self property:pathCopy forClass:classCopy];
    if (v14)
    {
LABEL_10:
      [qword_2806D92F8 setObject:v14 forKeyedSubscript:pathCopy];
      goto LABEL_11;
    }
  }

  else
  {
    v18 = v15;
    v19 = [pathCopy substringToIndex:v15];
    v20 = [self property:v19 forClass:classCopy];
    v21 = v20;
    if (v20)
    {
      typeClassName = [v20 typeClassName];
      v23 = [self classForName:typeClassName];

      if (!v23)
      {
        v32 = MEMORY[0x277CBEAD8];
        v33 = MEMORY[0x277CCACA8];
        typeClassName2 = [v21 typeClassName];
        v35 = [v33 stringWithFormat:@"Attempt to access undeclared class %@", typeClassName2];
        v36 = [v32 exceptionWithName:@"TMLRuntimeException" reason:v35 userInfo:0];
        v37 = v36;

        objc_exception_throw(v36);
      }

      v24 = [pathCopy substringFromIndex:v18 + 1];
      v14 = [self propertyWithKeyPath:v24 inClass:v23];

      v8 = 0x277CCA000;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      goto LABEL_10;
    }
  }

  objcClass = [classCopy objcClass];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([objcClass tmlPropertyWithKeyPath:pathCopy], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v26 = MEMORY[0x277CBEAD8];
    v27 = *(v8 + 3240);
    className = [classCopy className];
    v29 = [v27 stringWithFormat:@"Attempt to access undeclared property %@ in class %@", pathCopy, className];
    v30 = [v26 exceptionWithName:@"TMLRuntimeException" reason:v29 userInfo:0];
    v31 = v30;

    objc_exception_throw(v30);
  }

LABEL_7:
  v14 = v13;
LABEL_11:
  v16 = v14;

  return v14;
}

+ (id)propertyWithKeyPath:(id)path forObject:(id)object
{
  v31[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tmlParent = [objectCopy tmlParent];
    v9 = objc_getAssociatedObject(tmlParent, "pmsc");
  }

  else
  {
    v9 = objc_getAssociatedObject(objectCopy, "pmsc");
  }

  v10 = pathCopy;
  v11 = [v10 rangeOfString:@"."];
  v12 = v10;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v10 substringToIndex:v11];
  }

  v13 = [v9 objectForKeyedSubscript:v12];
  v14 = v13;
  if (v13)
  {
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v13;
    }

    else
    {
      typeClassName = [v13 typeClassName];
      v19 = [self classForName:typeClassName];

      v20 = [v10 substringFromIndex:v11 + 1];
      v15 = [self propertyWithKeyPath:v20 inClass:v19];
    }
  }

  else
  {
    v16 = [self classForObject:objectCopy];
    if (!v16)
    {
      v22 = MEMORY[0x277CBEAD8];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to access undeclared class %@", objc_opt_class()];
      v30 = @"identifier";
      tmlIdentifier = [objectCopy tmlIdentifier];
      v25 = tmlIdentifier;
      v26 = &stru_287F301C0;
      if (tmlIdentifier)
      {
        v26 = tmlIdentifier;
      }

      v31[0] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v28 = [v22 exceptionWithName:@"TMLRuntimeException" reason:v23 userInfo:v27];
      v29 = v28;

      objc_exception_throw(v28);
    }

    v17 = v16;
    v15 = [TMLRuntime propertyWithKeyPath:v10 inClass:v16];
  }

  return v15;
}

+ (id)ensurePropertyWithKeyPath:(id)path forObject:(id)object writable:(BOOL)writable
{
  writableCopy = writable;
  v29[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  v10 = [self propertyWithKeyPath:pathCopy forObject:objectCopy];
  if (!v10)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to access undeclared property %@ in class %@", pathCopy, objc_opt_class()];
    v28 = @"identifier";
    tmlIdentifier = [objectCopy tmlIdentifier];
    v16 = tmlIdentifier;
    v17 = &stru_287F301C0;
    if (tmlIdentifier)
    {
      v17 = tmlIdentifier;
    }

    v29[0] = v17;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v29;
    v20 = &v28;
LABEL_13:
    v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v24 = [v13 exceptionWithName:@"TMLRuntimeException" reason:v14 userInfo:v23];
    v25 = v24;

    objc_exception_throw(v24);
  }

  v11 = v10;
  if (writableCopy && [v10 isReadonly])
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to modify read-only property %@ in class %@", pathCopy, objc_opt_class()];
    v26 = @"identifier";
    tmlIdentifier2 = [objectCopy tmlIdentifier];
    v16 = tmlIdentifier2;
    v22 = &stru_287F301C0;
    if (tmlIdentifier2)
    {
      v22 = tmlIdentifier2;
    }

    v27 = v22;
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v27;
    v20 = &v26;
    goto LABEL_13;
  }

  return v11;
}

+ (id)ensureClass:(id)class
{
  classCopy = class;
  v5 = [self classForName:classCopy];
  if (!v5)
  {
    v8 = MEMORY[0x277CBEAD8];
    classCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to access undeclared class %@", classCopy];
    v10 = [v8 exceptionWithName:@"TMLRuntimeException" reason:classCopy userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  v6 = v5;

  return v6;
}

@end