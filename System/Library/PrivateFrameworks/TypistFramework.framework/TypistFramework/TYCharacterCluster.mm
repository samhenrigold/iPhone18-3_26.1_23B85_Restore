@interface TYCharacterCluster
- (TYCharacterCluster)initWithCharacters:(id)characters isCursive:(BOOL)cursive;
@end

@implementation TYCharacterCluster

- (TYCharacterCluster)initWithCharacters:(id)characters isCursive:(BOOL)cursive
{
  cursiveCopy = cursive;
  charactersCopy = characters;
  v10.receiver = self;
  v10.super_class = TYCharacterCluster;
  v7 = [(TYCharacterCluster *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(TYCharacterCluster *)v7 setCharacterCluster:charactersCopy];
    [(TYCharacterCluster *)v8 setIsCursive:cursiveCopy];
  }

  return v8;
}

@end