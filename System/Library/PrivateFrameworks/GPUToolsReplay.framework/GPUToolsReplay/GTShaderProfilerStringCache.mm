@interface GTShaderProfilerStringCache
- (GTShaderProfilerStringCache)init;
- (GTShaderProfilerStringCache)initWithCoder:(id)coder;
- (id)stringFromIndex:(unint64_t)index;
- (unint64_t)addString:(id)string;
@end

@implementation GTShaderProfilerStringCache

- (unint64_t)addString:(id)string
{
  stringCopy = string;
  v5 = [(NSMutableDictionary *)self->_stringDict objectForKey:stringCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [(NSMutableArray *)self->_strings count];
    [(NSMutableArray *)self->_strings addObject:stringCopy];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [(NSMutableDictionary *)self->_stringDict setObject:v8 forKeyedSubscript:stringCopy];
  }

  return unsignedIntegerValue;
}

- (id)stringFromIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_strings count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:index];
  }

  return v5;
}

- (GTShaderProfilerStringCache)initWithCoder:(id)coder
{
  v18[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = GTShaderProfilerStringCache;
  v5 = [(GTShaderProfilerStringCache *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"strings"];
    strings = v5->_strings;
    v5->_strings = v9;

    v11 = objc_opt_new();
    stringDict = v5->_stringDict;
    v5->_stringDict = v11;

    v13 = v5->_strings;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__GTShaderProfilerStringCache_initWithCoder___block_invoke;
    v15[3] = &unk_2796579C0;
    v16 = v5;
    [(NSMutableArray *)v13 enumerateObjectsUsingBlock:v15];
  }

  return v5;
}

void __45__GTShaderProfilerStringCache_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:v6];
}

- (GTShaderProfilerStringCache)init
{
  v8.receiver = self;
  v8.super_class = GTShaderProfilerStringCache;
  v2 = [(GTShaderProfilerStringCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    strings = v2->_strings;
    v2->_strings = v3;

    v5 = objc_opt_new();
    stringDict = v2->_stringDict;
    v2->_stringDict = v5;
  }

  return v2;
}

@end