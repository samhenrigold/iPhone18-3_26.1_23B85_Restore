@interface STMSizeCacheEvent
+ (id)eventWithPath:(id)path flags:(unsigned int)flags event:(unint64_t)CurrentEventId;
- (int64_t)eventIDCompare:(id)compare;
@end

@implementation STMSizeCacheEvent

+ (id)eventWithPath:(id)path flags:(unsigned int)flags event:(unint64_t)CurrentEventId
{
  v6 = *&flags;
  pathCopy = path;
  v8 = objc_alloc_init(STMSizeCacheEvent);
  [(STMSizeCacheEvent *)v8 setPath:pathCopy];

  [(STMSizeCacheEvent *)v8 setFlags:v6];
  if (!CurrentEventId)
  {
    CurrentEventId = FSEventsGetCurrentEventId();
  }

  [(STMSizeCacheEvent *)v8 setEvtID:CurrentEventId];

  return v8;
}

- (int64_t)eventIDCompare:(id)compare
{
  compareCopy = compare;
  evtID = [compareCopy evtID];
  if (evtID <= [(STMSizeCacheEvent *)self evtID])
  {
    evtID2 = [compareCopy evtID];
    v6 = evtID2 < [(STMSizeCacheEvent *)self evtID];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

@end