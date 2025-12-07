@interface NTKLeghornWaypoint
+ (CGRect)adjustDrawRect:(CGRect)rect forSFSymbol:(id)symbol;
+ (id)iconImageForSFSymbol:(id)symbol;
+ (id)testAppleParkLocation;
+ (id)testAppleParkWaypoints;
- (CGRect)adjustDrawRect:(CGRect)rect;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category timestampOfCreation:(id)self0;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location timestampOfCreation:(id)creation;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category;
- (UIImage)glyphImage;
@end

@implementation NTKLeghornWaypoint

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category timestampOfCreation:(id)self0
{
  textCopy = text;
  colorCopy = color;
  glyphColorCopy = glyphColor;
  fillColorCopy = fillColor;
  nameCopy = name;
  locationCopy = location;
  creationCopy = creation;
  v27.receiver = self;
  v27.super_class = NTKLeghornWaypoint;
  v19 = [(NTKLeghornWaypoint *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_labelText, text);
    objc_storeStrong(&v20->_labelColor, color);
    objc_storeStrong(&v20->_glyphColor, glyphColor);
    objc_storeStrong(&v20->_fillColor, fillColor);
    objc_storeStrong(&v20->_sfSymbolName, name);
    objc_storeStrong(&v20->_waypointLocation, location);
    objc_storeStrong(&v20->_timestampOfCreation, creation);
    v20->_waypointCategory = category;
  }

  return v20;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category
{
  v15 = MEMORY[0x277CBEAA8];
  locationCopy = location;
  nameCopy = name;
  fillColorCopy = fillColor;
  glyphColorCopy = glyphColor;
  colorCopy = color;
  textCopy = text;
  v24 = objc_msgSend_now(v15, v22, v23);
  v26 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v25, textCopy, colorCopy, glyphColorCopy, fillColorCopy, nameCopy, locationCopy, category, v24);

  return v26;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category
{
  v12 = MEMORY[0x277D75348];
  locationCopy = location;
  nameCopy = name;
  colorCopy = color;
  textCopy = text;
  v19 = objc_msgSend_blackColor(v12, v17, v18);
  v22 = objc_msgSend_now(MEMORY[0x277CBEAA8], v20, v21);
  v24 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v23, textCopy, colorCopy, v19, colorCopy, nameCopy, locationCopy, category, v22);

  return v24;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location timestampOfCreation:(id)creation
{
  v12 = MEMORY[0x277D75348];
  creationCopy = creation;
  locationCopy = location;
  nameCopy = name;
  colorCopy = color;
  textCopy = text;
  v20 = objc_msgSend_blackColor(v12, v18, v19);
  v22 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v21, textCopy, colorCopy, v20, colorCopy, nameCopy, locationCopy, 0, creationCopy);

  return v22;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location
{
  v10 = MEMORY[0x277CBEAA8];
  locationCopy = location;
  nameCopy = name;
  colorCopy = color;
  textCopy = text;
  v17 = objc_msgSend_dateWithTimeIntervalSinceNow_(v10, v15, v16, -259200.0);
  v19 = objc_msgSend_initWithLabelText_labelColor_sfSymbolName_location_timestampOfCreation_(self, v18, textCopy, colorCopy, nameCopy, locationCopy, v17);

  return v19;
}

+ (id)iconImageForSFSymbol:(id)symbol
{
  v4 = MEMORY[0x277D75348];
  symbolCopy = symbol;
  v8 = objc_msgSend_cyanColor(v4, v6, v7);
  v10 = objc_msgSend_iconImageForSFSymbol_color_(self, v9, symbolCopy, v8);

  return v10;
}

- (UIImage)glyphImage
{
  v3 = objc_msgSend_sfSymbolName(self, a2, v2);
  v4 = objc_opt_class();
  v6 = objc_msgSend_iconImageForSFSymbol_(v4, v5, v3);

  return v6;
}

+ (CGRect)adjustDrawRect:(CGRect)rect forSFSymbol:(id)symbol
{
  MEMORY[0x2821F9670](MEMORY[0x277D755B8], sel_ntk_adjustDrawRect_forSFSymbolName_, symbol);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)adjustDrawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_msgSend_sfSymbolName(self, a2, v3);
  v9 = objc_opt_class();
  objc_msgSend_adjustDrawRect_forSFSymbol_(v9, v10, v8, x, y, width, height);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (id)testAppleParkWaypoints
{
  v2 = objc_opt_new();
  v3 = &unk_27E1DE7D0;
  v4 = 6;
  do
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_23BEDD69C(&v36, v3);
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    v8 = objc_msgSend_initWithLatitude_longitude_(v5, v6, v7, v36);
    v9 = v38;
    if (objc_msgSend_isEqualToString_(v9, v10, @"green"))
    {
      v13 = objc_msgSend_greenColor(MEMORY[0x277D75348], v11, v12);
      goto LABEL_12;
    }

    if (objc_msgSend_isEqualToString_(v9, v11, @"red"))
    {
      v13 = objc_msgSend_redColor(MEMORY[0x277D75348], v16, v17);
      goto LABEL_12;
    }

    if (objc_msgSend_isEqualToString_(v9, v16, @"yellow"))
    {
      v13 = objc_msgSend_yellowColor(MEMORY[0x277D75348], v18, v19);
      goto LABEL_12;
    }

    isEqualToString = objc_msgSend_isEqualToString_(v9, v18, @"blue");
    v21 = 1.0;
    v22 = 0.466666667;
    v23 = 0.564705882;
    if (isEqualToString)
    {
      goto LABEL_9;
    }

    if (objc_msgSend_isEqualToString_(v9, v14, @"cyan", 0.466666667, 0.564705882, 1.0))
    {
      v13 = objc_msgSend_cyanColor(MEMORY[0x277D75348], v24, v25);
LABEL_12:
      v26 = v13;
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v33 = objc_msgSend_isEqualToString_(v9, v24, @"highlight");
    v22 = 0.729411765;
    v23 = 0.31372549;
    v21 = 0.552941176;
    if (v33)
    {
LABEL_9:
      v13 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v14, v15, v22, v23, v21, 1.0);
      goto LABEL_12;
    }

LABEL_13:
    v26 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v14, v15, 1.0, 0.623529412, 0.866666667, 1.0);
LABEL_14:
    v27 = [NTKLeghornWaypoint alloc];
    v29 = objc_msgSend_initWithLabelText_labelColor_sfSymbolName_location_(v27, v28, v37, v26, *(&v37 + 1), v8);
    objc_msgSend_addObject_(v2, v30, v29);

    v3 += 40;
    --v4;
  }

  while (v4);
  v34 = objc_msgSend_copy(v2, v31, v32);

  return v34;
}

+ (id)testAppleParkLocation
{
  v2 = CLLocationCoordinate2DMake(37.33416, -122.011406);
  v5 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v3, v4, -180.0);
  v6 = objc_alloc(MEMORY[0x277CE41F8]);
  v8 = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_(v6, v7, v5, v2.latitude, v2.longitude, 50.0, 50.0, 10.0);

  return v8;
}

@end