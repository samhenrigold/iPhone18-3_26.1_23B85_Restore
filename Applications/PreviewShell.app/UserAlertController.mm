@interface UserAlertController
- (void)alertService:(id)service wantsDismissalForAlert:(id)alert;
- (void)alertService:(id)service wantsPresentationForAlert:(id)alert preferredPresentationStyle:(int64_t)style;
@end

@implementation UserAlertController

- (void)alertService:(id)service wantsPresentationForAlert:(id)alert preferredPresentationStyle:(int64_t)style
{
  v7 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  alertCopy = alert;
  selfCopy = self;
  v13 = alertCopy;
  v14 = selfCopy;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = v14;
  sub_10002D668(0, 0, v9, &unk_10004E348, v16);
}

- (void)alertService:(id)service wantsDismissalForAlert:(id)alert
{
  v6 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  alertCopy = alert;
  selfCopy = self;
  v12 = alertCopy;
  v13 = selfCopy;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v12;
  v15[5] = v13;
  sub_10002D668(0, 0, v8, &unk_10004E338, v15);
}

@end