@interface CHSWidgetDescriptor(WidgetConfiguration)
- (uint64_t)isConfigurable;
@end

@implementation CHSWidgetDescriptor(WidgetConfiguration)

- (uint64_t)isConfigurable
{
  if (!NTKUseComplicationEditor(self, a2))
  {
    return 0;
  }

  defaultIntentReference = [self defaultIntentReference];
  if (defaultIntentReference && ([self isRelevanceBacked] & 1) == 0)
  {
    intentRecommendations = [self intentRecommendations];
    if ([intentRecommendations count])
    {
      v4 = 0;
    }

    else
    {
      v4 = [self isLinkedOnOrAfter:2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end