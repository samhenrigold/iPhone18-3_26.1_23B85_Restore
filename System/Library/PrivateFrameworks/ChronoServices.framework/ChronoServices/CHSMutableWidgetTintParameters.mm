@interface CHSMutableWidgetTintParameters
- (BOOL)wantsSubduedGlass;
- (CHSMutableWidgetTintParameters)init;
- (CHSMutableWidgetTintParameters)initWithFilterStyle:(int64_t)style;
- (void)setGlassOptions:(id)options;
- (void)setWantsSubduedGlass:(BOOL)glass;
@end

@implementation CHSMutableWidgetTintParameters

- (CHSMutableWidgetTintParameters)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v3 init];
}

- (CHSMutableWidgetTintParameters)initWithFilterStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v4 initWithFilterStyle:style];
}

- (void)setGlassOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy copy];
  glassOptions = self->super._glassOptions;
  self->super._glassOptions = v4;
}

- (BOOL)wantsSubduedGlass
{
  v3.receiver = self;
  v3.super_class = CHSMutableWidgetTintParameters;
  return [(CHSWidgetTintParameters *)&v3 wantsSubduedGlass];
}

- (void)setWantsSubduedGlass:(BOOL)glass
{
  glassCopy = glass;
  glassOptions = self->super._glassOptions;
  if (glassOptions)
  {
    v9 = [(CHSGlassOptions *)glassOptions mutableCopy];
  }

  else
  {
    v7 = +[CHSGlassOptions withSubduedGlass];
    v9 = [v7 mutableCopy];
  }

  [v9 setWantsSubduedGlass:glassCopy];
  v6 = [v9 copy];
  v8 = self->super._glassOptions;
  self->super._glassOptions = v6;
}

@end