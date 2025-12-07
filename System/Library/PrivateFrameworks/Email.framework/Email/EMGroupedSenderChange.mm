@interface EMGroupedSenderChange
+ (id)changeForKeyPaths:(id)paths ofItem:(id)item;
+ (id)changeFrom:(id)from to:(id)to;
- (BOOL)applyToMessageListItem:(id)item;
- (EMGroupedSenderChange)initWithCoder:(id)coder;
- (id)changeDescriptionsForInternal:(BOOL)internal useDebugDescriptions:(BOOL)descriptions;
- (void)addChange:(id)change;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMGroupedSenderChange

+ (id)changeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v8 = objc_alloc_init(self);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v9 = fromCopy;
    v10 = toCopy;
    unreadCount = [v10 unreadCount];
    unreadCount2 = [v9 unreadCount];
    v13 = unreadCount != unreadCount2;
    if (unreadCount != unreadCount2)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unreadCount];
      [v8 setUnreadCount:v14];
    }

    unseenCount = [v10 unseenCount];
    if (unseenCount != [v9 unseenCount])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unseenCount];
      [v8 setUnseenCount:v16];

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = [EMMessageListItemChange changeFrom:fromCopy to:toCopy with:v8 hasChanges:v13];

  return v17;
}

+ (id)changeForKeyPaths:(id)paths ofItem:(id)item
{
  pathsCopy = paths;
  itemCopy = item;
  if ([pathsCopy containsObject:@"unseenCount"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_alloc_init(self);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemCopy, "unseenCount")}];
    [v8 setUnseenCount:v9];

    v10 = [pathsCopy mutableCopy];
    [v10 removeObject:@"unseenCount"];

    pathsCopy = v10;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___EMGroupedSenderChange;
  v11 = objc_msgSendSuper2(&v16, sel_changeForKeyPaths_ofItem_, pathsCopy, itemCopy);
  v12 = v11;
  if (v8 && v11)
  {
    [v8 addChange:v11];
  }

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;

  return v13;
}

- (void)addChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = EMGroupedSenderChange;
  [(EMMessageListItemChange *)&v10 addChange:changeCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = changeCopy;
    unreadCount = [v5 unreadCount];

    if (unreadCount)
    {
      unreadCount2 = [v5 unreadCount];
      [(EMGroupedSenderChange *)self setUnreadCount:unreadCount2];
    }

    unseenCount = [v5 unseenCount];

    if (unseenCount)
    {
      unseenCount2 = [v5 unseenCount];
      [(EMGroupedSenderChange *)self setUnseenCount:unseenCount2];
    }
  }
}

- (BOOL)applyToMessageListItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = EMGroupedSenderChange;
  v5 = [(EMMessageListItemChange *)&v13 applyToMessageListItem:itemCopy];
  unreadCount = [(EMGroupedSenderChange *)self unreadCount];
  if (unreadCount)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      unreadCount2 = [(EMGroupedSenderChange *)self unreadCount];
      [itemCopy setUnreadCount:{objc_msgSend(unreadCount2, "unsignedIntegerValue")}];

      v5 = 1;
    }
  }

  unreadCount3 = [(EMGroupedSenderChange *)self unreadCount];
  if (unreadCount3)
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      unseenCount = [(EMGroupedSenderChange *)self unseenCount];
      [itemCopy setUnseenCount:{objc_msgSend(unseenCount, "unsignedIntegerValue")}];

      v5 = 1;
    }
  }

  return v5;
}

- (EMGroupedSenderChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMGroupedSenderChange;
  v5 = [(EMMessageListItemChange *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unreadCount"];
    unreadCount = v5->_unreadCount;
    v5->_unreadCount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unseenCount"];
    unseenCount = v5->_unseenCount;
    v5->_unseenCount = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EMGroupedSenderChange;
  [(EMMessageListItemChange *)&v7 encodeWithCoder:coderCopy];
  unreadCount = [(EMGroupedSenderChange *)self unreadCount];
  [coderCopy encodeObject:unreadCount forKey:@"EFPropertyKey_unreadCount"];

  unseenCount = [(EMGroupedSenderChange *)self unseenCount];
  [coderCopy encodeObject:unseenCount forKey:@"EFPropertyKey_unseenCount"];
}

- (id)changeDescriptionsForInternal:(BOOL)internal useDebugDescriptions:(BOOL)descriptions
{
  descriptionsCopy = descriptions;
  v25.receiver = self;
  v25.super_class = EMGroupedSenderChange;
  v6 = [(EMMessageListItemChange *)&v25 changeDescriptionsForInternal:internal useDebugDescriptions:?];
  v7 = [v6 mutableCopy];

  unreadCount = [(EMGroupedSenderChange *)self unreadCount];

  if (unreadCount)
  {
    if (descriptionsCopy)
    {
      unreadCount2 = [(EMGroupedSenderChange *)self unreadCount];
      v10 = [unreadCount2 debugDescription];
    }

    else
    {
      unreadCount3 = [(EMGroupedSenderChange *)self unreadCount];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = MEMORY[0x1E699B858];
        unreadCount2 = [(EMGroupedSenderChange *)self unreadCount];
        [v13 partiallyRedactedStringForString:unreadCount2];
      }

      else
      {
        unreadCount2 = [(EMGroupedSenderChange *)self unreadCount];
        [unreadCount2 description];
      }
      v10 = ;
    }

    v14 = v10;

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unreadCount: %@", v14];
    [v7 addObject:v15];
  }

  unseenCount = [(EMGroupedSenderChange *)self unseenCount];

  if (unseenCount)
  {
    if (descriptionsCopy)
    {
      unseenCount2 = [(EMGroupedSenderChange *)self unseenCount];
      v18 = [unseenCount2 debugDescription];
    }

    else
    {
      unseenCount3 = [(EMGroupedSenderChange *)self unseenCount];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if (v20)
      {
        v21 = MEMORY[0x1E699B858];
        unseenCount2 = [(EMGroupedSenderChange *)self unseenCount];
        [v21 partiallyRedactedStringForString:unseenCount2];
      }

      else
      {
        unseenCount2 = [(EMGroupedSenderChange *)self unseenCount];
        [unseenCount2 description];
      }
      v18 = ;
    }

    v22 = v18;

    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unseenCount: %@", v22];
    [v7 addObject:v23];
  }

  return v7;
}

@end