@interface WKIdentityDocumentPresentmentRequest
- (NSArray)mobileDocumentRequests;
- (NSURL)origin;
- (WKIdentityDocumentPresentmentRequest)init;
- (WKIdentityDocumentPresentmentRequest)initWithOrigin:(id)origin mobileDocumentRequests:(id)requests;
@end

@implementation WKIdentityDocumentPresentmentRequest

- (NSURL)origin
{
  v3 = sub_23B59D2D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B5806A4(self + OBJC_IVAR___WKIdentityDocumentPresentmentRequest__unsafeOrigin, v12);
  sub_23B582C30(0, &qword_27E15AB08, 0x277CBEBC0);
  selfCopy = self;
  swift_dynamicCast();
  v8 = v11[1];
  sub_23B59D2C0();

  v9 = sub_23B59D2B0();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (NSArray)mobileDocumentRequests
{
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);

  v2 = sub_23B59D880();

  return v2;
}

- (WKIdentityDocumentPresentmentRequest)initWithOrigin:(id)origin mobileDocumentRequests:(id)requests
{
  v5 = sub_23B59D2D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D2C0();
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);
  v9 = sub_23B59D890();
  v10 = sub_23B59D2B0();
  v11 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentRequest__unsafeOrigin);
  v11[3] = sub_23B582C30(0, &qword_27E15AB08, 0x277CBEBC0);
  *v11 = v10;
  *(self + OBJC_IVAR___WKIdentityDocumentPresentmentRequest_mobileDocumentRequests) = v9;
  v14.receiver = self;
  v14.super_class = WKIdentityDocumentPresentmentRequest;
  v12 = [(WKIdentityDocumentPresentmentRequest *)&v14 init];
  (*(v6 + 8))(v8, v5);
  return v12;
}

- (WKIdentityDocumentPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end