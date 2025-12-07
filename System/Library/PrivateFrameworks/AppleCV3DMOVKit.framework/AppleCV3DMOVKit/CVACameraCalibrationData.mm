@interface CVACameraCalibrationData
+ (id)classes;
+ (id)withData:(id)data;
- (CGPoint)lensDistortionCenter;
- (CGSize)intrinsicMatrixReferenceDimensions;
- (CVACameraCalibrationData)initWithAVCameraCalibrationData:(id)data timestamp:(double)timestamp streamID:(id)d;
- (CVACameraCalibrationData)initWithCoder:(id)coder;
- (__n128)setExtrinsicMatrix:(__n128)matrix;
- (__n128)setIntrinsicMatrix:(__n128)matrix;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)updateProperties:(id)properties;
@end

@implementation CVACameraCalibrationData

+ (id)classes
{
  if (qword_27E3C8588 == -1)
  {
    v3 = qword_27E3C8580;
  }

  else
  {
    sub_24019CB64();
    v3 = qword_27E3C8580;
  }

  return v3;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACameraCalibrationData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)updateProperties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy intrinsicMatrix];
  *&self->_anon_60[8] = v5;
  *&self->_anon_60[24] = v6;
  *self->_anon_60 = v7;
  *&self->_anon_60[16] = v8;
  *&self->_anon_60[40] = v9;
  *&self->_anon_60[32] = v10;
  [propertiesCopy intrinsicMatrixReferenceDimensions];
  self->_intrinsicMatrixReferenceDimensions.width = v11;
  self->_intrinsicMatrixReferenceDimensions.height = v12;
  [propertiesCopy extrinsicMatrix];
  self[1]._pixelSize = v13;
  self[1].super.isa = v14;
  LODWORD(self[1]._timestamp) = v15;
  LODWORD(self[1]._calibrationData) = v16;
  self[1]._streamID = v17;
  self[1]._calibrationDictionary = v18;
  LODWORD(self[1]._inverseLensDistortionLookupTable) = v19;
  self[1]._lensDistortionLookupTable = v20;
  [propertiesCopy pixelSize];
  self->_pixelSize = v21;
  lensDistortionLookupTable = [propertiesCopy lensDistortionLookupTable];
  lensDistortionLookupTable = self->_lensDistortionLookupTable;
  self->_lensDistortionLookupTable = lensDistortionLookupTable;

  inverseLensDistortionLookupTable = [propertiesCopy inverseLensDistortionLookupTable];
  inverseLensDistortionLookupTable = self->_inverseLensDistortionLookupTable;
  self->_inverseLensDistortionLookupTable = inverseLensDistortionLookupTable;

  [propertiesCopy lensDistortionCenter];
  v27 = v26;
  v29 = v28;

  self->_lensDistortionCenter.x = v27;
  self->_lensDistortionCenter.y = v29;
}

- (CVACameraCalibrationData)initWithAVCameraCalibrationData:(id)data timestamp:(double)timestamp streamID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CVACameraCalibrationData;
  v10 = [(CVACameraCalibrationData *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_streamID, d);
    v11->_timestamp = timestamp;
    [(CVACameraCalibrationData *)v11 updateProperties:dataCopy];
    if (objc_opt_respondsToSelector())
    {
      cameraCalibrationDataDictionary = [dataCopy cameraCalibrationDataDictionary];
      calibrationDictionary = v11->_calibrationDictionary;
      v11->_calibrationDictionary = cameraCalibrationDataDictionary;
    }
  }

  return v11;
}

- (CVACameraCalibrationData)initWithCoder:(id)coder
{
  v116 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v113.receiver = self;
  v113.super_class = CVACameraCalibrationData;
  v5 = [(CVACameraCalibrationData *)&v113 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"si"];
    streamID = v5->_streamID;
    v5->_streamID = v7;

    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v9;
    v10 = [coderCopy decodeObjectForKey:@"d"];
    calibrationDictionary = v5->_calibrationDictionary;
    v5->_calibrationDictionary = v10;

    if (v5->_calibrationDictionary)
    {
      if ([MEMORY[0x277CE5A98] instancesRespondToSelector:sel_initWithCameraCalibrationDataDictionary_error_])
      {
        v12 = objc_alloc(MEMORY[0x277CE5A98]);
        v13 = v5->_calibrationDictionary;
        v112 = 0;
        v14 = [v12 initWithCameraCalibrationDataDictionary:v13 error:&v112];
        v15 = v112;
        calibrationData = v5->_calibrationData;
        v5->_calibrationData = v14;

        if (v15)
        {
          v17 = +[AppleCV3DMOVKitLog defaultLog];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v115 = v15;
            _os_log_impl(&dword_24016D000, v17, OS_LOG_TYPE_ERROR, "Failed to recreate calibration data : %@", buf, 0xCu);
          }

          v18 = +[AppleCV3DMOVKitLog defaultLog];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v115 = v15;
            _os_log_impl(&dword_24016D000, v18, OS_LOG_TYPE_ERROR, "Failed to recreate calibration data : %@", buf, 0xCu);
          }

LABEL_18:

LABEL_24:
          objc_autoreleasePoolPop(v6);
          goto LABEL_25;
        }

        [(CVACameraCalibrationData *)v5 updateProperties:v5->_calibrationData];
      }

      else
      {
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        operatingSystemVersionString = [processInfo operatingSystemVersionString];
        v91 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v115 = operatingSystemVersionString;
          _os_log_impl(&dword_24016D000, v91, OS_LOG_TYPE_ERROR, "Failed to recreate calibration data : OS %@", buf, 0xCu);
        }
      }

      [(CVACameraCalibrationData *)v5 updateProperties:v5->_calibrationData];
      goto LABEL_24;
    }

    v19 = [coderCopy decodeObjectForKey:@"im"];
    v15 = v19;
    if (v19)
    {
      v20 = [v19 objectAtIndexedSubscript:0];
      [v20 floatValue];
      v108 = v21;

      v22 = [v15 objectAtIndexedSubscript:1];
      [v22 floatValue];
      v102 = v23;

      v24 = [v15 objectAtIndexedSubscript:2];
      [v24 floatValue];
      v26 = v25;
      v109 = __PAIR64__(v102, v108);

      v27 = [v15 objectAtIndexedSubscript:3];
      [v27 floatValue];
      v103 = v28;

      v29 = [v15 objectAtIndexedSubscript:4];
      [v29 floatValue];
      v97 = v30;

      v31 = [v15 objectAtIndexedSubscript:5];
      [v31 floatValue];
      v33 = v32;
      v104 = __PAIR64__(v97, v103);

      v34 = [v15 objectAtIndexedSubscript:6];
      [v34 floatValue];
      v98 = v35;

      v36 = [v15 objectAtIndexedSubscript:7];
      [v36 floatValue];
      v94 = v37;

      v38 = [v15 objectAtIndexedSubscript:8];
      [v38 floatValue];
      v40 = v39;

      *&v5->_anon_60[8] = v26;
      *v5->_anon_60 = v109;
      *&v5->_anon_60[12] = 0;
      *&v5->_anon_60[24] = v33;
      *&v5->_anon_60[16] = v104;
      *&v5->_anon_60[28] = 0;
      *&v5->_anon_60[40] = v40;
      *&v5->_anon_60[32] = __PAIR64__(v94, v98);
      *&v5->_anon_60[44] = 0;
    }

    v41 = [coderCopy decodeObjectForKey:@"imrd"];
    v18 = v41;
    if (v41)
    {
      v42 = [v41 objectAtIndexedSubscript:0];
      [v42 floatValue];
      v44 = v43;
      v45 = [v18 objectAtIndexedSubscript:1];
      [v45 floatValue];
      v5->_intrinsicMatrixReferenceDimensions.width = v44;
      v5->_intrinsicMatrixReferenceDimensions.height = v46;
    }

    v47 = [coderCopy decodeObjectForKey:@"em"];
    v48 = v47;
    if (v47)
    {
      v49 = [v47 objectAtIndexedSubscript:0];
      [v49 floatValue];
      v110 = v50;

      v51 = [v48 objectAtIndexedSubscript:1];
      [v51 floatValue];
      v105 = v52;

      v53 = [v48 objectAtIndexedSubscript:2];
      [v53 floatValue];
      v55 = v54;
      v111 = __PAIR64__(v105, v110);

      v56 = [v48 objectAtIndexedSubscript:3];
      [v56 floatValue];
      v106 = v57;

      v58 = [v48 objectAtIndexedSubscript:4];
      [v58 floatValue];
      v99 = v59;

      v60 = [v48 objectAtIndexedSubscript:5];
      [v60 floatValue];
      v62 = v61;
      v107 = __PAIR64__(v99, v106);

      v63 = [v48 objectAtIndexedSubscript:6];
      [v63 floatValue];
      v100 = v64;

      v65 = [v48 objectAtIndexedSubscript:7];
      [v65 floatValue];
      v95 = v66;

      v67 = [v48 objectAtIndexedSubscript:8];
      [v67 floatValue];
      v69 = v68;
      v101 = __PAIR64__(v95, v100);

      v70 = [v48 objectAtIndexedSubscript:9];
      [v70 floatValue];
      v96 = v71;

      v72 = [v48 objectAtIndexedSubscript:10];
      [v72 floatValue];
      v93 = v73;

      v74 = [v48 objectAtIndexedSubscript:11];
      [v74 floatValue];
      v76 = v75;

      v5[1]._pixelSize = v55;
      v5[1].super.isa = v111;
      *(&v5[1]._pixelSize + 1) = 0;
      LODWORD(v5[1]._timestamp) = v62;
      v5[1]._streamID = v107;
      HIDWORD(v5[1]._timestamp) = 0;
      LODWORD(v5[1]._calibrationData) = v69;
      v5[1]._calibrationDictionary = v101;
      HIDWORD(v5[1]._calibrationData) = 0;
      LODWORD(v5[1]._inverseLensDistortionLookupTable) = v76;
      v5[1]._lensDistortionLookupTable = __PAIR64__(v93, v96);
      HIDWORD(v5[1]._inverseLensDistortionLookupTable) = 0;
    }

    [coderCopy decodeFloatForKey:{@"ps", v93}];
    v5->_pixelSize = v77;
    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ldlt"];
    lensDistortionLookupTable = v5->_lensDistortionLookupTable;
    v5->_lensDistortionLookupTable = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ildlt"];
    inverseLensDistortionLookupTable = v5->_inverseLensDistortionLookupTable;
    v5->_inverseLensDistortionLookupTable = v80;

    v82 = [coderCopy decodeObjectForKey:@"ldc"];
    v83 = v82;
    if (v82)
    {
      v84 = [v82 objectAtIndexedSubscript:0];
      [v84 floatValue];
      v86 = v85;
      v87 = [v83 objectAtIndexedSubscript:1];
      [v87 floatValue];
      v5->_lensDistortionCenter.x = v86;
      v5->_lensDistortionCenter.y = v88;
    }

    goto LABEL_18;
  }

LABEL_25:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v62[9] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_streamID forKey:@"si"];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  calibrationDictionary = self->_calibrationDictionary;
  if (calibrationDictionary)
  {
    [coderCopy encodeObject:calibrationDictionary forKey:@"d"];
  }

  else
  {
    LODWORD(v6) = *self->_anon_60;
    v55 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    v62[0] = v55;
    LODWORD(v8) = *&self->_anon_60[4];
    v53 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v62[1] = v53;
    LODWORD(v9) = *&self->_anon_60[8];
    v51 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v62[2] = v51;
    LODWORD(v10) = *&self->_anon_60[16];
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v62[3] = v11;
    LODWORD(v12) = *&self->_anon_60[20];
    [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v13 = v58 = v5;
    v62[4] = v13;
    LODWORD(v14) = *&self->_anon_60[24];
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v62[5] = v15;
    LODWORD(v16) = *&self->_anon_60[32];
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    v62[6] = v17;
    LODWORD(v18) = *&self->_anon_60[36];
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v62[7] = v19;
    LODWORD(v20) = *&self->_anon_60[40];
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v62[8] = v21;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:9];

    [coderCopy encodeObject:v57 forKey:@"im"];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.width];
    v61[0] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.height];
    v61[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    [coderCopy encodeObject:v24 forKey:@"imrd"];

    LODWORD(v25) = self[1].super.isa;
    v56 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
    v60[0] = v56;
    LODWORD(v26) = HIDWORD(self[1].super.isa);
    v54 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    v60[1] = v54;
    *&v27 = self[1]._pixelSize;
    v52 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
    v60[2] = v52;
    LODWORD(v28) = self[1]._streamID;
    v50 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    v60[3] = v50;
    LODWORD(v29) = HIDWORD(self[1]._streamID);
    v49 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
    v60[4] = v49;
    LODWORD(v30) = LODWORD(self[1]._timestamp);
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    v60[5] = v31;
    LODWORD(v32) = self[1]._calibrationDictionary;
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    v60[6] = v33;
    LODWORD(v34) = HIDWORD(self[1]._calibrationDictionary);
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
    v60[7] = v35;
    LODWORD(v36) = self[1]._calibrationData;
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    v60[8] = v37;
    LODWORD(v38) = self[1]._lensDistortionLookupTable;
    v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    v60[9] = v39;
    LODWORD(v40) = HIDWORD(self[1]._lensDistortionLookupTable);
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    v60[10] = v41;
    LODWORD(v42) = self[1]._inverseLensDistortionLookupTable;
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    v60[11] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:12];

    [coderCopy encodeObject:v44 forKey:@"em"];
    *&v45 = self->_pixelSize;
    [coderCopy encodeFloat:@"ps" forKey:v45];
    [coderCopy encodeObject:self->_lensDistortionLookupTable forKey:@"ldlt"];
    [coderCopy encodeObject:self->_inverseLensDistortionLookupTable forKey:@"ildlt"];
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.x];
    v59[0] = v46;
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.y];
    v59[1] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    [coderCopy encodeObject:v48 forKey:@"ldc"];

    v5 = v58;
  }

  objc_autoreleasePoolPop(v5);
}

- (id)dictionary
{
  v77[2] = *MEMORY[0x277D85DE8];
  if (self->_streamID)
  {
    streamID = self->_streamID;
  }

  else
  {
    streamID = &stru_28521B010;
  }

  v4 = MEMORY[0x277CBEB38];
  v76[0] = @"si";
  v76[1] = @"t";
  v77[0] = streamID;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v77[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v7 = [v4 dictionaryWithDictionary:v6];

  calibrationDictionary = self->_calibrationDictionary;
  if (calibrationDictionary)
  {
    [v7 setObject:calibrationDictionary forKeyedSubscript:@"d"];
    goto LABEL_13;
  }

  v69 = v7;
  LODWORD(v8) = *self->_anon_60;
  v65 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v75[0] = v65;
  LODWORD(v10) = *&self->_anon_60[4];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v75[1] = v11;
  LODWORD(v12) = *&self->_anon_60[8];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v75[2] = v13;
  LODWORD(v14) = *&self->_anon_60[16];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v75[3] = v15;
  LODWORD(v16) = *&self->_anon_60[20];
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v75[4] = v17;
  LODWORD(v18) = *&self->_anon_60[24];
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v75[5] = v19;
  LODWORD(v20) = *&self->_anon_60[32];
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v75[6] = v21;
  LODWORD(v22) = *&self->_anon_60[36];
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v75[7] = v23;
  LODWORD(v24) = *&self->_anon_60[40];
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v75[8] = v25;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:9];

  LODWORD(v26) = self[1].super.isa;
  v66 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v74[0] = v66;
  LODWORD(v27) = HIDWORD(self[1].super.isa);
  v63 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v74[1] = v63;
  *&v28 = self[1]._pixelSize;
  v61 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v74[2] = v61;
  LODWORD(v29) = self[1]._streamID;
  v60 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v74[3] = v60;
  LODWORD(v30) = HIDWORD(self[1]._streamID);
  v59 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  v74[4] = v59;
  LODWORD(v31) = LODWORD(self[1]._timestamp);
  v58 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v74[5] = v58;
  LODWORD(v32) = self[1]._calibrationDictionary;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v74[6] = v33;
  LODWORD(v34) = HIDWORD(self[1]._calibrationDictionary);
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  v74[7] = v35;
  LODWORD(v36) = self[1]._calibrationData;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v74[8] = v37;
  LODWORD(v38) = self[1]._lensDistortionLookupTable;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v74[9] = v39;
  LODWORD(v40) = HIDWORD(self[1]._lensDistortionLookupTable);
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  v74[10] = v41;
  LODWORD(v42) = self[1]._inverseLensDistortionLookupTable;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  v74[11] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:12];

  v73[0] = v68;
  v72[0] = @"im";
  v72[1] = @"imrd";
  v64 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.width];
  v71[0] = v64;
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.height];
  v71[1] = v62;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v73[1] = v45;
  v73[2] = v44;
  v67 = v44;
  v72[2] = @"em";
  v72[3] = @"ps";
  *&v46 = self->_pixelSize;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  v73[3] = v47;
  v72[4] = @"ldlt";
  lensDistortionLookupTable = self->_lensDistortionLookupTable;
  v49 = lensDistortionLookupTable;
  if (!lensDistortionLookupTable)
  {
    v49 = objc_opt_new();
  }

  v73[4] = v49;
  v72[5] = @"ildlt";
  inverseLensDistortionLookupTable = self->_inverseLensDistortionLookupTable;
  v51 = inverseLensDistortionLookupTable;
  if (!inverseLensDistortionLookupTable)
  {
    v51 = objc_opt_new();
  }

  v73[5] = v51;
  v72[6] = @"ldc";
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.x];
  v70[0] = v52;
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.y];
  v70[1] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v73[6] = v54;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:7];
  [v69 addEntriesFromDictionary:v55];

  if (!inverseLensDistortionLookupTable)
  {

    if (lensDistortionLookupTable)
    {
      goto LABEL_12;
    }

LABEL_17:

    goto LABEL_12;
  }

  if (!lensDistortionLookupTable)
  {
    goto LABEL_17;
  }

LABEL_12:

  v7 = v69;
LABEL_13:
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];

  return v56;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACameraCalibrationData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

- (__n128)setIntrinsicMatrix:(__n128)matrix
{
  result[6] = a2;
  result[7] = matrix;
  result[8] = a4;
  return result;
}

- (CGSize)intrinsicMatrixReferenceDimensions
{
  width = self->_intrinsicMatrixReferenceDimensions.width;
  height = self->_intrinsicMatrixReferenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)setExtrinsicMatrix:(__n128)matrix
{
  result[9] = a2;
  result[10] = matrix;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (CGPoint)lensDistortionCenter
{
  x = self->_lensDistortionCenter.x;
  y = self->_lensDistortionCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end