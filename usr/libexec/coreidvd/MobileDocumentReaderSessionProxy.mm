@interface MobileDocumentReaderSessionProxy
- (_TtC8coreidvd32MobileDocumentReaderSessionProxy)init;
- (void)cachedIssuerRootsWithCompletionHandler:(id)handler;
- (void)canRequestDocument:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)document completionHandler:(id)handler;
- (void)cancelReadWithCompletionHandler:(id)handler;
- (void)certificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler;
- (void)clearCachedIssuerRootsWithCompletionHandler:(id)handler;
- (void)deleteCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler;
- (void)deleteIdentityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler;
- (void)identityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler;
- (void)loadIssuerRootsWithCompletionHandler:(id)handler;
- (void)merchantFor:(NSString *)for completionHandler:(id)handler;
- (void)prepareWith:(_TtC7CoreIDV36XPCMobileDocumentReaderConfiguration *)with completionHandler:(id)handler;
- (void)readDocumentWith:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)with engagementType:(_TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType *)type completionHandler:(id)handler;
- (void)readerInstanceIdentifierWithCompletionHandler:(id)handler;
- (void)registerAuditToken:(_TtC7CoreIDV13XPCAuditToken *)token completionHandler:(id)handler;
- (void)storeCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate certificateDER:(NSString *)r externalData:(NSData *)data completionHandler:(id)handler;
@end

@implementation MobileDocumentReaderSessionProxy

- (void)registerAuditToken:(_TtC7CoreIDV13XPCAuditToken *)token completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E69F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E69F8;
  v14[5] = v13;
  tokenCopy = token;

  sub_100500D54(0, 0, v9, &unk_1006E6A00, v14);
}

- (void)readerInstanceIdentifierWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E69D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E69D8;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E69E0, v12);
}

- (void)prepareWith:(_TtC7CoreIDV36XPCMobileDocumentReaderConfiguration *)with completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E69B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E69B8;
  v14[5] = v13;
  withCopy = with;

  sub_100500D54(0, 0, v9, &unk_1006E69C0, v14);
}

- (void)merchantFor:(NSString *)for completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E69A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E28D8;
  v14[5] = v13;
  forCopy = for;

  sub_100500D54(0, 0, v9, &unk_1006E28E0, v14);
}

- (void)canRequestDocument:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)document completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = document;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6990;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E28B8;
  v14[5] = v13;
  documentCopy = document;

  sub_100500D54(0, 0, v9, &unk_1006E28C0, v14);
}

- (void)readDocumentWith:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)with engagementType:(_TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType *)type completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = with;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6970;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E6978;
  v16[5] = v15;
  withCopy = with;
  typeCopy = type;

  sub_100500D54(0, 0, v11, &unk_1006E6980, v16);
}

- (void)cancelReadWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E6950;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E6958;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E6960, v12);
}

- (void)identityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = key;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6930;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6938;
  v14[5] = v13;
  keyCopy = key;

  sub_100500D54(0, 0, v9, &unk_1006E6940, v14);
}

- (void)deleteIdentityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = key;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6910;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6918;
  v14[5] = v13;
  keyCopy = key;

  sub_100500D54(0, 0, v9, &unk_1006E6920, v14);
}

- (void)certificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = certificate;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E68F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E68F8;
  v14[5] = v13;
  certificateCopy = certificate;

  sub_100500D54(0, 0, v9, &unk_1006E6900, v14);
}

- (void)storeCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate certificateDER:(NSString *)r externalData:(NSData *)data completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = certificate;
  v15[3] = r;
  v15[4] = data;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E68D0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E68D8;
  v18[5] = v17;
  certificateCopy = certificate;
  rCopy = r;
  dataCopy = data;

  sub_100500D54(0, 0, v13, &unk_1006E68E0, v18);
}

- (void)deleteCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = certificate;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E68B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E68B8;
  v14[5] = v13;
  certificateCopy = certificate;

  sub_100500D54(0, 0, v9, &unk_1006E68C0, v14);
}

- (void)cachedIssuerRootsWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E6890;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E6898;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E68A0, v12);
}

- (void)clearCachedIssuerRootsWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E6870;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E6878;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E6880, v12);
}

- (void)loadIssuerRootsWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1006E6860;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006D9180;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E13D0, v12);
}

- (_TtC8coreidvd32MobileDocumentReaderSessionProxy)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end