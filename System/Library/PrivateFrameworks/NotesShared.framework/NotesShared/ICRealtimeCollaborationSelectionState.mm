@interface ICRealtimeCollaborationSelectionState
+ (void)registerWithICCRCoder;
- (ICRealtimeCollaborationSelectionState)init;
@end

@implementation ICRealtimeCollaborationSelectionState

+ (void)registerWithICCRCoder
{
  v2 = objc_opt_self();
  type metadata accessor for RealtimeCollaborationSelectionDocument.State(v2, v3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_2150A4A90();
  [v2 registerClass:ObjCClassFromMetadata forType:v5];
}

- (ICRealtimeCollaborationSelectionState)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICRealtimeCollaborationSelectionState *)&v3 init];
}

@end