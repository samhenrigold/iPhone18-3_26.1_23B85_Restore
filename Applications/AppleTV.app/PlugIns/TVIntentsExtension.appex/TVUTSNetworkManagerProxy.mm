@interface TVUTSNetworkManagerProxy
+ (void)cancel:(NSURLRequest *)cancel completion:(id)completion;
+ (void)executeRequest:(NSURLRequest *)request completion:(id)completion;
+ (void)fetchConfiguration:(BOOL)configuration completion:(id)completion;
- (_TtC18TVIntentsExtension24TVUTSNetworkManagerProxy)init;
@end

@implementation TVUTSNetworkManagerProxy

+ (void)executeRequest:(NSURLRequest *)request completion:(id)completion
{
  sub_100002C2C(&qword_10000C7B0, &qword_100006450);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = request;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1000056F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100006588;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006590;
  v13[5] = v12;
  requestCopy = request;
  sub_100003108(0, 0, v8, &unk_100006598, v13);
}

+ (void)cancel:(NSURLRequest *)cancel completion:(id)completion
{
  sub_100002C2C(&qword_10000C7B0, &qword_100006450);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = cancel;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1000056F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100006568;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006570;
  v13[5] = v12;
  cancelCopy = cancel;
  sub_100003108(0, 0, v8, &unk_100006578, v13);
}

+ (void)fetchConfiguration:(BOOL)configuration completion:(id)completion
{
  sub_100002C2C(&qword_10000C7B0, &qword_100006450);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = configuration;
  *(v10 + 24) = v9;
  *(v10 + 32) = self;
  v11 = sub_1000056F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100006520;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006530;
  v13[5] = v12;
  sub_100003108(0, 0, v8, &unk_100006540, v13);
}

- (_TtC18TVIntentsExtension24TVUTSNetworkManagerProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVUTSNetworkManagerProxy();
  return [(TVUTSNetworkManagerProxy *)&v3 init];
}

@end