@interface _VehiclePOI
- (_VehiclePOI)initWithRTVehicleEvent:(id)event;
- (void)showInfo;
@end

@implementation _VehiclePOI

- (_VehiclePOI)initWithRTVehicleEvent:(id)event
{
  eventCopy = event;
  v5 = NTKFoghornFaceLocalizedString(@"LEGHORN_MAPS_PARKED_CAR");
  v8 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v6, v7, 0.180392157, 0.419607843, 0.97254902, 1.0);
  v11 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v9, v10);
  v14 = objc_msgSend_location(eventCopy, v12, v13);
  objc_msgSend_latitude(v14, v15, v16);
  v18 = v17;

  v21 = objc_msgSend_location(eventCopy, v19, v20);

  objc_msgSend_longitude(v21, v22, v23);
  v25 = v24;

  v26 = objc_alloc(MEMORY[0x277CE41F8]);
  v29 = objc_msgSend_initWithLatitude_longitude_(v26, v27, v28, v18, v25);
  location = self->_location;
  self->_location = v29;
  v31 = v29;

  v33 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_(self, v32, v5, v8, v11, v8, @"car.fill", v31, 32);
  return v33;
}

- (void)showInfo
{
  v3 = objc_alloc(MEMORY[0x277CD4E80]);
  v10 = objc_msgSend_initWithCLLocation_(v3, v4, self->_location);
  v7 = objc_msgSend_labelText(self, v5, v6);
  objc_msgSend_setName_(v10, v8, v7);

  objc_msgSend_openInMapsWithLaunchOptions_(v10, v9, 0);
}

@end