@interface SGCuratedChangeNotificationsBaseListener
- (SGCuratedChangeNotificationsBaseListener)init;
- (void)addObserver:(id)observer forObjectLifetime:(id)lifetime;
- (void)dealloc;
- (void)fire;
@end

@implementation SGCuratedChangeNotificationsBaseListener

- (void)fire
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = self->_liveObserversMap;
  objc_sync_enter(v3);
  v4 = objc_autoreleasePoolPush();
  objectEnumerator = [(NSMapTable *)self->_liveObserversMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  objc_autoreleasePoolPop(v4);
  objc_sync_exit(v3);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        (*(v11 + 16))(v11);
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)addObserver:(id)observer forObjectLifetime:(id)lifetime
{
  observerCopy = observer;
  lifetimeCopy = lifetime;
  v7 = self->_liveObserversMap;
  objc_sync_enter(v7);
  liveObserversMap = self->_liveObserversMap;
  v9 = [observerCopy copy];
  v10 = MEMORY[0x2383809F0]();
  [(NSMapTable *)liveObserversMap setObject:v10 forKey:lifetimeCopy];

  objc_sync_exit(v7);
}

- (void)dealloc
{
  [(SGCuratedChangeNotificationsBaseListener *)self stopListening];
  v3.receiver = self;
  v3.super_class = SGCuratedChangeNotificationsBaseListener;
  [(SGCuratedChangeNotificationsBaseListener *)&v3 dealloc];
}

- (SGCuratedChangeNotificationsBaseListener)init
{
  v6.receiver = self;
  v6.super_class = SGCuratedChangeNotificationsBaseListener;
  v2 = [(SGCuratedChangeNotificationsBaseListener *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    liveObserversMap = v2->_liveObserversMap;
    v2->_liveObserversMap = weakToStrongObjectsMapTable;

    [(SGCuratedChangeNotificationsBaseListener *)v2 startListening];
  }

  return v2;
}

@end