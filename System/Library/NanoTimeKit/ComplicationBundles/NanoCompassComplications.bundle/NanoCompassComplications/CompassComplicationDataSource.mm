@interface CompassComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (CompassComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated heading:(id)heading;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)sampleTemplate;
@end

@implementation CompassComplicationDataSource

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
      _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "running fixture demo mode. disable the compass complication in complicaiton picker.", v10, 2u);
    }

    goto LABEL_6;
  }

  v8 = 0x14DDu >> family;
  if (family > 0xC)
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (CompassComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = CompassComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:1];
}

- (id)sampleTemplate
{
  v4 = objc_msgSend_idealizedHeading(NCHeading, a2, v2);
  v6 = objc_msgSend__templateNoData_calibrated_heading_(self, v5, 0, 1, v4);

  return v6;
}

- (id)newTemplate
{
  v4 = objc_msgSend_calibrated(self, a2, v2);
  v7 = objc_msgSend_heading(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v12 = objc_msgSend__templateNoData_calibrated_heading_(self, v11, 0, v4, v10);

  return v12;
}

- (id)randomizedTemplate
{
  v4 = objc_msgSend_randomizedHeading(NCHeading, a2, v2);
  v6 = objc_msgSend__templateNoData_calibrated_heading_(self, v5, 0, 1, v4);

  return v6;
}

- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated heading:(id)heading
{
  calibratedCopy = calibrated;
  dataCopy = data;
  v81[2] = *MEMORY[0x277D85DE8];
  headingCopy = heading;
  v11 = headingCopy;
  v12 = !calibratedCopy | dataCopy;
  if (v12 == 1)
  {

    v11 = 0;
  }

  v13 = objc_msgSend_family(self, v9, v10);
  if (v13 > 5)
  {
    if (v13 > 9)
    {
      if (v13 == 10)
      {
        v58 = MEMORY[0x277CBBB10];
        v59 = objc_opt_class();
        v37 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v58, v60, v59);
        v80[0] = @"heading";
        v63 = v11;
        if (!v11)
        {
          v63 = objc_msgSend_null(MEMORY[0x277CBEB68], v61, v62);
        }

        v81[0] = v63;
        v80[1] = @"nodata";
        v64 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v61, v12);
        v81[1] = v64;
        v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, v81, v80, 2);
        objc_msgSend_setMetadata_(v37, v67, v66);

        if (!v11)
        {
        }

        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v68, v37);
      }

      else
      {
        if (v13 != 12)
        {
          goto LABEL_36;
        }

        v32 = MEMORY[0x277CBBB10];
        v33 = objc_opt_class();
        v37 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v32, v34, v33);
        v78[0] = @"heading";
        v38 = v11;
        if (!v11)
        {
          v38 = objc_msgSend_null(MEMORY[0x277CBEB68], v35, v36);
        }

        v79[0] = v38;
        v78[1] = @"nodata";
        v39 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v35, v12);
        v79[1] = v39;
        v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v79, v78, 2);
        objc_msgSend_setMetadata_(v37, v42, v41);

        if (!v11)
        {
        }

        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v43, v37);
      }
      v23 = ;

      goto LABEL_39;
    }

    if (v13 == 6)
    {
LABEL_22:
      if (!v12)
      {
        v44 = MEMORY[0x277CBBB88];
        v45 = NanoCompassFormattedHeadingAndDirection(v11, 0, 0);
        v46 = NanoCompassFormattedHeading(v11, 0, 0);
        v48 = objc_msgSend_textProviderWithText_shortText_(v44, v47, v45, v46);

        v23 = objc_msgSend_templateWithTextProvider_(MEMORY[0x277CBBA90], v49, v48);

        goto LABEL_39;
      }

      goto LABEL_29;
    }

    if (v13 == 7)
    {
      v14 = MEMORY[0x277CBBB88];
      v15 = NanoCompassFormattedHeading(v11, 0, 0);
      v17 = objc_msgSend_textProviderWithText_(v14, v16, v15);

      v18 = MEMORY[0x277CBBB88];
      v19 = NanoCompassFormattedHeadingDirection(v11);
      v21 = objc_msgSend_textProviderWithText_(v18, v20, v19);

      v23 = objc_msgSend_templateWithLine1TextProvider_line2TextProvider_(MEMORY[0x277CBB808], v22, v17, v21);
      objc_msgSend_setHighlightLine2_(v23, v24, 1);
LABEL_26:

      goto LABEL_27;
    }
  }

  else
  {
    if (v13 <= 2)
    {
      if (v13)
      {
        if (v13 != 2)
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      }

      v51 = MEMORY[0x277CBBB88];
      v52 = NanoCompassFormattedHeading(v11, 0, 0);
      v17 = objc_msgSend_textProviderWithText_(v51, v53, v52);

      v54 = MEMORY[0x277CBBB88];
      v55 = NanoCompassFormattedHeadingDirection(v11);
      v21 = objc_msgSend_textProviderWithText_(v54, v56, v55);

      objc_msgSend_templateWithLine1TextProvider_line2TextProvider_(MEMORY[0x277CBBA70], v57, v17, v21);
      goto LABEL_25;
    }

    if (v13 == 3)
    {
      if (v12)
      {
LABEL_29:
        v50 = NanoCompassRedactionLabel(v13);
        v23 = v50;
        goto LABEL_39;
      }

      v74 = MEMORY[0x277CBBB88];
      v75 = NanoCompassFormattedHeadingAndDirection(v11, 0, 0);
      v17 = objc_msgSend_textProviderWithText_(v74, v76, v75);

      v23 = objc_msgSend_templateWithTextProvider_(MEMORY[0x277CBBA80], v77, v17);
LABEL_27:

      goto LABEL_39;
    }

    if (v13 == 4)
    {
      v25 = MEMORY[0x277CBBB88];
      v26 = NanoCompassFormattedHeading(v11, 0, 0);
      v17 = objc_msgSend_textProviderWithText_(v25, v27, v26);

      v28 = MEMORY[0x277CBBB88];
      v29 = NanoCompassFormattedHeadingDirection(v11);
      v21 = objc_msgSend_textProviderWithText_(v28, v30, v29);

      objc_msgSend_templateWithLine1TextProvider_line2TextProvider_(MEMORY[0x277CBB7A8], v31, v17, v21);
      v23 = LABEL_25:;
      goto LABEL_26;
    }
  }

LABEL_36:
  v69 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    sub_23BD654BC(self, v69, v70);
  }

  v23 = 0;
LABEL_39:
  v71 = NanoCompassAppTintColor(v50);
  objc_msgSend_setTintColor_(v23, v72, v71);

  return v23;
}

@end