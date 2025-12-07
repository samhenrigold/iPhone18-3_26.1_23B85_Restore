@interface PRRenderer
- (PXPosterPreferences)px_preferences;
- (PXPosterRenderingEnvironment)px_environment;
- (id)px_extendRenderSessionForReason:(id)reason;
- (void)px_noteContentSignificantlyChanged;
@end

@implementation PRRenderer

- (void)px_noteContentSignificantlyChanged
{
  selfCopy = self;
  PRRenderer.px_noteContentSignificantlyChanged()();
}

- (id)px_extendRenderSessionForReason:(id)reason
{
  v4 = sub_10002F404();
  v6 = v5;
  selfCopy = self;
  v8 = PRRenderer.px_extendRenderSession(forReason:)(v4, v6);

  return v8;
}

- (PXPosterRenderingEnvironment)px_environment
{
  selfCopy = self;
  v3 = PRRenderer.px_environment.getter();

  return v3;
}

- (PXPosterPreferences)px_preferences
{
  selfCopy = self;
  v3 = PRRenderer.px_preferences.getter();

  return v3;
}

@end