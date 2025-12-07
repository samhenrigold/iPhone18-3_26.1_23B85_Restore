@interface SPUsageTrack
- (SPUsageTrack)init;
- (int)_indexForSize:(unint64_t)size;
- (unsigned)_arrayForApplication:(id)application toGizmo:(BOOL)gizmo;
- (void)_logUsageData;
- (void)_prepareString:(char *)string fromArray:(unsigned int *)array;
- (void)_printSeparator;
- (void)_printString:(char *)string fromArray:(unsigned int *)array;
- (void)_updateDataCount:(unint64_t)count application:(id)application toGizmo:(BOOL)gizmo;
- (void)dataReceiedFromGizmo:(unint64_t)gizmo application:(id)application;
- (void)dataSentToGizmo:(unint64_t)gizmo application:(id)application;
@end

@implementation SPUsageTrack

- (SPUsageTrack)init
{
  v7.receiver = self;
  v7.super_class = SPUsageTrack;
  v2 = [(SPUsageTrack *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.companionappd.usagetrack", &_dispatch_queue_attr_concurrent);
    usageTrackQueue = v2->_usageTrackQueue;
    v2->_usageTrackQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    [(SPUsageTrack *)v2 setAppUsageTrack:v5];
  }

  return v2;
}

- (void)_prepareString:(char *)string fromArray:(unsigned int *)array
{
  __sprintf_chk(__s2, 0, 0x20uLL, "%6u", *array);
  strcat(string, __s2);
  for (i = 1; i != 13; ++i)
  {
    strcat(string, ", ");
    __sprintf_chk(__s2, 0, 0x20uLL, "%6u", array[i]);
    strcat(string, __s2);
  }
}

- (void)_printString:(char *)string fromArray:(unsigned int *)array
{
  __strcpy_chk();
  v6 = wk_default_log([(SPUsageTrack *)self _prepareString:v13 fromArray:array]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[SPUsageTrack _printString:fromArray:]";
    v9 = 1024;
    v10 = 192;
    v11 = 2082;
    v12 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}s", &v7, 0x1Cu);
  }
}

- (void)_printSeparator
{
  memset(v11, 32, 10);
  v2 = 13;
  do
  {
    v3 = __strcat_chk();
    --v2;
  }

  while (v2);
  v4 = wk_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[SPUsageTrack _printSeparator]";
    v7 = 1024;
    v8 = 201;
    v9 = 2082;
    v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}s", &v5, 0x1Cu);
  }
}

- (void)_logUsageData
{
  usageTrackQueue = self->_usageTrackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008348;
  block[3] = &unk_100044778;
  block[4] = self;
  dispatch_async(usageTrackQueue, block);
}

- (void)dataSentToGizmo:(unint64_t)gizmo application:(id)application
{
  applicationCopy = application;
  usageTrackQueue = self->_usageTrackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008750;
  block[3] = &unk_100045430;
  v10 = applicationCopy;
  gizmoCopy = gizmo;
  block[4] = self;
  v8 = applicationCopy;
  dispatch_barrier_async(usageTrackQueue, block);
}

- (void)dataReceiedFromGizmo:(unint64_t)gizmo application:(id)application
{
  applicationCopy = application;
  usageTrackQueue = self->_usageTrackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000880C;
  block[3] = &unk_100045430;
  v10 = applicationCopy;
  gizmoCopy = gizmo;
  block[4] = self;
  v8 = applicationCopy;
  dispatch_barrier_async(usageTrackQueue, block);
}

- (void)_updateDataCount:(unint64_t)count application:(id)application toGizmo:(BOOL)gizmo
{
  v7 = [(SPUsageTrack *)self _arrayForApplication:application toGizmo:gizmo];
  v8 = [(SPUsageTrack *)self _indexForSize:count];
  if ((v8 & 0x80000000) != 0)
  {
    v9 = wk_default_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "[SPUsageTrack _updateDataCount:application:toGizmo:]";
      v12 = 1024;
      v13 = 270;
      v14 = 2048;
      countCopy = count;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Packet larger than largest bucket. size=%lu", &v10, 0x1Cu);
    }
  }

  else
  {
    ++v7[v8];
  }
}

- (int)_indexForSize:(unint64_t)size
{
  v3 = 0;
  while (dword_10003E180[v3] < size)
  {
    if (++v3 == 13)
    {
      LODWORD(v3) = -1;
      return v3;
    }
  }

  return v3;
}

- (unsigned)_arrayForApplication:(id)application toGizmo:(BOOL)gizmo
{
  gizmoCopy = gizmo;
  applicationCopy = application;
  appUsageTrack = [(SPUsageTrack *)self appUsageTrack];
  v8 = [appUsageTrack objectForKey:applicationCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(SPAppUsageTrack);
    appUsageTrack2 = [(SPUsageTrack *)self appUsageTrack];
    [appUsageTrack2 setObject:v8 forKeyedSubscript:applicationCopy];
  }

  if (gizmoCopy)
  {
    toGizmoArray = [(SPAppUsageTrack *)v8 toGizmoArray];
  }

  else
  {
    toGizmoArray = [(SPAppUsageTrack *)v8 toCompArray];
  }

  v11 = toGizmoArray;

  return v11;
}

@end