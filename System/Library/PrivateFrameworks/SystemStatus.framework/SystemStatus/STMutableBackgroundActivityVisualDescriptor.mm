@interface STMutableBackgroundActivityVisualDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBackgroundColorRepresentation:(id)representation;
- (void)setCrossfadableActivities:(id)activities;
- (void)setFontSizeAdjustment:(double)adjustment;
- (void)setImageName:(id)name;
- (void)setPackageName:(id)name;
- (void)setPreferredContinuousAnimationName:(id)name;
- (void)setPreferredVisualEffectName:(id)name;
- (void)setPrefersToKeepContentVisible:(BOOL)visible;
- (void)setPrefersToSuppressDefaultUserInteractionHandler:(BOOL)handler;
- (void)setPrefersToSuppressPulse:(BOOL)pulse;
- (void)setSystemImageName:(id)name;
- (void)setTextLabel:(id)label;
- (void)setVerticalOffsetInPixels:(double)pixels;
@end

@implementation STMutableBackgroundActivityVisualDescriptor

- (void)setSystemImageName:(id)name
{
  nameCopy = name;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [nameCopy copy];
    systemImageName = self->super._systemImageName;
    self->super._systemImageName = v4;
  }
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [nameCopy copy];
    imageName = self->super._imageName;
    self->super._imageName = v4;
  }
}

- (void)setPackageName:(id)name
{
  nameCopy = name;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [nameCopy copy];
    packageName = self->super._packageName;
    self->super._packageName = v4;
  }
}

- (void)setTextLabel:(id)label
{
  labelCopy = label;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [labelCopy copy];
    textLabel = self->super._textLabel;
    self->super._textLabel = v4;
  }
}

- (void)setBackgroundColorRepresentation:(id)representation
{
  p_backgroundColorRepresentation = &self->super._backgroundColorRepresentation;
  representationCopy = representation;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_backgroundColorRepresentation, representation);
  }
}

- (void)setVerticalOffsetInPixels:(double)pixels
{
  if (self->super._verticalOffsetInPixels != pixels)
  {
    self->super._verticalOffsetInPixels = pixels;
  }
}

- (void)setFontSizeAdjustment:(double)adjustment
{
  if (self->super._fontSizeAdjustment != adjustment)
  {
    self->super._fontSizeAdjustment = adjustment;
  }
}

- (void)setPrefersToKeepContentVisible:(BOOL)visible
{
  if (self->super._prefersToKeepContentVisible != visible)
  {
    self->super._prefersToKeepContentVisible = visible;
  }
}

- (void)setPreferredVisualEffectName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    nameCopy = @"none";
  }

  v7 = nameCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [(__CFString *)v7 copy];
    preferredVisualEffectName = self->super._preferredVisualEffectName;
    self->super._preferredVisualEffectName = v5;
  }
}

- (void)setPreferredContinuousAnimationName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    nameCopy = @"pulseBackground";
  }

  v7 = nameCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [(__CFString *)v7 copy];
    preferredContinuousAnimationName = self->super._preferredContinuousAnimationName;
    self->super._preferredContinuousAnimationName = v5;
  }
}

- (void)setPrefersToSuppressDefaultUserInteractionHandler:(BOOL)handler
{
  if (self->super._prefersToSuppressDefaultUserInteractionHandler != handler)
  {
    self->super._prefersToSuppressDefaultUserInteractionHandler = handler;
  }
}

- (void)setCrossfadableActivities:(id)activities
{
  activitiesCopy = activities;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [activitiesCopy copy];
    crossfadableActivities = self->super._crossfadableActivities;
    self->super._crossfadableActivities = v4;
  }
}

- (void)setPrefersToSuppressPulse:(BOOL)pulse
{
  v4 = STBackgroundActivityContinuousAnimationNone;
  if (!pulse)
  {
    preferredContinuousAnimationName = [(STBackgroundActivityVisualDescriptor *)self preferredContinuousAnimationName];
    v6 = [preferredContinuousAnimationName isEqual:@"none"];

    if (!v6)
    {
      return;
    }

    v4 = STBackgroundActivityContinuousAnimationPulseBackground;
  }

  v7 = *v4;

  [(STMutableBackgroundActivityVisualDescriptor *)self setPreferredContinuousAnimationName:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  _copyValuesFromDescriptorToDescriptor(self, v4);
  return v4;
}

@end