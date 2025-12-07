@interface CLPlacemark
+ (CLPlacemark)placemarkWithGEOMapItem:(id)item;
+ (id)sourceToString:(unint64_t)string;
- (CLPlacemark)initWithCoder:(id)coder;
- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest;
- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest mapItemSource:(unint64_t)source geoMapItemHandle:(id)handle category:(id)category meCardAddress:(id)self0;
- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest mapItemSource:(unint64_t)source geoMapItemHandle:(id)handle category:(id)category meCardAddress:(id)self0 muid:(unint64_t)self1;
- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest mapItemSource:(unint64_t)source geoMapItemHandle:(id)handle meCardAddress:(id)address;
- (CLPlacemark)initWithPlacemark:(CLPlacemark *)placemark;
- (CNPostalAddress)postalAddress;
- (id)_initWithGeoMapItem:(id)item;
- (id)_initWithRTMapItem:(id)item location:(id)location;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fetchFormattedAddress:(id)address queue:(id)queue;
@end

@implementation CLPlacemark

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
  }

  v4.receiver = self;
  v4.super_class = CLPlacemark;
  [(CLPlacemark *)&v4 dealloc];
}

- (id)_initWithRTMapItem:(id)item location:(id)location
{
  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, item, location);
  v11 = objc_msgSend_name(item, v8, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v12, v11, @"Name");
  v16 = objc_msgSend_address(item, v13, v14, v15);
  v20 = objc_msgSend_thoroughfare(v16, v17, v18, v19);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v21, v20, @"Thoroughfare");
  v25 = objc_msgSend_address(item, v22, v23, v24);
  v29 = objc_msgSend_subThoroughfare(v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v30, v29, @"SubThoroughfare");
  v34 = objc_msgSend_address(item, v31, v32, v33);
  v38 = objc_msgSend_locality(v34, v35, v36, v37);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v39, v38, @"City");
  v43 = objc_msgSend_address(item, v40, v41, v42);
  v47 = objc_msgSend_subLocality(v43, v44, v45, v46);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v48, v47, @"SubLocality");
  v52 = objc_msgSend_address(item, v49, v50, v51);
  v56 = objc_msgSend_administrativeArea(v52, v53, v54, v55);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v57, v56, @"State");
  v61 = objc_msgSend_address(item, v58, v59, v60);
  v65 = objc_msgSend_subAdministrativeArea(v61, v62, v63, v64);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v66, v65, @"SubAdministrativeArea");
  v70 = objc_msgSend_address(item, v67, v68, v69);
  v74 = objc_msgSend_postalCode(v70, v71, v72, v73);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v75, v74, @"ZIP");
  v79 = objc_msgSend_address(item, v76, v77, v78);
  v83 = objc_msgSend_countryCode(v79, v80, v81, v82);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v84, v83, @"CountryCode");
  v88 = objc_msgSend_address(item, v85, v86, v87);
  v92 = objc_msgSend_country(v88, v89, v90, v91);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v93, v92, @"Country");
  v97 = objc_msgSend_address(item, v94, v95, v96);
  v101 = objc_msgSend_inlandWater(v97, v98, v99, v100);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v102, v101, @"InlandWater");
  v106 = objc_msgSend_address(item, v103, v104, v105);
  v110 = objc_msgSend_ocean(v106, v107, v108, v109);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v111, v110, @"Ocean");
  v115 = objc_msgSend_address(item, v112, v113, v114);
  v119 = objc_msgSend_areasOfInterest(v115, v116, v117, v118);
  v123 = objc_msgSend_source(item, v120, v121, v122);
  v127 = objc_msgSend_geoMapItemHandle(item, v124, v125, v126);
  v131 = objc_msgSend_category(item, v128, v129, v130);
  v135 = objc_msgSend_muid(item, v132, v133, v134);
  return objc_msgSend_initWithLocation_addressDictionary_region_areasOfInterest_mapItemSource_geoMapItemHandle_category_meCardAddress_muid_(self, v136, location, v7, 0, v119, v123, v127, v131, &stru_1F0E6F140, v135);
}

- (id)_initWithGeoMapItem:(id)item
{
  v89.receiver = self;
  v89.super_class = CLPlacemark;
  v4 = [(CLPlacemark *)&v89 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CLPlacemarkInternal);
    v7 = objc_msgSend_mapItemStorageForGEOMapItem_(MEMORY[0x1E69A21E0], v5, item, v6);
    v4->_internal->geoMapItemStorage = objc_msgSend_copy(v7, v8, v9, v10);
    v14 = objc_msgSend_referenceFrame(item, v11, v12, v13);
    if (v14 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v14 == 1;
    }

    v19 = objc_msgSend_geoFenceMapRegion(v4->_internal->geoMapItemStorage, v15, v16, v17);
    if (objc_msgSend_hasNorthLat(v19, v20, v21, v22) && objc_msgSend_hasSouthLat(v19, v23, v24, v25) && objc_msgSend_hasEastLng(v19, v23, v24, v25) && objc_msgSend_hasWestLng(v19, v23, v24, v25))
    {
      objc_msgSend_northLat(v19, v23, v24, v25);
      v27 = v26;
      objc_msgSend_southLat(v19, v28, v29, v30);
      v32 = v31;
      objc_msgSend_westLng(v19, v33, v34, v35);
      v37 = v36;
      objc_msgSend_eastLng(v19, v38, v39, v40);
      v45 = (v27 + v32) * 0.5;
      if (v37 <= v44)
      {
        v47 = (v37 + v44) * 0.5;
      }

      else
      {
        v46 = v37 + (v44 + 360.0 - v37) * 0.5;
        if (v46 <= 180.0)
        {
          v47 = v46;
        }

        else
        {
          v47 = v46 + -360.0;
        }
      }

      objc_msgSend_southLat(v19, v41, v42, v43);
      v49 = v48;
      objc_msgSend_westLng(v19, v50, v51, v52);
      v54 = sub_19B87E164(v45, v47, v49, v53);
      v55 = [CLCircularRegion alloc];
      v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v56, @"<%+.8f,%+.8f> radius %.2f", v57, *&v45, *&v47, *&v54);
      v4->_internal->region = objc_msgSend_initWithCenter_radius_identifier_(v55, v59, v58, v60, v45, v47, v54);
      objc_msgSend_setReferenceFrame_(v4->_internal->region, v61, v18, v62);
    }

    objc_msgSend_coordinate(v4->_internal->geoMapItemStorage, v23, v24, v25);
    v64 = v63;
    v66 = v65;
    v67 = objc_alloc(MEMORY[0x1E6985C40]);
    v71 = objc_msgSend_date(MEMORY[0x1E695DF00], v68, v69, v70);
    v4->_internal->location = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_referenceFrame_(v67, v72, v71, v18, v64, v66, 0.0, 100.0, -1.0);
    v4->_internal->addressDictionary = objc_msgSend_addressDictionary(v4->_internal->geoMapItemStorage, v73, v74, v75);
    v4->_internal->areasOfInterest = objc_msgSend_areasOfInterest(v4->_internal->geoMapItemStorage, v76, v77, v78);
    v4->_internal->timeZone = objc_msgSend_timezone(v4->_internal->geoMapItemStorage, v79, v80, v81);
    v4->_internal->category = objc_msgSend__poiCategory(v4->_internal->geoMapItemStorage, v82, v83, v84);
    v4->_internal->_muid = objc_msgSend__muid(v4->_internal->geoMapItemStorage, v85, v86, v87);
  }

  return v4;
}

- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest
{
  v12.receiver = self;
  v12.super_class = CLPlacemark;
  result = [(CLPlacemark *)&v12 init];
  if (result)
  {
    return objc_msgSend_initWithLocation_addressDictionary_region_areasOfInterest_mapItemSource_geoMapItemHandle_meCardAddress_(result, v11, location, dictionary, region, interest, 0, 0, &stru_1F0E6F140);
  }

  return result;
}

- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest mapItemSource:(unint64_t)source geoMapItemHandle:(id)handle meCardAddress:(id)address
{
  v17.receiver = self;
  v17.super_class = CLPlacemark;
  result = [(CLPlacemark *)&v17 init];
  if (result)
  {
    return objc_msgSend_initWithLocation_addressDictionary_region_areasOfInterest_mapItemSource_geoMapItemHandle_category_meCardAddress_(result, v16, location, dictionary, region, interest, source, handle, 0, address);
  }

  return result;
}

- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest mapItemSource:(unint64_t)source geoMapItemHandle:(id)handle category:(id)category meCardAddress:(id)self0
{
  v18.receiver = self;
  v18.super_class = CLPlacemark;
  result = [(CLPlacemark *)&v18 init];
  if (result)
  {
    return objc_msgSend_initWithLocation_addressDictionary_region_areasOfInterest_mapItemSource_geoMapItemHandle_category_meCardAddress_muid_(result, v17, location, dictionary, region, interest, source, handle, category, address, 0);
  }

  return result;
}

- (CLPlacemark)initWithLocation:(id)location addressDictionary:(id)dictionary region:(id)region areasOfInterest:(id)interest mapItemSource:(unint64_t)source geoMapItemHandle:(id)handle category:(id)category meCardAddress:(id)self0 muid:(unint64_t)self1
{
  v40.receiver = self;
  v40.super_class = CLPlacemark;
  v17 = [(CLPlacemark *)&v40 init];
  if (v17)
  {
    v17->_internal = objc_alloc_init(CLPlacemarkInternal);
    v17->_internal->location = objc_msgSend_copy(location, v18, v19, v20);
    v17->_internal->addressDictionary = objc_msgSend_copy(dictionary, v21, v22, v23);
    v17->_internal->region = objc_msgSend_copy(region, v24, v25, v26);
    v17->_internal->areasOfInterest = objc_msgSend_copy(interest, v27, v28, v29);
    v17->_internal->_cLMapItemSource = source;
    v17->_internal->_geoMapItemHandle = objc_msgSend_copy(handle, v30, v31, v32);
    v17->_internal->category = objc_msgSend_copy(category, v33, v34, v35);
    v17->_internal->mecardAddress = objc_msgSend_copy(address, v36, v37, v38);
    v17->_internal->_muid = muid;
  }

  return v17;
}

- (CLPlacemark)initWithPlacemark:(CLPlacemark *)placemark
{
  v47.receiver = self;
  v47.super_class = CLPlacemark;
  v4 = [(CLPlacemark *)&v47 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CLPlacemarkInternal);
    v8 = objc_msgSend_location(placemark, v5, v6, v7);
    v4->_internal->location = objc_msgSend_copy(v8, v9, v10, v11);
    v15 = objc_msgSend_addressDictionary(placemark, v12, v13, v14);
    v4->_internal->addressDictionary = objc_msgSend_copy(v15, v16, v17, v18);
    v22 = objc_msgSend_region(placemark, v19, v20, v21);
    v4->_internal->region = objc_msgSend_copy(v22, v23, v24, v25);
    v29 = objc_msgSend_areasOfInterest(placemark, v26, v27, v28);
    v4->_internal->areasOfInterest = objc_msgSend_copy(v29, v30, v31, v32);
    if (placemark)
    {
      v4->_internal->geoMapItemStorage = objc_msgSend_copy(placemark->_internal->geoMapItemStorage, v33, v34, v35);
      v4->_internal->_geoMapItemHandle = objc_msgSend_copy(placemark->_internal->_geoMapItemHandle, v36, v37, v38);
      v4->_internal->category = objc_msgSend_copy(placemark->_internal->category, v39, v40, v41);
      v4->_internal->mecardAddress = objc_msgSend_copy(placemark->_internal->mecardAddress, v42, v43, v44);
      v4->_internal->_cLMapItemSource = placemark->_internal->_cLMapItemSource;
      muid = placemark->_internal->_muid;
    }

    else
    {
      muid = 0;
      v4->_internal->geoMapItemStorage = 0;
      v4->_internal->_geoMapItemHandle = 0;
      v4->_internal->category = 0;
      v4->_internal->mecardAddress = 0;
      v4->_internal->_cLMapItemSource = 0;
    }

    v4->_internal->_muid = muid;
  }

  return v4;
}

- (CLPlacemark)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v4, v8, v5, v9, v6, v7, 0);
  v11 = objc_opt_class();
  v55 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLPlacemarkCodingKeyLocation");
  v54 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v13, v10, @"kCLPlacemarkCodingKeyAddress");
  v14 = objc_opt_class();
  v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"kCLPlacemarkCodingKeyRegion");
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v22 = objc_msgSend_setWithObjects_(v17, v20, v18, v21, v19, 0);
  v24 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v23, v22, @"kCLPlacemarkCodingKeyAreasOfInterest");
  v25 = objc_opt_class();
  v27 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v26, v25, @"kCLPlacemarkCodingKeyMapItemSource");
  v31 = objc_msgSend_unsignedIntegerValue(v27, v28, v29, v30);
  v32 = objc_opt_class();
  v34 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v33, v32, @"kCLPlacemarkCodingKeyGEOMapItem");
  v35 = objc_opt_class();
  v37 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v36, v35, @"kCLPlacemarkCodingKeyGEOMapItemHandle");
  v38 = objc_opt_class();
  v40 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v39, v38, @"kCLPlacemarkCodingKeyCategory");
  v41 = objc_opt_class();
  v43 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v42, v41, @"kCLPlacemarkCodingKeyMeCardAddress");
  v44 = objc_opt_class();
  v46 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v45, v44, @"kCLPlacemarkCodingKeyMuid");
  v50 = objc_msgSend_unsignedLongLongValue(v46, v47, v48, v49);
  if (!v34)
  {
    return objc_msgSend_initWithLocation_addressDictionary_region_areasOfInterest_mapItemSource_geoMapItemHandle_category_meCardAddress_muid_(self, v51, v55, v54, v16, v24, v31, v37, v40, v43, v50);
  }

  return objc_msgSend__initWithGeoMapItem_(self, v51, v34, v52);
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  objc_msgSend_encodeObject_forKey_(coder, a2, internal[1], @"kCLPlacemarkCodingKeyLocation");
  objc_msgSend_encodeObject_forKey_(coder, v5, internal[2], @"kCLPlacemarkCodingKeyAddress");
  objc_msgSend_encodeObject_forKey_(coder, v6, internal[3], @"kCLPlacemarkCodingKeyRegion");
  objc_msgSend_encodeObject_forKey_(coder, v7, internal[4], @"kCLPlacemarkCodingKeyAreasOfInterest");
  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, internal[7], v9);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"kCLPlacemarkCodingKeyMapItemSource");
  objc_msgSend_encodeObject_forKey_(coder, v12, internal[5], @"kCLPlacemarkCodingKeyGEOMapItem");
  objc_msgSend_encodeObject_forKey_(coder, v13, internal[8], @"kCLPlacemarkCodingKeyGEOMapItemHandle");
  objc_msgSend_encodeObject_forKey_(coder, v14, internal[9], @"kCLPlacemarkCodingKeyCategory");
  objc_msgSend_encodeObject_forKey_(coder, v15, internal[10], @"kCLPlacemarkCodingKeyMeCardAddress");
  v19 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v16, internal[11], v17);

  objc_msgSend_encodeObject_forKey_(coder, v18, v19, @"kCLPlacemarkCodingKeyMuid");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);

  return MEMORY[0x1EEE66B58](v8, sel_initWithPlacemark_, self, v9);
}

- (void)fetchFormattedAddress:(id)address queue:(id)queue
{
  if (address)
  {
    if (queue)
    {
      queueCopy = queue;
    }

    else
    {
      queueCopy = MEMORY[0x1E69E96A0];
    }

    geoMapItemHandle = self->_internal->_geoMapItemHandle;
    if (geoMapItemHandle)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_19B9C67A0;
      v8[3] = &unk_1E753E830;
      v8[4] = queueCopy;
      v8[5] = address;
      objc_msgSend_hydrateGeoMapItemLocallyFromHandle_completionHandler_(CLGeocoder, a2, geoMapItemHandle, v8);
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B9C6890;
      v7[3] = &unk_1E753CD08;
      v7[4] = self;
      v7[5] = address;
      dispatch_async(queueCopy, v7);
    }
  }
}

+ (id)sourceToString:(unint64_t)string
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, string, v3);
  v9 = v5;
  if (!string)
  {
    objc_msgSend_addObject_(v5, v6, @"Unknown", v8);
    goto LABEL_44;
  }

  if (string)
  {
    objc_msgSend_addObject_(v5, v6, @"ReverseGeocode", v8);
    if ((string & 2) == 0)
    {
LABEL_4:
      if ((string & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_26;
    }
  }

  else if ((string & 2) == 0)
  {
    goto LABEL_4;
  }

  objc_msgSend_addObject_(v9, v6, @"ForwardGeocode", v8);
  if ((string & 4) == 0)
  {
LABEL_5:
    if ((string & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  objc_msgSend_addObject_(v9, v6, @"Contacts", v8);
  if ((string & 8) == 0)
  {
LABEL_6:
    if ((string & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  objc_msgSend_addObject_(v9, v6, @"User", v8);
  if ((string & 0x10) == 0)
  {
LABEL_7:
    if ((string & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  objc_msgSend_addObject_(v9, v6, @"MapsSupportFavorite", v8);
  if ((string & 0x40) == 0)
  {
LABEL_8:
    if ((string & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  objc_msgSend_addObject_(v9, v6, @"MapsSupportHistoryEntryRoute", v8);
  if ((string & 0x80) == 0)
  {
LABEL_9:
    if ((string & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  objc_msgSend_addObject_(v9, v6, @"MapsSupportHistoryEntryPlaceDisplay", v8);
  if ((string & 0x100) == 0)
  {
LABEL_10:
    if ((string & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  objc_msgSend_addObject_(v9, v6, @"EventKit", v8);
  if ((string & 0x200) == 0)
  {
LABEL_11:
    if ((string & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  objc_msgSend_addObject_(v9, v6, @"LocalSearch", v8);
  if ((string & 0x400) == 0)
  {
LABEL_12:
    if ((string & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  objc_msgSend_addObject_(v9, v6, @"MapItemHandle", v8);
  if ((string & 0x800) == 0)
  {
LABEL_13:
    if ((string & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  objc_msgSend_addObject_(v9, v6, @"ProactiveExperts", v8);
  if ((string & 0x1000) == 0)
  {
LABEL_14:
    if ((string & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  objc_msgSend_addObject_(v9, v6, @"Portrait", v8);
  if ((string & 0x2000) == 0)
  {
LABEL_15:
    if ((string & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  objc_msgSend_addObject_(v9, v6, @"LearnedPlace", v8);
  if ((string & 0x4000) == 0)
  {
LABEL_16:
    if ((string & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  objc_msgSend_addObject_(v9, v6, @"BluePOI", v8);
  if ((string & 0x8000) == 0)
  {
LABEL_17:
    if ((string & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  objc_msgSend_addObject_(v9, v6, @"MapItemURL", v8);
  if ((string & 0x10000) == 0)
  {
LABEL_18:
    if ((string & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  objc_msgSend_addObject_(v9, v6, @"CurrentPOI", v8);
  if ((string & 0x20000) == 0)
  {
LABEL_19:
    if ((string & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  objc_msgSend_addObject_(v9, v6, @"CurrentLocation", v8);
  if ((string & 0x40000) == 0)
  {
LABEL_20:
    if ((string & 0x80000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    objc_msgSend_addObject_(v9, v6, @"POIHistory", v8);
    if ((string & 0x100000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_41:
  objc_msgSend_addObject_(v9, v6, @"ReverseGeocodeRelatedPlaces", v8);
  if ((string & 0x80000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((string & 0x100000) != 0)
  {
LABEL_43:
    objc_msgSend_addObject_(v9, v6, @"LocalBluePOI", v8);
  }

LABEL_44:
  if (!objc_msgSend_count(v9, v6, v7, v8))
  {
    return &stru_1F0E6F140;
  }

  return objc_msgSend_componentsJoinedByString_(v9, v10, @", ", v11);
}

- (id)description
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, &stru_1F0E6F140, v2);
  v8 = objc_msgSend_name(self, v5, v6, v7);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v8, v9, v10, v11))
  {
    objc_msgSend_appendString_(v4, v9, v8, v11);
  }

  if (self->_internal->addressDictionary)
  {
    v12 = objc_msgSend_formattedAddressLines(self, v9, v10, v11);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_count(v12, v9, v10, v11))
      {
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = sub_19B9C6E90;
        v63[3] = &unk_1E753D110;
        v63[4] = v4;
        objc_msgSend_enumerateObjectsUsingBlock_(v12, v9, v63, v11);
      }
    }
  }

  location = self->_internal->location;
  if (location)
  {
    objc_msgSend_horizontalAccuracy(location, v9, v10, v11);
    if (v14 >= 0.0)
    {
      if (objc_msgSend_length(v4, v9, v10, v11))
      {
        objc_msgSend_appendString_(v4, v15, @" @ ", v17);
      }

      v18 = MEMORY[0x1E696AEC0];
      objc_msgSend_coordinate(self->_internal->location, v15, v16, v17);
      v20 = v19;
      objc_msgSend_coordinate(self->_internal->location, v21, v22, v23);
      v25 = v24;
      objc_msgSend_horizontalAccuracy(self->_internal->location, v26, v27, v28);
      v32 = objc_msgSend_stringWithFormat_(v18, v29, @"<%+.8f,%+.8f> +/- %.2fm", v30, v20, v25, v31);
      objc_msgSend_appendString_(v4, v33, v32, v34);
    }
  }

  internal = self->_internal;
  if (internal->region)
  {
    if (objc_msgSend_length(v4, v9, v10, v11))
    {
      objc_msgSend_appendString_(v4, v36, @", region ", v38);
    }

    v39 = objc_msgSend_description(self->_internal->region, v36, v37, v38);
    objc_msgSend_appendString_(v4, v40, v39, v41);
    internal = self->_internal;
  }

  if (internal->_cLMapItemSource)
  {
    if (objc_msgSend_length(v4, v9, v10, v11))
    {
      objc_msgSend_appendString_(v4, v42, @", source ", v43);
    }

    v44 = MEMORY[0x1E696AEC0];
    v45 = objc_msgSend_sourceToString_(CLPlacemark, v42, self->_internal->_cLMapItemSource, v43);
    v48 = objc_msgSend_stringWithFormat_(v44, v46, @"%@", v47, v45);
    objc_msgSend_appendString_(v4, v49, v48, v50);
    internal = self->_internal;
  }

  if (internal->_muid)
  {
    if (objc_msgSend_length(v4, v9, v10, v11))
    {
      objc_msgSend_appendString_(v4, v51, @", muid ", v52);
    }

    v53 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v51, @"%lu", v52, self->_internal->_muid);
    objc_msgSend_appendString_(v4, v54, v53, v55);
    internal = self->_internal;
  }

  if (internal->category)
  {
    if (objc_msgSend_length(v4, v9, v10, v11))
    {
      objc_msgSend_appendString_(v4, v56, @", category ", v58);
    }

    v59 = objc_msgSend_description(self->_internal->category, v56, v57, v58);
    objc_msgSend_appendString_(v4, v60, v59, v61);
  }

  return v4;
}

+ (CLPlacemark)placemarkWithGEOMapItem:(id)item
{
  if (objc_msgSend_isValid(item, a2, item, v3) && (objc_msgSend_coordinate(item, v5, v6, v7), CLLocationCoordinate2DIsValid(v14)))
  {
    v8 = [CLPlacemark alloc];
    v11 = objc_msgSend__initWithGeoMapItem_(v8, v9, item, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CNPostalAddress)postalAddress
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_msgSend_fullThoroughfare(self, v4, v5, v6);
  v8 = off_1ED519098();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v9, v7, v8);
  v13 = objc_msgSend_subLocality(self, v10, v11, v12);
  v14 = off_1ED5190A0();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v13, v14);
  v19 = objc_msgSend_locality(self, v16, v17, v18);
  v20 = off_1ED5190A8();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v21, v19, v20);
  v25 = objc_msgSend_subAdministrativeArea(self, v22, v23, v24);
  v26 = off_1ED5190B0();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v27, v25, v26);
  v31 = objc_msgSend_administrativeArea(self, v28, v29, v30);
  v32 = off_1ED5190B8();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v33, v31, v32);
  v37 = objc_msgSend_postalCode(self, v34, v35, v36);
  v38 = off_1ED5190C0();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v39, v37, v38);
  v43 = objc_msgSend_country(self, v40, v41, v42);
  v44 = off_1ED5190C8();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v45, v43, v44);
  v49 = objc_msgSend_ISOcountryCode(self, v46, v47, v48);
  v50 = off_1ED5190D0();
  objc_msgSend_setObject_forKeyedSubscript_(v3, v51, v49, v50);
  v52 = (off_1ED5190D8)();
  v55 = objc_msgSend_postalAddressWithDictionaryRepresentation_(v52, v53, v3, v54);

  return v55;
}

@end