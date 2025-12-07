@interface MCMResultWithOwnersAndGroupsBaseFact
- (BOOL)isEqual:(id)equal;
- (MCMResultWithOwnersAndGroupsBaseFact)initWithOwnerIndex:(unint64_t)index groupIndex:(unint64_t)groupIndex;
@end

@implementation MCMResultWithOwnersAndGroupsBaseFact

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    ownerIndex = [v5 ownerIndex];
    v8 = 0;
    if (ownerIndex == [(MCMResultWithOwnersAndGroupsBaseFact *)self ownerIndex])
    {
      groupIndex = [v5 groupIndex];
      if (groupIndex == [(MCMResultWithOwnersAndGroupsBaseFact *)self groupIndex])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MCMResultWithOwnersAndGroupsBaseFact)initWithOwnerIndex:(unint64_t)index groupIndex:(unint64_t)groupIndex
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMResultWithOwnersAndGroupsBaseFact;
  result = [(MCMResultWithOwnersAndGroupsBaseFact *)&v7 init];
  if (result)
  {
    result->_ownerIndex = index;
    result->_groupIndex = groupIndex;
  }

  return result;
}

@end