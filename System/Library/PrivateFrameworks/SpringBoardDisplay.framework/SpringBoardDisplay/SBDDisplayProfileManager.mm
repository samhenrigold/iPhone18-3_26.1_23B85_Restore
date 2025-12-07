@interface SBDDisplayProfileManager
- (CAContext)rootWindowCAContext;
- (NSSet)fbScenes;
- (SBDDisplayProfileManagerDelegate)delegate;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)start;
- (void)updateTransform:(CGAffineTransform *)transform forDisplayConfiguration:(id)configuration;
@end

@implementation SBDDisplayProfileManager

- (SBDDisplayProfileManagerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSSet)fbScenes
{
  swift_beginAccess();
  sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
  sub_26B9DDFCC();
  sub_26B9DFE14();
  v2 = sub_26B9DFF94();

  return v2;
}

- (CAContext)rootWindowCAContext
{
  swift_beginAccess();
  selfCopy = self;
  v4 = sub_26B9DFE14();
  v5 = sub_26B9D99B8(v4);

  if (v5)
  {
    v6 = sub_26B9DFFD4();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)start
{
  selfCopy = self;
  sub_26B9D9AD4();
}

- (void)updateTransform:(CGAffineTransform *)transform forDisplayConfiguration:(id)configuration
{
  v5 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v5;
  v8[2] = *&transform->tx;
  configurationCopy = configuration;
  selfCopy = self;
  sub_26B9D9D00(v8, configurationCopy);
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  selfCopy = self;
  sub_26B9DDD24(deactivateCopy, context);
}

@end