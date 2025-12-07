@interface IMItemCollection
- (IMItemCollection)initWithChatItems:(id)items range:(_NSRange)range;
- (id)_firstObject;
- (id)_initWithChatItems:(id)items extraItems:(id)extraItems reversed:(BOOL)reversed;
- (id)_lastObject;
- (id)firstObject;
- (id)lastObject;
- (id)reversed;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addItem:(id)item;
@end

@implementation IMItemCollection

- (IMItemCollection)initWithChatItems:(id)items range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = IMItemCollection;
  v8 = [(IMItemCollection *)&v12 init];
  if (v8)
  {
    v9 = [itemsCopy subarrayWithRange:{location, length}];
    chatItems = v8->_chatItems;
    v8->_chatItems = v9;
  }

  return v8;
}

- (id)_initWithChatItems:(id)items extraItems:(id)extraItems reversed:(BOOL)reversed
{
  itemsCopy = items;
  extraItemsCopy = extraItems;
  v16.receiver = self;
  v16.super_class = IMItemCollection;
  v11 = [(IMItemCollection *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_chatItems, items);
    v13 = [extraItemsCopy mutableCopy];
    extraItems = v12->_extraItems;
    v12->_extraItems = v13;

    v12->_isReversed = reversed;
  }

  return v12;
}

- (id)_firstObject
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  extraItems = self->_chatItems;
  v4 = [(NSArray *)extraItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(extraItems);
      }

      _parentItem = [*(*(&v11 + 1) + 8 * v7) _parentItem];
      if (_parentItem)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)extraItems countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    extraItems = [(IMItemCollection *)self extraItems];
    _parentItem = [(NSArray *)extraItems firstObject];
  }

  v9 = _parentItem;

  return v9;
}

- (id)firstObject
{
  reversed = [(IMItemCollection *)self reversed];

  if (reversed)
  {
    [(IMItemCollection *)self _lastObject];
  }

  else
  {
    [(IMItemCollection *)self _firstObject];
  }
  v4 = ;

  return v4;
}

- (id)reversed
{
  v2 = [[IMItemCollection alloc] _initWithChatItems:self->_chatItems extraItems:self->_extraItems reversed:!self->_isReversed];

  return v2;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  if (!self->_extraItems)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    extraItems = self->_extraItems;
    self->_extraItems = v4;
  }

  extraItems = [(IMItemCollection *)self extraItems];
  [extraItems addObject:itemCopy];
}

- (id)_lastObject
{
  v18 = *MEMORY[0x1E69E9840];
  extraItems = [(IMItemCollection *)self extraItems];
  lastObject = [extraItems lastObject];

  if (!lastObject)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    reverseObjectEnumerator = [(NSArray *)self->_chatItems reverseObjectEnumerator];
    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          _parentItem = [*(*(&v13 + 1) + 8 * i) _parentItem];
          if (_parentItem)
          {
            lastObject = _parentItem;
            goto LABEL_12;
          }
        }

        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    lastObject = 0;
LABEL_12:
  }

  v11 = lastObject;

  return v11;
}

- (id)lastObject
{
  if ([(IMItemCollection *)self isReversed])
  {
    [(IMItemCollection *)self _firstObject];
  }

  else
  {
    [(IMItemCollection *)self _lastObject];
  }
  v3 = ;

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    v8 = state->var3[1];
  }

  else
  {
    extraItems = [(IMItemCollection *)self extraItems];
    v10 = [extraItems copy];
    v11 = v10;
    v12 = MEMORY[0x1E695E0F0];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    state->var2 = self;
    state->var3[0] = [(NSArray *)self->_chatItems count];
    v8 = v13;
    state->var3[1] = v8;
    state->var3[2] = [v8 count];
    state->var3[3] = 0;
    state->var3[4] = [(IMItemCollection *)self isReversed];
    state->var0 = 1;
  }

  v14 = state->var3[3];
  v15 = state->var3[2] + state->var3[0];
  if (v14 >= v15)
  {
    CFRelease(state->var3[1]);
    v22 = 0;
    goto LABEL_19;
  }

  v16 = state->var3[4];
  do
  {
    state->var3[3] = v14 + 1;
    if (v16)
    {
      v17 = state->var3[2];
      if (v14 >= v17)
      {
        v14 = state->var3[0] + ~v14 + v17;
LABEL_14:
        v20 = [(NSArray *)self->_chatItems objectAtIndexedSubscript:v14];
        *objects = [v20 _parentItem];
        _parentItem = [v20 _parentItem];

        goto LABEL_15;
      }

      v18 = v17 + ~v14;
    }

    else
    {
      v19 = state->var3[0];
      v18 = v14 - v19;
      if (v14 < v19)
      {
        goto LABEL_14;
      }
    }

    [v8 getObjects:objects range:{v18, 1}];
    *objects = [v8 objectAtIndexedSubscript:v18];
    v20 = [v8 objectAtIndexedSubscript:v18];
    _parentItem = v20;
LABEL_15:

    if (_parentItem)
    {
      break;
    }

    v14 = state->var3[3];
  }

  while (v14 < v15);
  v22 = _parentItem != 0;
  state->var1 = objects;
LABEL_19:

  return v22;
}

@end