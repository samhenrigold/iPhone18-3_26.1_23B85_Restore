@interface CompassAltitudeComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (CompassAltitudeComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data noHeading:(BOOL)heading calibrated:(BOOL)calibrated altitude:(id)altitude heading:(id)a7;
- (id)alwaysOnTemplate;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)sampleTemplate;
@end

@implementation CompassAltitudeComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (objc_msgSend_supportsUrsa(deviceCopy, v6, v7) && objc_msgSend_supportsPolaris(deviceCopy, v8, v9))
  {
    if (!objc_msgSend_showingIdealizedData(NCManager, v10, v11))
    {
      v13 = family == 3;
      goto LABEL_8;
    }

    v12 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "running fixture demo mode. disable the compass complication in complicaiton picker.", v15, 2u);
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (CompassAltitudeComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = CompassAltitudeComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:9];
}

- (id)sampleTemplate
{
  v4 = objc_msgSend_idealizedAltitude(NCAltitude, a2, v2);
  v7 = objc_msgSend_idealizedHeading(NCHeading, v5, v6);
  v9 = objc_msgSend__templateNoData_noHeading_calibrated_altitude_heading_(self, v8, 0, 0, 1, v4, v7);

  return v9;
}

- (id)newTemplate
{
  v4 = objc_msgSend_calibrated(self, a2, v2);
  v7 = objc_msgSend_altitude(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v13 = objc_msgSend_heading(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  v18 = objc_msgSend__templateNoData_noHeading_calibrated_altitude_heading_(self, v17, 0, 0, v4, v10, v16);

  return v18;
}

- (id)alwaysOnTemplate
{
  v4 = objc_msgSend_altitude(self, a2, v2);
  v7 = objc_msgSend_copy(v4, v5, v6);
  v10 = objc_msgSend_heading(self, v8, v9);
  v13 = objc_msgSend_copy(v10, v11, v12);
  v15 = objc_msgSend__templateNoData_noHeading_calibrated_altitude_heading_(self, v14, 0, 1, 0, v7, v13);

  return v15;
}

- (id)randomizedTemplate
{
  v4 = objc_msgSend_randomizedAltitude(NCAltitude, a2, v2);
  v7 = objc_msgSend_randomizedHeading(NCHeading, v5, v6);
  v9 = objc_msgSend__templateNoData_noHeading_calibrated_altitude_heading_(self, v8, 0, 0, 1, v4, v7);

  return v9;
}

- (id)_templateNoData:(BOOL)data noHeading:(BOOL)heading calibrated:(BOOL)calibrated altitude:(id)altitude heading:(id)a7
{
  calibratedCopy = calibrated;
  headingCopy = heading;
  dataCopy = data;
  altitudeCopy = altitude;
  v15 = a7;
  if (dataCopy)
  {

    altitudeCopy = 0;
  }

  else if (calibratedCopy && !headingCopy)
  {
    v18 = objc_msgSend_family(self, v13, v14);
    if (v18 == 3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v18 = objc_msgSend_family(self, v16, v17);
  if (v18 == 3)
  {
    if (dataCopy)
    {
      v18 = NanoCompassRedactionLabel(3);
      v19 = v18;
      v15 = 0;
      goto LABEL_17;
    }

    v15 = 0;
LABEL_13:
    v19 = objc_opt_new();
    v22 = NanoCompassFormattedHeadingAndDirection(v15, 0, 0);
    if (altitudeCopy)
    {
      v23 = objc_msgSend_displayTilde(altitudeCopy, v20, v21);
      v24 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(altitudeCopy, v25, v26);
      v29 = objc_msgSend_numberWithDouble_(v24, v27, v28);
      v30 = NanoCompassValueWithFormat(v29, 0, v23);
    }

    else
    {
      v30 = NanoCompassValueWithFormat(0, 0, 0);
    }

    v31 = NanoCompassLocalizedString(@"COMPLICATION_FUSION_COMBINING_FORMAT");
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, v31, v22, v30);
    v51 = v22;
    v34 = MEMORY[0x277CBBB88];
    v37 = NanoCompassFormattedAltitudeUnits(v33, v35, v36);
    v39 = objc_msgSend_textProviderWithText_(v34, v38, v37);

    objc_msgSend_setUseLowercaseSmallCaps_(v39, v40, 1);
    objc_msgSend_setIgnoreUppercaseStyle_(v39, v41, 1);
    v43 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v42, v33);
    v44 = NanoCompassLocalizedString(@"ALTITUDE_COMBINING_FORMAT");
    v46 = objc_msgSend_textProviderWithFormat_(MEMORY[0x277CBBBA0], v45, v44, v43, v39);
    objc_msgSend_setTextProvider_(v19, v47, v46);

    goto LABEL_17;
  }

  v15 = 0;
LABEL_11:
  v19 = 0;
LABEL_17:
  v48 = NanoCompassAppTintColor(v18);
  objc_msgSend_setTintColor_(v19, v49, v48);

  return v19;
}

@end