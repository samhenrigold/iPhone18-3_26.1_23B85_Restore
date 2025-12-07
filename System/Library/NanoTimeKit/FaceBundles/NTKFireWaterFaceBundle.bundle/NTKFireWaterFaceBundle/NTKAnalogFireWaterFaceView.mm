@interface NTKAnalogFireWaterFaceView
+ (id)_nameForColor:(unint64_t)color;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_wantsStatusBarIconShadow;
- (id)_complicationsCompanionForegroundColor;
- (id)_swatchImageForColor:(unint64_t)color andDialShape:(unint64_t)shape;
- (id)_swatchImageForColorOption:(id)option size:(CGSize)size;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)imageForEditOption:(id)option;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_customizeVideoPlayerOnSetup;
- (void)_updateDialSize;
- (void)reloadDataSources;
- (void)setCurrentDialShape:(unint64_t)shape;
- (void)setupDataSources;
@end

@implementation NTKAnalogFireWaterFaceView

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKAnalogFireWaterFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 dialShape] == &dword_0 + 1;

  return v3;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = NTKAnalogFireWaterFaceView;
  [(NTKAnalogFireWaterFaceView *)&v10 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 15)
  {
    -[NTKAnalogFireWaterFaceView setCurrentDialShape:](self, "setCurrentDialShape:", [optionCopy dialShape]);
    delegate = [(NTKAnalogFireWaterFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (mode == 10)
  {
    -[NTKAnalogFireWaterFaceView setCurrentColor:](self, "setCurrentColor:", [optionCopy color]);
  }
}

- (void)setCurrentDialShape:(unint64_t)shape
{
  self->_currentDialShape = shape;
  [(NTKAnalogFireWaterFaceView *)self _updateDialSize];

  [(NTKAnalogFireWaterFaceView *)self reloadDataSources];
}

- (void)_customizeVideoPlayerOnSetup
{
  [(NTKAnalogFireWaterFaceView *)self setupDataSources];
  videoPlayerView = [(NTKAnalogFireWaterFaceView *)self videoPlayerView];
  [videoPlayerView setPausedViewEnabled:0];

  [(NTKAnalogFireWaterFaceView *)self reloadDataSources];

  [(NTKAnalogFireWaterFaceView *)self _updateDialSize];
}

- (id)_complicationsCompanionForegroundColor
{
  currentColor = self->_currentColor;
  switch(currentColor)
  {
    case 2uLL:
      self = sub_1BC8(self);
      break;
    case 1uLL:
      self = sub_1B84(self);
      break;
    case 0uLL:
      self = +[UIColor whiteColor];
      break;
  }

  return self;
}

- (id)imageForEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = [optionCopy color];
    dataSources = self->_dataSources;
    v7 = [NSNumber numberWithUnsignedInteger:self->_currentDialShape];
    v8 = [(NSDictionary *)dataSources objectForKeyedSubscript:v7];
    currentColor = color;
LABEL_5:
    v12 = [NSNumber numberWithUnsignedInteger:currentColor];
    v13 = [v8 objectForKeyedSubscript:v12];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dialShape = [optionCopy dialShape];
    v11 = self->_dataSources;
    v7 = [NSNumber numberWithUnsignedInteger:dialShape];
    v8 = [(NSDictionary *)v11 objectForKeyedSubscript:v7];
    currentColor = self->_currentColor;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:
  posterImage = [v13 posterImage];

  return posterImage;
}

- (void)_updateDialSize
{
  if (self->_currentDialShape)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    device = [(NTKAnalogFireWaterFaceView *)self device];
    [NTKAnalogUtilities dialSizeForDevice:device];
    width = v6;
    height = v7;
  }

  [(NTKAnalogFireWaterFaceView *)self setVideoDialSize:width, height];
}

- (void)setupDataSources
{
  device = [(NTKAnalogFireWaterFaceView *)self device];
  v3 = sub_1B84(device);
  v4 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008" andColor:v3];
  v74[0] = v4;
  v5 = sub_1B84(v4);
  v6 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008_Calm" andColor:v5];
  v74[1] = v6;
  v62 = [NSArray arrayWithObjects:v74 count:2];

  v8 = sub_1BC8(v7);
  v9 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005" andColor:v8];
  v73[0] = v9;
  v10 = sub_1BC8(v9);
  v11 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005_Edge" andColor:v10];
  v73[1] = v11;
  v61 = [NSArray arrayWithObjects:v73 count:2];

  v13 = sub_1B84(v12);
  v14 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008" andColor:v13];
  v72[0] = v14;
  v15 = sub_1BC8(v14);
  v16 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005" andColor:v15];
  v72[1] = v16;
  v17 = sub_1B84(v16);
  v18 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008_Calm" andColor:v17];
  v72[2] = v18;
  v19 = sub_1BC8(v18);
  v20 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005_Edge" andColor:v19];
  v72[3] = v20;
  v57 = [NSArray arrayWithObjects:v72 count:4];

  v70[0] = &off_88C0;
  v21 = NTKImageNamedFromAssetsBundle();
  v22 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v21 order:0 andListings:v62];
  v71[0] = v22;
  v70[1] = &off_88D8;
  v23 = NTKImageNamedFromAssetsBundle();
  v24 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v23 order:0 andListings:v61];
  v71[1] = v24;
  v70[2] = &off_88F0;
  v25 = NTKImageNamedFromAssetsBundle();
  v26 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v25 order:0 andListings:v57];
  v71[2] = v26;
  v56 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:3];

  v28 = sub_1B84(v27);
  v29 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008" andColor:v28];
  v69[0] = v29;
  v30 = sub_1B84(v29);
  v31 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008_Calm" andColor:v30];
  v69[1] = v31;
  v60 = [NSArray arrayWithObjects:v69 count:2];

  v33 = sub_1BC8(v32);
  v34 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005" andColor:v33];
  v68[0] = v34;
  v35 = sub_1BC8(v34);
  v36 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005_Edge" andColor:v35];
  v68[1] = v36;
  v59 = [NSArray arrayWithObjects:v68 count:2];

  v38 = sub_1B84(v37);
  v39 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008" andColor:v38];
  v67[0] = v39;
  v40 = sub_1BC8(v39);
  v41 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005" andColor:v40];
  v67[1] = v41;
  v42 = sub_1B84(v41);
  v43 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008_Calm" andColor:v42];
  v67[2] = v43;
  v44 = sub_1BC8(v43);
  v45 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005_Edge" andColor:v44];
  v67[3] = v45;
  v46 = [NSArray arrayWithObjects:v67 count:4];

  v65[0] = &off_88C0;
  v47 = NTKImageNamedFromAssetsBundle();
  v48 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v47 order:0 andListings:v60];
  v66[0] = v48;
  v65[1] = &off_88D8;
  v49 = NTKImageNamedFromAssetsBundle();
  v50 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v49 order:0 andListings:v59];
  v66[1] = v50;
  v65[2] = &off_88F0;
  v51 = NTKImageNamedFromAssetsBundle();
  v52 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v51 order:0 andListings:v46];
  v66[2] = v52;
  v53 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];

  v63[0] = &off_88C0;
  v63[1] = &off_88F0;
  v64[0] = v56;
  v64[1] = v53;
  v54 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
  dataSources = self->_dataSources;
  self->_dataSources = v54;
}

- (void)reloadDataSources
{
  dataSources = self->_dataSources;
  v7 = [NSNumber numberWithUnsignedInteger:self->_currentDialShape];
  v4 = [(NSDictionary *)dataSources objectForKeyedSubscript:v7];
  v5 = [NSNumber numberWithUnsignedInteger:self->_currentColor];
  v6 = [v4 objectForKeyedSubscript:v5];
  [(NTKAnalogFireWaterFaceView *)self _setVideoPlayerDataSource:v6];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_8AF0;
  }

  else
  {
    return 0;
  }
}

+ (id)_nameForColor:(unint64_t)color
{
  v3 = @"All";
  if (color == 1)
  {
    v3 = @"Fire";
  }

  if (color == 2)
  {
    return @"Water";
  }

  else
  {
    return v3;
  }
}

- (id)_swatchImageForColorOption:(id)option size:(CGSize)size
{
  v4 = +[NTKAnalogFireWaterFaceView _nameForColor:](NTKAnalogFireWaterFaceView, "_nameForColor:", [option color]);
  v5 = [NSString stringWithFormat:@"Swatch-FireWater-Color-%@", v4];

  v6 = [NTKFireWaterFaceBundle imageWithName:v5];

  return v6;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  if (mode == 15)
  {
    v9 = [options objectForKeyedSubscript:&off_8908];
    v10 = optionCopy;
    color = [v9 color];
    dialShape = [v10 dialShape];

    v13 = [(NTKAnalogFireWaterFaceView *)self _swatchImageForColor:color andDialShape:dialShape];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKAnalogFireWaterFaceView;
    v13 = [(NTKAnalogFireWaterFaceView *)&v15 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v13;
}

- (id)_swatchImageForColor:(unint64_t)color andDialShape:(unint64_t)shape
{
  v5 = [NTKAnalogFireWaterFaceView _nameForColor:color];
  v6 = @"Circular";
  if (shape)
  {
    v6 = 0;
  }

  if (shape == 1)
  {
    v6 = @"Fullscreen";
  }

  v7 = [NSString stringWithFormat:@"Swatch-FireWater-%@-%@", v6, v5];
  v8 = [NTKFireWaterFaceBundle imageWithName:v7];

  return v8;
}

@end