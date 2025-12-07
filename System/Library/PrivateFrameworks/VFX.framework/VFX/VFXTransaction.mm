@interface VFXTransaction
+ (BOOL)immediateMode;
+ (BOOL)setImmediateMode:(BOOL)mode;
+ (VFXTimingFunction)timingFunction;
+ (_BYTE)setImmediateModeWithAtomicTime:(double)time;
+ (__CFXWorld)immediateModeRestrictedContext;
+ (id)animationTimingFunction;
+ (void)checkUncommittedTransactions;
+ (void)enqueueCommandForObject:(id)object immediateTransactionBlock:(id)block;
+ (void)performPresentationObjectQueriesInWorld:(id)world usingBlock:(id)block;
+ (void)postCommandAvoidingImmediateModeWithWorldRef:(void *)ref applyBlock:(id)block;
+ (void)postCommandWithObject:(id)object applyBlock:(id)block;
+ (void)postCommandWithObject:(id)object key:(id)key subscriptIndex:(unint64_t)index derivedKeyPath:(id)path applyBlock:(id)block;
+ (void)postCommandWithObject:(id)object key:(id)key subscriptKey:(id)subscriptKey derivedKeyPath:(id)path applyBlock:(id)block;
+ (void)postCommandWithObject:(id)object keyPath:(id)path applyBlock:(id)block;
+ (void)postCommandWithWorldRef:(void *)ref applyBlock:(id)block;
+ (void)postReleaseCommandWithCFXObject:(void *)object;
+ (void)setAnimationDuration:(double)duration;
+ (void)setAnimationTimingFunction:(id)function;
+ (void)setBeginTime:(double)time;
+ (void)setTimingFunction:(id)function;
- (void)setAnimationTimingFunction:(id)function;
@end

@implementation VFXTransaction

+ (void)checkUncommittedTransactions
{
  v0 = sub_1AF276CB4();
  Count = CFArrayGetCount(v0[2]);
  v3 = Count;
  if (Count < 2)
  {
    if (Count == 1)
    {
      return;
    }
  }

  else
  {
    v4 = sub_1AF0D5194(Count, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF11F8();
    }

    Count = CFArrayGetValueAtIndex(v0[2], v3 - 1);
    if (*(Count + 40) == 0.0)
    {
      v5 = sub_1AF0D5194(Count, v2);
      Count = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (Count)
      {
        sub_1AFDF122C();
      }
    }
  }

  v6 = sub_1AF0D5194(Count, v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF1260(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

+ (_BYTE)setImmediateModeWithAtomicTime:(double)time
{
  result = sub_1AF276C70();
  result[52] |= 4u;
  qword_1ED739AC0 = *&time;
  return result;
}

+ (void)setAnimationDuration:(double)duration
{
  if (duration >= 3.40282347e38)
  {
    duration = 3.40282347e38;
  }

  durationCopy = duration;
  sub_1AF277E5C(durationCopy);
}

+ (void)setBeginTime:(double)time
{
  if (time >= 3.40282347e38)
  {
    time = 3.40282347e38;
  }

  timeCopy = time;
  sub_1AF277F9C(timeCopy);
}

+ (VFXTimingFunction)timingFunction
{
  result = sub_1AF277F80();
  if (result)
  {
    v3 = result;
    v4 = [VFXTimingFunction alloc];
    v6 = objc_msgSend_initWithTimingFunctionRef_(v4, v5, v3);

    return v6;
  }

  return result;
}

+ (void)setTimingFunction:(id)function
{
  v3 = objc_msgSend_cfxTimingFunction(function, a2, function);

  sub_1AF277EF8(v3);
}

+ (id)animationTimingFunction
{
  result = sub_1AF277F80();
  if (result)
  {

    return sub_1AF36FD0C(result, v3);
  }

  return result;
}

+ (void)setAnimationTimingFunction:(id)function
{
  v3 = sub_1AF36FC84(function, a2);

  sub_1AF277EF8(v3);
}

+ (BOOL)setImmediateMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = sub_1AF276C70();
  v5 = sub_1AF2780E0(v4);
  sub_1AF278058(modeCopy);
  return v5;
}

+ (BOOL)immediateMode
{
  v2 = sub_1AF276C70();
  if (sub_1AF2780E0(v2))
  {
    return 1;
  }

  return sub_1AF27803C();
}

+ (__CFXWorld)immediateModeRestrictedContext
{
  sub_1AF276C70();

  return +[VFXRenderer allocatedTextureCount]_0();
}

+ (void)postReleaseCommandWithCFXObject:(void *)object
{
  v4 = sub_1AF276C70();
  if (sub_1AF2780EC(v4))
  {

    CFRelease(object);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF336380;
    v5[3] = &unk_1E7A7E6C0;
    v5[4] = object;
    sub_1AF278390(v4, 0, object, 0, 0, v5);
  }
}

+ (void)postCommandWithWorldRef:(void *)ref applyBlock:(id)block
{
  v6 = sub_1AF276C70();
  if (sub_1AF2780EC(v6))
  {

    sub_1AF336414(block, ref, v7);
  }

  else
  {

    sub_1AF278390(v6, 0, ref, 0, 1, block);
  }
}

+ (void)postCommandAvoidingImmediateModeWithWorldRef:(void *)ref applyBlock:(id)block
{
  v6 = sub_1AF276C70();

  sub_1AF278390(v6, 0, ref, 0, 1, block);
}

+ (void)postCommandWithObject:(id)object applyBlock:(id)block
{
  v6 = sub_1AF276C70();
  if (sub_1AF2780EC(v6))
  {
    v9 = sub_1AF336580(object, v7, v8);

    sub_1AF336414(block, v9, v10);
  }

  else
  {
    v11 = objc_msgSend___CFObject(object, v7, v8);

    sub_1AF278390(v6, object, v11, 0, 1, block);
  }
}

+ (void)postCommandWithObject:(id)object keyPath:(id)path applyBlock:(id)block
{
  v8 = sub_1AF276C70();
  if (sub_1AF2780EC(v8))
  {
    v11 = sub_1AF336580(object, v9, v10);
    v14 = objc_msgSend___CFObject(object, v12, v13);

    sub_1AF277660(v11, v14, path, v8, block);
  }

  else
  {
    v15 = objc_msgSend___CFObject(object, v9, v10);

    sub_1AF278390(v8, object, v15, path, 1, block);
  }
}

+ (void)postCommandWithObject:(id)object key:(id)key subscriptIndex:(unint64_t)index derivedKeyPath:(id)path applyBlock:(id)block
{
  v12 = sub_1AF276C70();
  if (sub_1AF2780EC(v12))
  {
    v15 = sub_1AF336580(object, v13, v14);
    v18 = objc_msgSend___CFObject(object, v16, v17);

    sub_1AF27779C(v15, v18, key, index, v12, block);
  }

  else
  {
    v19 = objc_msgSend___CFObject(object, v13, v14);

    sub_1AF278390(v12, object, v19, path, 1, block);
  }
}

+ (void)postCommandWithObject:(id)object key:(id)key subscriptKey:(id)subscriptKey derivedKeyPath:(id)path applyBlock:(id)block
{
  v12 = sub_1AF276C70();
  if (sub_1AF2780EC(v12))
  {
    v15 = sub_1AF336580(object, v13, v14);
    v18 = objc_msgSend___CFObject(object, v16, v17);

    sub_1AF2778F4(v15, v18, key, subscriptKey, v12, block);
  }

  else
  {
    v19 = objc_msgSend___CFObject(object, v13, v14);

    sub_1AF278390(v12, object, v19, path, 1, block);
  }
}

+ (void)enqueueCommandForObject:(id)object immediateTransactionBlock:(id)block
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = objc_msgSend_world(object, v8, v9);
  }

  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    if (!objc_msgSend_worldRef(object, v11, v12))
    {
      v14 = sub_1AF0D5194(0, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF9144(v14);
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF336964;
    v16[3] = &unk_1E7A7F250;
    v16[4] = block;
    v16[5] = a2;
    objc_msgSend_postCommandWithObject_applyBlock_(self, v13, object, v16);
  }

  else
  {
    v15 = sub_1AF0D5194(v10, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF90C4(object, v15);
    }
  }
}

+ (void)performPresentationObjectQueriesInWorld:(id)world usingBlock:(id)block
{
  v5 = objc_msgSend_worldRef(world, a2, world);
  v9 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    (*(block + 2))(block, &v9);
    sub_1AF1CEA9C(v7, v8);
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
    function = objc_msgSend_functionWithName_(MEMORY[0x1E69793D0], v4, function);
  }

  MEMORY[0x1EEE66B58](VFXTransaction, sel_setAnimationTimingFunction_, function);
}

@end