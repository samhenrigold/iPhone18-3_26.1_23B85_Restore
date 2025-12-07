@interface MCMMutableContainerArray
- (MCMMutableContainerArray)init;
- (void)addObjectsFromArray:(id)array;
- (void)setGeneration:(unint64_t)generation;
@end

@implementation MCMMutableContainerArray

- (void)setGeneration:(unint64_t)generation
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = MCMMutableContainerArray;
  [(MCMContainerArray *)&v3 setGeneration:generation];
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  array = [(MCMContainerArray *)self array];
  [array addObjectsFromArray:arrayCopy];
}

- (MCMMutableContainerArray)init
{
  v2 = *MEMORY[0x1E69E9968];

  return [(MCMContainerArray *)self initWithGeneration:v2];
}

@end