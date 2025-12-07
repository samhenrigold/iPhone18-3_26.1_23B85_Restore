@interface _TSF_TSDCallbackRefconMap
+ (id)sharedTSDCallbackRefconMap;
- (_TSF_TSDCallbackRefconMap)init;
- (id)getObject:(unint64_t)object;
- (unint64_t)allocateRefcon:(id)refcon;
- (void)releaseRefcon:(unint64_t)refcon;
@end

@implementation _TSF_TSDCallbackRefconMap

+ (id)sharedTSDCallbackRefconMap
{
  if (sharedTSDCallbackRefconMap_onceToken != -1)
  {
    +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  }

  v3 = _sharedTSDCallbackRefconMap;

  return v3;
}

- (_TSF_TSDCallbackRefconMap)init
{
  v6.receiver = self;
  v6.super_class = _TSF_TSDCallbackRefconMap;
  v2 = [(_TSF_TSDCallbackRefconMap *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    refcons = v2->_refcons;
    v2->_refcons = dictionary;

    v2->_nextRefcon = 1;
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (unint64_t)allocateRefcon:(id)refcon
{
  v4 = MEMORY[0x277CCABB0];
  ++self->_nextRefcon;
  refconCopy = refcon;
  v6 = [v4 numberWithUnsignedLongLong:?];
  os_unfair_lock_lock(&self->_lock);
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

  os_unfair_lock_unlock(&self->_lock);
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)releaseRefcon:(unint64_t)refcon
{
  os_unfair_lock_lock(&self->_lock);
  refcons = self->_refcons;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  [(NSMutableDictionary *)refcons removeObjectForKey:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getObject:(unint64_t)object
{
  os_unfair_lock_lock(&self->_lock);
  refcons = self->_refcons;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [(NSMutableDictionary *)refcons objectForKey:?];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

@end