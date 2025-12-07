@interface AAKEngagementPluginProvider
+ (void)performRequestWithObject:(id)object completion:(id)completion;
- (_TtC35AdAttributionKitEngagementExtension27AAKEngagementPluginProvider)init;
@end

@implementation AAKEngagementPluginProvider

+ (void)performRequestWithObject:(id)object completion:(id)completion
{
  sub_100001BD0(&qword_10000C420, &qword_100003C98);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = object;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_100003684();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100003CA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100003CB8;
  v13[5] = v12;
  swift_unknownObjectRetain();
  sub_100002690(0, 0, v8, &unk_100003CC8, v13);
}

- (_TtC35AdAttributionKitEngagementExtension27AAKEngagementPluginProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AAKEngagementPluginProvider *)&v3 init];
}

@end