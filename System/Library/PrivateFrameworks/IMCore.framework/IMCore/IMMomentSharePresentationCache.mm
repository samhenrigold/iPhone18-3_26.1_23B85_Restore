@interface IMMomentSharePresentationCache
- (IMMomentSharePresentationCache)initWithMomentShareCache:(id)cache;
- (IMMomentSharePresentationCacheDelegate)delegate;
- (id)statusPresentationForMomentShareURLString:(id)string;
- (void)_momentShareCacheDidChange:(id)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)registerMomentShareItemForMessage:(id)message;
- (void)registerMomentShareURLString:(id)string;
@end

@implementation IMMomentSharePresentationCache

- (IMMomentSharePresentationCache)initWithMomentShareCache:(id)cache
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = IMMomentSharePresentationCache;
  v6 = [(IMMomentSharePresentationCache *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v6->_cache;
    v6->_cache = v7;

    objc_storeStrong(&v6->_momentShareCache, cache);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__momentShareCacheDidChange_ name:@"IMMomentShareCacheDidChangeNotification" object:v6->_momentShareCache];
  }

  return v6;
}

- (id)statusPresentationForMomentShareURLString:(id)string
{
  stringCopy = string;
  [(IMMomentSharePresentationCache *)self registerMomentShareURLString:stringCopy];
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:stringCopy];

  return v5;
}

- (void)registerMomentShareItemForMessage:(id)message
{
  messageCopy = message;
  v4 = IMCoreMomentShareURLForMessage(messageCopy);
  if (v4 && ([messageCopy isSenderUnknown] & 1) == 0)
  {
    absoluteString = [v4 absoluteString];
    if ([absoluteString length])
    {
      [(IMMomentSharePresentationCache *)self registerMomentShareURLString:absoluteString];
    }
  }
}

- (void)registerMomentShareURLString:(id)string
{
  stringCopy = string;
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:stringCopy];

  if (!v5)
  {
    momentShareCache = self->_momentShareCache;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A82CACF8;
    v7[3] = &unk_1E7811720;
    v7[4] = self;
    v8 = stringCopy;
    [(IMMomentShareCache *)momentShareCache momentShareForURLString:v8 completionHandler:v7];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 0x1400C) != 0 && qword_1EB2E4C78 == context)
  {
    delegate = [(IMMomentSharePresentationCache *)self delegate];
    [delegate momentSharePresentationCacheDidChange:self];
  }
}

- (void)_momentShareCacheDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"IMMomentShareCacheNotificationURLStringsUserInfoKey"];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  allKeys = [(NSMutableDictionary *)self->_cache allKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82CB0C8;
  v10[3] = &unk_1E7811748;
  v8 = v6;
  v11 = v8;
  selfCopy = self;
  v13 = &v14;
  [allKeys enumerateObjectsUsingBlock:v10];

  if (*(v15 + 24) == 1)
  {
    delegate = [(IMMomentSharePresentationCache *)self delegate];
    [delegate momentSharePresentationCacheDidChange:self];
  }

  _Block_object_dispose(&v14, 8);
}

- (IMMomentSharePresentationCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end