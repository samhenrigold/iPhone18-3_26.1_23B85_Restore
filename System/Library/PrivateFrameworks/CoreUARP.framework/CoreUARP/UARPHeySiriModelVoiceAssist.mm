@interface UARPHeySiriModelVoiceAssist
+ (id)tag;
- (BOOL)processDynamicAsset:(id *)asset;
- (UARPHeySiriModelVoiceAssist)init;
- (id)generateAsset:(id *)asset;
- (void)currentHeySiriModel:(id)model fallbackModel:(id)fallbackModel error:(id)error;
@end

@implementation UARPHeySiriModelVoiceAssist

- (UARPHeySiriModelVoiceAssist)init
{
  [(UARPHeySiriModelVoiceAssist *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)processDynamicAsset:(id *)asset
{
  v5 = [UARPSuperBinaryAsset alloc];
  v6 = [(UARPHeySiriModelBase *)self url];
  v7 = [(UARPSuperBinaryAsset *)v5 initWithURL:v6];
  [(UARPHeySiriModelBase *)self setSuperbinary:v7];

  superbinary = [(UARPHeySiriModelBase *)self superbinary];
  LOBYTE(asset) = [superbinary expandHeadersAndTLVs:asset];

  superbinary2 = [(UARPHeySiriModelBase *)self superbinary];
  tlvs = [superbinary2 tlvs];
  v11 = [UARPSuperBinaryAssetTLV findTLVWithType:76079623 tlvs:tlvs];

  valueAsVersion = [v11 valueAsVersion];
  -[UARPHeySiriModelBase setMajorVersion:](self, "setMajorVersion:", [valueAsVersion majorVersion]);
  -[UARPHeySiriModelBase setMinorVersion:](self, "setMinorVersion:", [valueAsVersion minorVersion]);
  v15.receiver = self;
  v15.super_class = UARPHeySiriModelVoiceAssist;
  [(UARPHeySiriModelBase *)&v15 setDelegate:self];
  v14.receiver = self;
  v14.super_class = UARPHeySiriModelVoiceAssist;
  [(UARPHeySiriModelBase *)&v14 checkCurrentHeySiriModel];

  return asset;
}

- (void)currentHeySiriModel:(id)model fallbackModel:(id)fallbackModel error:(id)error
{
  v133 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  fallbackModelCopy = fallbackModel;
  v128.receiver = self;
  v128.super_class = UARPHeySiriModelVoiceAssist;
  accessory = [(UARPHeySiriModelBase *)&v128 accessory];
  modelNumber = [accessory modelNumber];
  v9 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  if (v9)
  {
    v11 = MEMORY[0x277CCAB68];
    v12 = UARPStringSupplementalAssetsFilepath(v10);
    supplementalMobileAssetAppleModelNumber = [v9 supplementalMobileAssetAppleModelNumber];
    v14 = [v11 stringWithFormat:@"%@/%@-%@", v12, supplementalMobileAssetAppleModelNumber, @"VoiceAssist"];

    v125 = 0;
    LOBYTE(v11) = appendFirstUarpFilenameToFilepath(v14, &v125);
    v15 = v125;
    if ((v11 & 1) == 0)
    {
      v124.receiver = self;
      v124.super_class = UARPHeySiriModelVoiceAssist;
      v17 = [(UARPHeySiriModelBase *)&v124 log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(UARPHeySiriModelVoiceAssist *)v14 currentHeySiriModel:v17 fallbackModel:v65 error:v66, v67, v68, v69, v70];
      }

      goto LABEL_60;
    }

    v123.receiver = self;
    v123.super_class = UARPHeySiriModelVoiceAssist;
    v16 = [(UARPHeySiriModelBase *)&v123 log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v132 = v14;
      _os_log_impl(&dword_247AA7000, v16, OS_LOG_TYPE_DEFAULT, "Filename for voice assist is %@", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v18 = [[UARPSuperBinaryAsset alloc] initWithURL:v17];
    asset = self->_asset;
    self->_asset = v18;

    v20 = self->_asset;
    if (!v20)
    {
      v122.receiver = self;
      v122.super_class = UARPHeySiriModelVoiceAssist;
      v62 = [(UARPHeySiriModelBase *)&v122 log];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [UARPHeySiriModelVoiceAssist currentHeySiriModel:fallbackModel:error:];
      }

      goto LABEL_59;
    }

    if (![(UARPSuperBinaryAsset *)v20 expandHeadersAndTLVs:0])
    {
      v121.receiver = self;
      v121.super_class = UARPHeySiriModelVoiceAssist;
      v62 = [(UARPHeySiriModelBase *)&v121 log];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [UARPHeySiriModelVoiceAssist currentHeySiriModel:fallbackModel:error:];
      }

      goto LABEL_59;
    }

    v89 = v15;
    v90 = v17;
    v92 = v14;
    v93 = v9;
    p_payloadModel = &self->_payloadModel;
    payloadModel = self->_payloadModel;
    self->_payloadModel = 0;

    payloadFallbackModel = self->_payloadFallbackModel;
    location = &self->_payloadFallbackModel;
    self->_payloadFallbackModel = 0;

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    selfCopy = self;
    obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
    v96 = [obj countByEnumeratingWithState:&v117 objects:v130 count:16];
    if (v96)
    {
      v95 = *v118;
      do
      {
        v24 = 0;
        do
        {
          if (*v118 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v97 = v24;
          v25 = *(*(&v117 + 1) + 8 * v24);
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          tlvs = [v25 tlvs];
          v27 = [tlvs countByEnumeratingWithState:&v113 objects:v129 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v114;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v114 != v29)
                {
                  objc_enumerationMutation(tlvs);
                }

                v31 = *(*(&v113 + 1) + 8 * i);
                if ([v31 type] == 76079617)
                {
                  valueAsString = [v31 valueAsString];
                  modelLocale = [modelCopy modelLocale];
                  v34 = [valueAsString isEqualToString:modelLocale];

                  v35 = p_payloadModel;
                  if ((v34 & 1) != 0 || ([fallbackModelCopy modelLocale], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(valueAsString, "isEqualToString:", v36), v36, v35 = location, v37))
                  {
                    objc_storeStrong(v35, v25);
                  }
                }
              }

              v28 = [tlvs countByEnumeratingWithState:&v113 objects:v129 count:16];
            }

            while (v28);
          }

          v24 = v97 + 1;
        }

        while (v97 + 1 != v96);
        v96 = [obj countByEnumeratingWithState:&v117 objects:v130 count:16];
      }

      while (v96);
    }

    v39 = UARPUtilsBuildURLForTemporaryFile(v38);
    superBinaryMetaDataURL = selfCopy->_superBinaryMetaDataURL;
    selfCopy->_superBinaryMetaDataURL = v39;

    v41 = selfCopy->_asset;
    v42 = selfCopy->_superBinaryMetaDataURL;
    rangeMetadata = [(UARPSuperBinaryAsset *)v41 rangeMetadata];
    v112 = 0;
    LOBYTE(v41) = [(UARPSuperBinaryAsset *)v41 exportSuperBinaryContentToFilepath:v42 range:rangeMetadata error:v44, &v112];
    v45 = v112;

    if ((v41 & 1) == 0)
    {
      v111.receiver = selfCopy;
      v111.super_class = UARPHeySiriModelVoiceAssist;
      v62 = [(UARPHeySiriModelBase *)&v111 log];
      v17 = v90;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [UARPHeySiriModelVoiceAssist currentHeySiriModel:fallbackModel:error:];
      }

      v15 = v45;
      v9 = v93;
      goto LABEL_59;
    }

    if (*p_payloadModel)
    {
      v47 = UARPUtilsBuildURLForTemporaryFile(v46);
      modelMetaDataURL = selfCopy->_modelMetaDataURL;
      selfCopy->_modelMetaDataURL = v47;

      v49 = selfCopy->_asset;
      v50 = selfCopy->_modelMetaDataURL;
      rangeMetadata2 = [(UARPSuperBinaryAssetPayload *)*p_payloadModel rangeMetadata];
      v110 = 0;
      LOBYTE(v49) = [(UARPSuperBinaryAsset *)v49 exportSuperBinaryContentToFilepath:v50 range:rangeMetadata2 error:v52, &v110];
      v53 = v110;

      if ((v49 & 1) == 0)
      {
        v15 = v53;
        v109.receiver = selfCopy;
        v109.super_class = UARPHeySiriModelVoiceAssist;
        v62 = [(UARPHeySiriModelBase *)&v109 log];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:fallbackModel:error:];
        }

        v14 = v92;
        v9 = v93;
        goto LABEL_58;
      }

      v55 = UARPUtilsBuildURLForTemporaryFile(v54);
      modelDataURL = selfCopy->_modelDataURL;
      selfCopy->_modelDataURL = v55;

      v57 = selfCopy->_asset;
      v58 = selfCopy->_modelDataURL;
      rangePayload = [(UARPSuperBinaryAssetPayload *)*p_payloadModel rangePayload];
      v108 = 0;
      LOBYTE(v57) = [(UARPSuperBinaryAsset *)v57 exportSuperBinaryContentToFilepath:v58 range:rangePayload error:v60, &v108];
      v45 = v108;

      if ((v57 & 1) == 0)
      {
        v107.receiver = selfCopy;
        v107.super_class = UARPHeySiriModelVoiceAssist;
        v62 = [(UARPHeySiriModelBase *)&v107 log];
        v14 = v92;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:fallbackModel:error:];
        }

LABEL_49:
        v15 = v45;
LABEL_57:
        v9 = v93;
LABEL_58:
        v17 = v90;
LABEL_59:

LABEL_60:
        goto LABEL_61;
      }
    }

    else
    {
      v71 = selfCopy->_modelMetaDataURL;
      selfCopy->_modelMetaDataURL = 0;

      v72 = selfCopy->_modelDataURL;
      selfCopy->_modelDataURL = 0;
    }

    v14 = v92;
    if (*location)
    {
      v73 = UARPUtilsBuildURLForTemporaryFile(v61);
      fallbackModelMetaDataURL = selfCopy->_fallbackModelMetaDataURL;
      selfCopy->_fallbackModelMetaDataURL = v73;

      v75 = selfCopy->_asset;
      v76 = selfCopy->_fallbackModelMetaDataURL;
      rangeMetadata3 = [*location rangeMetadata];
      v106 = 0;
      LOBYTE(v75) = [(UARPSuperBinaryAsset *)v75 exportSuperBinaryContentToFilepath:v76 range:rangeMetadata3 error:v78, &v106];
      v15 = v106;

      if ((v75 & 1) == 0)
      {
        v105.receiver = selfCopy;
        v105.super_class = UARPHeySiriModelVoiceAssist;
        v62 = [(UARPHeySiriModelBase *)&v105 log];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:fallbackModel:error:];
        }

        goto LABEL_57;
      }

      v80 = UARPUtilsBuildURLForTemporaryFile(v79);
      fallbackModelDataURL = selfCopy->_fallbackModelDataURL;
      selfCopy->_fallbackModelDataURL = v80;

      v82 = selfCopy->_asset;
      v83 = selfCopy->_fallbackModelDataURL;
      rangePayload2 = [*location rangePayload];
      v104 = 0;
      LOBYTE(v82) = [(UARPSuperBinaryAsset *)v82 exportSuperBinaryContentToFilepath:v83 range:rangePayload2 error:v85, &v104];
      v45 = v104;

      if ((v82 & 1) == 0)
      {
        v103.receiver = selfCopy;
        v103.super_class = UARPHeySiriModelVoiceAssist;
        v62 = [(UARPHeySiriModelBase *)&v103 log];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:fallbackModel:error:];
        }

        goto LABEL_49;
      }
    }

    else
    {
      v86 = selfCopy->_fallbackModelMetaDataURL;
      selfCopy->_fallbackModelMetaDataURL = 0;

      v87 = selfCopy->_fallbackModelDataURL;
      selfCopy->_fallbackModelDataURL = 0;
    }

    v102 = v45;
    v62 = [(UARPHeySiriModelVoiceAssist *)selfCopy generateAsset:&v102];
    v15 = v102;

    v88 = +[UARPHeySiriModelVoiceAssist tag];
    v101.receiver = selfCopy;
    v101.super_class = UARPHeySiriModelVoiceAssist;
    [(UARPHeySiriModelBase *)&v101 offerDynamicAssetToAccessory:v62 tag:v88 error:0];

    goto LABEL_57;
  }

  v127.receiver = self;
  v127.super_class = UARPHeySiriModelVoiceAssist;
  v15 = [(UARPHeySiriModelBase *)&v127 log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v126.receiver = self;
    v126.super_class = UARPHeySiriModelVoiceAssist;
    accessory2 = [(UARPHeySiriModelBase *)&v126 accessory];
    modelNumber2 = [accessory2 modelNumber];
    *buf = 138412290;
    v132 = modelNumber2;
    _os_log_error_impl(&dword_247AA7000, v15, OS_LOG_TYPE_ERROR, "Could not find supported accessory for  %@", buf, 0xCu);
  }

LABEL_61:
}

- (id)generateAsset:(id *)asset
{
  v55 = 0;
  v54 = 0;
  v56 = 0;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45.receiver = self;
  v45.super_class = UARPHeySiriModelVoiceAssist;
  v52[0] = [(UARPHeySiriModelBase *)&v45 uarpProtocolVersion];
  v52[1] = 44;
  payloadModel = self->_payloadModel;
  v6 = payloadModel == 0;
  v7 = payloadModel != 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (self->_fallbackModelMetaDataURL)
  {
    v7 = v8;
  }

  v57 = 44;
  v58 = 40 * v7;
  v9 = 40 * v7 + 44;
  v53 = v9;
  LODWORD(v56) = v9;
  v10 = MEMORY[0x277CCA1C0];
  if (self->_superBinaryMetaDataURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString = [(NSURL *)self->_superBinaryMetaDataURL absoluteString];
    v13 = [defaultManager attributesOfItemAtPath:absoluteString error:asset];

    v14 = [v13 objectForKeyedSubscript:*v10];
    unsignedLongValue = [v14 unsignedLongValue];
    v9 += unsignedLongValue;
    HIDWORD(v56) = unsignedLongValue;
    v53 = v9;
  }

  v16 = +[UARPHeySiriModelVoiceAssist tag];
  v44 = v16;
  if (self->_payloadModel)
  {
    LODWORD(v49) = 40;
    DWORD1(v49) = [v16 tag];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString2 = [(NSURL *)self->_modelMetaDataURL absoluteString];
    v19 = [defaultManager2 attributesOfItemAtPath:absoluteString2 error:asset];

    v20 = *v10;
    v21 = [v19 objectForKeyedSubscript:*v10];
    DWORD2(v50) = v9;
    HIDWORD(v50) = [v21 unsignedLongValue];
    v22 = v9 + HIDWORD(v50);
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString3 = [(NSURL *)self->_modelDataURL absoluteString];
    v25 = [defaultManager3 attributesOfItemAtPath:absoluteString3 error:asset];

    v26 = [v25 objectForKeyedSubscript:v20];
    LODWORD(v51) = v22;
    HIDWORD(v51) = [v26 unsignedLongValue];
    v9 = v22 + HIDWORD(v51);
    v53 = v22 + HIDWORD(v51);
  }

  if (self->_payloadFallbackModel)
  {
    LODWORD(v46) = 40;
    DWORD1(v46) = [v44 tag];
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString4 = [(NSURL *)self->_fallbackModelMetaDataURL absoluteString];
    v29 = [defaultManager4 attributesOfItemAtPath:absoluteString4 error:asset];

    v30 = *MEMORY[0x277CCA1C0];
    v31 = [v29 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    DWORD2(v47) = v9;
    HIDWORD(v47) = [v31 unsignedLongValue];
    v32 = v9 + HIDWORD(v47);
    defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString5 = [(NSURL *)self->_fallbackModelDataURL absoluteString];
    v35 = [defaultManager5 attributesOfItemAtPath:absoluteString5 error:asset];

    v36 = [v35 objectForKeyedSubscript:v30];
    LODWORD(v48) = v32;
    HIDWORD(v48) = [v36 unsignedLongValue];
    v53 = v32 + HIDWORD(v48);
  }

  uarpSuperBinaryHeaderEndianSwap(v52, v52);
  uarpPayloadHeaderEndianSwap(&v49, &v49);
  v37 = uarpPayloadHeaderEndianSwap(&v46, &v46);
  v38 = UARPUtilsBuildURLForTemporaryFile(v37);
  v39 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v38 error:asset];
  if (v39)
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v40 appendBytes:v52 length:44];
    if (self->_payloadModel)
    {
      [v40 appendBytes:&v49 length:40];
    }

    if (self->_payloadFallbackModel)
    {
      [v40 appendBytes:&v46 length:40];
    }

    if ([v39 uarpWriteData:v40 error:asset] && objc_msgSend(v39, "uarpCloseAndReturnError:", asset) && uarpUtilsConcatenateURLs(v38, *(&self->super.super.isa + v43), asset) && uarpUtilsConcatenateURLs(v38, self->_modelMetaDataURL, asset) && uarpUtilsConcatenateURLs(v38, self->_modelDataURL, asset) && uarpUtilsConcatenateURLs(v38, self->_fallbackModelMetaDataURL, asset) && uarpUtilsConcatenateURLs(v38, self->_fallbackModelDataURL, asset))
    {
      v41 = v38;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (id)tag
{
  v2 = uarpAssetTagStructVoiceAssist();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

- (void)currentHeySiriModel:(uint64_t)a3 fallbackModel:(uint64_t)a4 error:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a2, a3, "NO voice assist ?! located at %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)currentHeySiriModel:fallbackModel:error:.cold.2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Could not expand uarp superbinary  %@", v2, v3, v4, v5);
}

- (void)currentHeySiriModel:fallbackModel:error:.cold.3()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Failed to export SuperBinary MetaData URL %@", v2, v3, v4, v5);
}

- (void)currentHeySiriModel:fallbackModel:error:.cold.4()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Failed to export Model MetaData URL %@", v2, v3, v4, v5);
}

- (void)currentHeySiriModel:fallbackModel:error:.cold.5()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Failed to export Model URL %@", v2, v3, v4, v5);
}

- (void)currentHeySiriModel:fallbackModel:error:.cold.6()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Failed to export Fallback Model MetaData URL %@", v2, v3, v4, v5);
}

- (void)currentHeySiriModel:fallbackModel:error:.cold.7()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Failed to export Fallback Model URL %@", v2, v3, v4, v5);
}

- (void)currentHeySiriModel:fallbackModel:error:.cold.8()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Could not init uarp superbinary %@", v2, v3, v4, v5);
}

@end