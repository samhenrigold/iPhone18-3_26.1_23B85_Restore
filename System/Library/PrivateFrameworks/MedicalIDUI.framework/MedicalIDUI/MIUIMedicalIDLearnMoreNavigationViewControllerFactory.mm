@interface MIUIMedicalIDLearnMoreNavigationViewControllerFactory
+ (id)makeViewController;
- (MIUIMedicalIDLearnMoreNavigationViewControllerFactory)init;
@end

@implementation MIUIMedicalIDLearnMoreNavigationViewControllerFactory

+ (id)makeViewController
{
  v2 = type metadata accessor for MedicalIDLearnMoreNavigationView(0);
  MEMORY[0x28223BE20](v2 - 8);
  *(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getKeyPath(")\n'");
  sub_2587EAE10(0);
  swift_storeEnumTagMultiPayload();
  sub_2587EAE68(0);
  v5 = objc_allocWithZone(v4);
  v6 = sub_2588BC738();

  return v6;
}

- (MIUIMedicalIDLearnMoreNavigationViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = MIUIMedicalIDLearnMoreNavigationViewControllerFactory;
  return [(MIUIMedicalIDLearnMoreNavigationViewControllerFactory *)&v3 init];
}

@end