@interface SSBiomeConsumers
+ (id)sharedInstance;
- (SSBiomeConsumers)init;
- (void)start;
- (void)stop;
@end

@implementation SSBiomeConsumers

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[SSBiomeConsumers sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

uint64_t __34__SSBiomeConsumers_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_3 = objc_alloc_init(SSBiomeConsumers);

  return MEMORY[0x1EEE66BB8]();
}

- (SSBiomeConsumers)init
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SSBiomeConsumers;
  v2 = [(SSBiomeConsumers *)&v11 init];
  if (v2 && +[SSBiomeConsumers enabled])
  {
    v3 = +[SSAppInFocus sharedInstance];
    v12[0] = v3;
    v4 = +[SSAppIntent sharedInstance];
    v12[1] = v4;
    v5 = +[SSMediaNowPlaying sharedInstance];
    v12[2] = v5;
    v6 = +[SSSystemSettingsSearchTerms sharedInstance];
    v12[3] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
    consumers = v2->_consumers;
    v2->_consumers = v7;

    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_consumers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) start];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)stop
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_consumers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) stop];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end