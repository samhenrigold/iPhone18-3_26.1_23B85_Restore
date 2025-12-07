@interface NSArray(EMMessageListItem)
- (uint64_t)em_messageListItemTotalCount;
@end

@implementation NSArray(EMMessageListItem)

- (uint64_t)em_messageListItemTotalCount
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = 0;
  v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 conformsToProtocol:{&unk_1F4620048, v11}] & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"EMMessageListItem.m" lineNumber:742 description:@"Objects in the array must conform to protocol EMMessageListItem"];
        }

        v4 += [v8 count];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v4;
}

@end