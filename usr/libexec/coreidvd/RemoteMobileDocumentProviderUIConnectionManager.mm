@interface RemoteMobileDocumentProviderUIConnectionManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (uint64_t)remoteAlertHandleDidActivate:;
- (void)didAuthorizeRequestWithResponse:(_TtC13CoreIDVShared44XPCMobileDocumentProviderPresentmentResponse *)response completionHandler:(id)handler;
- (void)didSelectEnableBluetoothWithCompletionHandler:(id)handler;
- (void)didSelectScannableCodeWithCompletionHandler:(id)handler;
- (void)releaseRequestWithCompletionHandler:(id)handler;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)remoteViewDidAppearWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)identifier completionHandler:(id)handler;
- (void)remoteViewDidCancelWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)identifier completionHandler:(id)handler;
- (void)selectionViewDidSelect:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)select completionHandler:(id)handler;
- (void)selectionViewUserDidTapSelection:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)selection completionHandler:(id)handler;
- (void)viewServiceDidBecomeActive:(id)active;
- (void)viewServiceWillTerminateWithCompletionHandler:(id)handler;
@end

@implementation RemoteMobileDocumentProviderUIConnectionManager

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;

  v7 = sub_1003FBC50(connectionCopy);

  return v7 & 1;
}

- (void)viewServiceDidBecomeActive:(id)active
{
  v3 = _Block_copy(active);
  _Block_copy(v3);

  sub_1003FBF14(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)selectionViewUserDidTapSelection:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)selection completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = selection;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E14C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E14C8;
  v14[5] = v13;
  selectionCopy = selection;

  sub_100500D54(0, 0, v9, &unk_1006E14D0, v14);
}

- (void)selectionViewDidSelect:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)select completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = select;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E14A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E14A8;
  v14[5] = v13;
  selectCopy = select;

  sub_100500D54(0, 0, v9, &unk_1006E14B0, v14);
}

- (void)didAuthorizeRequestWithResponse:(_TtC13CoreIDVShared44XPCMobileDocumentProviderPresentmentResponse *)response completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = response;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E1480;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E1488;
  v14[5] = v13;
  responseCopy = response;

  sub_100500D54(0, 0, v9, &unk_1006E1490, v14);
}

- (void)viewServiceWillTerminateWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E1460;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E1468;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E1470, v12);
}

- (void)didSelectScannableCodeWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E1440;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E1448;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E1450, v12);
}

- (void)didSelectEnableBluetoothWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E1420;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E1428;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E1430, v12);
}

- (void)remoteViewDidAppearWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)identifier completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E1400;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E1408;
  v14[5] = v13;
  identifierCopy = identifier;

  sub_100500D54(0, 0, v9, &unk_1006E1410, v14);
}

- (void)remoteViewDidCancelWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)identifier completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E13E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E13E8;
  v14[5] = v13;
  identifierCopy = identifier;

  sub_100500D54(0, 0, v9, &unk_1006E13F0, v14);
}

- (void)releaseRequestWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E13C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006D9180;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E13D0, v12);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;

  sub_1003FC4F4();
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;

  errorCopy = error;
  sub_1003FC778(error);
}

- (uint64_t)remoteAlertHandleDidActivate:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100141FE4(0xD000000000000020, 0x80000001007155C0, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v6, 0xCu);
    sub_10000BB78(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

@end