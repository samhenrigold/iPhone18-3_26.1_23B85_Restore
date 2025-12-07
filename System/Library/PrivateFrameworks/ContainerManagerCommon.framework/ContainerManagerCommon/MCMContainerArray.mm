@interface MCMContainerArray
- (MCMContainerArray)initWithGeneration:(unint64_t)generation;
- (MCMContainerArray)initWithMutableArray:(id)array generation:(unint64_t)generation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation MCMContainerArray

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  array = [(MCMContainerArray *)self array];
  v5 = [array mutableCopy];

  v6 = [(MCMContainerArray *)[MCMMutableContainerArray alloc] initWithMutableArray:v5 generation:[(MCMContainerArray *)self generation]];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  array = [(MCMContainerArray *)self array];
  v5 = [array mutableCopy];

  v6 = [[MCMContainerArray alloc] initWithMutableArray:v5 generation:[(MCMContainerArray *)self generation]];
  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  array = [(MCMContainerArray *)self array];
  v9 = [array countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (MCMContainerArray)initWithGeneration:(unint64_t)generation
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MCMContainerArray *)self initWithMutableArray:v5 generation:generation];

  return v6;
}

- (MCMContainerArray)initWithMutableArray:(id)array generation:(unint64_t)generation
{
  v12 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v11.receiver = self;
  v11.super_class = MCMContainerArray;
  v8 = [(MCMContainerArray *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_array, array);
    v9->_generation = generation;
  }

  return v9;
}

@end