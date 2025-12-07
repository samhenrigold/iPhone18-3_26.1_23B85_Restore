@interface NFMTokenManager
+ (void)getTokenWithCompletionHandler:(id)handler;
- (NFMTokenManager)init;
@end

@implementation NFMTokenManager

+ (void)getTokenWithCompletionHandler:(id)handler
{
  sub_100006144(&qword_100011080, "D*");
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100007EF8;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100007F08;
  v11[5] = v10;
  sub_10000565C(0, 0, v6, &unk_100007F18, v11);
}

- (NFMTokenManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TokenManager();
  return [(NFMTokenManager *)&v3 init];
}

@end