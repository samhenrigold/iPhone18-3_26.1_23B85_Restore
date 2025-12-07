@interface SFMediaPlayerItem
- (BOOL)isEqual:(id)equal;
- (SFMediaPlayerItem)initWithURL:(id)l;
- (id)description;
- (unint64_t)hash;
- (void)invalidate;
- (void)setPlaybackNotificationTimeRanges:(id)ranges withTimeRangeHandler:(id)handler;
- (void)setPlayerItem:(id)item;
@end

@implementation SFMediaPlayerItem

- (SFMediaPlayerItem)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SFMediaPlayerItem;
  v6 = [(SFMediaPlayerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (void)setPlaybackNotificationTimeRanges:(id)ranges withTimeRangeHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [ranges copy];
  playbackNotificationTimeRanges = self->_playbackNotificationTimeRanges;
  self->_playbackNotificationTimeRanges = v7;

  v9 = [handlerCopy copy];
  timeRangeHandler = self->_timeRangeHandler;
  self->_timeRangeHandler = v9;
}

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  playerItems = [(SFMediaPlayerItem *)self playerItems];
  [playerItems removeAllObjects];

  playerItems2 = [(SFMediaPlayerItem *)self playerItems];

  if (!playerItems2)
  {
    v6 = objc_opt_new();
    [(SFMediaPlayerItem *)self setPlayerItems:v6];
  }

  playerItems3 = [(SFMediaPlayerItem *)self playerItems];
  [playerItems3 addObject:itemCopy];

  if ([(SFMediaPlayerItem *)self shouldLoop])
  {
    playerItems4 = [(SFMediaPlayerItem *)self playerItems];
    v9 = [itemCopy copy];
    [playerItems4 addObject:v9];

    playerItems5 = [(SFMediaPlayerItem *)self playerItems];
    v11 = [itemCopy copy];
    [playerItems5 addObject:v11];
  }
}

- (void)invalidate
{
  timeRangeHandler = self->_timeRangeHandler;
  self->_timeRangeHandler = 0;

  startedHandler = self->_startedHandler;
  self->_startedHandler = 0;

  completedHandler = self->_completedHandler;
  self->_completedHandler = 0;
}

- (id)description
{
  v25 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v25, "<%@ %{ptr}", v3, self);
  v4 = v25;
  v24 = v4;
  path = [(NSURL *)self->_url path];
  NSAppendPrintF(&v24, ", url: %@", path);
  v6 = v24;

  if ([(NSMutableArray *)self->_playerItems count])
  {
    v23 = v6;
    firstObject = [(NSMutableArray *)self->_playerItems firstObject];
    NSAppendPrintF(&v23, ", playerItem: %@", firstObject);
    v8 = v23;

    v6 = v8;
  }

  if (self->_shouldLoop)
  {
    v22 = v6;
    NSAppendPrintF(&v22, ", loops");
    v9 = v22;

    v6 = v9;
  }

  if ([(NSArray *)self->_playbackNotificationTimeRanges count])
  {
    v21 = v6;
    v10 = [(NSArray *)self->_playbackNotificationTimeRanges count];
    if (self->_timeRangeHandler)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    NSAppendPrintF(&v21, ", time ranges: %lu, handler: %s", v10, v11);
    v12 = v21;

    v6 = v12;
  }

  if (self->_startedHandler)
  {
    v20 = v6;
    NSAppendPrintF(&v20, ", startedHandler");
    v13 = v20;

    v6 = v13;
  }

  if (self->_completedHandler)
  {
    v19 = v6;
    NSAppendPrintF(&v19, ", completedHandler");
    v14 = v19;

    v6 = v14;
  }

  v18 = v6;
  NSAppendPrintF(&v18, ">");
  v15 = v18;
  v16 = v18;

  return v15;
}

- (unint64_t)hash
{
  v2 = [(SFMediaPlayerItem *)self url];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(SFMediaPlayerItem *)self url];
      v7 = [(SFMediaPlayerItem *)v5 url];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 != v9 && (v8 != 0) != (v9 == 0))
      {
        [v8 isEqual:v9];
      }

      [(SFMediaPlayerItem *)self shouldLoop];
      [(SFMediaPlayerItem *)v5 shouldLoop];
    }
  }

  return 0;
}

@end