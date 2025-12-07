@interface MobileDocumentProviderRegistrationSessionProxy
- (_TtC8coreidvd46MobileDocumentProviderRegistrationSessionProxy)init;
- (void)allApplicationsWithCompletionHandler:(id)handler;
- (void)authorizationStatusWithCompletionHandler:(id)handler;
- (void)notifyEnablementUpdateTo:(BOOL)to for:(NSString *)for completionHandler:(id)handler;
- (void)registerWithRequest:(_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest *)request applicationIdentifierOverride:(NSString *)override completionHandler:(id)handler;
- (void)registrationsWithApplicationIdentifierOverride:(NSString *)override completionHandler:(id)handler;
- (void)unregisterWithRequest:(_TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest *)request applicationIdentifierOverride:(NSString *)override completionHandler:(id)handler;
@end

@implementation MobileDocumentProviderRegistrationSessionProxy

- (void)authorizationStatusWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E66A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E66B0;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E66B8, v12);
}

- (void)registerWithRequest:(_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest *)request applicationIdentifierOverride:(NSString *)override completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = override;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6688;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E6690;
  v16[5] = v15;
  requestCopy = request;
  overrideCopy = override;

  sub_100500D54(0, 0, v11, &unk_1006E6698, v16);
}

- (void)unregisterWithRequest:(_TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest *)request applicationIdentifierOverride:(NSString *)override completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = override;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6668;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E6670;
  v16[5] = v15;
  requestCopy = request;
  overrideCopy = override;

  sub_100500D54(0, 0, v11, &unk_1006E6678, v16);
}

- (void)registrationsWithApplicationIdentifierOverride:(NSString *)override completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = override;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6648;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6650;
  v14[5] = v13;
  overrideCopy = override;

  sub_100500D54(0, 0, v9, &unk_1006E6658, v14);
}

- (void)allApplicationsWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E6628;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E6630;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E6638, v12);
}

- (void)notifyEnablementUpdateTo:(BOOL)to for:(NSString *)for completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = to;
  *(v13 + 24) = for;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6618;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006D9180;
  v16[5] = v15;
  forCopy = for;

  sub_100500D54(0, 0, v11, &unk_1006E13D0, v16);
}

- (_TtC8coreidvd46MobileDocumentProviderRegistrationSessionProxy)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end