@interface SCNTransaction
+ (BOOL)immediateMode;
+ (CAMediaTimingFunction)animationTimingFunction;
+ (__C3DScene)immediateModeRestrictedContext;
+ (void)enqueueCommandForObject:(id)object immediateTransactionBlock:(id)block;
+ (void)performPresentationInstanceQueriesInScene:(id)scene usingBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptIndex:(unint64_t)index derivedKeyPath:(id)path applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptKey:(id)subscriptKey derivedKeyPath:(id)path applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object keyPath:(id)path applyBlock:(id)block;
+ (void)setAnimationTimingFunction:(CAMediaTimingFunction *)animationTimingFunction;
- (void)setAnimationTimingFunction:(id)function;
@end

@implementation SCNTransaction

+ (CAMediaTimingFunction)animationTimingFunction
{
  result = C3DTransactionGetTimingFunction();
  if (result)
  {

    return CAMediaTimingFunctionFromC3DTimingFunction(result, v3);
  }

  return result;
}

+ (void)setAnimationTimingFunction:(CAMediaTimingFunction *)animationTimingFunction
{
  v3 = C3DTimingFunctionFromCAMediaTimingFunction(animationTimingFunction);

  C3DTransactionSetTimingFunction(v3);
}

+ (BOOL)immediateMode
{
  Current = C3DTransactionGetCurrent();

  return C3DTransactionIsImmediate(Current);
}

+ (__C3DScene)immediateModeRestrictedContext
{
  Current = C3DTransactionGetCurrent();

  return C3DParticleSystemInstanceGetSystem(Current);
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    v10 = *(block + 2);
    v9.n128_u64[0] = 0;

    v10(block, v9);
  }

  else
  {
    __CFObject = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject, 0, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object keyPath:(id)path applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && path)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeypathIfNeeded(context, __CFObject, path);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, path, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptIndex:(unint64_t)index derivedKeyPath:(id)path applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && path)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeyAndSubscriptIndexIfNeeded(context, __CFObject, key, index);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, path, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptKey:(id)subscriptKey derivedKeyPath:(id)path applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && path)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeyAndSubscriptKeyIfNeeded(context, __CFObject, key, subscriptKey);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, path, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && key)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeyIfNeeded(context, __CFObject, key);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, key, block);
  }
}

+ (void)enqueueCommandForObject:(id)object immediateTransactionBlock:(id)block
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [object scene];
  }

  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    sceneRef = [object sceneRef];
    if (!sceneRef)
    {
      v12 = scn_default_log(0, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [SCNTransaction enqueueCommandForObject:v12 immediateTransactionBlock:?];
      }
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__SCNTransaction_enqueueCommandForObject_immediateTransactionBlock___block_invoke;
    v14[3] = &unk_278300670;
    v14[4] = block;
    v14[5] = a2;
    [self postCommandWithContext:sceneRef object:object applyBlock:v14];
  }

  else
  {
    v13 = scn_default_log(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCNTransaction enqueueCommandForObject:object immediateTransactionBlock:?];
    }
  }
}

uint64_t __68__SCNTransaction_enqueueCommandForObject_immediateTransactionBlock___block_invoke(uint64_t a1)
{
  v2 = +[SCNTransaction immediateMode];
  if (v2)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  else
  {
    v6 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__SCNTransaction_enqueueCommandForObject_immediateTransactionBlock___block_invoke_cold_1(a1);
    }

    [SCNTransaction setImmediateMode:1];
    (*(*(a1 + 32) + 16))();
    return [SCNTransaction setImmediateMode:0];
  }
}

+ (void)performPresentationInstanceQueriesInScene:(id)scene usingBlock:(id)block
{
  sceneRef = [scene sceneRef];
  v9 = sceneRef;
  if (sceneRef)
  {
    v7 = sceneRef;
    C3DSceneLock(sceneRef, v6);
    (*(block + 2))(block, &v9);
    C3DSceneUnlock(v7, v8);
  }

  else
  {
    (*(block + 2))(block, &v9);
  }
}

- (void)setAnimationTimingFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    function = [MEMORY[0x277CD9EF8] functionWithName:function];
  }

  [SCNTransaction setAnimationTimingFunction:function];
}

+ (void)enqueueCommandForObject:(uint64_t)a1 immediateTransactionBlock:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v2, v3, "Unreachable code: Unsupported class %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

+ (void)enqueueCommandForObject:(os_log_t)log immediateTransactionBlock:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "sceneRef";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void __68__SCNTransaction_enqueueCommandForObject_immediateTransactionBlock___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v7) = 138412290;
  *(&v7 + 4) = NSStringFromSelector(*(a1 + 40));
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Unreachable code: Command enqueued by %@ was expected to be run in immediate mode", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end