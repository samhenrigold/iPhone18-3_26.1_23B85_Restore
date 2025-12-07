@interface WKIdentityDocumentRawRequestValidator
- (WKIdentityDocumentRawRequestValidator)init;
- (id)validateISO18013Request:(id)request origin:(id)origin error:(id *)error;
@end

@implementation WKIdentityDocumentRawRequestValidator

- (id)validateISO18013Request:(id)request origin:(id)origin error:(id *)error
{
  v7 = sub_23B59D2D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D2C0();
  requestCopy = request;
  selfCopy = self;
  v13 = sub_23B5839F4(requestCopy, v10);
  (*(v8 + 8))(v10, v7);

  return v13;
}

- (WKIdentityDocumentRawRequestValidator)init
{
  v3 = (self + OBJC_IVAR___WKIdentityDocumentRawRequestValidator__unsafeValidator);
  v3[3] = sub_23B59D5E0();
  __swift_allocate_boxed_opaque_existential_0Tm(v3);
  sub_23B59D5D0();
  v5.receiver = self;
  v5.super_class = WKIdentityDocumentRawRequestValidator;
  return [(WKIdentityDocumentRawRequestValidator *)&v5 init];
}

@end