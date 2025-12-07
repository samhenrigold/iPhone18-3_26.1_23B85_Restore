@interface AltitudeComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (AltitudeComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data altitude:(id)altitude privacyEnabled:(BOOL)enabled;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)sampleTemplate;
- (void)_setMetadataForProvider:(id)provider withAltitude:(id)altitude privacyEnabled:(BOOL)enabled;
@end

@implementation AltitudeComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (objc_msgSend_supportsUrsa(deviceCopy, v6, v7))
  {
    v10 = objc_msgSend_supportsPolaris(deviceCopy, v8, v9);
    v11 = 0x1CDFu >> family;
    if (family > 0xC)
    {
      LOBYTE(v11) = 0;
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (AltitudeComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = AltitudeComplicationDataSource;
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
  v147 = *MEMORY[0x277D85DE8];
  altitudeCopy = altitude;
  v11 = altitudeCopy;
  if (dataCopy)
  {

    v11 = 0;
  }

  v12 = objc_msgSend_family(self, v9, v10);
  if (v12 > 5)
  {
    if (v12 <= 9)
    {
      if (v12 != 6)
      {
        if (v12 == 7)
        {
          if (v11)
          {
            v49 = objc_msgSend_displayTilde(v11, v13, v14);
            v50 = MEMORY[0x277CCABB0];
            objc_msgSend_altitude(v11, v51, v52);
            v55 = objc_msgSend_numberWithDouble_(v50, v53, v54);
          }

          else
          {
            v49 = 0;
            v55 = 0;
          }

          v24 = NanoCompassValueWithFormat(v55, 0, v49);
          if (v11)
          {
          }

          v22 = objc_opt_new();
          v93 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v92, v24);
          objc_msgSend_setLine1TextProvider_(v22, v94, v93);

          v95 = MEMORY[0x277CBBB88];
          v99 = NanoCompassFormattedAltitudeUnits(v96, v97, v98);
          v102 = objc_msgSend_localizedUppercaseString(v99, v100, v101);
          v104 = objc_msgSend_textProviderWithText_(v95, v103, v102);
          objc_msgSend_setLine2TextProvider_(v22, v105, v104);

          objc_msgSend_setHighlightLine2_(v22, v106, 1);
          goto LABEL_54;
        }

        goto LABEL_34;
      }

LABEL_23:
      v56 = objc_alloc(MEMORY[0x277CBBB98]);
      v24 = objc_msgSend_initWithSystemName_(v56, v57, @"mountain.2.fill");
      v58 = NanoCompassAppTintColor(v24);
      objc_msgSend_setTintColor_(v24, v59, v58);

      if (enabledCopy)
      {
        v60 = MEMORY[0x277CBBB88];
        v61 = NanoCompassFormattedUncalibrated();
        v34 = objc_msgSend_textProviderWithText_(v60, v62, v61);

LABEL_39:
        v22 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBBA90], v63, v34, v24);
        goto LABEL_53;
      }

      v65 = v11;
      v66 = 1;
LABEL_38:
      v34 = NanoCompassComplicationAltitudeSmallCapsTextProvider(v65, 0, v66);
      goto LABEL_39;
    }

    switch(v12)
    {
      case 10:
        v67 = MEMORY[0x277CBBB10];
        v68 = objc_opt_class();
        v19 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v67, v69, v68);
        objc_msgSend__setMetadataForProvider_withAltitude_privacyEnabled_(self, v70, v19, v11, enabledCopy);
        v22 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v71, v19);
        v141 = *MEMORY[0x277CBB6E8];
        v142 = MEMORY[0x277CBEC38];
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, &v142, &v141, 1);
        break;
      case 11:
        v81 = MEMORY[0x277CBBB10];
        v82 = objc_opt_class();
        v19 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v81, v83, v82);
        objc_msgSend__setMetadataForProvider_withAltitude_privacyEnabled_(self, v84, v19, v11, enabledCopy);
        v85 = objc_alloc(MEMORY[0x277CBB998]);
        v22 = objc_msgSend_initWithImageProvider_(v85, v86, v19);
        goto LABEL_33;
      case 12:
        v16 = MEMORY[0x277CBBB10];
        v17 = objc_opt_class();
        v19 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v16, v18, v17);
        objc_msgSend__setMetadataForProvider_withAltitude_privacyEnabled_(self, v20, v19, v11, enabledCopy);
        v22 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v21, v19);
        v143 = *MEMORY[0x277CBB6E8];
        v144 = MEMORY[0x277CBEC38];
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v144, &v143, 1);
        break;
      default:
        goto LABEL_34;
    }
    v73 = ;
    objc_msgSend_setMetadata_(v22, v74, v73);

LABEL_33:
    goto LABEL_55;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_34;
      }

      v22 = objc_opt_new();
      v24 = NanoCompassLocalizedString(@"ALTITUDE_LARGE_MODULAR_TITLE_FORMAT");
      v25 = MEMORY[0x277CCACA8];
      v26 = NanoCompassLocalizedString(@"ALTITUDE_LARGE_MODULAR_TITLE");
      v29 = NanoCompassFormattedAltitudeUnits(v26, v27, v28);
      v32 = objc_msgSend_localizedUppercaseString(v29, v30, v31);
      v34 = objc_msgSend_stringWithFormat_(v25, v33, v24, v26, v32);

      v36 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v35, v34);
      objc_msgSend_setHeaderTextProvider_(v22, v37, v36);

      if (v11)
      {
        v40 = objc_msgSend_displayTilde(v11, v38, v39);
        v41 = MEMORY[0x277CCABB0];
        objc_msgSend_altitude(v11, v42, v43);
        v46 = objc_msgSend_numberWithDouble_(v41, v44, v45);
        v47 = NanoCompassValueWithFormat(v46, 0, v40);
      }

      else
      {
        v47 = NanoCompassValueWithFormat(0, 0, 0);
      }

      v90 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v48, v47);
      objc_msgSend_setBodyTextProvider_(v22, v91, v90);
    }

    else
    {
      v140 = 0;
      if (v11)
      {
        v64 = NanoCompassGetAltitudeAbbreviationWithTargetLength(v11, 5, &v140);
      }

      else
      {
        v64 = NanoCompassFormattedUncalibrated();
      }

      v24 = v64;
      v107 = NCLogForCategory(0);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        if (v140)
        {
          v108 = @"YES";
        }

        else
        {
          v108 = @"NO";
        }

        *buf = 138412290;
        v146 = v108;
        _os_log_impl(&dword_23BD26000, v107, OS_LOG_TYPE_DEFAULT, "metric unit should be abbreviated: %@", buf, 0xCu);
      }

      v34 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v109, v24);
      v22 = objc_opt_new();
      objc_msgSend_setLine1TextProvider_(v22, v110, v34);
      v111 = MEMORY[0x277CBBB88];
      v114 = NanoCompassFormattedAltitudeUnitsInAbbr(v140, v112, v113);
      v117 = objc_msgSend_localizedUppercaseString(v114, v115, v116);
      v119 = objc_msgSend_textProviderWithText_(v111, v118, v117);
      objc_msgSend_setLine2TextProvider_(v22, v120, v119);

      objc_msgSend_setHighlightLine2_(v22, v121, 1);
    }

LABEL_53:

LABEL_54:
    goto LABEL_55;
  }

  switch(v12)
  {
    case 2:
      goto LABEL_23;
    case 3:
      v75 = objc_alloc(MEMORY[0x277CBBB98]);
      v24 = objc_msgSend_initWithSystemName_(v75, v76, @"mountain.2.fill");
      v77 = NanoCompassAppTintColor(v24);
      objc_msgSend_setTintColor_(v24, v78, v77);

      if (enabledCopy)
      {
        v80 = NanoCompassAppTintColor(v79);
        v34 = AltitudeRedactionTextProvider(v80);

        goto LABEL_39;
      }

      v65 = v11;
      v66 = 0;
      goto LABEL_38;
    case 4:
      v140 = 0;
      if (v11)
      {
        v15 = NanoCompassGetAltitudeAbbreviationWithTargetLength(v11, 5, &v140);
      }

      else
      {
        v15 = NanoCompassFormattedUncalibrated();
      }

      v24 = v15;
      v125 = NCLogForCategory(0);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        if (v140)
        {
          v126 = @"YES";
        }

        else
        {
          v126 = @"NO";
        }

        *buf = 138412290;
        v146 = v126;
        _os_log_impl(&dword_23BD26000, v125, OS_LOG_TYPE_DEFAULT, "metric unit should be abbreviated: %@", buf, 0xCu);
      }

      v22 = objc_opt_new();
      v128 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v127, v24);
      objc_msgSend_setLine1TextProvider_(v22, v129, v128);

      v130 = MEMORY[0x277CBBB88];
      v133 = NanoCompassFormattedAltitudeUnitsInAbbr(v140, v131, v132);
      v136 = objc_msgSend_localizedUppercaseString(v133, v134, v135);
      v138 = objc_msgSend_textProviderWithText_(v130, v137, v136);
      objc_msgSend_setLine2TextProvider_(v22, v139, v138);

      goto LABEL_54;
  }

LABEL_34:
  v88 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
  {
    sub_23BD654BC(self, v88, v89);
  }

  v22 = 0;
LABEL_55:
  v122 = NanoCompassAppTintColor(v87);
  objc_msgSend_setTintColor_(v22, v123, v122);

  return v22;
}

- (void)_setMetadataForProvider:(id)provider withAltitude:(id)altitude privacyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v23[2] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  altitudeCopy = altitude;
  v11 = altitudeCopy;
  if (enabledCopy)
  {
    v22[0] = @"altitude";
    v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10);
    v22[1] = @"nodata";
    v23[0] = v12;
    v23[1] = MEMORY[0x277CBEC38];
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v23, v22, 2);
    objc_msgSend_setMetadata_(providerCopy, v15, v14);

LABEL_6:
    goto LABEL_7;
  }

  v20[0] = @"altitude";
  v12 = altitudeCopy;
  if (!altitudeCopy)
  {
    v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10);
  }

  v21[0] = v12;
  v20[1] = @"nodata";
  v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, v11 == 0);
  v21[1] = v16;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v21, v20, 2);
  objc_msgSend_setMetadata_(providerCopy, v19, v18);

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:
}

@end