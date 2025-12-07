@interface _GEOMapItemStorageNotificationTrampoline
- (void)dealloc;
@end

@implementation _GEOMapItemStorageNotificationTrampoline

- (void)dealloc
{
  objc_storeWeak(&self->_storage, 0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_notificationToken];

  v4.receiver = self;
  v4.super_class = _GEOMapItemStorageNotificationTrampoline;
  [(_GEOMapItemStorageNotificationTrampoline *)&v4 dealloc];
}

@end