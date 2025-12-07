@interface PRRenderer
- (PXPosterPreferences)px_preferences;
- (PXPosterRenderingEnvironment)px_environment;
- (id)px_extendRenderSessionForReason:(id)reason;
- (void)px_noteContentSignificantlyChanged;
- (void)px_updatePreferences:(id)preferences;
@end

@implementation PRRenderer

- (void)px_updatePreferences:(id)preferences
{
  v4 = _Block_copy(preferences);
  v6[2] = v4;
  selfCopy = self;
  PRRenderer.px_updatePreferences(_:)(sub_10000C270, v6);
  _Block_release(v4);
}

- (void)px_noteContentSignificantlyChanged
{
  selfCopy = self;
  PRRenderer.px_noteContentSignificantlyChanged()();
}

- (id)px_extendRenderSessionForReason:(id)reason
{
  v4 = sub_100010854();
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