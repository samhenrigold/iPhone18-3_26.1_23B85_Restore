@interface AltitudeInclineComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (AltitudeInclineComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data altitude:(id)altitude privacyEnabled:(BOOL)enabled;
- (id)alwaysOnTemplate;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)redactionImageProvider;
- (id)sampleTemplate;
@end

@implementation AltitudeInclineComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (objc_msgSend_supportsUrsa(deviceCopy, v6, v7))
  {
    if (objc_msgSend_supportsPolaris(deviceCopy, v8, v9))
    {
      v10 = (family & 0xFFFFFFFFFFFFFFFELL) == 8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AltitudeInclineComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = AltitudeInclineComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:8];
}

- (id)sampleTemplate
{
  v4 = objc_msgSend_idealizedAltitude(NCAltitude, a2, v2);
  v6 = objc_msgSend__templateNoData_altitude_privacyEnabled_(self, v5, 0, v4, 0);

  return v6;
}

- (id)newTemplate
{
  v4 = objc_msgSend_altitude(self, a2, v2);
  v7 = objc_msgSend_copy(v4, v5, v6);
  v9 = objc_msgSend__templateNoData_altitude_privacyEnabled_(self, v8, 0, v7, 0);

  return v9;
}

- (id)alwaysOnTemplate
{
  v4 = objc_msgSend_altitude(self, a2, v2);
  v7 = objc_msgSend_copy(v4, v5, v6);
  v9 = objc_msgSend__templateNoData_altitude_privacyEnabled_(self, v8, 0, v7, 0);

  return v9;
}

- (id)randomizedTemplate
{
  v4 = objc_msgSend_randomizedAltitude(NCAltitude, a2, v2);
  v6 = objc_msgSend__templateNoData_altitude_privacyEnabled_(self, v5, 0, v4, 0);

  return v6;
}

- (id)_templateNoData:(BOOL)data altitude:(id)altitude privacyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dataCopy = data;
  v61[2] = *MEMORY[0x277D85DE8];
  altitudeCopy = altitude;
  v11 = objc_msgSend_family(self, v9, v10);
  if (v11 == 9)
  {
    v20 = objc_opt_new();
    v21 = MEMORY[0x277CBBB10];
    v22 = objc_opt_class();
    v26 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v21, v23, v22);
    v27 = MEMORY[0x277CBEC38];
    if (enabledCopy)
    {
      v60[0] = @"altitude";
      v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v24, v25);
      v60[1] = @"nodata";
      v61[0] = v28;
      v61[1] = v27;
      v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v61, v60, 2);
      objc_msgSend_setMetadata_(v26, v31, v30);
    }

    else
    {
      v58[0] = @"altitude";
      v28 = altitudeCopy;
      if (!altitudeCopy)
      {
        v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v24, v25);
      }

      v59[0] = v28;
      v58[1] = @"nodata";
      v36 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v24, altitudeCopy == 0);
      v59[1] = v36;
      v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v59, v58, 2);
      objc_msgSend_setMetadata_(v26, v39, v38);

      if (altitudeCopy)
      {
        goto LABEL_14;
      }
    }

LABEL_14:
    v41 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v40, v26);
    v56 = *MEMORY[0x277CBB6E8];
    v57 = v27;
    v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v57, &v56, 1);
    objc_msgSend_setMetadata_(v41, v44, v43);

    objc_msgSend_setCircularTemplate_(v20, v45, v41);
    objc_msgSend_setTextProvider_(v20, v46, 0);

    goto LABEL_21;
  }

  if (v11 != 8)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if (!enabledCopy)
  {
    if (dataCopy)
    {
      v32 = MEMORY[0x277CBBB88];
      v33 = NanoCompassFormattedUncalibrated();
      v14 = objc_msgSend_textProviderWithText_(v32, v34, v33);
    }

    else
    {
      hasAcceptibleAccuracy = NanoCompassComplicationAltitudeSmallCapsTextProvider(altitudeCopy, 0, 0);
      v14 = hasAcceptibleAccuracy;
      if (altitudeCopy)
      {
        hasAcceptibleAccuracy = objc_msgSend_hasAcceptibleAccuracy(altitudeCopy, v47, v48);
        if (hasAcceptibleAccuracy)
        {
          v16 = NanoCompassComplicationAltitudeAccuracySmallCapsTextProvider(altitudeCopy, 0);
          v49 = NanoCompassAppTintColor(v16);
          objc_msgSend_setTintColor_(v16, v50, v49);
LABEL_19:

          v51 = objc_alloc(MEMORY[0x277CBB900]);
          v19 = objc_msgSend_initWithInnerTextProvider_outerTextProvider_(v51, v52, v16, v14);
          goto LABEL_20;
        }
      }
    }

    v49 = NanoCompassAppTintColor(hasAcceptibleAccuracy);
    v16 = AltitudeRedactionTextProvider(v49);
    goto LABEL_19;
  }

  v14 = objc_msgSend_redactionImageProvider(self, v12, v13);
  v15 = NanoCompassAppTintColor(v14);
  v16 = AltitudeRedactionTextProvider(v15);

  v17 = objc_alloc(MEMORY[0x277CBB908]);
  v19 = objc_msgSend_initWithTextProvider_imageProvider_(v17, v18, v16, v14);
LABEL_20:
  v20 = v19;

LABEL_21:
  v53 = NanoCompassAppTintColor(v11);
  objc_msgSend_setTintColor_(v20, v54, v53);

  return v20;
}

- (id)redactionImageProvider
{
  if (qword_27E1C4FD0 != -1)
  {
    sub_23BD65B44();
  }

  v3 = qword_27E1C4FC8;

  return v3;
}

@end