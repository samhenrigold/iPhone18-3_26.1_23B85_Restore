id SFObjectAndOffsetForURLPair(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"#"];
  v2 = [v1 objectAtIndex:0];
  if ([v1 count] == 2)
  {
    v3 = [v1 objectAtIndex:1];
    [v3 floatValue];
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
  }

  v5 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v2, @"object", v3, @"offsetItem", v6, @"offsetValue", 0}];

  return v7;
}

id _SFBuiltInRegulatoryImage(void *a1, void *a2)
{
  v74[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%uonly_", v7];
  v9 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    _SFBuiltInRegulatoryImage_cold_1();
  }

  if (v4)
  {
    v10 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@-%@%@", v3, v4, v8];
    v11 = MEMORY[0x277D755B8];
    v12 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
    v13 = [v12 stringByAppendingPathComponent:v10];
    v14 = [v11 imageWithContentsOfFile:v13];

    v15 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v64 = "UIImage *_SFBuiltInRegulatoryImage(NSString *__strong, NSString *__strong)";
      v65 = 2112;
      v66 = v10;
      _os_log_impl(&dword_2659AD000, v15, OS_LOG_TYPE_DEFAULT, "%{Public}s: Looked up '%{Public}@'", buf, 0x16u);
    }

    if (v14)
    {
      v61 = v3;
      v16 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@-%@_dark%@", v3, v4, v8];
      v17 = MEMORY[0x277D755B8];
      v18 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
      v19 = [v18 stringByAppendingPathComponent:v16];
      v20 = [v17 imageWithContentsOfFile:v19];

      if (v20)
      {
        v59 = v16;
        v60 = v8;
        v62 = v4;
        v57 = [MEMORY[0x277D75C80] currentTraitCollection];
        v21 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v7];
        v22 = objc_alloc_init(MEMORY[0x277D755C0]);
        v23 = MEMORY[0x277D75C80];
        v74[0] = v21;
        v24 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
        v74[1] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
        v26 = [v23 traitCollectionWithTraitsFromCollections:v25];
        [v22 registerImage:v14 withTraitCollection:v26];

        v27 = MEMORY[0x277D75C80];
        v73[0] = v21;
        v28 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
        v73[1] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
        v30 = [v27 traitCollectionWithTraitsFromCollections:v29];
        [v22 registerImage:v20 withTraitCollection:v30];

        v31 = v57;
        v32 = [v22 imageWithTraitCollection:v57];
        v33 = _SFBuiltInRegulatoryImage_styleSensitiveImage;
        _SFBuiltInRegulatoryImage_styleSensitiveImage = v32;

        v34 = SFLogForCategory(3uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v64 = "UIImage *_SFBuiltInRegulatoryImage(NSString *__strong, NSString *__strong)";
          v65 = 2112;
          v66 = v10;
          _os_log_impl(&dword_2659AD000, v34, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to style-sensitive Regulatory Image with base name '%{Public}@'.", buf, 0x16u);
        }

        v35 = _SFBuiltInRegulatoryImage_styleSensitiveImage;
LABEL_20:
        v54 = v35;

        v3 = v61;
        v4 = v62;
        v16 = v59;
        v8 = v60;
        goto LABEL_28;
      }

      v3 = v61;
LABEL_25:
      v55 = SFLogForCategory(3uLL);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v64 = "UIImage *_SFBuiltInRegulatoryImage(NSString *__strong, NSString *__strong)";
        v65 = 2112;
        v66 = v10;
        _os_log_impl(&dword_2659AD000, v55, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to Regulatory Image with name '%{Public}@'.", buf, 0x16u);
      }

      goto LABEL_27;
    }

    v62 = v4;
    v4 = v10;
  }

  else
  {
    v62 = 0;
  }

  v36 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    _SFBuiltInRegulatoryImage_cold_2();
  }

  v10 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@%@", v3, v8];

  v37 = MEMORY[0x277D755B8];
  v38 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
  v39 = [v38 stringByAppendingPathComponent:v10];
  v14 = [v37 imageWithContentsOfFile:v39];

  if (v14)
  {
    v16 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@_dark%@", v3, v8];
    v40 = MEMORY[0x277D755B8];
    v41 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
    v42 = [v41 stringByAppendingPathComponent:v16];
    v20 = [v40 imageWithContentsOfFile:v42];

    if (v20)
    {
      v59 = v16;
      v60 = v8;
      v61 = v3;
      v58 = [MEMORY[0x277D75C80] currentTraitCollection];
      v21 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v7];
      v22 = objc_alloc_init(MEMORY[0x277D755C0]);
      v43 = MEMORY[0x277D75C80];
      v72[0] = v21;
      v44 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
      v72[1] = v44;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
      v46 = [v43 traitCollectionWithTraitsFromCollections:v45];
      [v22 registerImage:v14 withTraitCollection:v46];

      v47 = MEMORY[0x277D75C80];
      v71[0] = v21;
      v48 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
      v71[1] = v48;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
      v50 = [v47 traitCollectionWithTraitsFromCollections:v49];
      [v22 registerImage:v20 withTraitCollection:v50];

      v31 = v58;
      v51 = [v22 imageWithTraitCollection:v58];
      v52 = _SFBuiltInRegulatoryImage_styleSensitiveImage_389;
      _SFBuiltInRegulatoryImage_styleSensitiveImage_389 = v51;

      v53 = SFLogForCategory(3uLL);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v64 = "UIImage *_SFBuiltInRegulatoryImage(NSString *__strong, NSString *__strong)";
        v65 = 2112;
        v66 = v10;
        _os_log_impl(&dword_2659AD000, v53, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to style-sensitive Regulatory Image with base name '%{Public}@'.", buf, 0x16u);
      }

      v35 = _SFBuiltInRegulatoryImage_styleSensitiveImage_389;
      goto LABEL_20;
    }

    v4 = v62;
    goto LABEL_25;
  }

  v55 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v64 = "UIImage *_SFBuiltInRegulatoryImage(NSString *__strong, NSString *__strong)";
    v65 = 2112;
    v66 = v3;
    v67 = 2112;
    v4 = v62;
    v68 = v62;
    v69 = 2112;
    v70 = v10;
    _os_log_error_impl(&dword_2659AD000, v55, OS_LOG_TYPE_ERROR, "%{Public}s: Failed to resolve to a Built-in Regulatory Image '%{Public}@-%{Public}@' with name '%{Public}@'", buf, 0x2Au);
    v14 = 0;
    v16 = 0;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v4 = v62;
  }

LABEL_27:

  v14 = v14;
  v54 = v14;
LABEL_28:

  return v54;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t SFDeviceSupportsShipsWithoutAdapterRoHSELabel()
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  v0 = [MEMORY[0x277D75418] currentDevice];
  if ([v0 sf_isiPhone])
  {
    v1 = MGIsDeviceOneOfType() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t SFShouldShowEyesightWarning()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  if (SFDeviceSupportsFall2019OrLaterELabel() && (MGIsDeviceOneOfType() & 1) == 0)
  {
    v2 = [&unk_28774C888 containsObject:{v1, 0}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFShouldShowMonthOfManufacture()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  if (SFDeviceSupportsFall2019OrLaterELabel() && (MGIsDeviceOneOfType() & 1) == 0)
  {
    v2 = [&unk_28774C8A0 containsObject:{v1, 0}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFShouldShowAlertMark()
{
  v148 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  if (SFDeviceSupportsFall2019OrLaterELabel() || (v147 = -1418383976, v146 = xmmword_2659C1E50, v145 = -1213485500, v144 = xmmword_2659C1E78, v143 = -232427879, v142 = xmmword_2659C1A54, v141 = -427474227, v140 = xmmword_2659C1A68, v139 = 1477534141, v138 = xmmword_2659C1A7C, v137 = -61007701, v136 = xmmword_2659C1A90, v135 = -235416490, v134 = xmmword_2659C1AA4, v133 = -1403227947, v132 = xmmword_2659C1DD8, v131 = 729118884, v130 = xmmword_2659C1DEC, v129 = 1046806126, v128 = xmmword_2659C1E00, v127 = -188760945, v126 = xmmword_2659C1E14, v125 = -489993439, v124 = xmmword_2659C1DB0, v123 = 886875686, v122 = xmmword_2659C1DC4, v121 = -1843102369, v120 = xmmword_2659C1AB8, v119 = -820493242, v118 = xmmword_2659C1ACC, v117 = 1532898719, v116 = xmmword_2659C1AE0, v115 = -1157300313, v114 = xmmword_2659C1AF4, v113 = -2132668294, v112 = xmmword_2659C1B08, v111 = 1278131292, v110 = xmmword_2659C1B1C, v109 = -1841712216, v108 = xmmword_2659C1B30, v107 = 659506830, v106 = xmmword_2659C1B44, v105 = 213746202, v104 = xmmword_2659C1B58, v103 = 2030516999, v102 = xmmword_2659C1B6C, v101 = -1276010597, v100 = xmmword_2659C1B80, v99 = -762483149, v98 = xmmword_2659C1B94, v97 = -1926937532, v96 = xmmword_2659C1BA8, v95 = -1902732724, v94 = xmmword_2659C1BBC, v93 = -342357580, v92 = xmmword_2659C1BD0, v91 = 300442574, v90 = xmmword_2659C1BE4, v89 = -1294188889, v88 = xmmword_2659C1BF8, v87 = 401945557, v86 = xmmword_2659C1D60, v85 = 338555555, v84 = xmmword_2659C1C0C, v83 = -679691073, v82 = xmmword_2659C1C20, v81 = 729903963, v80 = xmmword_2659C1C34, v79 = 1908474541, v78 = xmmword_2659C1C48, v77 = -414334491, v76 = xmmword_2659C1C5C, v75 = -1509831889, v74 = xmmword_2659C1C70, v73 = 289690957, v72 = xmmword_2659C1C84, v71 = 586720268, v70 = xmmword_2659C1C98, v69 = -1282800328, v68 = xmmword_2659C1CAC, v67 = 1711910369, v66 = xmmword_2659C1CC0, v65 = 710807826, v64 = xmmword_2659C1CD4, v63 = 470738981, v62 = xmmword_2659C1CE8, v61 = -2085056298, v60 = xmmword_2659C1CFC, v59 = 1860682089, v58 = xmmword_2659C1D10, v57 = -1742178852, v56 = xmmword_2659C1D24, v55 = 2146530832, v54 = xmmword_2659C1D38, v53 = -2114570942, v52 = xmmword_2659C1E28, v50 = &v52, v51 = 0, v48 = &v56, v49 = &v54, v46 = &v60, v47 = &v58, v44 = &v64, v45 = &v62, v42 = &v68, v43 = &v66, v40 = &v72, v41 = &v70, v38 = &v76, v39 = &v74, v36 = &v80, v37 = &v78, v34 = &v84, v35 = &v82, v32 = &v88, v33 = &v86, v30 = &v92, v31 = &v90, v28 = &v96, v29 = &v94, v26 = &v100, v27 = &v98, v24 = &v104, v25 = &v102, v22 = &v108, v23 = &v106, v20 = &v112, v21 = &v110, v18 = &v116, v19 = &v114, v16 = &v120, v17 = &v118, v14 = &v124, v15 = &v122, v12 = &v128, v13 = &v126, v10 = &v132, v11 = &v130, v8 = &v136, v9 = &v134, v6 = &v140, v7 = &v138, v4 = &v144, v5 = &v142, MGIsDeviceOneOfType()))
  {
    v2 = [&unk_28774C8B8 containsObject:{v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFShouldShowIndiaBIS()
{
  v41 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  v40 = 317289457;
  v39 = xmmword_2659C1D4C;
  v38 = 401945557;
  v37 = xmmword_2659C1D60;
  v4 = &v37;
  v5 = 0;
  if (MGIsDeviceOneOfType() & 1) != 0 || (v36 = 1214363620, v35 = xmmword_2659C1D74, v34 = -798153473, v33 = xmmword_2659C1D88, v32 = -776721724, v31 = xmmword_2659C1D9C, v30 = -489993439, v29 = xmmword_2659C1DB0, v28 = 886875686, v27 = xmmword_2659C1DC4, v26 = -1403227947, v25 = xmmword_2659C1DD8, v24 = 729118884, v23 = xmmword_2659C1DEC, v22 = 1046806126, v21 = xmmword_2659C1E00, v20 = -188760945, v19 = xmmword_2659C1E14, v18 = -1418383976, v17 = xmmword_2659C1E50, v16 = -1213485500, v15 = xmmword_2659C1E78, v13 = &v15, v14 = 0, v12 = &v17, v10 = &v21, v11 = &v19, v8 = &v25, v9 = &v23, v6 = &v29, v7 = &v27, v4 = &v33, v5 = &v31, (MGIsDeviceOneOfType()) || MGGetBoolAnswer())
  {
    v2 = [&unk_28774C8D0 containsObject:{v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFShouldShowYearOfManufacture()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  v2 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v3 = [v2 yearOfManufacture];

  if ((MGIsDeviceOneOfType() & 1) != 0 || MGGetBoolAnswer())
  {
    v4 = [&unk_28774C8E8 containsObject:{v1, 0}];
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL SFShouldShowCountryOfOrigin()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  v2 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v3 = [v2 countryOfOriginString];

  v4 = 0;
  if (([&unk_28774C900 containsObject:v1] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 1;
    }
  }

  return v4;
}

BOOL SFShouldShowChinaBlueSticker()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  v2 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v3 = [v2 miitDictionary];

  if ([v1 isEqualToString:@"CH"])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v8 = 0;
  if (!v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"nal"];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 objectForKeyedSubscript:@"label"];

      if (v7)
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

uint64_t SFShouldShowRoHSCompliance()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  v11 = -350584140;
  v10 = xmmword_2659C1E3C;
  v9 = -1418383976;
  v8 = xmmword_2659C1E50;
  v7 = 368778837;
  v6 = xmmword_2659C1E64;
  v5 = -1213485500;
  v4 = xmmword_2659C1E78;
  if ((MGIsDeviceOneOfType() & 1) != 0 || MGGetBoolAnswer())
  {
    v2 = [&unk_28774C918 containsObject:{v1, &v8, &v6, &v4, 0}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFShouldShowBuiltInApps()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sf_regionCode];

  v2 = [&unk_28774C930 containsObject:v1];
  return v2;
}

id SFLicenseFilePath(uint64_t a1)
{
  if (SFLicenseFilePath_onceToken != -1)
  {
    SFLicenseFilePath_cold_1();
  }

  v2 = SFLicenseFilePath___path;

  return v2;
}

uint64_t __SFLicenseFilePath_block_invoke()
{
  SFLicenseFilePath___path = _SFLicenseFilePathForBundleWithName(@"iOS");

  return MEMORY[0x2821F96F8]();
}

__CFString *_SFLicenseFilePathForBundleWithName(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  v3 = SFLogForCategory(1uLL);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "NSString *_SFLicenseFilePathForBundleWithName(NSString *__strong)";
      v25 = 2114;
      v26 = v1;
      _os_log_impl(&dword_2659AD000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Resolving license file path for bundle name: '%{public}@'", buf, 0x16u);
    }

    v5 = MEMORY[0x277CBEBC0];
    v6 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/SoftwareLicenseAgreements");
    v4 = [v5 fileURLWithPath:v6];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", v1];
    v8 = [v4 URLByAppendingPathComponent:v7];

    v9 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 path];
      *buf = 136446466;
      v24 = "NSString *_SFLicenseFilePathForBundleWithName(NSString *__strong)";
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_2659AD000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: License bundle path URL: '%{public}@'", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
    v12 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "NSString *_SFLicenseFilePathForBundleWithName(NSString *__strong)";
      v25 = 2114;
      v26 = @"html";
      _os_log_impl(&dword_2659AD000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Looking for license file with file extension: '%{public}@'", buf, 0x16u);
    }

    v13 = [v11 pathForResource:@"License" ofType:@"html"];
    v14 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "NSString *_SFLicenseFilePathForBundleWithName(NSString *__strong)";
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_2659AD000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: License file resolved to file at path: '%{public}@'", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _SFLicenseFilePathForBundleWithName_cold_1(v4, v15, v16, v17, v18, v19, v20, v21);
    }

    v13 = 0;
  }

  return v13;
}

id SFLicenseVersionNumber(uint64_t a1)
{
  if (SFLicenseVersionNumber_onceToken != -1)
  {
    SFLicenseVersionNumber_cold_1();
  }

  v2 = SFLicenseVersionNumber___licenseVersion;

  return v2;
}

uint64_t __SFLicenseVersionNumber_block_invoke()
{
  SFLicenseVersionNumber___licenseVersion = _SFLicenseVersionNumberForBundleWithName(@"iOS");

  return MEMORY[0x2821F96F8]();
}

NSObject *_SFLicenseVersionNumberForBundleWithName(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 length];
  v3 = SFLogForCategory(1uLL);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "NSString *_SFLicenseVersionNumberForBundleWithName(NSString *__strong)";
      v30 = 2114;
      v31 = v1;
      _os_log_impl(&dword_2659AD000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Resolving license version number for bundle name: '%{public}@'", buf, 0x16u);
    }

    v5 = MEMORY[0x277CBEBC0];
    v6 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/SoftwareLicenseAgreements");
    v7 = [v5 fileURLWithPath:v6];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", v1];
    v9 = [v7 URLByAppendingPathComponent:v8];

    v10 = [MEMORY[0x277CCA8D8] bundleWithURL:v9];
    v11 = [v10 pathForResource:@"License_version" ofType:0];
    v12 = _SFLicenseVersionNumberForBundleWithName_licenseVersionPath;
    _SFLicenseVersionNumberForBundleWithName_licenseVersionPath = v11;

    v13 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      _SFLicenseVersionNumberForBundleWithName_cold_1(v1, v13);
    }

    if (_SFLicenseVersionNumberForBundleWithName_licenseVersionPath)
    {
      v27 = 0;
      v14 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:_SFLicenseVersionNumberForBundleWithName_licenseVersionPath encoding:4 error:&v27];
      v15 = v27;
      if (v15)
      {
        v16 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _SFLicenseVersionNumberForBundleWithName_cold_2();
        }
      }
    }

    else
    {
      v15 = SFLogForCategory(1uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        _SFLicenseVersionNumberForBundleWithName_cold_3(v9, v15);
      }

      v14 = 0;
    }

    v25 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v29 = "NSString *_SFLicenseVersionNumberForBundleWithName(NSString *__strong)";
      v30 = 2114;
      v31 = v1;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_2659AD000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: License version for '%{public}@' resolved to: '%{public}@' .", buf, 0x20u);
    }

    v4 = v14;
    v24 = v4;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _SFLicenseVersionNumberForBundleWithName_cold_4(v4, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = 0;
  }

  return v24;
}

id SFAudioAccessoryLicenseFilePath(uint64_t a1)
{
  if (SFAudioAccessoryLicenseFilePath_onceToken != -1)
  {
    SFAudioAccessoryLicenseFilePath_cold_1();
  }

  v2 = SFAudioAccessoryLicenseFilePath___path;

  return v2;
}

uint64_t __SFAudioAccessoryLicenseFilePath_block_invoke()
{
  SFAudioAccessoryLicenseFilePath___path = _SFLicenseFilePathForBundleWithName(@"AudioAccessory");

  return MEMORY[0x2821F96F8]();
}

id SFAudioAccessoryLicenseVersionNumber(uint64_t a1)
{
  if (SFAudioAccessoryLicenseVersionNumber_onceToken != -1)
  {
    SFAudioAccessoryLicenseVersionNumber_cold_1();
  }

  v2 = SFAudioAccessoryLicenseVersionNumber___licenseVersion;

  return v2;
}

uint64_t __SFAudioAccessoryLicenseVersionNumber_block_invoke()
{
  SFAudioAccessoryLicenseVersionNumber___licenseVersion = _SFLicenseVersionNumberForBundleWithName(@"AudioAccessory");

  return MEMORY[0x2821F96F8]();
}

id SFWarrantyFilePath(uint64_t a1)
{
  if (SFWarrantyFilePath_onceToken != -1)
  {
    SFWarrantyFilePath_cold_1();
  }

  v2 = SFWarrantyFilePath___path;

  return v2;
}

void __SFWarrantyFilePath_block_invoke()
{
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v0 = [v6 objectForKey:*MEMORY[0x277CBE690]];
  v1 = [v0 uppercaseString];

  v2 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  v3 = [v2 lowercaseString];

  v4 = _SFWarrantyFilePathForBundleWithName(@"iPhone", v1, v3);
  v5 = SFWarrantyFilePath___path;
  SFWarrantyFilePath___path = v4;
}

id _SFWarrantyFilePathForBundleWithName(void *a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 length];
  v9 = SFLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
      v76 = 2114;
      v77 = v5;
      _os_log_impl(&dword_2659AD000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Resolving warranty file path for bundle name: '%{public}@'", buf, 0x16u);
    }

    v11 = MEMORY[0x277CBEBC0];
    v12 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/Warranties");
    v10 = [v11 fileURLWithPath:v12];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", v5];
    v14 = [v10 URLByAppendingPathComponent:v13];

    v15 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 path];
      *buf = 136446466;
      v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
      v76 = 2114;
      v77 = v16;
      _os_log_impl(&dword_2659AD000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Warranty bundle path URL: '%{public}@'", buf, 0x16u);
    }

    v17 = [MEMORY[0x277CCA8D8] bundleWithURL:v14];
    v18 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
      v76 = 2114;
      v77 = v6;
      v78 = 2114;
      v79 = v7;
      _os_log_impl(&dword_2659AD000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Current countryCode '%{public}@', languageCode '%{public}@'.", buf, 0x20u);
    }

    v64 = [v17 URLForResource:@"Warranties" withExtension:@"plist"];
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v19 = [v63 objectForKeyedSubscript:v6];
    v20 = [v19 objectForKeyedSubscript:v7];
    if ([v20 length])
    {
      v21 = [v17 pathForResource:v20 ofType:0];
      v22 = SFLogForCategory(1uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
        v76 = 2114;
        v77 = v21;
        _os_log_impl(&dword_2659AD000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Warranty file resolved (using currentLocale) to file at path: '%{public}@'", buf, 0x16u);
      }
    }

    else
    {
      v30 = SFLogForCategory(1uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
        v76 = 2114;
        v77 = v6;
        v78 = 2114;
        v79 = v7;
        _os_log_impl(&dword_2659AD000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: No warranty file found for '%{public}@-%{public}@' locale in lookup file.", buf, 0x20u);
      }

      v62 = v17;
      v58 = v14;
      v59 = v7;
      v60 = v5;

      [MEMORY[0x277D218D0] preferredLanguagesForRegion:v6];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v22 = v72 = 0u;
      v31 = [v22 countByEnumeratingWithState:&v69 objects:v82 count:16];
      v61 = v6;
      if (v31)
      {
        v32 = v31;
        v33 = *v70;
        while (2)
        {
          v34 = 0;
          v35 = v20;
          do
          {
            if (*v70 != v33)
            {
              objc_enumerationMutation(v22);
            }

            v36 = *(*(&v69 + 1) + 8 * v34);
            v37 = [v36 lowercaseString];
            v20 = [v19 objectForKeyedSubscript:v37];

            if ([v20 length])
            {
              v21 = [v62 pathForResource:v20 ofType:0];
              v42 = SFLogForCategory(1uLL);
              v6 = v61;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
                v76 = 2114;
                v77 = v61;
                v78 = 2114;
                v79 = v36;
                v80 = 2114;
                v81 = v21;
                _os_log_impl(&dword_2659AD000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s: Warranty file resolved (using countryCode '%{public}@' and fallback languageCode '%{public}@') to file at path: '%{public}@'", buf, 0x2Au);
              }

              v41 = v22;
              goto LABEL_33;
            }

            ++v34;
            v35 = v20;
          }

          while (v32 != v34);
          v32 = [v22 countByEnumeratingWithState:&v69 objects:v82 count:16];
          v6 = v61;
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      v38 = SFLogForCategory(1uLL);
      v17 = v62;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
        v76 = 2114;
        v77 = v6;
        _os_log_impl(&dword_2659AD000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: No warranty file found in lookup file for preferred languages of '%{public}@' countryCode.", buf, 0x16u);
      }

      v39 = [v19 objectForKeyedSubscript:@"en"];

      if (v39)
      {
        v40 = [v19 objectForKeyedSubscript:@"en"];

        v21 = [v62 pathForResource:v40 ofType:0];
        v41 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
          v76 = 2114;
          v77 = v6;
          v78 = 2114;
          v79 = v21;
          _os_log_impl(&dword_2659AD000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: Warranty file resolved (using English fallback with countryCode '%{public}@') to file at path: '%{public}@'", buf, 0x20u);
        }

        v20 = v40;
      }

      else
      {
        v44 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
          v76 = 2114;
          v77 = v6;
          _os_log_impl(&dword_2659AD000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s: No warranty file found in lookup file for English language of '%{public}@' countryCode.", buf, 0x16u);
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v41 = [v19 allKeys];
        v45 = [v41 countByEnumeratingWithState:&v65 objects:v73 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v66;
          while (2)
          {
            v48 = 0;
            v49 = v20;
            do
            {
              if (*v66 != v47)
              {
                objc_enumerationMutation(v41);
              }

              v50 = *(*(&v65 + 1) + 8 * v48);
              v20 = [v19 objectForKeyedSubscript:v50];

              if ([v20 length])
              {
                v21 = [v62 pathForResource:v20 ofType:0];
                v55 = SFLogForCategory(1uLL);
                v6 = v61;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446978;
                  v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
                  v76 = 2114;
                  v77 = v61;
                  v78 = 2114;
                  v79 = v50;
                  v80 = 2114;
                  v81 = v21;
                  _os_log_impl(&dword_2659AD000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: Warranty file resolved (using countryCode '%{public}@' and mapping file languageCode '%{public}@') to file at path: '%{public}@'", buf, 0x2Au);
                }

                goto LABEL_56;
              }

              ++v48;
              v49 = v20;
            }

            while (v46 != v48);
            v46 = [v41 countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (v46)
            {
              continue;
            }

            break;
          }
        }

        v51 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
          _os_log_impl(&dword_2659AD000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s: No warranty file found, falling back to default.", buf, 0xCu);
        }

        v52 = MEMORY[0x277CBEBC0];
        v53 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/Notices");
        v41 = [v52 fileURLWithPath:v53];

        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", @"Warranty"];
        v55 = [v41 URLByAppendingPathComponent:v54];

        v56 = [MEMORY[0x277CCA8D8] bundleWithURL:v55];
        v21 = [v56 pathForResource:@"Warranty" ofType:@"html"];
        v57 = SFLogForCategory(1uLL);
        v6 = v61;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v75 = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
          v76 = 2114;
          v77 = v21;
          _os_log_impl(&dword_2659AD000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s: Warranty file resolved to default file at path: '%{public}@'", buf, 0x16u);
        }

LABEL_56:
LABEL_33:
        v17 = v62;
      }

      v7 = v59;
      v5 = v60;
      v14 = v58;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SFWarrantyFilePathForBundleWithName_cold_1(v10, v23, v24, v25, v26, v27, v28, v29);
    }

    v21 = 0;
  }

  return v21;
}

id SFAudioAccessoryWarrantyFilePath(uint64_t a1)
{
  if (SFAudioAccessoryWarrantyFilePath_onceToken != -1)
  {
    SFAudioAccessoryWarrantyFilePath_cold_1();
  }

  v2 = SFAudioAccessoryWarrantyFilePath___path;

  return v2;
}

void __SFAudioAccessoryWarrantyFilePath_block_invoke()
{
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v0 = [v6 objectForKey:*MEMORY[0x277CBE690]];
  v1 = [v0 uppercaseString];

  v2 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  v3 = [v2 lowercaseString];

  v4 = _SFWarrantyFilePathForBundleWithName(@"HomePod", v1, v3);
  v5 = SFAudioAccessoryWarrantyFilePath___path;
  SFAudioAccessoryWarrantyFilePath___path = v4;
}

id SFBuiltInRegulatoryImageForModelAndVariant(void *a1, void *a2)
{
  v117[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%uonly_", v7];
  v9 = SFLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    SFBuiltInRegulatoryImageForModelAndVariant_cold_1();
  }

  if (([v3 isEqualToString:@"B482"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"B532"))
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 sf_screenClassString];
    v12 = [v11 substringToIndex:9];

    v13 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      SFBuiltInRegulatoryImageForModelAndVariant_cold_2();
    }

    v14 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@_%@_LT_@2x", v3, v12];
    v15 = MEMORY[0x277D755B8];
    v16 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
    v17 = [v16 stringByAppendingPathComponent:v14];
    v18 = [v15 imageWithContentsOfFile:v17];

    if (v18)
    {
      v105 = v18;
      v101 = v3;
      v19 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@_%@_DK_@2x", v3, v12];
      v20 = MEMORY[0x277D755B8];
      v21 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
      v22 = [v21 stringByAppendingPathComponent:v19];
      v23 = [v20 imageWithContentsOfFile:v22];

      if (v23)
      {
        v99 = v19;
        v103 = v8;
        v24 = [MEMORY[0x277D75C80] currentTraitCollection];
        v25 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v7];
        v26 = objc_alloc_init(MEMORY[0x277D755C0]);
        v27 = MEMORY[0x277D75C80];
        v117[0] = v25;
        v28 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
        v117[1] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
        v30 = [v27 traitCollectionWithTraitsFromCollections:v29];
        [v26 registerImage:v105 withTraitCollection:v30];

        v31 = MEMORY[0x277D75C80];
        v116[0] = v25;
        v32 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
        v116[1] = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
        v34 = [v31 traitCollectionWithTraitsFromCollections:v33];
        [v26 registerImage:v23 withTraitCollection:v34];

        v35 = [v26 imageWithTraitCollection:v24];
        v36 = SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage;
        SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage = v35;

        v37 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v113 = "UIImage * _Nonnull SFBuiltInRegulatoryImageForModelAndVariant(NSString *__strong _Nonnull, NSString *__strong _Nonnull)";
          v114 = 2112;
          v115 = v14;
          _os_log_impl(&dword_2659AD000, v37, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to style-sensitive Regulatory Image with base name '%{Public}@'.", buf, 0x16u);
        }

        v38 = SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage;
        v3 = v101;
        v8 = v103;
        v18 = v105;
        goto LABEL_33;
      }

      v39 = v19;
      v3 = v101;
      v18 = v105;
    }

    else
    {
      v39 = 0;
    }

    if (!v4)
    {
      if (v18)
      {
        goto LABEL_39;
      }

      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v18 = 0;
  v14 = 0;
  v39 = 0;
  if (v4)
  {
LABEL_17:
    v40 = v8;
    v41 = v14;
    v14 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@-%@%@", v3, v4, v40];

    v42 = MEMORY[0x277D755B8];
    v43 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
    v44 = [v43 stringByAppendingPathComponent:v14];
    v45 = [v42 imageWithContentsOfFile:v44];

    v106 = v45;
    if (v45)
    {
      v104 = v40;
      v46 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@-%@_dark%@", v3, v4, v40];

      v47 = MEMORY[0x277D755B8];
      v48 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
      v49 = [v48 stringByAppendingPathComponent:v46];
      v50 = [v47 imageWithContentsOfFile:v49];

      if (v50)
      {
        v99 = v46;
        v100 = v4;
        v102 = v3;
        v51 = [MEMORY[0x277D75C80] currentTraitCollection];
        v52 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v7];
        v53 = objc_alloc_init(MEMORY[0x277D755C0]);
        v54 = MEMORY[0x277D75C80];
        v111[0] = v52;
        v55 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
        v111[1] = v55;
        v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
        v57 = [v54 traitCollectionWithTraitsFromCollections:v56];
        v18 = v106;
        [v53 registerImage:v106 withTraitCollection:v57];

        v58 = MEMORY[0x277D75C80];
        v110[0] = v52;
        v59 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
        v110[1] = v59;
        v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
        v61 = [v58 traitCollectionWithTraitsFromCollections:v60];
        [v53 registerImage:v50 withTraitCollection:v61];

        v62 = [v53 imageWithTraitCollection:v51];
        v63 = SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage_324;
        SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage_324 = v62;

        v64 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v113 = "UIImage * _Nonnull SFBuiltInRegulatoryImageForModelAndVariant(NSString *__strong _Nonnull, NSString *__strong _Nonnull)";
          v114 = 2112;
          v115 = v14;
          _os_log_impl(&dword_2659AD000, v64, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to style-sensitive Regulatory Image with base name '%{Public}@'.", buf, 0x16u);
        }

        v38 = SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage_324;
LABEL_32:
        v4 = v100;
        v3 = v102;
        v8 = v104;
LABEL_33:
        v39 = v99;
        goto LABEL_43;
      }

      v39 = v46;
      v8 = v104;
      v18 = v106;
      goto LABEL_39;
    }

    v8 = v40;
  }

LABEL_25:
  v65 = SFLogForCategory(1uLL);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    SFBuiltInRegulatoryImageForModelAndVariant_cold_3();
  }

  v66 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@%@", v3, v8];

  v67 = v8;
  v68 = MEMORY[0x277D755B8];
  v69 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
  v70 = [v69 stringByAppendingPathComponent:v66];
  v18 = [v68 imageWithContentsOfFile:v70];

  if (!v18)
  {
    v8 = v67;
    v90 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      SFBuiltInRegulatoryImageForModelAndVariant_cold_4(v90, v91, v92, v93, v94, v95, v96, v97);
    }

    v18 = 0;
    goto LABEL_42;
  }

  v104 = v67;
  v107 = v66;
  v71 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@_dark%@", v3, v67];

  v72 = MEMORY[0x277D755B8];
  v73 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
  v74 = [v73 stringByAppendingPathComponent:v71];
  v75 = [v72 imageWithContentsOfFile:v74];

  if (v75)
  {
    v99 = v71;
    v100 = v4;
    v102 = v3;
    v76 = [MEMORY[0x277D75C80] currentTraitCollection];
    v77 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v7];
    v78 = objc_alloc_init(MEMORY[0x277D755C0]);
    v79 = MEMORY[0x277D75C80];
    v109[0] = v77;
    v80 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v109[1] = v80;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
    v82 = [v79 traitCollectionWithTraitsFromCollections:v81];
    [v78 registerImage:v18 withTraitCollection:v82];

    v83 = MEMORY[0x277D75C80];
    v108[0] = v77;
    v84 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v108[1] = v84;
    v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
    v86 = [v83 traitCollectionWithTraitsFromCollections:v85];
    [v78 registerImage:v75 withTraitCollection:v86];

    v87 = [v78 imageWithTraitCollection:v76];
    v88 = SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage_331;
    SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage_331 = v87;

    v89 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v113 = "UIImage * _Nonnull SFBuiltInRegulatoryImageForModelAndVariant(NSString *__strong _Nonnull, NSString *__strong _Nonnull)";
      v114 = 2112;
      v115 = v107;
      _os_log_impl(&dword_2659AD000, v89, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to style-sensitive Regulatory Image with base name '%{Public}@'.", buf, 0x16u);
    }

    v38 = SFBuiltInRegulatoryImageForModelAndVariant_styleSensitiveImage_331;
    v14 = v107;
    goto LABEL_32;
  }

  v39 = v71;
  v8 = v104;
  v14 = v107;
LABEL_39:
  v90 = SFLogForCategory(1uLL);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v113 = "UIImage * _Nonnull SFBuiltInRegulatoryImageForModelAndVariant(NSString *__strong _Nonnull, NSString *__strong _Nonnull)";
    v114 = 2112;
    v115 = v14;
    _os_log_impl(&dword_2659AD000, v90, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to Regulatory Image with name '%{Public}@'.", buf, 0x16u);
  }

  v66 = v14;
LABEL_42:

  v18 = v18;
  v14 = v66;
  v38 = v18;
LABEL_43:

  return v38;
}

id SFBuiltInRegulatoryImageForApplePencilModel(void *a1)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", MGGetSInt32Answer()];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", MGGetSInt32Answer()];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@x%@", v5, v6];
  v8 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@-%@", v1, v7];
  v9 = MEMORY[0x277D755B8];
  v10 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
  v11 = [v10 stringByAppendingPathComponent:v8];
  v12 = [v9 imageWithContentsOfFile:v11];

  if (!v12)
  {
    v32 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      SFBuiltInRegulatoryImageForApplePencilModel_cold_1(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    v13 = 0;
    goto LABEL_12;
  }

  v43 = v5;
  v44 = v8;
  v13 = [@"RegulatoryInfo-" stringByAppendingFormat:@"%@-%@_dark", v1, v7];
  v14 = MEMORY[0x277D755B8];
  v15 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
  v16 = [v15 stringByAppendingPathComponent:v13];
  v17 = [v14 imageWithContentsOfFile:v16];

  if (!v17)
  {
    v32 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "UIImage * _Nonnull SFBuiltInRegulatoryImageForApplePencilModel(NSString *__strong _Nonnull)";
      v47 = 2112;
      v8 = v44;
      v48 = v44;
      _os_log_impl(&dword_2659AD000, v32, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to Regulatory Image with name '%{Public}@'.", buf, 0x16u);
      v5 = v43;
    }

    else
    {
      v5 = v43;
      v8 = v44;
    }

LABEL_12:

    v31 = v12;
    goto LABEL_13;
  }

  v42 = v6;
  v41 = [MEMORY[0x277D75C80] currentTraitCollection];
  v18 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v4];
  v19 = objc_alloc_init(MEMORY[0x277D755C0]);
  v20 = MEMORY[0x277D75C80];
  v50[0] = v18;
  v21 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v50[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  v23 = [v20 traitCollectionWithTraitsFromCollections:v22];
  [v19 registerImage:v12 withTraitCollection:v23];

  v24 = MEMORY[0x277D75C80];
  v49[0] = v18;
  v25 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v49[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  v27 = [v24 traitCollectionWithTraitsFromCollections:v26];
  [v19 registerImage:v17 withTraitCollection:v27];

  v28 = [v19 imageWithTraitCollection:v41];
  v29 = SFBuiltInRegulatoryImageForApplePencilModel_styleSensitiveImage;
  SFBuiltInRegulatoryImageForApplePencilModel_styleSensitiveImage = v28;

  v30 = SFLogForCategory(1uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "UIImage * _Nonnull SFBuiltInRegulatoryImageForApplePencilModel(NSString *__strong _Nonnull)";
    v47 = 2112;
    v48 = v44;
    _os_log_impl(&dword_2659AD000, v30, OS_LOG_TYPE_DEFAULT, "%{Public}s: Resolved to style-sensitive Regulatory Image with base name '%{Public}@'.", buf, 0x16u);
  }

  v31 = SFBuiltInRegulatoryImageForApplePencilModel_styleSensitiveImage;
  v5 = v43;
  v6 = v42;
  v8 = v44;
LABEL_13:

  return v31;
}

id SFRegulatoryImage()
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v1 = [v0 regulatoryImage];

  return v1;
}

uint64_t SFIsRegulatoryImageFromLockdown()
{
  v108 = *MEMORY[0x277D85DE8];
  v96 = 1;
  v0 = container_system_group_path_for_identifier();
  if (!v0)
  {
    v38 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      SFIsRegulatoryImageFromLockdown_cold_9();
    }

    return 0;
  }

  v1 = v0;
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
  v3 = chmod(v1, 0x1FFu);
  free(v1);
  if (v3 && *__error() != 1)
  {
    v4 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SFIsRegulatoryImageFromLockdown_cold_1(v4);
    }
  }

  if (v2)
  {
    v5 = [v2 stringByAppendingPathComponent:@"Library"];
    v6 = [v5 stringByAppendingPathComponent:@"RegulatoryImages"];
    v7 = [v6 stringByAppendingPathComponent:@"regulatory_images.plist"];

    v8 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v105 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
      v106 = 2112;
      v107 = v7;
      _os_log_impl(&dword_2659AD000, v8, OS_LOG_TYPE_DEFAULT, "%{Public}s: Lockdown Regulatory Images at '%@'", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"RegulatoryImages"];
      if (!v11)
      {
        v12 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          SFIsRegulatoryImageFromLockdown_cold_7(v12, v49, v50, v51, v52, v53, v54, v55);
        }

        v39 = 0;
        goto LABEL_78;
      }

      v12 = MGCopyAnswer();
      v13 = MGCopyAnswer();
      v90 = [v12 stringByAppendingFormat:@"-%@", v13];
      v14 = [v12 length];
      v15 = SFLogForCategory(1uLL);
      v16 = v15;
      if (!v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          SFIsRegulatoryImageFromLockdown_cold_6(v16, v56, v57, v58, v59, v60, v61, v62);
        }

        goto LABEL_76;
      }

      v85 = v13;
      v87 = v10;
      v88 = v7;
      v89 = v2;
      v17 = v90;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v105 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
        v106 = 2112;
        v107 = v90;
        _os_log_impl(&dword_2659AD000, v16, OS_LOG_TYPE_DEFAULT, "%{Public}s: Looking for Lockdown Regulatory Image '%@'", buf, 0x16u);
      }

      v18 = [MEMORY[0x277D759A0] mainScreen];
      [v18 scale];
      v20 = v19;

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v86 = v11;
      obj = v11;
      v21 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
      if (!v21)
      {
LABEL_43:

        v7 = v88;
        v2 = v89;
        v11 = v86;
        v13 = v85;
        goto LABEL_74;
      }

      v22 = v21;
      v23 = *v93;
LABEL_17:
      v24 = 0;
      while (1)
      {
        if (*v93 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v92 + 1) + 8 * v24);
        v26 = [v25 objectForKey:@"ImageId"];
        v27 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v105 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
          v106 = 2112;
          v107 = v26;
          _os_log_impl(&dword_2659AD000, v27, OS_LOG_TYPE_DEFAULT, "%{Public}s: Candidate Lockdown Regulatory Image '%@'", buf, 0x16u);
        }

        if (-[NSObject caseInsensitiveCompare:](v12, "caseInsensitiveCompare:", v26) && [v17 caseInsensitiveCompare:v26])
        {
          goto LABEL_41;
        }

        v28 = [v25 objectForKey:@"ImageData"];
        v29 = [v25 objectForKey:@"ImageDelta"];
        [v29 BOOLValue];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = CGImageSourceCreateWithData(v28, 0);
          if (v30)
          {
            v31 = v30;
            Count = CGImageSourceGetCount(v30);
            if (Count)
            {
              v33 = Count;
              ImageAtIndex = CGImageSourceCreateImageAtIndex(v31, 0, 0);
              v35 = ImageAtIndex;
              if (v33 == 2)
              {
                v63 = CGImageSourceCreateImageAtIndex(v31, 1uLL, 0);
                v64 = v63;
                if (v35 && v63)
                {
                  v83 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v35 scale:0 orientation:v20];
                  v84 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v64 scale:0 orientation:v20];
                  v81 = [MEMORY[0x277D75C80] currentTraitCollection];
                  [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v20];
                  v65 = image = v64;
                  v66 = objc_alloc_init(MEMORY[0x277D755C0]);
                  v67 = MEMORY[0x277D75C80];
                  v102[0] = v65;
                  v68 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
                  v102[1] = v68;
                  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
                  v70 = [v67 traitCollectionWithTraitsFromCollections:v69];
                  [v66 registerImage:v83 withTraitCollection:v70];

                  v71 = MEMORY[0x277D75C80];
                  v101[0] = v65;
                  v72 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
                  v101[1] = v72;
                  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
                  v74 = [v71 traitCollectionWithTraitsFromCollections:v73];
                  [v66 registerImage:v84 withTraitCollection:v74];

                  v39 = [v66 imageWithTraitCollection:v81];
                  CGImageRelease(v35);
                  CGImageRelease(image);
                  CFRelease(v31);
                  v75 = SFLogForCategory(1uLL);
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v105 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
                    v106 = 2112;
                    v107 = v26;
                    _os_log_impl(&dword_2659AD000, v75, OS_LOG_TYPE_DEFAULT, "%{Public}s: Matched style-sensitive Lockdown Regulatory Image '%{Public}@'", buf, 0x16u);
                  }

                  v7 = v88;
                  v2 = v89;
                  v10 = v87;
                  v76 = v83;
                }

                else
                {
                  if (v35)
                  {
                    CGImageRelease(v35);
                  }

                  if (v64)
                  {
                    CGImageRelease(v64);
                  }

                  CFRelease(v31);
                  v76 = SFLogForCategory(1uLL);
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                  {
                    SFIsRegulatoryImageFromLockdown_cold_3();
                  }

                  v39 = 0;
                  v7 = v88;
                  v2 = v89;
                }

LABEL_73:

                v13 = v85;
                v11 = v86;
                if (v39)
                {
                  goto LABEL_77;
                }

LABEL_74:
                v16 = SFLogForCategory(1uLL);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  SFIsRegulatoryImageFromLockdown_cold_5();
                }

LABEL_76:

                v39 = 0;
LABEL_77:

LABEL_78:
LABEL_79:

                goto LABEL_80;
              }

              v17 = v90;
              if (ImageAtIndex)
              {
                v39 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:ImageAtIndex scale:0 orientation:v20];
                CGImageRelease(v35);
                CFRelease(v31);
                v76 = SFLogForCategory(1uLL);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v105 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
                  v106 = 2112;
                  v107 = v26;
                  _os_log_impl(&dword_2659AD000, v76, OS_LOG_TYPE_DEFAULT, "%{Public}s: Matched Lockdown Regulatory Image '%@'", buf, 0x16u);
                }

                v7 = v88;
                v2 = v89;
                goto LABEL_73;
              }

              v36 = SFLogForCategory(1uLL);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v105 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
                v106 = 2112;
                v107 = v26;
                _os_log_error_impl(&dword_2659AD000, v36, OS_LOG_TYPE_ERROR, "%{Public}s: Failed decoding Lockdown Regulatory Image '%{Public}@'", buf, 0x16u);
              }
            }

            else
            {
              v36 = SFLogForCategory(1uLL);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v105 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
                v106 = 2112;
                v107 = v26;
                _os_log_error_impl(&dword_2659AD000, v36, OS_LOG_TYPE_ERROR, "%{Public}s: Empty Lockdown Regulatory Image '%{Public}@'", buf, 0x16u);
              }

              v17 = v90;
            }

            CFRelease(v31);
            goto LABEL_40;
          }

          v37 = SFLogForCategory(1uLL);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            SFIsRegulatoryImageFromLockdown_cold_4(v99, &v100, v37);
          }
        }

        else
        {
          v37 = SFLogForCategory(1uLL);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            SFIsRegulatoryImageFromLockdown_cold_2(v97, &v98, v37);
          }
        }

LABEL_40:
LABEL_41:

        if (v22 == ++v24)
        {
          v22 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
          if (v22)
          {
            goto LABEL_17;
          }

          goto LABEL_43;
        }
      }
    }

    v40 = [MEMORY[0x277CCAA00] defaultManager];
    v41 = [v40 fileExistsAtPath:v7];

    if (v41)
    {
      v11 = SFLogForCategory(1uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        SFIsRegulatoryImageFromLockdown_cold_8(v11, v42, v43, v44, v45, v46, v47, v48);
      }

      v39 = 0;
      goto LABEL_79;
    }

    v39 = 0;
LABEL_80:
  }

  else
  {
    v39 = 0;
  }

  v77 = v39;

  if (!v77)
  {
    return 0;
  }

  v78 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v79 = [v78 isLockdownImageOverridden] ^ 1;

  return v79;
}

id SFIndiaBISNumber()
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v1 = [v0 indiaBISRegulatoryNumber];

  return v1;
}

id SFIndiaBISRegulatoryImage()
{
  v0 = MEMORY[0x277D755B8];
  v1 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
  v2 = [v1 stringByAppendingPathComponent:@"IndiaBISMarking"];
  v3 = [v0 imageWithContentsOfFile:v2];

  return v3;
}

id SFCountryOfOrigin()
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v1 = [v0 countryOfOriginString];

  return v1;
}

id SFChinaMIITBlueStickerLabelImage()
{
  v0 = SFChinaMIITBlueStickerNalNumber();
  v1 = [v0 substringToIndex:2];

  v2 = [v1 isEqualToString:@"00"];
  LODWORD(v0) = v2;
  v3 = MEMORY[0x277D755B8];
  v4 = SFBundleForSettingsFoundationFramework(v2);
  if (v0)
  {
    v5 = @"ChinaGreensticker";
  }

  else
  {
    v5 = @"ChinaBluesticker";
  }

  v6 = [v3 imageNamed:v5 inBundle:v4 compatibleWithTraitCollection:0];

  return v6;
}

id SFChinaMIITBlueStickerNalNumber()
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v1 = [v0 miitDictionary];
  v2 = [v1 objectForKeyedSubscript:@"nal"];

  return v2;
}

id SFChinaMIITBlueStickerLabelId()
{
  v0 = +[SFDeviceRegulatoryAttributes currentDeviceAttributes];
  v1 = [v0 miitDictionary];
  v2 = [v1 objectForKeyedSubscript:@"label"];

  return v2;
}

id SFIMEINumber(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SFGreenTeaIMEILog(@"Reading IMEI from CTMobileEquipmentInfo", a2, a3, a4, a5, a6, a7, a8, vars0);
  v8 = MGCopyAnswer();

  return v8;
}

id SFAcknowledgementsDocumentFilePath(uint64_t a1)
{
  if (SFAcknowledgementsDocumentFilePath_onceToken != -1)
  {
    SFAcknowledgementsDocumentFilePath_cold_1();
  }

  v2 = SFAcknowledgementsDocumentFilePath___path;

  return v2;
}

void __SFAcknowledgementsDocumentFilePath_block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/Notices");
  v7 = [v0 fileURLWithPath:v1];

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", @"Acknowledgements"];
  v3 = [v7 URLByAppendingPathComponent:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = [v4 pathForResource:@"Acknowledgements" ofType:@"html"];
  v6 = SFAcknowledgementsDocumentFilePath___path;
  SFAcknowledgementsDocumentFilePath___path = v5;
}

id SFAudioAccessoryAcknowledgementsDocumentFilePath(uint64_t a1)
{
  if (SFAudioAccessoryAcknowledgementsDocumentFilePath_onceToken != -1)
  {
    SFAudioAccessoryAcknowledgementsDocumentFilePath_cold_1();
  }

  v2 = SFAudioAccessoryAcknowledgementsDocumentFilePath___path;

  return v2;
}

void __SFAudioAccessoryAcknowledgementsDocumentFilePath_block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/Notices");
  v7 = [v0 fileURLWithPath:v1];

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", @"AudioAccessoryAcknowledgements"];
  v3 = [v7 URLByAppendingPathComponent:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = [v4 pathForResource:@"Acknowledgements" ofType:@"html"];
  v6 = SFAudioAccessoryAcknowledgementsDocumentFilePath___path;
  SFAudioAccessoryAcknowledgementsDocumentFilePath___path = v5;
}

id SFRoHSComplianceDocumentFilePath(uint64_t a1)
{
  if (SFRoHSComplianceDocumentFilePath_onceToken != -1)
  {
    SFRoHSComplianceDocumentFilePath_cold_1();
  }

  v2 = SFRoHSComplianceDocumentFilePath___path;

  return v2;
}

void __SFRoHSComplianceDocumentFilePath_block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/Notices");
  v12 = [v0 fileURLWithPath:v1];

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", @"RoHS"];
  v3 = [v12 URLByAppendingPathComponent:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sf_isiPhone];

  if (v6)
  {
    v7 = @"rohs-iphone";
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 sf_isiPad];

    if (v9)
    {
      v7 = @"rohs-ipad";
    }

    else
    {
      v7 = @"rohs-compliance";
    }
  }

  v10 = [v4 pathForResource:v7 ofType:@"html"];
  v11 = SFRoHSComplianceDocumentFilePath___path;
  SFRoHSComplianceDocumentFilePath___path = v10;
}

id SFBuiltInAppsDocumentFilePath(uint64_t a1)
{
  if (SFBuiltInAppsDocumentFilePath_onceToken != -1)
  {
    SFBuiltInAppsDocumentFilePath_cold_1();
  }

  v2 = SFBuiltInAppsDocumentFilePath___path;

  return v2;
}

void __SFBuiltInAppsDocumentFilePath_block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/Notices");
  v7 = [v0 fileURLWithPath:v1];

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", @"BuiltInApps"];
  v3 = [v7 URLByAppendingPathComponent:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = [v4 pathForResource:@"builtinapps" ofType:@"html"];
  v6 = SFBuiltInAppsDocumentFilePath___path;
  SFBuiltInAppsDocumentFilePath___path = v5;
}

id SFLocalizedMultipickerStringForKey(void *a1)
{
  v1 = SFLocalizedMultipickerStringForKey_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SFLocalizedMultipickerStringForKey_cold_1();
  }

  v3 = [SFLocalizedMultipickerStringForKey___multipickerBundle localizedStringForKey:v2 value:0 table:@"Multiterms"];

  return v3;
}

void __SFLocalizedMultipickerStringForKey_block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/MultipickerStrings");
  v6 = [v0 fileURLWithPath:v1];

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", @"iPhone"];
  v3 = [v6 URLByAppendingPathComponent:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = SFLocalizedMultipickerStringForKey___multipickerBundle;
  SFLocalizedMultipickerStringForKey___multipickerBundle = v4;
}

id SFRFExposureDocumentHTMLString()
{
  v0 = [MEMORY[0x277CCAB68] string];
  v1 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"RF_INTRO"];
  if ([(__CFString *)v1 isEqualToString:@"RF_INTRO_IPHONE"])
  {
    if (SFDeviceSupportsFall2020OrLaterELabel())
    {

      v1 = @"RF_INTRO_IPHONE_2020";
    }

    v2 = [MEMORY[0x277CCABB0] numberWithInt:10];
    v3 = MGCopyAnswer();
    v4 = v3;
    if (v3)
    {
      v5 = v3;

      v2 = v5;
    }

    else
    {
      v6 = SFLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        SFRFExposureDocumentHTMLString_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    v14 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v2 numberStyle:0];
    v15 = MEMORY[0x277CCACA8];
    v16 = _SFRFExposureDocumentLocalizedStringForKey(v1);
    v17 = [v15 stringWithFormat:v16, v14, v14];

    [v0 appendString:v17];
  }

  else
  {
    if ([(__CFString *)v1 isEqualToString:@"RF_INTRO_IPAD"]&& SFDeviceSupportsSpring2021OrLaterELabel())
    {

      v1 = @"RF_INTRO_IPAD_2021";
    }

    v2 = _SFRFExposureDocumentLocalizedStringForKey(v1);
    [v0 appendString:v2];
  }

  v18 = _SFRFExposureDocumentLocalizedStringForKey(@"RF_URL_INFO");
  v19 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v20 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 sf_productType];
  v23 = [v20 stringWithFormat:@"www.apple.com/legal/rfexposure/%@/%@/", v22, v19];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"<a href=http://%@>%@</a>", v23, v23];

  [v0 appendFormat:v18, v24];
  if ((MGGetBoolAnswer() & 1) != 0 || MGGetBoolAnswer())
  {
    if (MGGetBoolAnswer() && MGGetBoolAnswer() && !SFDeviceSupportsSpring2021OrLaterELabel())
    {
      v25 = @"CELLULAR_INFO_WPT";
    }

    else if ([(__CFString *)v1 hasPrefix:@"RF_INTRO_IPHONE"]&& SFDeviceSupportsFall2020OrLaterELabel())
    {
      v25 = @"CELLULAR_INFO_2020";
    }

    else
    {
      v25 = @"CELLULAR_INFO";
    }

    v26 = _SFRFExposureDocumentLocalizedStringForKey(v25);
    [v0 appendString:v26];
  }

  v27 = [MEMORY[0x277D75128] sharedApplication];
  v28 = [v27 userInterfaceLayoutDirection];
  v29 = @"ltr";
  if (v28 == 1)
  {
    v29 = @"rtl";
  }

  v30 = v29;

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"<!DOCTYPE html><html dir=%@><head><meta name=viewport content=width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no/><meta charset=utf-8><title></title><style type=text/css>:root { supported-color-schemes: light dark } body  { font: -apple-system-body; word-wrap: break-word;-khtml-nbsp-mode: space;-khtml-line-break: after-white-space; color: -apple-system-label; } p.indented { margin-right: 37.0px; }</style></head><body>%@</body></html>", v30, v0];;

  return v31;
}

id _SFRFExposureDocumentLocalizedStringForKey(void *a1)
{
  v1 = _SFRFExposureDocumentLocalizedStringForKey_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _SFRFExposureDocumentLocalizedStringForKey_cold_1();
  }

  v3 = [_SFRFExposureDocumentLocalizedStringForKey___rfExposureBundle localizedStringForKey:v2 value:0 table:@"RFExposure"];

  return v3;
}

id SFBlueStickerFont(uint64_t a1)
{
  v1 = SFBundleForSettingsFoundationFramework(a1);
  v2 = [v1 pathForResource:@"HYCuSong-CAICT" ofType:@"ttf"];

  FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL([MEMORY[0x277CBEBC0] fileURLWithPath:v2]);
  v4 = [(__CFArray *)FontDescriptorsFromURL firstObject];

  if (v4)
  {
    v5 = MEMORY[0x277D74300];
    v6 = [(__CFArray *)FontDescriptorsFromURL firstObject];
    v7 = [v5 fontWithDescriptor:v6 size:14.0];
  }

  else
  {
    v8 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SFBlueStickerFont_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = [MEMORY[0x277D74300] fontWithName:@"Charter-Roman" size:14.0];
  }

  return v7;
}

id getSTManagementState()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getSTManagementStateClass_softClass;
  v8 = getSTManagementStateClass_softClass;
  if (!getSTManagementStateClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getSTManagementStateClass_block_invoke;
    v4[3] = &unk_279BB0880;
    v4[4] = &v5;
    __getSTManagementStateClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_opt_new();

  return v2;
}

void sub_2659BA8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2659BAE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SpringBoardPreferenceDomain_block_invoke()
{
  result = CPCopySharedResourcesPreferencesDomainForDomain();
  SpringBoardPreferenceDomain_springBoardDomain = result;
  return result;
}

Class __getSTManagementStateClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BB08A0;
    v6 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTManagementStateClass_block_invoke_cold_1();
  }

  getSTManagementStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t SFPerformSelector2(const char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v8 = SFLogForCategory(2uLL);
  v9 = os_signpost_id_make_with_pointer(v8, "SFPerformSelector");
  v10 = SFLogForCategory(2uLL);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v10))
    {
      v12 = objc_opt_class();
      v22 = 138543618;
      v23 = NSStringFromClass(v12);
      v24 = 2114;
      v25 = NSStringFromSelector(a1);
      _os_signpost_emit_with_name_impl(&dword_2659AD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SFPerformSelector2", "Target: %{public}@, Selector: %{public}@", &v22, 0x16u);
    }
  }

  v13 = [a2 methodForSelector:a1];
  v14 = [objc_msgSend(a2 methodSignatureForSelector:{a1), "methodReturnLength"}];
  if (a4)
  {
    v15 = v13(a2, a1, a3, a4);
  }

  else if (a3)
  {
    v15 = (v13)(a2, a1, a3);
  }

  else
  {
    v15 = (v13)(a2, a1);
  }

  v17 = v15;
  v18 = SFLogForCategory(2uLL);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v18))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_2659AD000, v19, OS_SIGNPOST_INTERVAL_END, v9, "SFPerformSelector2", &unk_2659C50D2, &v22, 2u);
    }
  }

  v20 = NSStringFromSelector(a1);
  v21 = objc_opt_class();
  [SFSettingsAnalytics trackingPerformSelector:v20 targetString:NSStringFromClass(v21)];
  if (v14)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

id SF_LocalizedStringForCountryOfOriginAssembledIn(void *a1)
{
  v1 = a1;
  v2 = SFBundleForSettingsFoundationFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"CountryOfOriginAssembledIn"];

  return v3;
}

id SFBundleForSettingsFoundationFramework(uint64_t a1)
{
  if (SFBundleForSettingsFoundationFramework_onceToken != -1)
  {
    SFBundleForSettingsFoundationFramework_cold_1();
  }

  v2 = SFBundleForSettingsFoundationFramework__settingsFoundationFrameworkBundle;

  return v2;
}

id SF_LocalizedStringForCountryOfOriginMadeIn(void *a1)
{
  v1 = a1;
  v2 = SFBundleForSettingsFoundationFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"CountryOfOriginMadeIn"];

  return v3;
}

id SF_LocalizedStringForSettingsFoundation(void *a1)
{
  v1 = a1;
  v2 = SFBundleForSettingsFoundationFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"SettingsFoundation"];

  return v3;
}

uint64_t __SFBundleForSettingsFoundationFramework_block_invoke()
{
  SFBundleForSettingsFoundationFramework__settingsFoundationFrameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id SFLogForCategory(unint64_t a1)
{
  if (a1 >= 5)
  {
    SFLogForCategory_cold_2();
  }

  if (SFLogForCategory_loggingToken != -1)
  {
    SFLogForCategory_cold_1();
  }

  v2 = SFLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __SFLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.settings.SettingsFoundation", "Base");
  v1 = SFLogForCategory_logObjects[0];
  SFLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.settings.SettingsFoundation", "Legal");
  v3 = qword_280CE8290;
  qword_280CE8290 = v2;

  v4 = os_log_create("com.apple.settings.SettingsFoundation", "Signposts");
  v5 = qword_280CE8298;
  qword_280CE8298 = v4;

  v6 = os_log_create("com.apple.settings.SettingsFoundation", "DeviceAttributes");
  v7 = qword_280CE82A0;
  qword_280CE82A0 = v6;

  qword_280CE82A8 = os_log_create("com.apple.settings.SettingsFoundation", "SettingsAnalytics");

  return MEMORY[0x2821F96F8]();
}

void SFGreenTeaIMEILog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (SFGreenTeaLoggerForIMEI_onceToken != -1)
  {
    SFGreenTeaIMEILog_cold_1();
  }

  if (SFGreenTeaLoggerForIMEI_psgIMEILogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_2659AD000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }
}

uint64_t __SFGreenTeaLoggerForIMEI_block_invoke()
{
  result = ct_green_tea_logger_create();
  SFGreenTeaLoggerForIMEI_psgIMEILogger = result;
  return result;
}

id SFTintedImageFromMask(void *a1)
{
  v1 = MEMORY[0x277D75348];
  v2 = a1;
  v3 = [v1 systemBlueColor];
  v4 = _SFTintedImageFromMaskWithColor(v2, v3);

  return v4;
}

id _SFTintedImageFromMaskWithColor(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 size];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  [v4 scale];
  v12 = v11;
  v18.width = 29.0;
  v18.height = 29.0;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v12);
  v13 = (29.0 - v6) * 0.5;
  v14 = (29.0 - v8) * 0.5;
  [v4 drawInRect:{floorf(v13), floorf(v14), v6, v8}];

  [v3 setFill];
  v19.size.width = 29.0;
  v19.size.height = 29.0;
  v19.origin.x = v9;
  v19.origin.y = v10;
  UIRectFillUsingBlendMode(v19, kCGBlendModeSourceIn);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

id SFSelectedTintedImageFromMask(void *a1)
{
  v1 = MEMORY[0x277D75348];
  v2 = a1;
  v3 = [v1 whiteColor];
  v4 = _SFTintedImageFromMaskWithColor(v2, v3);

  return v4;
}

id SFLocalizableWAPIStringKeyForKey(void *a1)
{
  v1 = a1;
  if (SFLocalizableWAPIStringKeyForKey___wapiCapabilityToken != -1)
  {
    SFLocalizableWAPIStringKeyForKey_cold_1();
  }

  SFLocalizableWAPIStringKeyForKey___wapi |= CFPreferencesGetAppBooleanValue(@"fakeWapi", @"com.apple.preferences.cn", 0) != 0;
  if (SFLocalizableWAPIStringKeyForKey___wapi)
  {
    v2 = [v1 stringByReplacingOccurrencesOfString:@"WIFI" withString:@"WLAN"];

    v1 = v2;
  }

  return v1;
}

uint64_t __SFLocalizableWAPIStringKeyForKey_block_invoke()
{
  result = MGGetBoolAnswer();
  SFLocalizableWAPIStringKeyForKey___wapi = result;
  return result;
}

uint64_t SFProcessIDForProcessNamed(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 UTF8String];
    v3 = 0;
    *v20 = xmmword_2659C1EB0;
    v21 = 0;
    size = 0;
    v4 = -5;
    while (1)
    {
      v5 = sysctl(v20, 3u, 0, &size, 0, 0);
      if (v5)
      {
        v9 = v5;
        goto LABEL_29;
      }

      v6 = malloc_type_realloc(v3, size, 0x10B2040B74D5165uLL);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      v8 = sysctl(v20, 3u, v6, &size, 0, 0);
      if (!v8)
      {
        goto LABEL_21;
      }

      v9 = v8;
      if (*__error() != 12)
      {
        goto LABEL_27;
      }

      v10 = SFLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2659AD000, v10, OS_LOG_TYPE_DEFAULT, "sysctl() returned ENOMEM. Process table grew during SFProcessIDForProcessNamed().", buf, 2u);
      }

      if (__CFADD__(v4++, 1))
      {
        v13 = SFLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2659AD000, v13, OS_LOG_TYPE_DEFAULT, "SFProcessIDForProcessNamed() was unable to get the full process list even after retries!", buf, 2u);
        }

LABEL_21:
        if (size < 0x288)
        {
LABEL_26:
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v14 = size / 0x288;
          v15 = v7 + 243;
          while (1)
          {
            v9 = *(v15 - 203);
            if (v9 >= 1 && !strncmp(v2, v15, 0x10uLL))
            {
              break;
            }

            v15 += 648;
            if (!--v14)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_27:
        v3 = v7;
LABEL_28:
        free(v3);
        goto LABEL_29;
      }

      v3 = v7;
      if (*__error() != 12)
      {
        goto LABEL_21;
      }
    }

    v12 = SFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = size;
      _os_log_impl(&dword_2659AD000, v12, OS_LOG_TYPE_DEFAULT, "Unable to realloc buffer to %lld size", buf, 0xCu);
    }

    v9 = 0xFFFFFFFFLL;
    if (v3)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

LABEL_29:

  return v9;
}

uint64_t SFTerminateProcessNamed(void *a1, int a2, void *a3)
{
  v4 = a3;
  if ((SFProcessIDForProcessNamed(a1) & 0x80000000) != 0)
  {
    v5 = 3;
  }

  else
  {
    [v4 UTF8String];
    v5 = terminate_with_reason();
  }

  return v5;
}

uint64_t SFIsAppWithBundleIDInstalled(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBlockedAppBundleIDs];

  if ([v3 containsObject:v1])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v4 = [v5 applicationIsInstalled:v1];
  }

  return v4;
}

id SFLocalizedStringFromTableInBundleForLanguage(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (![v7 length] || !objc_msgSend(v8, "length") || !objc_msgSend(v10, "length"))
  {
    goto LABEL_9;
  }

  v11 = [v9 localizations];
  v12 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
  v13 = CFBundleCopyLocalizationsForPreferences(v11, v12);
  if (-[__CFArray count](v13, "count") && (-[__CFArray objectAtIndex:](v13, "objectAtIndex:", 0), v14 = objc_claimAutoreleasedReturnValue(), [v9 pathForResource:v8 ofType:@"strings" inDirectory:0 forLocalization:v14], v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
  {
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v15];
    v17 = [v16 objectForKey:v7];
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
LABEL_9:
    v17 = [v9 localizedStringForKey:v7 value:&stru_287749F98 table:v8];
  }

  return v17;
}

__CFString *SFDeveloperSettingsBundlesDirectoryPath()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = @"/System/Library/PreferenceBundles/";
  v2 = [@"/System/Library/PreferenceBundles/" stringByAppendingPathComponent:@"DeveloperSettings.bundle"];
  v3 = [v0 fileExistsAtPath:v2];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v1 = @"/System/Developer/Library/PreferenceBundles/";
    v5 = [v4 fileExistsAtPath:@"/System/Developer/Library/PreferenceBundles/"];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = [v6 fileExistsAtPath:@"/Developer/Library/PreferenceBundles/"];

      if (v7)
      {
        v1 = @"/Developer/Library/PreferenceBundles/";
      }

      else
      {
        v1 = 0;
      }
    }
  }

  v8 = SFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "NSString * _Nullable SFDeveloperSettingsBundlesDirectoryPath(void)";
    v12 = 2114;
    v13 = v1;
    _os_log_impl(&dword_2659AD000, v8, OS_LOG_TYPE_DEFAULT, "%s: Resolved Developer Settings Directory Path '%{public}@'", &v10, 0x16u);
  }

  return v1;
}

id SFDeveloperSettingsBundlePath()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = SFDeveloperSettingsBundlesDirectoryPath();
  if ([v0 isEqualToString:@"/System/Library/PreferenceBundles/"])
  {
    v1 = @"DeveloperSettings.bundle";
LABEL_5:
    v2 = [v0 stringByAppendingPathComponent:v1];
    goto LABEL_6;
  }

  if (v0)
  {
    v1 = @"Developer Settings.bundle";
    goto LABEL_5;
  }

  v2 = 0;
LABEL_6:
  v3 = SFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "NSString * _Nullable SFDeveloperSettingsBundlePath(void)";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_2659AD000, v3, OS_LOG_TYPE_DEFAULT, "%s: Resolved Developer Settings Path '%{public}@'", &v5, 0x16u);
  }

  return v2;
}

void _SFBuiltInRegulatoryImage_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_2659AD000, v2, OS_LOG_TYPE_DEBUG, "%{Public}s: Looking up Built-in Regulatory Image for '%{Public}@-%{Public}@'.", v3, 0x20u);
}

void _SFBuiltInRegulatoryImage_cold_2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: No Regulatory Image found using variant, using model instead '%{Public}@'.", v2, v3, v4, v5, v6);
}

void _SFLicenseFilePathForBundleWithName_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "NSString *_SFLicenseFilePathForBundleWithName(NSString *__strong)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{public}s: Cannot resolve license file path for an empty bundle name", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _SFLicenseVersionNumberForBundleWithName_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136446722;
  v3 = "NSString *_SFLicenseVersionNumberForBundleWithName(NSString *__strong)";
  v4 = 2114;
  v5 = a1;
  v6 = 2114;
  v7 = _SFLicenseVersionNumberForBundleWithName_licenseVersionPath;
  _os_log_debug_impl(&dword_2659AD000, a2, OS_LOG_TYPE_DEBUG, "%{public}s: License version path for '%{public}@' resolved to: '%{public}@' .", &v2, 0x20u);
}

void _SFLicenseVersionNumberForBundleWithName_cold_3(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v4 = 136446722;
  v5 = "NSString *_SFLicenseVersionNumberForBundleWithName(NSString *__strong)";
  v6 = 2114;
  v7 = @"License_version";
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&dword_2659AD000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Cannot resolve '%{public}@' inside bundle '%{public}@'", &v4, 0x20u);
}

void _SFLicenseVersionNumberForBundleWithName_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "NSString *_SFLicenseVersionNumberForBundleWithName(NSString *__strong)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{public}s: Cannot resolve license version number for an empty bundle name", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _SFWarrantyFilePathForBundleWithName_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "NSString *_SFWarrantyFilePathForBundleWithName(NSString *__strong, NSString *__strong, NSString *__strong)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{public}s: Cannot resolve warranty file path for an empty bundle name", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SFBuiltInRegulatoryImageForModelAndVariant_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_2659AD000, v1, OS_LOG_TYPE_DEBUG, "%{Public}s: Looking up Built-in Regulatory Image for variant '%{Public}@' @%{Public}dx.", v2, 0x1Cu);
}

void SFBuiltInRegulatoryImageForModelAndVariant_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_2659AD000, v2, OS_LOG_TYPE_DEBUG, "%{Public}s: Looking up Built-in Regulatory Image for variant '%{Public}@' '%{Public}@'.", v3, 0x20u);
}

void SFBuiltInRegulatoryImageForModelAndVariant_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_2659AD000, v0, OS_LOG_TYPE_DEBUG, "%{Public}s: No Regulatory Image found using variant, using model instead '%{Public}@'.", v1, 0x16u);
}

void SFBuiltInRegulatoryImageForModelAndVariant_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "UIImage * _Nonnull SFBuiltInRegulatoryImageForModelAndVariant(NSString *__strong _Nonnull, NSString *__strong _Nonnull)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: Failed to resolve to a Built-in Regulatory Image", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SFBuiltInRegulatoryImageForApplePencilModel_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "UIImage * _Nonnull SFBuiltInRegulatoryImageForApplePencilModel(NSString *__strong _Nonnull)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: Failed to resolve to a Built-in Regulatory Image For Apple Pencil", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SFIsRegulatoryImageFromLockdown_cold_1(NSObject *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = 136315394;
  v4 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_2659AD000, a1, OS_LOG_TYPE_ERROR, "%{Public}s: Failed to set permissions on Lockdown Regulatory Images group path, errno %i", &v3, 0x12u);
}

void SFIsRegulatoryImageFromLockdown_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
  _os_log_error_impl(&dword_2659AD000, log, OS_LOG_TYPE_ERROR, "%{Public}s: Lockdown Regulatory Image not data", buf, 0xCu);
}

void SFIsRegulatoryImageFromLockdown_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFIsRegulatoryImageFromLockdown_cold_4(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
  _os_log_error_impl(&dword_2659AD000, log, OS_LOG_TYPE_ERROR, "%{Public}s: No Lockdown Regulatory Image source", buf, 0xCu);
}

void SFIsRegulatoryImageFromLockdown_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SFIsRegulatoryImageFromLockdown_cold_6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: No Lockdown Regulatory Image device model", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SFIsRegulatoryImageFromLockdown_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: No Lockdown Regulatory Images in container", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SFIsRegulatoryImageFromLockdown_cold_8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "UIImage *_SFGetRegulatoryImageFromLockdown(BOOL *)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: Cannot process Lockdown Regulatory Images container", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SFRFExposureDocumentHTMLString_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "NSString * _Nonnull SFRFExposureDocumentHTMLString(void)";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: kMGQRFExposureSeparationDistance is blank for this device! Please file a bug on Gestalt!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SFBlueStickerFont_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "UIFont * _Nonnull SFBlueStickerFont()";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{public}s: Cannot load font error.", a5, a6, a7, a8, v8, DWORD2(v8));
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}