@interface LevelComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (LevelComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing incline:(id)incline;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)sampleTemplate;
@end

@implementation LevelComplicationDataSource

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
      _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "Running fixture demo mode. Disabling the Level complication in complication picker.", v10, 2u);
    }

    goto LABEL_6;
  }

  v8 = 0x1700u >> family;
  if (family > 0xC)
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (LevelComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = LevelComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:3];
}

- (id)sampleTemplate
{
  v4 = objc_msgSend_idealizedHeading(NCHeading, a2, v2);
  v7 = objc_msgSend_idealizedBearing(NCBearing, v5, v6);
  v10 = objc_msgSend_idealizedIncline(NCIncline, v8, v9);
  v12 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_incline_(self, v11, 0, 1, 0, v4, v7, v10);

  return v12;
}

- (id)newTemplate
{
  v4 = objc_msgSend_calibrated(self, a2, v2);
  v7 = objc_msgSend_heading(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v13 = objc_msgSend_bearing(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  v19 = objc_msgSend_incline(self, v17, v18);
  v22 = objc_msgSend_copy(v19, v20, v21);
  v24 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_incline_(self, v23, 0, v4, 0, v10, v16, v22);

  return v24;
}

- (id)randomizedTemplate
{
  v4 = objc_msgSend_randomizedHeading(NCHeading, a2, v2);
  v7 = objc_msgSend_randomizedBearing(NCBearing, v5, v6);
  v10 = objc_msgSend_randomizedIncline(NCIncline, v8, v9);
  v12 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_incline_(self, v11, 0, 1, 0, v4, v7, v10);

  return v12;
}

- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing incline:(id)incline
{
  stateCopy = state;
  calibratedCopy = calibrated;
  dataCopy = data;
  v98[4] = *MEMORY[0x277D85DE8];
  headingCopy = heading;
  bearingCopy = bearing;
  inclineCopy = incline;
  v19 = !calibratedCopy | dataCopy;
  if (v19 == 1)
  {

    inclineCopy = 0;
    bearingCopy = 0;
    headingCopy = 0;
  }

  v20 = objc_msgSend_family(self, v16, v17);
  if (v20 > 9)
  {
    if (v20 != 12)
    {
      if (v20 != 10)
      {
        goto LABEL_17;
      }

      v23 = MEMORY[0x277CBBB10];
      v24 = objc_opt_class();
      v22 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v23, v25, v24);
      v97[0] = @"heading";
      v28 = headingCopy;
      if (!headingCopy)
      {
        v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27);
      }

      v98[0] = v28;
      v97[1] = @"incline";
      v29 = inclineCopy;
      if (!inclineCopy)
      {
        v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27);
      }

      v98[1] = v29;
      v97[2] = @"nodata";
      v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v26, v19);
      v98[2] = v30;
      v97[3] = @"alwayson";
      v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v31, stateCopy);
      v98[3] = v32;
      v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v98, v97, 4);
      objc_msgSend_setMetadata_(v22, v35, v34);

      if (inclineCopy)
      {
        if (headingCopy)
        {
LABEL_16:
          objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v36, v22);
          v38 = LABEL_29:;
          goto LABEL_54;
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
    }

    v46 = MEMORY[0x277CBBB10];
    v47 = objc_opt_class();
    v22 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v46, v48, v47);
    v95[0] = @"heading";
    v51 = headingCopy;
    if (!headingCopy)
    {
      v51 = objc_msgSend_null(MEMORY[0x277CBEB68], v49, v50);
    }

    v96[0] = v51;
    v95[1] = @"incline";
    v52 = inclineCopy;
    if (!inclineCopy)
    {
      v52 = objc_msgSend_null(MEMORY[0x277CBEB68], v49, v50);
    }

    v96[1] = v52;
    v95[2] = @"nodata";
    v53 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v49, v19);
    v96[2] = v53;
    v95[3] = @"alwayson";
    v55 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v54, stateCopy);
    v96[3] = v55;
    v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v96, v95, 4);
    objc_msgSend_setMetadata_(v22, v58, v57);

    if (inclineCopy)
    {
      if (headingCopy)
      {
LABEL_28:
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v59, v22);
        goto LABEL_29;
      }
    }

    else
    {

      if (headingCopy)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_28;
  }

  if (v20 == 8)
  {
    if (stateCopy)
    {
      v39 = NanoCompassLocalizedString(@"LEVEL_COMPLICATION_NAME");
      v42 = objc_msgSend_localizedUppercaseString(v39, v40, v41);

      v22 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v43, v42);
      v44 = NanoCompassAppTintColor(v22);
      objc_msgSend_setTintColor_(v22, v45, v44);
    }

    else
    {
      if (v19)
      {
        objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v21, &stru_284E80A60);
      }

      else
      {
        NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
      }
      v22 = ;
    }

    v76 = MEMORY[0x277CBBB10];
    v77 = objc_opt_class();
    v65 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v76, v78, v77);
    v91[0] = @"incline";
    v81 = inclineCopy;
    if (!inclineCopy)
    {
      v81 = objc_msgSend_null(MEMORY[0x277CBEB68], v79, v80);
    }

    v92[0] = v81;
    v91[1] = @"nodata";
    v82 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v79, v19);
    v92[1] = v82;
    v84 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v83, v92, v91, 2);
    objc_msgSend_setMetadata_(v65, v85, v84);

    if (!inclineCopy)
    {
    }

    v38 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBB908], v86, v22, v65);
    goto LABEL_53;
  }

  if (v20 == 9)
  {
    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
    }

    v60 = MEMORY[0x277CBBB10];
    v61 = objc_opt_class();
    v65 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v60, v62, v61);
    v93[0] = @"heading";
    v66 = headingCopy;
    if (!headingCopy)
    {
      v66 = objc_msgSend_null(MEMORY[0x277CBEB68], v63, v64);
    }

    v94[0] = v66;
    v93[1] = @"incline";
    v67 = inclineCopy;
    if (!inclineCopy)
    {
      v67 = objc_msgSend_null(MEMORY[0x277CBEB68], v63, v64);
    }

    v94[1] = v67;
    v93[2] = @"nodata";
    v68 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v63, v19);
    v94[2] = v68;
    v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, v94, v93, 3);
    objc_msgSend_setMetadata_(v65, v71, v70);

    if (inclineCopy)
    {
      if (headingCopy)
      {
LABEL_37:
        v73 = MEMORY[0x277CBB810];
        v74 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v72, v65);
        v38 = objc_msgSend_templateWithCircularTemplate_textProvider_(v73, v75, v74, v22);

LABEL_53:
        goto LABEL_54;
      }
    }

    else
    {

      if (headingCopy)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

LABEL_17:
  v22 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_23BD654BC(self, v22, v37);
  }

  v38 = 0;
LABEL_54:

  v88 = NanoCompassAppTintColor(v87);
  objc_msgSend_setTintColor_(v38, v89, v88);

  return v38;
}

@end