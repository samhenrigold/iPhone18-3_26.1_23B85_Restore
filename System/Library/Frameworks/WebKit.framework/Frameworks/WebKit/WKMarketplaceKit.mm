@interface WKMarketplaceKit
+ (void)requestAppInstallationWithTopOrigin:(NSURL *)origin url:(NSURL *)url completionHandler:(id)handler;
- (WKMarketplaceKit)init;
@end

@implementation WKMarketplaceKit

+ (void)requestAppInstallationWithTopOrigin:(NSURL *)origin url:(NSURL *)url completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = origin;
  v13[3] = url;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23B59D910();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B5A0058;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B5A0060;
  v16[5] = v15;
  originCopy = origin;
  urlCopy = url;
  sub_23B56B930(0, 0, v11, &unk_23B5A0068, v16);
}

- (WKMarketplaceKit)init
{
  v3.receiver = self;
  v3.super_class = WKMarketplaceKit;
  return [(WKMarketplaceKit *)&v3 init];
}

@end