@interface FavoritesCollection
+ (id)accountsCollection;
+ (id)mailboxesCollection;
+ (id)outboxCollection;
- (BOOL)addExpandedItem:(id)item;
- (BOOL)addItem:(id)item ordered:(BOOL)ordered;
- (BOOL)addOrUpdateItem:(id)item replacedItem:(id *)replacedItem;
- (BOOL)hidesHeader;
- (BOOL)isEditing;
- (BOOL)isShowingAllInboxes;
- (BOOL)isShowingSharedMailboxOfType:(unint64_t)type;
- (FavoritesCollection)initWithDictionary:(id)dictionary;
- (NSArray)expandedItems;
- (NSArray)items;
- (NSArray)itemsIncludingSubItems;
- (NSArray)selectedItems;
- (NSArray)visibleItems;
- (NSString)displayName;
- (id)description;
- (id)dictionaryRepresentation;
- (id)itemWithSyncKey:(id)key;
- (id)itemsContainingName:(id)name;
- (id)itemsMatchingItemURLStrings:(id)strings;
- (id)itemsMatchingName:(id)name;
- (id)itemsOfType:(int64_t)type;
- (id)removeExpandedItem:(id)item;
- (id)removeItem:(id)item;
- (id)removeItemWithSyncKey:(id)key;
- (id)visibleItemsOfType:(int64_t)type;
- (void)addExpandedItemsFromDictionaryRepresentations:(id)representations;
- (void)addOrUpdateExpandedItem:(id)item replacedItem:(id *)replacedItem;
- (void)invalidateVisibleItems;
- (void)persistAllInboxesStateToMaild;
- (void)prepareForWriting;
- (void)setEditing:(BOOL)editing;
- (void)setItems:(id)items;
@end

@implementation FavoritesCollection

- (FavoritesCollection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = FavoritesCollection;
  v5 = [(FavoritesCollection *)&v24 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [dictionaryCopy objectForKey:@"type"];
  v23 = dictionaryCopy;
  v5->_type = [v6 integerValue];

  v7 = [dictionaryCopy objectForKey:@"displayName"];
  v8 = v7;
  type = v5->_type;
  if (type)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  v22 = v7;
  if (!v10)
  {
    if ([v7 isEqualToString:{@"__OUTBOX__", v7}])
    {
      type = 2;
LABEL_11:
      v5->_type = type;
      goto LABEL_12;
    }

    if ([v8 isEqualToString:@"INBOXES"] || objc_msgSend(v8, "isEqualToString:", @"MAILBOXES"))
    {
      type = 1;
      goto LABEL_11;
    }

    if ([v8 isEqualToString:@"ACCOUNTS"] || (objc_msgSend(v8, "isEqualToString:", @"SINGLE_ACCOUNT_MAILBOXES") & 1) != 0)
    {
      type = 3;
      goto LABEL_11;
    }

    type = v5->_type;
  }

LABEL_12:
  sub_100019EE0(v5, type);
  v11 = [dictionaryCopy objectForKey:@"items"];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_opt_new();
  invalidItemDicts = v5->_invalidItemDicts;
  v5->_invalidItemDicts = v13;

  for (i = 0; i < [v11 count]; ++i)
  {
    v16 = [v11 objectAtIndexedSubscript:i];
    v17 = [FavoriteItem itemFromDictionary:v16];
    v18 = v17;
    if (v17)
    {
      [v17 sourceType];
      if (_MSSourceTypeIsValid())
      {
        [v12 addObject:v18];
      }

      else
      {
        v19 = v5->_invalidItemDicts;
        v20 = [NSNumber numberWithUnsignedInteger:i];
        [(NSMutableDictionary *)v19 setObject:v16 forKeyedSubscript:v20];
      }
    }
  }

  [(FavoritesCollection *)v5 setItems:v12];

  dictionaryCopy = v23;
LABEL_20:

  return v5;
}

+ (id)mailboxesCollection
{
  v2 = sub_100019E54([FavoritesCollection alloc], 1);

  return v2;
}

+ (id)accountsCollection
{
  v2 = sub_100019E54([FavoritesCollection alloc], 3);

  return v2;
}

+ (id)outboxCollection
{
  v2 = sub_100019E54([FavoritesCollection alloc], 2);
  v3 = +[FavoriteItem itemForOutbox];
  [v2 addItem:v3];

  return v2;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithInteger:self->_type];
  [v3 setObject:v4 forKey:@"type"];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10001A7A8;
  v32 = sub_10001A7B8;
  v33 = 0;
  state = self->_state;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001A7C0;
  v27[3] = &unk_100156CC8;
  v27[4] = &v28;
  [(EFLocked *)state performWhileLocked:v27];
  if ([(NSMutableDictionary *)self->_invalidItemDicts count])
  {
    v6 = self->_invalidItemDicts;
    allKeys = [(NSMutableDictionary *)v6 allKeys];
    v8 = [allKeys sortedArrayUsingSelector:"compare:"];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = self->_invalidItemDicts;
          v15 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v13, v23];

          unsignedIntegerValue = [v13 unsignedIntegerValue];
          v17 = [v29[5] count];
          v18 = v29[5];
          if (unsignedIntegerValue >= v17)
          {
            v19 = [v18 objectForKeyedSubscript:@"items"];
            [v19 addObject:v15];
          }

          else
          {
            v19 = [v18 objectForKeyedSubscript:@"items"];
            [v19 insertObject:v15 atIndex:unsignedIntegerValue];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v10);
    }
  }

  v20 = [v29[5] objectForKeyedSubscript:{@"items", v23}];
  [v3 setObject:v20 forKey:@"items"];

  v21 = [v29[5] objectForKeyedSubscript:@"expandedItems"];
  [v3 setObject:v21 forKey:@"expandedItems"];

  _Block_object_dispose(&v28, 8);

  return v3;
}

- (void)prepareForWriting
{
  if ([(FavoritesCollection *)self isAccountsCollection])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = sub_10001A7A8;
    v10 = sub_10001A7B8;
    v11 = 0;
    if (self)
    {
      state = self->_state;
    }

    else
    {
      state = 0;
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001A990;
    v5[3] = &unk_100156CC8;
    v5[4] = &v6;
    [(EFLocked *)state performWhileLocked:v5];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setObject:v7[5] forKey:@"MailAccountsOrder"];
    [v4 synchronize];

    _Block_object_dispose(&v6, 8);
  }

  if ([(FavoritesCollection *)self isMailboxesCollection])
  {
    [(FavoritesCollection *)self persistAllInboxesStateToMaild];
  }
}

- (void)addExpandedItemsFromDictionaryRepresentations:(id)representations
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  representationsCopy = representations;
  v5 = [representationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(representationsCopy);
        }

        v8 = [FavoriteItem itemFromDictionary:*(*(&v10 + 1) + 8 * v7), v10];
        v9 = v8;
        if (v8)
        {
          [v8 sourceType];
          if (_MSSourceTypeIsValid())
          {
            [(FavoritesCollection *)self addExpandedItem:v9];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [representationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)itemsOfType:(int64_t)type
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B398;
  v5[3] = &unk_100156DE8;
  v5[4] = type;
  v3 = sub_10001B3CC(&self->super.isa, v5);

  return v3;
}

- (id)visibleItemsOfType:(int64_t)type
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B5A8;
  v5[3] = &unk_100156DE8;
  v5[4] = type;
  v3 = sub_10001B3CC(&self->super.isa, v5);

  return v3;
}

- (id)itemsMatchingName:(id)name
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B6D4;
  v7[3] = &unk_100156E10;
  nameCopy = name;
  v4 = nameCopy;
  v5 = sub_10001B7C0(&self->super.isa, v7);

  return v5;
}

- (id)itemsContainingName:(id)name
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B9F4;
  v7[3] = &unk_100156E10;
  nameCopy = name;
  v4 = nameCopy;
  v5 = sub_10001B7C0(&self->super.isa, v7);

  return v5;
}

- (id)itemsMatchingItemURLStrings:(id)strings
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BBA0;
  v7[3] = &unk_100156E10;
  stringsCopy = strings;
  v4 = stringsCopy;
  v5 = sub_10001B7C0(&self->super.isa, v7);

  return v5;
}

- (NSString)displayName
{
  v3 = sub_10001C098(self, self->_type);
  v4 = sub_100027C70();
  accountsProvider = [v4 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];

  if (-[FavoritesCollection isMailboxesCollection](self, "isMailboxesCollection") && [displayedAccounts count] == 1)
  {
    anyObject = [displayedAccounts anyObject];
    displayName = [anyObject displayName];

    v3 = displayName;
  }

  else if ([(FavoritesCollection *)self isAccountsCollection])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    state = self->_state;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001C3F4;
    v13[3] = &unk_100156CC8;
    v13[4] = &v14;
    [(EFLocked *)state performWhileLocked:v13];
    if (v15[3] <= 1)
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"SINGLE_ACCOUNT_MAILBOXES" value:&stru_10015BEC8 table:@"Main"];

      v3 = v11;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v3;
}

- (BOOL)isShowingSharedMailboxOfType:(unint64_t)type
{
  visibleItems = [(FavoritesCollection *)self visibleItems];
  v5 = [FavoriteItem itemForSharedMailboxWithType:type selected:0];
  v6 = [visibleItems containsObject:v5];

  return v6;
}

- (BOOL)isShowingAllInboxes
{
  visibleItems = [(FavoritesCollection *)self visibleItems];
  v3 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:0];
  v4 = [visibleItems containsObject:v3];

  return v4;
}

- (void)persistAllInboxesStateToMaild
{
  v3 = [NSNumber numberWithBool:[(FavoritesCollection *)self isShowingAllInboxes]];
  v2 = +[NSUserDefaults em_userDefaults];
  [v2 setValue:v3 forKey:EMUserDefaultAllInboxesEnabled];
}

- (BOOL)hidesHeader
{
  if ([(FavoritesCollection *)self isMailboxesCollection]|| [(FavoritesCollection *)self isOutboxCollection])
  {
    return 1;
  }

  return [(FavoritesCollection *)self isAccountsCollection];
}

- (id)description
{
  v3 = sub_10001C098(self, self->_type);
  v4 = objc_opt_class();
  items = [(FavoritesCollection *)self items];
  v6 = [NSString stringWithFormat:@"<%@: %p type = %@; items = %@>", v4, self, v3, items];;

  return v6;
}

- (BOOL)isEditing
{
  sub_10001C8E4();
  v20 = 0x2020000000;
  v21 = 0;
  sub_10001C7BC();
  sub_10001C8D8();
  v16 = sub_10001AA04;
  v17 = &unk_100156CC8;
  v18 = v2;
  v4 = [v3 performWhileLocked:v15];
  v5 = *(v19 + 24);
  sub_10001C8A4(v4, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v16);
  return v5;
}

- (void)setEditing:(BOOL)editing
{
  sub_10001C820();
  sub_10001C920();
  v6 = sub_10001AA6C;
  v7 = &unk_100156CE8;
  v8 = v3;
  [v4 performWhileLocked:v5];
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v6 = state;
  sub_10001C820();
  sub_10001C920();
  v9 = sub_10001AAE4;
  v10 = &unk_100156D10;
  v7 = itemsCopy;
  v11 = v7;
  [(EFLocked *)v6 performWhileLocked:v8];

  [v7 makeObjectsPerformSelector:"wasAddedToCollection:" withObject:self];
  [(FavoritesCollection *)self invalidateVisibleItems];
}

- (void)invalidateVisibleItems
{
  if (self)
  {
    self = self->_state;
  }

  [(FavoritesCollection *)self performWhileLocked:&stru_100156D50];
}

- (BOOL)addItem:(id)item ordered:(BOOL)ordered
{
  itemCopy = item;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_10001C820();
  sub_10001C920();
  v22 = sub_10001AB00;
  v23 = &unk_100156D78;
  v25 = &v27;
  v9 = itemCopy;
  v24 = v9;
  LOBYTE(v26) = ordered;
  [(EFLocked *)v8 performWhileLocked:v21];

  if (*(v28 + 24) == 1)
  {
    sub_10001AB70(self, v9);
    v10 = *(v28 + 24);
  }

  else
  {
    v10 = 0;
  }

  sub_10001C908(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21[0], v21[1], v22, v23, v24, v25, v26);
  return v10 & 1;
}

- (BOOL)addExpandedItem:(id)item
{
  itemCopy = item;
  sub_10001C8C8();
  v25 = 0x2020000000;
  v26 = 0;
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_100005FC4();
  sub_10001C8BC();
  v20 = sub_10001ABE0;
  v21 = &unk_100156DA0;
  v22 = v3;
  v23 = v4;
  v9 = v3;
  [(EFLocked *)v8 performWhileLocked:v19];

  LOBYTE(v8) = *(v24 + 24);
  sub_10001C8A4(v10, v11, v12, v13, v14, v15, v16, v17, v19[0], v19[1], v20, v21);
  return v8;
}

- (BOOL)addOrUpdateItem:(id)item replacedItem:(id *)replacedItem
{
  itemCopy = item;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  sub_10001C884();
  sub_10001C870();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_100005FC4();
  sub_10001C8BC();
  v30 = sub_10001AC4C;
  v31 = &unk_100156DC8;
  v33 = &v36;
  v9 = itemCopy;
  v32 = v9;
  v34 = &v42;
  v35 = &v46;
  [(EFLocked *)v8 performWhileLocked:&v28];

  if (replacedItem)
  {
    *replacedItem = v37[5];
  }

  if (*(v47 + 24) == 1)
  {
    [(FavoritesCollection *)self invalidateVisibleItems];
  }

  else if (*(v43 + 24) == 1)
  {
    sub_10001AB70(self, v9);
  }

  if (v43[3])
  {
    v10 = 1;
  }

  else
  {
    v10 = *(v47 + 24);
  }

  sub_10001C908(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29, v30, v31, v32, v33, v34, v35);
  sub_10001C92C(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  _Block_object_dispose(&v46, 8);

  return v10 & 1;
}

- (void)addOrUpdateExpandedItem:(id)item replacedItem:(id *)replacedItem
{
  itemCopy = item;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  sub_10001C884();
  sub_10001C870();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_100005FC4();
  sub_10001C8BC();
  v28 = sub_10001ACD8;
  v29 = &unk_100156DC8;
  v31 = &v34;
  v9 = itemCopy;
  v30 = v9;
  v32 = v40;
  v33 = v42;
  [(EFLocked *)v8 performWhileLocked:&v26];

  if (replacedItem)
  {
    *replacedItem = v35[5];
  }

  sub_10001C908(v10, v11, v12, v13, v14, v15, v16, v17, v26, v27, v28, v29, v30, v31, v32, v33);
  sub_10001C92C(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  _Block_object_dispose(v42, 8);
}

- (id)removeItem:(id)item
{
  itemCopy = item;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  sub_10001C80C();
  sub_10001C840();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v6 = state;
  sub_100005FC4();
  sub_10001C8BC();
  v28 = sub_10001AEC8;
  v29 = &unk_100156DA0;
  v31 = v32;
  v7 = itemCopy;
  v30 = v7;
  [(EFLocked *)v6 performWhileLocked:&v26];

  sub_10001C898();
  if (v8)
  {
    sub_10001AF40(self, v7);
    sub_10001C898();
  }

  v9 = v8;
  sub_10001C8F0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27, v28, v29, v30);
  sub_10001C8A4(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29);

  return self;
}

- (id)removeExpandedItem:(id)item
{
  itemCopy = item;
  sub_10001C8C8();
  v34 = 0x3032000000;
  sub_10001C80C();
  sub_10001C840();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_100005FC4();
  sub_10001C8BC();
  v30 = sub_10001AFB0;
  v31 = &unk_100156DA0;
  v32 = v3;
  v33 = v4;
  v9 = v3;
  [(EFLocked *)v8 performWhileLocked:&v28];

  sub_10001C898();
  v11 = v10;
  sub_10001C8F0(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29, v30, v31, v32);
  sub_10001C8A4(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31);

  return v8;
}

- (id)removeItemWithSyncKey:(id)key
{
  keyCopy = key;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  sub_10001C80C();
  sub_10001C840();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v6 = state;
  sub_100005FC4();
  sub_10001C8BC();
  v29 = sub_10001B028;
  v30 = &unk_100156DA0;
  v32 = &v33;
  v7 = keyCopy;
  v31 = v7;
  [(EFLocked *)v6 performWhileLocked:&v27];

  v8 = v34[5];
  if (v8)
  {
    sub_10001AF40(self, v8);
    sub_10001C898();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  sub_10001C8F0(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31);
  sub_10001C8A4(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30);

  return self;
}

- (id)itemWithSyncKey:(id)key
{
  keyCopy = key;
  sub_10001C8C8();
  v34 = 0x3032000000;
  sub_10001C80C();
  sub_10001C840();
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v8 = state;
  sub_100005FC4();
  sub_10001C8BC();
  v30 = sub_10001B0A0;
  v31 = &unk_100156DA0;
  v32 = v3;
  v33 = v4;
  v9 = v3;
  [(EFLocked *)v8 performWhileLocked:&v28];

  sub_10001C898();
  v11 = v10;
  sub_10001C8F0(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29, v30, v31, v32);
  sub_10001C8A4(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31);

  return v8;
}

- (NSArray)items
{
  sub_10001C8E4();
  sub_10001C7DC();
  sub_10001C7BC();
  sub_10001C8D8();
  v17 = sub_10001B118;
  v18 = &unk_100156CC8;
  v19 = v3;
  [v4 performWhileLocked:v16];
  sub_10001C898();
  v6 = v5;
  sub_10001C854(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v17);

  return v2;
}

- (NSArray)expandedItems
{
  sub_10001C8E4();
  sub_10001C7DC();
  sub_10001C7BC();
  sub_10001C8D8();
  v17 = sub_10001B1A4;
  v18 = &unk_100156CC8;
  v19 = v3;
  [v4 performWhileLocked:v16];
  sub_10001C898();
  v6 = v5;
  sub_10001C854(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v17);

  return v2;
}

- (NSArray)visibleItems
{
  sub_10001C8E4();
  sub_10001C7DC();
  sub_10001C7BC();
  sub_10001C8D8();
  v17 = sub_10001B230;
  v18 = &unk_100156CC8;
  v19 = v3;
  [v4 performWhileLocked:v16];
  sub_10001C898();
  v6 = v5;
  sub_10001C854(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v17);

  return v2;
}

- (NSArray)selectedItems
{
  sub_10001C8E4();
  sub_10001C7DC();
  sub_10001C7BC();
  sub_10001C8D8();
  v17 = sub_10001B2A4;
  v18 = &unk_100156CC8;
  v19 = v3;
  [v4 performWhileLocked:v16];
  sub_10001C898();
  v6 = v5;
  sub_10001C854(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v17);

  return v2;
}

- (NSArray)itemsIncludingSubItems
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  sub_10001C80C();
  v19[4] = sub_10001A7B8;
  v20 = objc_alloc_init(NSMutableArray);
  sub_10001C820();
  sub_10001C920();
  v16 = sub_10001BEA8;
  v17 = &unk_100156CC8;
  v18 = v19;
  [v3 performWhileLocked:v15];
  sub_10001C898();
  v5 = v4;
  sub_10001C854(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v16);

  return self;
}

@end