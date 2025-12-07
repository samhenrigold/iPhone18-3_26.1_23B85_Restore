@interface CRXFVisionPrescriptionURLDecoder
- (CRXFVisionPrescriptionURLDecoder)initWithDeviceModel:(id)model;
- (id)prescriptionFromURL:(id)l withDescription:(id)description;
- (unsigned)computeCRC16ForString:(id)string;
- (unsigned)computeURLChecksum:(id)checksum;
@end

@implementation CRXFVisionPrescriptionURLDecoder

- (CRXFVisionPrescriptionURLDecoder)initWithDeviceModel:(id)model
{
  modelCopy = model;
  v23.receiver = self;
  v23.super_class = CRXFVisionPrescriptionURLDecoder;
  v5 = [(CRXFVisionPrescriptionURLDecoder *)&v23 init];
  if (v5)
  {
    v6 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v5->_log;
    v5->_log = v6;

    v8 = [modelCopy copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v8;

    diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
    v11 = HKQuantityRangeInclusive();
    sphereRange = v5->_sphereRange;
    v5->_sphereRange = v11;

    diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
    v14 = HKQuantityRangeInclusive();
    cylinderRange = v5->_cylinderRange;
    v5->_cylinderRange = v14;

    degreeAngleUnit = [MEMORY[0x277CCDAB0] degreeAngleUnit];
    v17 = HKQuantityRangeInclusive();
    axisRange = v5->_axisRange;
    v5->_axisRange = v17;

    prismDiopterUnit = [MEMORY[0x277CCDAB0] prismDiopterUnit];
    v20 = HKQuantityRangeInclusive();
    prismRange = v5->_prismRange;
    v5->_prismRange = v20;
  }

  return v5;
}

- (id)prescriptionFromURL:(id)l withDescription:(id)description
{
  v175 = *MEMORY[0x277D85DE8];
  lCopy = l;
  descriptionCopy = description;
  v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:];
    }

    v79 = 0;
    goto LABEL_136;
  }

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  queryItems = [v8 queryItems];
  v11 = [queryItems countByEnumeratingWithState:&v150 objects:v174 count:16];
  if (!v11)
  {
    v77 = 0;
    v145 = 0;
    v146 = 0;
    v136 = 0;
    v137 = 0;
    v131 = 0;
    v132 = 0;
    v144 = 0;
    v140 = 0;
    v141 = 0;
    v130 = 0;
    v134 = 0;
    v135 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v142 = 1;
    v143 = 1;
    v129 = 1;
    v138 = 1;
    v139 = 1;
    v133 = 1;
    v125 = 1;
    v126 = 1;
    v124 = 1;
    v78 = 1;
LABEL_96:

LABEL_98:
    log = self->_log;
    v81 = v146;
    v82 = v136;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v111 = v77;
      v112 = MEMORY[0x277CCABB0];
      v113 = log;
      v114 = [v112 numberWithBool:v143 & 1];
      v115 = [MEMORY[0x277CCABB0] numberWithBool:v129 & 1];
      *buf = 136317186;
      v157 = "[CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:]";
      v158 = 1024;
      v159 = 247;
      v160 = 2112;
      v161 = v146;
      v162 = 2112;
      v163 = v111;
      v164 = 2112;
      v165 = v137;
      v166 = 2112;
      v167 = v136;
      v168 = 2112;
      v169 = v134;
      v170 = 2112;
      v171 = v114;
      v172 = 2112;
      v173 = v115;
      _os_log_debug_impl(&dword_24732C000, v113, OS_LOG_TYPE_DEBUG, "%s @%d: lc: %@, ls: %@, rc: %@, rs: %@, acc: %@, la: %@, ra: %@", buf, 0x58u);

      v77 = v111;
      v82 = v136;
      v81 = v146;
    }

    if (v81)
    {
      v83 = v77 == 0;
    }

    else
    {
      v83 = 1;
    }

    v87 = !v83 && v137 != 0 && v82 != 0 && v134 != 0;
    if (v87 & v143 & v129)
    {
      if (v142 & v139 & v138 & v133 & v126 & v125 & v124 & v78)
      {
        v88 = 0;
        if (v130)
        {
          v89 = v77;
          if (v132)
          {
            v88 = [objc_alloc(MEMORY[0x277CCDBD0]) initWithVerticalAmount:v130 verticalBase:v118 horizontalAmount:v132 horizontalBase:v119 eye:2];
          }
        }

        else
        {
          v89 = v77;
        }

        v92 = 0;
        v128 = v9;
        if (v140 && v144)
        {
          v92 = [objc_alloc(MEMORY[0x277CCDBD0]) initWithVerticalAmount:v140 verticalBase:v135 horizontalAmount:v144 horizontalBase:v141 eye:1];
        }

        v93 = v92;
        v149 = v92;
        v94 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v82 cylinder:v137 axis:v131 addPower:0 vertexDistance:0 prism:v88 farPupillaryDistance:0 nearPupillaryDistance:0];
        v95 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v89 cylinder:v81 axis:v145 addPower:0 vertexDistance:0 prism:v93 farPupillaryDistance:0 nearPupillaryDistance:0];
        v96 = *MEMORY[0x277CCE138];
        v154[0] = *MEMORY[0x277CCE120];
        v154[1] = v96;
        deviceModel = self->_deviceModel;
        v155[0] = v134;
        v155[1] = deviceModel;
        v154[2] = *MEMORY[0x277CCE128];
        v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v120];
        v99 = v98;
        v100 = @"Lenses";
        v101 = *MEMORY[0x277CCC4A8];
        if (descriptionCopy)
        {
          v100 = descriptionCopy;
        }

        v155[2] = v98;
        v155[3] = v100;
        v102 = *MEMORY[0x277CCC520];
        v154[3] = v101;
        v154[4] = v102;
        uUID = [MEMORY[0x277CCAD78] UUID];
        [uUID UUIDString];
        v105 = v104 = v88;
        v154[5] = *MEMORY[0x277CCC528];
        v155[4] = v105;
        v155[5] = &unk_285933BC0;
        v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:6];

        v107 = MEMORY[0x277CCD488];
        date = [MEMORY[0x277CBEAA8] date];
        localDevice = [MEMORY[0x277CCD2E8] localDevice];
        v79 = [v107 prescriptionWithRightEyeSpecification:v94 leftEyeSpecification:v95 dateIssued:date expirationDate:0 device:localDevice metadata:v106];

        v82 = v136;
        v81 = v146;

        v77 = v89;
        v9 = v128;
        goto LABEL_135;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:];
    }

    v79 = 0;
    goto LABEL_135;
  }

  v12 = v11;
  v127 = v9;
  v121 = descriptionCopy;
  v122 = lCopy;
  v123 = 0;
  v13 = 0;
  v119 = 0;
  v120 = 0;
  v134 = 0;
  v135 = 0;
  v118 = 0;
  v140 = 0;
  v141 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v144 = 0;
  v145 = 0;
  v136 = 0;
  v137 = 0;
  v146 = 0;
  selfCopy = self;
  v148 = 0;
  v14 = *v151;
  v116 = 0;
  v117 = 1;
  v124 = 1;
  v125 = 1;
  v126 = 1;
  v133 = 1;
  v138 = 1;
  v139 = 1;
  v142 = 1;
  v143 = 1;
  v129 = 1;
  do
  {
    v15 = 0;
    do
    {
      if (*v151 != v14)
      {
        objc_enumerationMutation(queryItems);
      }

      v16 = *(*(&v150 + 1) + 8 * v15);
      name = [v16 name];
      value = [v16 value];
      if (value)
      {
        if ([name isEqualToString:@"ls"])
        {
          v19 = MEMORY[0x277CCD7E8];
          diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
          [value doubleValue];
          v21 = [v19 quantityWithUnit:diopterUnit doubleValue:?];

          if ([(HKQuantityRange *)self->_sphereRange containsQuantity:v21])
          {
            v22 = v21;

            v148 = v22;
          }

          goto LABEL_27;
        }

        if ([name isEqualToString:@"lc"])
        {
          v23 = MEMORY[0x277CCD7E8];
          diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
          [value doubleValue];
          v21 = [v23 quantityWithUnit:diopterUnit2 doubleValue:?];

          self = selfCopy;
          if ([(HKQuantityRange *)selfCopy->_cylinderRange containsQuantity:v21])
          {
            v25 = v21;

            v146 = v25;
          }

          goto LABEL_27;
        }

        if ([name isEqualToString:@"la"])
        {
          [value doubleValue];
          if (v26 != 0.0)
          {
            v27 = v26;
            v28 = MEMORY[0x277CCD7E8];
            degreeAngleUnit = [MEMORY[0x277CCDAB0] degreeAngleUnit];
            v21 = [v28 quantityWithUnit:degreeAngleUnit doubleValue:v27];

            self = selfCopy;
            if ([(HKQuantityRange *)selfCopy->_axisRange containsQuantity:v21])
            {
              v30 = v21;

              v145 = v30;
            }

            else
            {
              v143 = 0;
            }

            goto LABEL_27;
          }

          goto LABEL_28;
        }

        if ([name isEqualToString:@"lhp"])
        {
          [value doubleValue];
          v32 = v31;
          v33 = MEMORY[0x277CCD7E8];
          prismDiopterUnit = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v21 = [v33 quantityWithUnit:prismDiopterUnit doubleValue:v32];

          self = selfCopy;
          if ([(HKQuantityRange *)selfCopy->_prismRange containsQuantity:v21])
          {
            v35 = v21;

            v144 = v35;
          }

          else
          {
            v142 = 0;
          }

          goto LABEL_27;
        }

        if ([name isEqualToString:@"lhpd"])
        {
          integerValue = [value integerValue];
          if (integerValue)
          {
            if (integerValue != 1)
            {
              v139 = 0;
              goto LABEL_28;
            }

            v37 = 3;
          }

          else
          {
            v37 = 4;
          }

          v141 = v37;
LABEL_28:
          ++v13;
          goto LABEL_29;
        }

        if ([name isEqualToString:@"lvp"])
        {
          [value doubleValue];
          v39 = v38;
          v40 = MEMORY[0x277CCD7E8];
          prismDiopterUnit2 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v21 = [v40 quantityWithUnit:prismDiopterUnit2 doubleValue:v39];

          self = selfCopy;
          if ([(HKQuantityRange *)selfCopy->_prismRange containsQuantity:v21])
          {
            v42 = v21;

            v140 = v42;
          }

          else
          {
            v138 = 0;
          }

          goto LABEL_27;
        }

        if ([name isEqualToString:@"lvpd"])
        {
          integerValue2 = [value integerValue];
          if (integerValue2)
          {
            self = selfCopy;
            if (integerValue2 == 1)
            {
              v135 = 2;
            }

            else
            {
              v133 = 0;
            }
          }

          else
          {
            v135 = 1;
            self = selfCopy;
          }

          goto LABEL_28;
        }

        if ([name isEqualToString:@"rs"])
        {
          v44 = MEMORY[0x277CCD7E8];
          diopterUnit3 = [MEMORY[0x277CCDAB0] diopterUnit];
          [value doubleValue];
          v21 = [v44 quantityWithUnit:diopterUnit3 doubleValue:?];

          self = selfCopy;
          if ([(HKQuantityRange *)selfCopy->_sphereRange containsQuantity:v21])
          {
            v46 = v21;

            v136 = v46;
          }

LABEL_27:

          goto LABEL_28;
        }

        if ([name isEqualToString:@"rc"])
        {
          v47 = MEMORY[0x277CCD7E8];
          diopterUnit4 = [MEMORY[0x277CCDAB0] diopterUnit];
          [value doubleValue];
          v21 = [v47 quantityWithUnit:diopterUnit4 doubleValue:?];

          self = selfCopy;
          if ([(HKQuantityRange *)selfCopy->_cylinderRange containsQuantity:v21])
          {
            v49 = v21;

            v137 = v49;
          }

          goto LABEL_27;
        }

        if ([name isEqualToString:@"ra"])
        {
          [value doubleValue];
          self = selfCopy;
          if (v50 == 0.0)
          {
            goto LABEL_28;
          }

          v51 = v50;
          v52 = MEMORY[0x277CCD7E8];
          degreeAngleUnit2 = [MEMORY[0x277CCDAB0] degreeAngleUnit];
          v54 = [v52 quantityWithUnit:degreeAngleUnit2 doubleValue:v51];

          if ([(HKQuantityRange *)selfCopy->_axisRange containsQuantity:v54])
          {
            v55 = v54;
            v56 = v54;

            v131 = v56;
            goto LABEL_57;
          }

          v129 = 0;
        }

        else
        {
          self = selfCopy;
          if ([name isEqualToString:@"rhp"])
          {
            [value doubleValue];
            v58 = v57;
            v59 = MEMORY[0x277CCD7E8];
            prismDiopterUnit3 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
            v54 = [v59 quantityWithUnit:prismDiopterUnit3 doubleValue:v58];

            if (![(HKQuantityRange *)selfCopy->_prismRange containsQuantity:v54])
            {
              v126 = 0;
              goto LABEL_64;
            }

            v55 = v54;
            v61 = v54;

            v132 = v61;
          }

          else
          {
            if ([name isEqualToString:@"rhpd"])
            {
              integerValue3 = [value integerValue];
              if (integerValue3)
              {
                if (integerValue3 != 1)
                {
                  v125 = 0;
                  goto LABEL_28;
                }

                v63 = 3;
              }

              else
              {
                v63 = 4;
              }

              v119 = v63;
              goto LABEL_28;
            }

            if (![name isEqualToString:@"rvp"])
            {
              if (![name isEqualToString:@"rvpd"])
              {
                if ([name isEqualToString:@"acc"])
                {
                  if ([value length] == 38 || objc_msgSend(value, "length") == 32)
                  {
                    v71 = [MEMORY[0x277CBEA90] crxu_dataWithHexString:value];

                    v134 = v71;
                  }
                }

                else if ([name isEqualToString:@"cc"])
                {
                  v120 = strtoul([value UTF8String], 0, 10);
                }

                else if ([name isEqualToString:@"c"])
                {
                  queryItems2 = [v127 queryItems];
                  v73 = [queryItems2 count] - 1;

                  if (v13 == v73)
                  {
                    v116 = strtoul([value UTF8String], 0, 16);
                    v123 = 1;
                  }
                }

                goto LABEL_28;
              }

              integerValue4 = [value integerValue];
              if (integerValue4)
              {
                if (integerValue4 != 1)
                {
                  v117 = 0;
                  goto LABEL_28;
                }

                v70 = 2;
              }

              else
              {
                v70 = 1;
              }

              v118 = v70;
              goto LABEL_28;
            }

            [value doubleValue];
            v65 = v64;
            v66 = MEMORY[0x277CCD7E8];
            prismDiopterUnit4 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
            v54 = [v66 quantityWithUnit:prismDiopterUnit4 doubleValue:v65];

            if (![(HKQuantityRange *)selfCopy->_prismRange containsQuantity:v54])
            {
              v124 = 0;
              goto LABEL_64;
            }

            v55 = v54;
            v68 = v54;

            v130 = v68;
          }

LABEL_57:
          v54 = v55;
        }

LABEL_64:

        goto LABEL_28;
      }

LABEL_29:

      ++v15;
    }

    while (v12 != v15);
    v74 = [queryItems countByEnumeratingWithState:&v150 objects:v174 count:16];
    v12 = v74;
  }

  while (v74);

  if ((v123 & 1) == 0)
  {
    descriptionCopy = v121;
    lCopy = v122;
    v9 = v127;
    v77 = v148;
    v78 = v117;
    goto LABEL_98;
  }

  lCopy = v122;
  absoluteString = [v122 absoluteString];
  queryItems = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 7}];

  v76 = [(CRXFVisionPrescriptionURLDecoder *)self computeCRC16ForString:queryItems];
  descriptionCopy = v121;
  v9 = v127;
  v77 = v148;
  if (v76 == v116)
  {
    v78 = v117;
    goto LABEL_96;
  }

  v90 = v76;
  v91 = self->_log;
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
  {
    [(CRXFVisionPrescriptionURLDecoder *)v90 prescriptionFromURL:v116 withDescription:v91];
  }

  v79 = 0;
  v81 = v146;
  v82 = v136;
LABEL_135:

LABEL_136:

  return v79;
}

- (unsigned)computeURLChecksum:(id)checksum
{
  absoluteString = [checksum absoluteString];
  if ([absoluteString length] >= 7)
  {
    v6 = [absoluteString substringWithRange:{objc_msgSend(absoluteString, "length") - 7, 3}];
    if ([v6 isEqualToString:@"&c="])
    {
      v7 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 7}];

      absoluteString = v7;
    }

    v5 = [(CRXFVisionPrescriptionURLDecoder *)self computeCRC16ForString:absoluteString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)computeCRC16ForString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy dataUsingEncoding:4];
  bytes = [v4 bytes];
  v6 = [v4 length];
  if (v6 < 1)
  {
    v8 = -1;
  }

  else
  {
    v7 = &bytes[v6];
    v8 = -1;
    do
    {
      v9 = *bytes++;
      v10 = v9 ^ HIBYTE(v8) ^ ((v9 ^ HIBYTE(v8)) >> 4);
      v8 = (v10 | (v8 << 8)) ^ (v10 << 12) ^ (32 * v10);
    }

    while (bytes < v7);
  }

  return v8;
}

- (void)prescriptionFromURL:(os_log_t)log withDescription:.cold.1(int a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = "[CRXFVisionPrescriptionURLDecoder prescriptionFromURL:withDescription:]";
  v5 = 1024;
  v6 = 240;
  v7 = 1026;
  v8 = a1;
  v9 = 1026;
  v10 = a2;
  _os_log_debug_impl(&dword_24732C000, log, OS_LOG_TYPE_DEBUG, "%s @%d: checksum failed: %{public}04x vs %{public}04x", &v3, 0x1Eu);
}

- (void)prescriptionFromURL:withDescription:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 251;
  _os_log_debug_impl(&dword_24732C000, v0, OS_LOG_TYPE_DEBUG, "%s @%d: Invalid or missing RX values", v1, 0x12u);
}

- (void)prescriptionFromURL:withDescription:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 262;
  _os_log_debug_impl(&dword_24732C000, v0, OS_LOG_TYPE_DEBUG, "%s @%d: Invalid prism RX values", v1, 0x12u);
}

- (void)prescriptionFromURL:withDescription:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 60;
  _os_log_error_impl(&dword_24732C000, v0, OS_LOG_TYPE_ERROR, "%s @%d: Can't get query items.", v1, 0x12u);
}

@end