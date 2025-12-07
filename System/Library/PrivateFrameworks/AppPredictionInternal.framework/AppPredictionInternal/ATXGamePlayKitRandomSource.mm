@interface ATXGamePlayKitRandomSource
+ (id)sharedRandom;
- (ATXGamePlayKitRandomSource)init;
- (ATXGamePlayKitRandomSource)initWithCoder:(id)coder;
- (id)arrayByShufflingObjectsInArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ATXGamePlayKitRandomSource

- (ATXGamePlayKitRandomSource)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = objc_alloc_init(ATXGamePlayKitARC4RandomSource);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ATXGamePlayKitRandomSource;
    v4 = [(ATXGamePlayKitRandomSource *)&v7 init];
    self = &v4->super;
  }

  p_super = &v4->super;

  return p_super;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

- (ATXGamePlayKitRandomSource)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ATXGamePlayKitRandomSource;
  return [(ATXGamePlayKitRandomSource *)&v4 init];
}

+ (id)sharedRandom
{
  if (+[ATXGamePlayKitRandomSource sharedRandom]::onceToken != -1)
  {
    +[ATXGamePlayKitRandomSource sharedRandom];
  }

  v3 = +[ATXGamePlayKitRandomSource sharedRandom]::source;

  return v3;
}

uint64_t __42__ATXGamePlayKitRandomSource_sharedRandom__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = +[ATXGamePlayKitRandomSource sharedRandom]::source;
  +[ATXGamePlayKitRandomSource sharedRandom]::source = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (id)arrayByShufflingObjectsInArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count] > 1)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v18;
      do
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * v10);
          v8 = v11 + 1;
          v13 = [(ATXGamePlayKitRandomSource *)self nextIntWithUpperBound:(v11 + 1)];
          if (v13 == v11)
          {
            [v5 addObject:v12];
          }

          else
          {
            v14 = [v5 objectAtIndex:v13];
            [v5 addObject:v14];

            [v5 setObject:v12 atIndexedSubscript:v13];
          }

          ++v10;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:arrayCopy];
  }

  return v4;
}

@end