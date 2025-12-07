@interface ATPersonalizationServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler;
- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler;
@end

@implementation ATPersonalizationServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100004D34(connectionCopy);

  return v9 & 1;
}

- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler
{
  sub_100002034(&unk_100010CB0, &qword_100006B78);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = events;
  *(v10 + 24) = v9;
  *(v10 + 32) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100006C00;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006C08;
  v13[5] = v12;
  selfCopy = self;
  sub_100004608(0, 0, v8, &unk_100006C10, v13);
}

- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler
{
  sub_100002034(&unk_100010CB0, &qword_100006B78);
  __chkstk_darwin();
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = k;
  v16[3] = start;
  v16[4] = end;
  v16[5] = type;
  v16[6] = v15;
  v16[7] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100006BD8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100006BE0;
  v19[5] = v18;
  typeCopy = type;
  selfCopy = self;
  sub_100004608(0, 0, v14, &unk_100006BE8, v19);
}

- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  sub_100002034(&unk_100010CB0, &qword_100006B78);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = identifier;
  v10[3] = v9;
  v10[4] = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100006B88;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006B98;
  v13[5] = v12;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100004608(0, 0, v8, &unk_100006BA8, v13);
}

@end