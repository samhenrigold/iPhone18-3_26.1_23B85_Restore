@interface _DAABLegacyGroupsProvider
- (_DAABLegacyGroupsProvider)initWithAddressBook:(void *)book;
- (id)groupsInContainer:(id)container;
- (id)groupsWithExternalHREFs:(id)fs container:(id)container;
- (id)groupsWithExternalUUIDs:(id)ds container:(id)container;
- (void)dealloc;
@end

@implementation _DAABLegacyGroupsProvider

- (_DAABLegacyGroupsProvider)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _DAABLegacyGroupsProvider;
  v4 = [(_DAABLegacyGroupsProvider *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(book);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _DAABLegacyGroupsProvider;
  [(_DAABLegacyGroupsProvider *)&v3 dealloc];
}

- (id)groupsInContainer:(id)container
{
  containerCopy = container;
  v5 = ABAddressBookCopyArrayOfAllGroupsInSource(-[_DAABLegacyGroupsProvider addressBook](self, "addressBook"), [containerCopy asSource]);
  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [DAABLegacyGroup alloc];
        v14 = [v13 initWithGroup:{v12, v16}];
        [v6 addObject:v14];
      }

      v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)groupsWithExternalHREFs:(id)fs container:(id)container
{
  fsCopy = fs;
  containerCopy = container;
  v7 = +[NSMutableArray array];
  if ([fsCopy count])
  {
    [containerCopy asSource];
    v8 = ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifiersInSource();
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          v13 = [[DAABLegacyGroup alloc] initWithGroup:{CFArrayGetValueAtIndex(v9, i)}];
          [v7 addObject:v13];
        }
      }

      CFRelease(v9);
    }
  }

  return v7;
}

- (id)groupsWithExternalUUIDs:(id)ds container:(id)container
{
  dsCopy = ds;
  containerCopy = container;
  v7 = +[NSMutableArray array];
  if ([dsCopy count])
  {
    [containerCopy asSource];
    v8 = ABAddressBookCopyArrayOfAllGroupsWithExternalUUIDsInSource();
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          v13 = [[DAABLegacyGroup alloc] initWithGroup:{CFArrayGetValueAtIndex(v9, i)}];
          [v7 addObject:v13];
        }
      }

      CFRelease(v9);
    }
  }

  return v7;
}

@end