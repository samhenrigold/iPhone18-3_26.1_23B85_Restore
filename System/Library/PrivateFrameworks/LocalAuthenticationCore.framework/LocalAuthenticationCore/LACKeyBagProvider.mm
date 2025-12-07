@interface LACKeyBagProvider
+ (LACKeyBagProvider)sharedInstance;
- (LACKeyBagProvider)init;
- (id)keybagForUserId:(unsigned int)id;
@end

@implementation LACKeyBagProvider

- (LACKeyBagProvider)init
{
  v6.receiver = self;
  v6.super_class = LACKeyBagProvider;
  v2 = [(LACKeyBagProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userKeybags = v2->_userKeybags;
    v2->_userKeybags = v3;
  }

  return v2;
}

+ (LACKeyBagProvider)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[LACKeyBagProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_12;

  return v3;
}

uint64_t __35__LACKeyBagProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACKeyBagProvider);
  v1 = sharedInstance_sharedInstance_12;
  sharedInstance_sharedInstance_12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)keybagForUserId:(unsigned int)id
{
  v3 = *&id;
  userKeybags = self->_userKeybags;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v7 = [(NSMutableDictionary *)userKeybags objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [[LACKeyBagMKBAdapter alloc] initWithUserId:v3];
    v8 = self->_userKeybags;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

@end