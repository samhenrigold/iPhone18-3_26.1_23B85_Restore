@interface CompassBearingComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (CompassBearingComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)redactionTextProviderWithColor:(id)color;
- (id)sampleTemplate;
@end

@implementation CompassBearingComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  if (!objc_msgSend_supportsUrsa(device, a2, family))
  {
LABEL_6:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  if (objc_msgSend_showingIdealizedData(NCManager, v5, v6))
  {
    v7 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "running fixture demo mode. disable the compass complication in complication picker.", v10, 2u);
    }

    goto LABEL_6;
  }

  v8 = 0xB00u >> family;
  if (family > 0xB)
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (CompassBearingComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = CompassBearingComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:3];
}

- (id)sampleTemplate
{
  v4 = objc_msgSend_idealizedHeading(NCHeading, a2, v2);
  v7 = objc_msgSend_idealizedBearing(NCBearing, v5, v6);
  v9 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_(self, v8, 0, 1, 0, v4, v7);

  return v9;
}

- (id)newTemplate
{
  v4 = objc_msgSend_calibrated(self, a2, v2);
  v7 = objc_msgSend_heading(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v13 = objc_msgSend_bearing(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  v18 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_(self, v17, 0, v4, 0, v10, v16);

  return v18;
}

- (id)randomizedTemplate
{
  v4 = objc_msgSend_randomizedHeading(NCHeading, a2, v2);
  v7 = objc_msgSend_randomizedBearing(NCBearing, v5, v6);
  v9 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_(self, v8, 0, 1, 0, v4, v7);

  return v9;
}

- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing
{
  stateCopy = state;
  calibratedCopy = calibrated;
  dataCopy = data;
  v79[3] = *MEMORY[0x277D85DE8];
  headingCopy = heading;
  bearingCopy = bearing;
  v16 = !calibratedCopy | dataCopy;
  if (v16 == 1)
  {

    bearingCopy = 0;
    headingCopy = 0;
  }

  v17 = objc_msgSend_family(self, v13, v14);
  switch(v17)
  {
    case 11:
      v19 = objc_opt_new();
      v29 = MEMORY[0x277CBBB10];
      v30 = objc_opt_class();
      v22 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v29, v31, v30);
      v73 = @"heading";
      v34 = headingCopy;
      if (!headingCopy)
      {
        v34 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33, v73);
      }

      v75[0] = v34;
      v74 = @"bearing";
      v35 = bearingCopy;
      if (!bearingCopy)
      {
        v35 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33);
      }

      v36 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, v16, v73, v74, @"nodata", v75[0], v35);
      v75[2] = v36;
      v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v75, &v73, 3);
      objc_msgSend_setMetadata_(v22, v39, v38);

      if (bearingCopy)
      {
        if (headingCopy)
        {
LABEL_16:
          objc_msgSend_setImageProvider_(v19, v40, v22);
          goto LABEL_31;
        }
      }

      else
      {

        if (headingCopy)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_16;
    case 9:
      v19 = objc_opt_new();
      if (v16 | stateCopy)
      {
        v26 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v24, v25);
        v22 = objc_msgSend_redactionTextProviderWithColor_(self, v27, v26);
      }

      else
      {
        v22 = NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
      }

      objc_msgSend_setTextProvider_(v19, v28, v22);
      v41 = objc_opt_new();
      v42 = MEMORY[0x277CBBB10];
      v43 = objc_opt_class();
      v47 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v42, v44, v43);
      v76[0] = @"heading";
      v48 = headingCopy;
      if (!headingCopy)
      {
        v48 = objc_msgSend_null(MEMORY[0x277CBEB68], v45, v46);
      }

      v77[0] = v48;
      v76[1] = @"nodata";
      v49 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v45, v16);
      v77[1] = v49;
      v76[2] = @"alwayson";
      v51 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v50, stateCopy);
      v77[2] = v51;
      v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, v77, v76, 3);
      objc_msgSend_setMetadata_(v47, v54, v53);

      if (!headingCopy)
      {
      }

      objc_msgSend_setImageProvider_(v41, v55, v47);
      objc_msgSend_setCircularTemplate_(v19, v56, v41);

      break;
    case 8:
      v18 = objc_opt_new();
      v19 = v18;
      if (v16 | stateCopy)
      {
        v20 = NanoCompassAppTintColor(v18);
        v22 = objc_msgSend_redactionTextProviderWithColor_(self, v21, v20);
      }

      else
      {
        v22 = NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
      }

      objc_msgSend_setTextProvider_(v19, v23, v22);
      v57 = MEMORY[0x277CBBB10];
      v58 = objc_opt_class();
      v41 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v57, v59, v58);
      v78[0] = @"heading";
      v62 = headingCopy;
      if (!headingCopy)
      {
        v62 = objc_msgSend_null(MEMORY[0x277CBEB68], v60, v61);
      }

      v79[0] = v62;
      v78[1] = @"nodata";
      v63 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v60, v16);
      v79[1] = v63;
      v78[2] = @"alwayson";
      v65 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v64, stateCopy);
      v79[2] = v65;
      v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, v79, v78, 3);
      objc_msgSend_setMetadata_(v41, v68, v67);

      if (!headingCopy)
      {
      }

      objc_msgSend_setImageProvider_(v19, v69, v41);
      break;
    default:
      v19 = 0;
      goto LABEL_32;
  }

LABEL_31:
LABEL_32:
  v70 = NanoCompassAppTintColor(v17);
  objc_msgSend_setTintColor_(v19, v71, v70);

  return v19;
}

- (id)redactionTextProviderWithColor:(id)color
{
  colorCopy = color;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5BBF8;
  block[3] = &unk_278B93FB0;
  v10 = colorCopy;
  v4 = qword_27E1C53C0;
  v5 = colorCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_27E1C53C0, block);
  }

  v6 = qword_27E1C53B8;
  v7 = qword_27E1C53B8;

  return v6;
}

@end