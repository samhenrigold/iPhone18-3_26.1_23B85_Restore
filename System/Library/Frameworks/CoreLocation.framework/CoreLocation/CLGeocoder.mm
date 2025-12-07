@interface CLGeocoder
+ (void)hydrateGeoMapItemLocallyFromHandle:(id)handle completionHandler:(id)handler;
- (CLGeocoder)init;
- (void)_notifyCancel;
- (void)_notifyError:(id)error;
- (void)_notifyNoResult;
- (void)_notifyPartialResult:(id)result;
- (void)_notifyResult:(id)result error:(id)error;
- (void)_ticket:(id)_ticket didReturnError:(id)error partialResultForLocation:(id)location;
- (void)_ticket:(id)_ticket didReturnGeoMapItems:(id)items;
- (void)cancelGeocode;
- (void)dealloc;
- (void)geocodeAddressDictionary:(id)dictionary preferredLocale:(id)locale completionHandler:(id)handler;
- (void)geocodeAddressString:(NSString *)addressString inRegion:(CLRegion *)region preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler;
- (void)geocodeAddressString:(id)string inRegionCenteredAt:(CLLocationCoordinate2D)at inRegionRadius:(double)radius preferredLocale:(id)locale completionHandler:(id)handler;
- (void)geocodePostalAddress:(CNPostalAddress *)postalAddress preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler;
- (void)reverseGeocodeLocation:(id)location preferredLocale:(id)locale heading:(double)heading localResultsOnly:(BOOL)only completionHandler:(id)handler;
@end

@implementation CLGeocoder

- (CLGeocoder)init
{
  v17 = *MEMORY[0x1E69E9840];
  if (!objc_opt_class())
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "[GEOMapService class]";
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Do not use CLGeocoder when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "[GEOMapService class]";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Do not use CLGeocoder when GeoServices is missing", "{msg%{public}.0s:Do not use CLGeocoder when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "[GEOMapService class]";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Do not use CLGeocoder when GeoServices is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLGeocoder.m", 145, "[CLGeocoder init]");
  }

  v8.receiver = self;
  v8.super_class = CLGeocoder;
  v3 = [(CLGeocoder *)&v8 init];
  if (v3)
  {
    v3->_internal = objc_alloc_init(CLGeocoderInternal);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLGeocoder;
  [(CLGeocoder *)&v3 dealloc];
}

- (void)reverseGeocodeLocation:(id)location preferredLocale:(id)locale heading:(double)heading localResultsOnly:(BOOL)only completionHandler:(id)handler
{
  queue = self->_internal->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B996888;
  v8[3] = &unk_1E753E1F8;
  v8[4] = self;
  v8[5] = location;
  v8[6] = locale;
  v8[7] = handler;
  *&v8[8] = heading;
  onlyCopy = only;
  dispatch_async(queue, v8);
}

- (void)geocodeAddressDictionary:(id)dictionary preferredLocale:(id)locale completionHandler:(id)handler
{
  queue = self->_internal->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B996DAC;
  v6[3] = &unk_1E753E248;
  v6[4] = self;
  v6[5] = dictionary;
  v6[6] = locale;
  v6[7] = handler;
  dispatch_async(queue, v6);
}

- (void)geocodeAddressString:(id)string inRegionCenteredAt:(CLLocationCoordinate2D)at inRegionRadius:(double)radius preferredLocale:(id)locale completionHandler:(id)handler
{
  longitude = at.longitude;
  latitude = at.latitude;
  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, string, locale);
  v17 = objc_msgSend_UUIDString(v13, v14, v15, v16);
  v20 = objc_msgSend_stringWithFormat_(v12, v18, @"com.apple.CoreLocation.geocodeAddressStringRegion-%@", v19, v17);
  v21 = [CLCircularRegion alloc];
  v24 = objc_msgSend_initWithCenter_radius_identifier_(v21, v22, v20, v23, latitude, longitude, radius);

  MEMORY[0x1EEE66B58](self, sel_geocodeAddressString_inRegion_preferredLocale_completionHandler_, string, v24);
}

- (void)geocodeAddressString:(NSString *)addressString inRegion:(CLRegion *)region preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B99715C;
  block[3] = &unk_1E753E270;
  block[4] = region;
  block[5] = self;
  block[7] = locale;
  block[8] = completionHandler;
  block[6] = addressString;
  dispatch_async(queue, block);
}

+ (void)hydrateGeoMapItemLocallyFromHandle:(id)handle completionHandler:(id)handler
{
  if (handler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_19B997568;
    v4[3] = &unk_1E753D688;
    v4[4] = handle;
    v4[5] = handler;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (void)cancelGeocode
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B997758;
  block[3] = &unk_1E753CC90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_ticket:(id)_ticket didReturnGeoMapItems:(id)items
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B99784C;
  block[3] = &unk_1E753D098;
  block[4] = self;
  block[5] = _ticket;
  block[6] = items;
  dispatch_async(queue, block);
}

- (void)_ticket:(id)_ticket didReturnError:(id)error partialResultForLocation:(id)location
{
  queue = self->_internal->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B997A2C;
  block[3] = &unk_1E753D098;
  block[4] = self;
  block[5] = _ticket;
  block[6] = error;
  dispatch_async(queue, block);
}

- (void)_notifyResult:(id)result error:(id)error
{
  internal = self->_internal;
  geocodeCompletionHandler = internal->_geocodeCompletionHandler;
  internal->_geocodeCompletionHandler = 0;
  if (geocodeCompletionHandler)
  {
    v8 = objc_msgSend_responseSilo(self->_internal, a2, result, error);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B997D24;
    v11[3] = &unk_1E753CD30;
    v11[5] = error;
    v11[6] = geocodeCompletionHandler;
    v11[4] = result;
    objc_msgSend_async_(v8, v9, v11, v10);
  }
}

- (void)_notifyPartialResult:(id)result
{
  v5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"kCLErrorDomain", 9, 0);

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_, result, v5);
}

- (void)_notifyNoResult
{
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"kCLErrorDomain", 8, 0);

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_, 0, v3);
}

- (void)_notifyCancel
{
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"kCLErrorDomain", 10, 0);

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_, 0, v3);
}

- (void)_notifyError:(id)error
{
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"kCLErrorDomain", 2, 0);

  MEMORY[0x1EEE66B58](self, sel__notifyResult_error_, 0, v4);
}

- (void)geocodePostalAddress:(CNPostalAddress *)postalAddress preferredLocale:(NSLocale *)locale completionHandler:(CLGeocodeCompletionHandler)completionHandler
{
  v84 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = objc_msgSend_street(postalAddress, v9, v10, v11);
  if (objc_msgSend_length(v12, v13, v14, v15))
  {
    v19 = objc_msgSend_street(postalAddress, v16, v17, v18);
    objc_msgSend_setObject_forKey_(v84, v20, v19, @"Thoroughfare");
  }

  v21 = objc_msgSend_subLocality(postalAddress, v16, v17, v18);
  if (objc_msgSend_length(v21, v22, v23, v24))
  {
    v28 = objc_msgSend_subLocality(postalAddress, v25, v26, v27);
    objc_msgSend_setObject_forKey_(v84, v29, v28, @"SubLocality");
  }

  v30 = objc_msgSend_city(postalAddress, v25, v26, v27);
  if (objc_msgSend_length(v30, v31, v32, v33))
  {
    v37 = objc_msgSend_city(postalAddress, v34, v35, v36);
    objc_msgSend_setObject_forKey_(v84, v38, v37, @"City");
  }

  v39 = objc_msgSend_subAdministrativeArea(postalAddress, v34, v35, v36);
  if (objc_msgSend_length(v39, v40, v41, v42))
  {
    v46 = objc_msgSend_subAdministrativeArea(postalAddress, v43, v44, v45);
    objc_msgSend_setObject_forKey_(v84, v47, v46, @"SubAdministrativeArea");
  }

  v48 = objc_msgSend_state(postalAddress, v43, v44, v45);
  if (objc_msgSend_length(v48, v49, v50, v51))
  {
    v55 = objc_msgSend_state(postalAddress, v52, v53, v54);
    objc_msgSend_setObject_forKey_(v84, v56, v55, @"State");
  }

  v57 = objc_msgSend_postalCode(postalAddress, v52, v53, v54);
  if (objc_msgSend_length(v57, v58, v59, v60))
  {
    v64 = objc_msgSend_postalCode(postalAddress, v61, v62, v63);
    objc_msgSend_setObject_forKey_(v84, v65, v64, @"ZIP");
  }

  v66 = objc_msgSend_country(postalAddress, v61, v62, v63);
  if (objc_msgSend_length(v66, v67, v68, v69))
  {
    v73 = objc_msgSend_country(postalAddress, v70, v71, v72);
    objc_msgSend_setObject_forKey_(v84, v74, v73, @"Country");
  }

  v75 = objc_msgSend_ISOCountryCode(postalAddress, v70, v71, v72);
  if (objc_msgSend_length(v75, v76, v77, v78))
  {
    v82 = objc_msgSend_ISOCountryCode(postalAddress, v79, v80, v81);
    objc_msgSend_setObject_forKey_(v84, v83, v82, @"CountryCode");
  }

  objc_msgSend_geocodeAddressDictionary_preferredLocale_completionHandler_(self, v79, v84, locale, completionHandler);
}

@end