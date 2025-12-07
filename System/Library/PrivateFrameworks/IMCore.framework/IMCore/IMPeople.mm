@interface IMPeople
- (BOOL)addIMHandle:(id)handle;
- (BOOL)addPeopleFromArray:(id)array skipMe:(BOOL)me;
- (BOOL)removeIMHandle:(id)handle;
- (BOOL)removePeopleFromArray:(id)array;
- (NSArray)groups;
- (NSMutableArray)people;
- (unint64_t)count;
- (void)_addedPeople:(id)people;
- (void)addedIMHandle:(id)handle;
- (void)dealloc;
- (void)endCoalescedChanges;
- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed;
- (void)removeNotificationObserver:(id)observer;
- (void)removedIMHandle:(id)handle;
- (void)setShouldHidePeople:(BOOL)people;
@end

@implementation IMPeople

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IMPeople;
  [(IMPeople *)&v4 dealloc];
}

- (void)setShouldHidePeople:(BOOL)people
{
  if (self->_hidePeople != people)
  {
    self->_hidePeople = people;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMPeopleChangedNotification" object:self];
  }
}

- (void)removeNotificationObserver:(id)observer
{
  v4 = MEMORY[0x1E696AD88];
  observerCopy = observer;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:observerCopy name:@"__kIMPeopleAddedNotification" object:self];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:observerCopy name:@"__kIMPeopleRemovedNotification" object:self];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:observerCopy name:@"__kIMPeopleChangedNotification" object:self];
}

- (unint64_t)count
{
  if ([(IMPeople *)self hidePeople])
  {
    return 0;
  }

  people = self->_people;

  return [(NSMutableArray *)people count];
}

- (NSArray)groups
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_people;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 isBuddy])
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          groupsArray = [v9 groupsArray];
          v11 = [groupsArray countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(groupsArray);
                }

                v15 = *(*(&v17 + 1) + 8 * j);
                if (([v3 containsObject:v15] & 1) == 0)
                {
                  [v3 addObject:v15];
                }
              }

              v12 = [groupsArray countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSMutableArray)people
{
  if ([(IMPeople *)self hidePeople])
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    array = self->_people;
  }

  return array;
}

- (void)addedIMHandle:(id)handle
{
  handleCopy = handle;
  if (![(IMPeople *)self hidePeople])
  {
    v4 = MEMORY[0x1E695DF20];
    v5 = IMSingleObjectArray();
    v6 = [v4 dictionaryWithObject:v5 forKey:@"__kIMPeopleChangedUserInfoKey"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMPeopleAddedNotification" object:self userInfo:v6];
  }
}

- (void)_addedPeople:(id)people
{
  peopleCopy = people;
  if (![(IMPeople *)self hidePeople])
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:peopleCopy forKey:@"__kIMPeopleChangedUserInfoKey"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMPeopleAddedNotification" object:self userInfo:v4];
  }
}

- (void)removedIMHandle:(id)handle
{
  handleCopy = handle;
  if (![(IMPeople *)self hidePeople])
  {
    v4 = MEMORY[0x1E695DF20];
    v5 = IMSingleObjectArray();
    v6 = [v4 dictionaryWithObject:v5 forKey:@"__kIMPeopleChangedUserInfoKey"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMPeopleRemovedNotification" object:self userInfo:v6];
  }
}

- (void)endCoalescedChanges
{
  p_coalesceCount = &self->_coalesceCount;
  coalesceCount = self->_coalesceCount;
  if (!coalesceCount)
  {
    sub_1A84E065C(a2, self, p_coalesceCount, &v7);
    coalesceCount = v7;
  }

  v5 = coalesceCount - 1;
  *p_coalesceCount = v5;
  if (!v5 && ![(IMPeople *)self hidePeople])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMPeopleChangedNotification" object:self];
  }
}

- (BOOL)addIMHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(NSMutableArray *)self->_people containsObjectIdenticalTo:handleCopy];
  if ((v5 & 1) == 0)
  {
    people = self->_people;
    if (!people)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_people;
      self->_people = v7;

      people = self->_people;
    }

    [(NSMutableArray *)people addObject:handleCopy];
    if (![(IMPeople *)self coalescingChanges])
    {
      [(IMPeople *)self addedIMHandle:handleCopy];
    }
  }

  return v5 ^ 1;
}

- (BOOL)removeIMHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(NSMutableArray *)self->_people containsObjectIdenticalTo:handleCopy];
  if (v5)
  {
    [(NSMutableArray *)self->_people removeObject:handleCopy];
    if (![(IMPeople *)self coalescingChanges])
    {
      [(IMPeople *)self removedIMHandle:handleCopy];
    }

    if (![(NSMutableArray *)self->_people count])
    {
      people = self->_people;
      self->_people = 0;
    }
  }

  return v5;
}

- (BOOL)removePeopleFromArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = [(NSMutableArray *)self->_people count];
  [(NSMutableArray *)self->_people removeObjectsInArray:arrayCopy];
  v6 = [arrayCopy count];
  if (v6 < v5)
  {
    if (![(IMPeople *)self coalescingChanges])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = arrayCopy;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [(IMPeople *)self removedIMHandle:*(*(&v14 + 1) + 8 * v11++), v14];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }

    if (![(NSMutableArray *)self->_people count])
    {
      people = self->_people;
      self->_people = 0;
    }
  }

  return v6 < v5;
}

- (BOOL)addPeopleFromArray:(id)array skipMe:(BOOL)me
{
  meCopy = me;
  v25 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v7 = [arrayCopy count];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ((-[NSMutableArray containsObjectIdenticalTo:](self->_people, "containsObjectIdenticalTo:", v14, v20) & 1) == 0 && (!meCopy || ([v14 isLoginIMHandle] & 1) == 0))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [v8 count];
  if (v15)
  {
    people = self->_people;
    if (!people)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = self->_people;
      self->_people = v17;

      people = self->_people;
    }

    [(NSMutableArray *)people addObjectsFromArray:v8, v20];
    if (![(IMPeople *)self coalescingChanges])
    {
      [(IMPeople *)self _addedPeople:v8];
    }
  }

  return v15 != 0;
}

- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  handleCopy = handle;
  if (([handleCopy isLoginIMHandle] & 1) == 0)
  {
    if (changedCopy)
    {
      [(IMPeople *)self addIMHandle:handleCopy];
    }

    else
    {
      [(IMPeople *)self removeIMHandle:handleCopy];
    }
  }
}

@end