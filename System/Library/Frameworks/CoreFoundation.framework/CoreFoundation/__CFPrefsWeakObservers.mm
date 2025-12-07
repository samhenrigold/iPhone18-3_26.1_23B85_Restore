@interface __CFPrefsWeakObservers
- (__CFPrefsWeakObservers)init;
- (id)debugDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)borrowObjects:(id *)objects count:(unint64_t)count;
- (unsigned)addObject:(id)object;
- (unsigned)removeObject:(id)object;
- (void)dealloc;
@end

@implementation __CFPrefsWeakObservers

- (__CFPrefsWeakObservers)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = __CFPrefsWeakObservers;
  result = [(__CFPrefsWeakObservers *)&v3 init];
  if (result)
  {
    result->values.slot = 0;
    result->values.var0 = 0;
    result->count = 0;
  }

  return result;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->values.slot, 0);
  var0 = self->values.var0;
  if (var0)
  {
    do
    {
      v4 = var0->var0;
      objc_destroyWeak(&var0->slot);
      free(var0);
      var0 = v4;
    }

    while (v4);
  }

  v5.receiver = self;
  v5.super_class = __CFPrefsWeakObservers;
  [(__CFPrefsWeakObservers *)&v5 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(__CFPrefsWeakObservers);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46____CFPrefsWeakObservers_mutableCopyWithZone___block_invoke;
  v6[3] = &unk_1E6D81F10;
  v6[4] = v4;
  visit(self, 2, v6);
  return v4;
}

- (unsigned)addObject:(id)object
{
  v13 = *MEMORY[0x1E69E9840];
  if (!object)
  {
    [__CFPrefsWeakObservers addObject:];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36____CFPrefsWeakObservers_addObject___block_invoke;
  v8[3] = &unk_1E6D81F38;
  v8[4] = object;
  v8[5] = &v9;
  v5 = visit(self, 0, v8);
  if (*(v10 + 24))
  {
    v6 = 0;
  }

  else
  {
    objc_storeWeak(v5, object);
    ++self->count;
    v6 = *(v10 + 24) == 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (unsigned)removeObject:(id)object
{
  v10 = *MEMORY[0x1E69E9840];
  if (!object)
  {
    [__CFPrefsWeakObservers removeObject:];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39____CFPrefsWeakObservers_removeObject___block_invoke;
  v5[3] = &unk_1E6D81F38;
  v5[4] = object;
  v5[5] = &v6;
  visit(self, 1, v5);
  if (*(v7 + 24))
  {
    --self->count;
  }

  _Block_object_dispose(&v6, 8);
  return 1;
}

- (unint64_t)borrowObjects:(id *)objects count:(unint64_t)count
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46____CFPrefsWeakObservers_borrowObjects_count___block_invoke;
  v6[3] = &unk_1E6D81F60;
  v6[4] = &v7;
  v6[5] = count;
  v6[6] = objects;
  visit(self, 2, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)debugDescription
{
  v5[5] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 1024);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42____CFPrefsWeakObservers_debugDescription__block_invoke;
  v5[3] = &__block_descriptor_40_e15_v32__0__8_16_24l;
  v5[4] = Mutable;
  visit(self, 2, v5);
  return Mutable;
}

@end