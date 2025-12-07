@interface DataCache
- (char)dataForCDHash:(unsigned __int16)hash identifier:(int64_t)identifier size:(unint64_t *)size generator:(id)generator;
- (id)init:(unsigned int)init evictionHandler:(id)handler;
- (void)flush;
@end

@implementation DataCache

- (char)dataForCDHash:(unsigned __int16)hash identifier:(int64_t)identifier size:(unint64_t *)size generator:(id)generator
{
  hashCopy = hash;
  v24[3] = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  v22 = 0;
  v21 = 0;
  v11 = [[CacheIndex alloc] initWithCDHash:hashCopy identifier:identifier];
  cache = [(DataCache *)self cache];
  v13 = [cache objectForKey:v11];

  if (v13)
  {
    v22 = [v13 objectForKeyedSubscript:@"size_key"];

    v14 = [v13 objectForKeyedSubscript:@"data_key"];
  }

  else
  {
    v17 = generatorCopy[2](generatorCopy, &v22, &v21);
    if (v17)
    {
      v14 = [MEMORY[0x277CCAE60] valueWithPointer:v17];
      v24[0] = v14;
      v23[0] = @"data_key";
      v23[1] = @"size_key";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
      v24[1] = v18;
      v23[2] = @"algo_key";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
      v24[2] = v19;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

      if (v13)
      {
        cache2 = [(DataCache *)self cache];
        [cache2 setObject:v13 forKey:v11];
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  *size = v22;
  pointerValue = [v14 pointerValue];

  return pointerValue;
}

- (void)flush
{
  cache = [(DataCache *)self cache];
  [cache removeAllObjects];
}

- (id)init:(unsigned int)init evictionHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = DataCache;
  v7 = [(DataCache *)&v14 init];
  if (v7)
  {
    v8 = [_OSLogLRUCache alloc];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__DataCache_init_evictionHandler___block_invoke;
    v12[3] = &unk_2787AE660;
    v13 = handlerCopy;
    v9 = [(_OSLogLRUCache *)v8 initWithName:@"clientDataCache" maxCount:init evictionHandler:v12];
    cache = v7->_cache;
    v7->_cache = v9;
  }

  return v7;
}

void __34__DataCache_init_evictionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (!v7 || (v6 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    qword_27DA52778 = "BUG IN LIBTRACE: DataCache EvictionHandler was given a bad key!";
    qword_27DA527A8 = v7;
    __break(1u);
LABEL_9:
    qword_27DA52778 = "BUG IN LIBTRACE: DataCache EvictionHandler was given a bad value!";
    qword_27DA527A8 = v6;
    __break(1u);
    return;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = v6;
  v16 = v7;
  v10 = [v9 objectForKeyedSubscript:@"data_key"];
  v11 = [v9 objectForKeyedSubscript:@"algo_key"];

  v12 = [v11 unsignedIntValue];
  v13 = *(a1 + 32);
  v14 = [v16 fileIndex];
  v15 = [v16 chunk_offset];

  (*(v13 + 16))(v13, v14, v15, v12, [v10 pointerValue]);
}

@end