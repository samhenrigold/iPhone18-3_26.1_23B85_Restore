@interface NTKColorAnalogRichFaceView
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (NTKColorAnalogRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_fadeComplicationFraction:(double)fraction entry:(double)entry exit:(double)exit slot:(id)slot;
- (void)_loadLayoutRules;
@end

@implementation NTKColorAnalogRichFaceView

- (NTKColorAnalogRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKColorAnalogRichFaceView;
  v9 = [(NTKColorAnalogFaceView *)&v14 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    [NTKAnalogUtilities dialSizeForDevice:deviceCopy];
    v11 = [v10 initWithFaceView:v9 dialDiameter:deviceCopy device:?];
    cornerComplicationFactory = v9->_cornerComplicationFactory;
    v9->_cornerComplicationFactory = v11;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_cornerComplicationFactory setUsesNarrowTopSlots:1];
    [(NTKColorAnalogRichFaceView *)v9 setComplicationFactory:v9->_cornerComplicationFactory];
  }

  return v9;
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotMonogram])
  {
    v13.receiver = self;
    v13.super_class = NTKColorAnalogRichFaceView;
    v10 = [(NTKColorAnalogFaceView *)&v13 _newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
  }

  else
  {
    complicationFactory = [(NTKColorAnalogRichFaceView *)self complicationFactory];
    v10 = [complicationFactory newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
  }

  return v10;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v12.receiver = self;
  v12.super_class = NTKColorAnalogRichFaceView;
  [(NTKColorAnalogFaceView *)&v12 _configureComplicationView:viewCopy forSlot:slotCopy];
  if (([slotCopy isEqualToString:NTKComplicationSlotMonogram] & 1) == 0)
  {
    complicationFactory = [(NTKColorAnalogRichFaceView *)self complicationFactory];
    [complicationFactory configureComplicationView:viewCopy forSlot:slotCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
    complicationForegroundColor = [(NTKColorAnalogFaceView *)self complicationForegroundColor];
    [(NTKColorAnalogRichFaceView *)self setComplicationColor:complicationForegroundColor];

    complicationForegroundColor2 = [(NTKColorAnalogFaceView *)self complicationForegroundColor];
    [(NTKColorAnalogRichFaceView *)self setInterpolatedComplicationColor:complicationForegroundColor2];

    [v9 transitionToMonochromeWithFraction:1.0];
    [v9 updateMonochromeColor];
  }
}

- (void)_loadLayoutRules
{
  complicationFactory = [(NTKColorAnalogRichFaceView *)self complicationFactory];
  [complicationFactory loadLayoutRules];

  NTKEnumerateComplicationStates();
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  selectedCopy = selected;
  slotCopy = slot;
  if (([slotCopy isEqualToString:NTKComplicationSlotMonogram] & 1) != 0 || (-[NTKWhistlerAnalogFaceViewComplicationFactory keylineFrameForCornerComplicationSlot:selected:](self->_cornerComplicationFactory, "keylineFrameForCornerComplicationSlot:selected:", slotCopy, selectedCopy), x = v20.origin.x, y = v20.origin.y, width = v20.size.width, height = v20.size.height, CGRectIsEmpty(v20)))
  {
    v19.receiver = self;
    v19.super_class = NTKColorAnalogRichFaceView;
    [(NTKColorAnalogRichFaceView *)&v19 _keylineFrameForComplicationSlot:slotCopy selected:selectedCopy];
    x = v11;
    y = v12;
    width = v13;
    height = v14;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKColorAnalogRichFaceView;
  [(NTKColorAnalogFaceView *)&v8 _applyOption:option forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_72DC;
    v7[3] = &unk_10520;
    v7[4] = self;
    [(NTKColorAnalogRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
  }
}

- (void)_fadeComplicationFraction:(double)fraction entry:(double)entry exit:(double)exit slot:(id)slot
{
  slotCopy = slot;
  CLKCompressFraction();
  v9 = v8;
  interpolatedColorPalette = [(NTKColorAnalogRichFaceView *)self interpolatedColorPalette];
  [interpolatedColorPalette setTransitionFraction:v9];

  v11 = [(NTKColorAnalogRichFaceView *)self normalComplicationDisplayWrapperForSlot:slotCopy];

  display = [v11 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = display;
    complicationColor = [(NTKColorAnalogRichFaceView *)self complicationColor];
    interpolatedComplicationColor = [(NTKColorAnalogRichFaceView *)self interpolatedComplicationColor];
    interpolatedColorPalette2 = [(NTKColorAnalogRichFaceView *)self interpolatedColorPalette];
    primaryShiftedColor = [interpolatedColorPalette2 primaryShiftedColor];
    [(NTKColorAnalogRichFaceView *)self setComplicationColor:primaryShiftedColor];

    interpolatedColorPalette3 = [(NTKColorAnalogRichFaceView *)self interpolatedColorPalette];
    primaryShiftedColor2 = [interpolatedColorPalette3 primaryShiftedColor];
    [(NTKColorAnalogRichFaceView *)self setInterpolatedComplicationColor:primaryShiftedColor2];

    [v12 updateMonochromeColor];
    [(NTKColorAnalogRichFaceView *)self setComplicationColor:complicationColor];
    [(NTKColorAnalogRichFaceView *)self setInterpolatedComplicationColor:interpolatedComplicationColor];
  }
}

@end