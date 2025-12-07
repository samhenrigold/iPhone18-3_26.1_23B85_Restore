@interface VNRequestInstanceCreator
+ (id)defaultCreator;
- (BOOL)_isValidRequestClass:(void *)class;
- (VNRequestInstanceCreator)initWithDelegate:(id)delegate;
- (id)_newVNRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error;
- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error;
- (id)errorForFailedInstanceCreationOfRequestClass:(Class)class withCompletionHandler:(id)handler;
- (id)newRequestInstanceForSpecifier:(id)specifier withCompletionHandler:(id)handler error:(id *)error;
- (id)newRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error;
@end

@implementation VNRequestInstanceCreator

- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error
{
  if (error)
  {
    *error = [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:handler, revision];
  }

  return 0;
}

- (id)_newVNRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error
{
  handlerCopy = handler;
  v11 = [[class alloc] initWithCompletionHandler:handlerCopy];
  v12 = v11;
  if (!v11)
  {
    if (error)
    {
      [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:handlerCopy];
      *error = v13 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (revision && ![v11 setRevision:revision error:error])
  {
    goto LABEL_7;
  }

  v13 = v12;
LABEL_8:

  return v13;
}

- (id)errorForFailedInstanceCreationOfRequestClass:(Class)class withCompletionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = NSStringFromClass(class);
  v7 = [v5 initWithFormat:@"A new %@ instance cannot be created", v6];

  v11 = *MEMORY[0x1E696A578];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VN.Tests" code:1 userInfo:v8];

  return v9;
}

- (id)newRequestInstanceForSpecifier:(id)specifier withCompletionHandler:(id)handler error:(id *)error
{
  specifierCopy = specifier;
  handlerCopy = handler;
  v10 = [specifierCopy requestClassAndReturnError:error];
  if (v10)
  {
    v11 = -[VNRequestInstanceCreator newRequestInstanceOfClass:withCompletionHandler:revision:error:](self, "newRequestInstanceOfClass:withCompletionHandler:revision:error:", v10, handlerCopy, [specifierCopy requestRevision], error);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error
{
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v36 = 0;
  v13 = handlerCopy;
  if (self)
  {
    if (![(VNRequestInstanceCreator *)class _isValidRequestClass:v12])
    {
      [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:v13];
      v36 = v18 = 0;
      goto LABEL_22;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = WeakRetained;
    if (WeakRetained)
    {
      v37 = 0;
      v16 = [WeakRetained requestInstanceCreator:self newRequestInstance:&v37 ofClass:class withCompletionHandler:v13 revision:revision error:&v36];
      v17 = v37;
      v18 = v17;
      if (v16)
      {
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v36 = [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:v13];
        }

        goto LABEL_21;
      }
    }

    errorCopy = error;
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = NSStringFromClass(class);
    v22 = [v20 initWithFormat:@"new%@InstanceWithCompletionHandler:revision:error:", v21];

    v23 = NSSelectorFromString(v22);
    if (objc_opt_respondsToSelector())
    {
      v25 = ([(VNRequestInstanceCreator *)self methodForSelector:v23])(self, v23, v13, revision, &v36);
    }

    else
    {
      if (!class)
      {
        goto LABEL_17;
      }

      classCopy = class;
      while (1)
      {
        if ([(VNRequestInstanceCreator *)class _isValidRequestClass:v24])
        {
          v27 = objc_alloc(MEMORY[0x1E696AEC0]);
          v28 = NSStringFromClass(classCopy);
          v29 = [v27 initWithFormat:@"_new%@InstanceOfClass:withCompletionHandler:revision:error:", v28];

          v30 = NSSelectorFromString(v29);
          if (objc_opt_respondsToSelector())
          {
            break;
          }
        }

        classCopy = [(objc_class *)classCopy superclass];
        if (!classCopy)
        {
          goto LABEL_17;
        }
      }

      if (!v30)
      {
LABEL_17:
        [(VNRequestInstanceCreator *)self errorForFailedInstanceCreationOfRequestClass:class withCompletionHandler:v13];
        v36 = v18 = 0;
        goto LABEL_18;
      }

      v25 = ([(VNRequestInstanceCreator *)self methodForSelector:v30])(self, v30, class, v13, revision, &v36);
    }

    v18 = v25;
LABEL_18:
    error = errorCopy;
LABEL_21:

    goto LABEL_22;
  }

  v18 = 0;
LABEL_22:

  v31 = v36;
  objc_autoreleasePoolPop(v11);
  if (v18)
  {
    v32 = v18;
  }

  else if (error)
  {
    v33 = v31;
    *error = v31;
  }

  return v18;
}

- (BOOL)_isValidRequestClass:(void *)class
{
  v3 = objc_opt_class();
  v4 = [class isSubclassOfClass:v3];
  v5 = v3 == class || v4 == 0;
  result = 0;
  if (!v5)
  {
    v6 = NSClassFromString(&cfstr_Vncompoundrequ.isa);
    if (!v6 || ([class isSubclassOfClass:v6] & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

- (VNRequestInstanceCreator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = VNRequestInstanceCreator;
  v5 = [(VNRequestInstanceCreator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

+ (id)defaultCreator
{
  if (defaultCreator_onceToken != -1)
  {
    dispatch_once(&defaultCreator_onceToken, &__block_literal_global_1102);
  }

  v3 = defaultCreator_defaultCreator;

  return v3;
}

uint64_t __42__VNRequestInstanceCreator_defaultCreator__block_invoke()
{
  defaultCreator_defaultCreator = objc_alloc_init(VNRequestInstanceCreator);

  return MEMORY[0x1EEE66BB8]();
}

@end