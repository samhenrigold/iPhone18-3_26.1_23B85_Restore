@interface WCM_AriCoexCache
- (BOOL)get:(id)get value_BOOL:(BOOL *)l subId:(unsigned int)id;
- (BOOL)get:(id)get value_double:(double *)value_double subId:(unsigned int)id;
- (BOOL)get:(id)get value_int64:(int64_t *)value_int64 subId:(unsigned int)id;
- (BOOL)get:(id)get value_uint64:(unint64_t *)value_uint64 subId:(unsigned int)id;
- (WCM_AriCoexCache)init;
- (id)get:(id)get subId:(unsigned int)id;
- (void)removeKey:(id)key subId:(unsigned int)id;
- (void)update:(id)update value_BOOL:(BOOL)l subId:(unsigned int)id;
- (void)update:(id)update value_double:(double)value_double subId:(unsigned int)id;
- (void)update:(id)update value_int64:(int64_t)value_int64 subId:(unsigned int)id;
- (void)update:(id)update value_object:(id)value_object subId:(unsigned int)id;
- (void)update:(id)update value_uint64:(unint64_t)value_uint64 subId:(unsigned int)id;
@end

@implementation WCM_AriCoexCache

- (WCM_AriCoexCache)init
{
  v8.receiver = self;
  v8.super_class = WCM_AriCoexCache;
  v2 = [(WCM_AriCoexCache *)&v8 init];
  v3 = objc_alloc_init(NSMutableDictionary);
  mProperty0 = v2->mProperty0;
  v2->mProperty0 = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  mProperty1 = v2->mProperty1;
  v2->mProperty1 = v5;

  return v2;
}

- (void)removeKey:(id)key subId:(unsigned int)id
{
  keyCopy = key;
  if (keyCopy)
  {
    v6 = 16;
    if (!id)
    {
      v6 = 8;
    }

    [*(&self->super.isa + v6) removeObjectForKey:keyCopy];
  }
}

- (void)update:(id)update value_object:(id)value_object subId:(unsigned int)id
{
  v5 = *&id;
  updateCopy = update;
  value_objectCopy = value_object;
  if (v5 < 2)
  {
    v9 = 16;
    if (!v5)
    {
      v9 = 8;
    }

    [*(&self->super.isa + v9) setValue:value_objectCopy forKey:updateCopy];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"ARI Driver: Cache update -- Invalid subId(%u)", v5];
  }
}

- (void)update:(id)update value_uint64:(unint64_t)value_uint64 subId:(unsigned int)id
{
  v5 = *&id;
  updateCopy = update;
  v8 = [NSNumber numberWithUnsignedLongLong:value_uint64];
  [(WCM_AriCoexCache *)self update:updateCopy value_object:v8 subId:v5];
}

- (void)update:(id)update value_int64:(int64_t)value_int64 subId:(unsigned int)id
{
  v5 = *&id;
  updateCopy = update;
  v8 = [NSNumber numberWithLongLong:value_int64];
  [(WCM_AriCoexCache *)self update:updateCopy value_object:v8 subId:v5];
}

- (void)update:(id)update value_BOOL:(BOOL)l subId:(unsigned int)id
{
  v5 = *&id;
  lCopy = l;
  updateCopy = update;
  v8 = [NSNumber numberWithBool:lCopy];
  [(WCM_AriCoexCache *)self update:updateCopy value_object:v8 subId:v5];
}

- (void)update:(id)update value_double:(double)value_double subId:(unsigned int)id
{
  v5 = *&id;
  updateCopy = update;
  v8 = [NSNumber numberWithDouble:value_double];
  [(WCM_AriCoexCache *)self update:updateCopy value_object:v8 subId:v5];
}

- (id)get:(id)get subId:(unsigned int)id
{
  v4 = *&id;
  getCopy = get;
  if (v4 < 2)
  {
    v8 = 16;
    if (!v4)
    {
      v8 = 8;
    }

    v7 = [*(&self->super.isa + v8) objectForKeyedSubscript:getCopy];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"ARI Driver: Cache get -- Invalid subId(%u)", v4];
    v7 = 0;
  }

  return v7;
}

- (BOOL)get:(id)get value_uint64:(unint64_t *)value_uint64 subId:(unsigned int)id
{
  v5 = *&id;
  getCopy = get;
  v9 = [(WCM_AriCoexCache *)self get:getCopy subId:v5];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *value_uint64 = [v9 unsignedLongLongValue];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)get:(id)get value_int64:(int64_t *)value_int64 subId:(unsigned int)id
{
  v5 = *&id;
  getCopy = get;
  v9 = [(WCM_AriCoexCache *)self get:getCopy subId:v5];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *value_int64 = [v9 longLongValue];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)get:(id)get value_BOOL:(BOOL *)l subId:(unsigned int)id
{
  v5 = *&id;
  getCopy = get;
  v9 = [(WCM_AriCoexCache *)self get:getCopy subId:v5];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *l = [v9 BOOLValue];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)get:(id)get value_double:(double *)value_double subId:(unsigned int)id
{
  v5 = *&id;
  getCopy = get;
  v9 = [(WCM_AriCoexCache *)self get:getCopy subId:v5];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 doubleValue];
    *value_double = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end