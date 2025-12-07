@interface SWTConfigBagFetcher
- (void)fetchConfigBag:(NSURLRequest *)bag completionHandler:(id)handler;
- (void)triggerConfigBagFetch:(double)fetch;
@end

@implementation SWTConfigBagFetcher

- (void)fetchConfigBag:(NSURLRequest *)bag completionHandler:(id)handler
{
  v7 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = bag;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100104230;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100104240;
  v14[5] = v13;
  bagCopy = bag;

  sub_100039048(0, 0, v9, &unk_100104250, v14);
}

- (void)triggerConfigBagFetch:(double)fetch
{

  sub_1000388BC(fetch);
}

@end