@interface CRXFAppClipCodeTranscoder
+ (id)sharedInstance;
- (BOOL)encodeAppClipCode:(id)code toBytes:(char *)bytes length:(unint64_t)length error:(id *)error;
- (BOOL)encodeAppClipCode:(id)code toData:(id)data error:(id *)error;
- (BOOL)encodeAppClipCodeV1:(id)v1 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV2:(id)v2 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV3:(id)v3 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV4:(id)v4 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV5:(id)v5 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV6:(id)v6 toBuffer:(id)buffer error:(id *)error;
- (BOOL)getIndexForQuarterDiopterValue:(float)value minValue:(float)minValue maxValue:(float)maxValue index:(unint64_t *)index;
- (BOOL)getQuarterDiopterValueForIndex:(unint64_t)index minValue:(float)value maxValue:(float)maxValue value:(float *)a6;
- (BOOL)isACCVersionSupported:(unint64_t)supported;
- (CRXFAppClipCodeTranscoder)init;
- (id)decodeAppClipCodeFromBytes:(const char *)bytes length:(unint64_t)length allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeFromData:(id)data allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeFromHexString:(id)string allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV1FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV2FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV3FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV4FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV5FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV6FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)deriveCanonicalPayloadFromPayload:(id)payload;
- (id)derivePayloadWithLensTypeZeroed:(id)zeroed ifLensTypeIs:(unint64_t)is;
- (id)encodeAppClipCodeToHexString:(id)string error:(id *)error;
- (id)errorForStatus:(unint64_t)status leftLens:(BOOL)lens;
- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r haveRightLens:(BOOL)self0 rightSphere:(float)self1 rightCylinder:(float)self2 rightAxis:(unint64_t)self3 rightAddVR:(float)self4 identifyingColor:(unint64_t)self5 secret:(id)self6 error:(id *)self7;
- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r leftHorizPrismBaseDirection:(unint64_t)self0 leftHorizPrism:(float)self1 leftVertPrismBaseDirection:(unint64_t)self2 leftVertPrism:(float)self3 haveRightLens:(BOOL)self4 rightSphere:(float)self5 rightCylinder:(float)self6 rightAxis:(unint64_t)self7 rightAddVR:(float)self8 rightHorizPrismBaseDirection:(unint64_t)self9 rightHorizPrism:(float)horizPrism rightVertPrismBaseDirection:(unint64_t)vertPrismBaseDirection rightVertPrism:(float)rightVertPrism identifyingColor:(unint64_t)color secret:(id)secret error:(id *)error;
- (id)mergeLeftAppClipCode:(id)code withRightAppClipCode:(id)clipCode error:(id *)error;
- (unint64_t)decodeAppClipCodeVersionFromBuffer:(id)buffer error:(id *)error;
- (unint64_t)decodeCalibrationRXID:(unint64_t *)d calibrationSphere:(float *)sphere calibrationCylinder:(float *)cylinder calibrationAxis:(unint64_t *)axis addVR:(float *)r clampingStatus:(unint64_t *)status displaySphere:(float *)displaySphere displayCylinder:(float *)self0 displayAxis:(unint64_t *)self1 fromRXID:(unint64_t)self2 RXOffsetID:(unint64_t)self3 cylinderSignFlipped:(BOOL)self4 axisID:(unint64_t)self5 allowUnsupportedRX:(BOOL)self6;
- (unint64_t)encodeSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis toRXID:(unint64_t *)d axisID:(unint64_t *)iD;
- (unint64_t)lookUpRXID:(unint64_t *)d forSphereValue:(float)value cylinderValue:(float)cylinderValue;
- (unint64_t)lookupBestValidRXID:(unint64_t *)d andSphere:(float *)sphere matchingCylinder:(float)cylinder nearSphere:(float)nearSphere;
- (unint64_t)payloadLengthForAppClipCodeVersion:(unint64_t)version;
@end

@implementation CRXFAppClipCodeTranscoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CRXFAppClipCodeTranscoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance___once__LINE__ != -1)
  {
    dispatch_once(&sharedInstance___once__LINE__, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __43__CRXFAppClipCodeTranscoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CRXFAppClipCodeTranscoder)init
{
  v6.receiver = self;
  v6.super_class = CRXFAppClipCodeTranscoder;
  v2 = [(CRXFAppClipCodeTranscoder *)&v6 init];
  if (v2)
  {
    v3 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

- (unint64_t)payloadLengthForAppClipCodeVersion:(unint64_t)version
{
  if (version <= 5)
  {
    return 16;
  }

  else
  {
    return 19;
  }
}

- (unint64_t)decodeAppClipCodeVersionFromBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  v10 = 0;
  if ([bufferCopy byteCount] != 16)
  {
    if ([bufferCopy byteCount] != 19)
    {
      v6 = 101;
LABEL_6:
      v7 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v6 userInfo:MEMORY[0x277CBEC10]];
      if (v7)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    if (([bufferCopy skipBits:145] & 1) == 0)
    {
      v6 = 97;
      goto LABEL_6;
    }
  }

LABEL_7:
  if ([bufferCopy readUInteger:&v10 bitWidth:4])
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:107 userInfo:MEMORY[0x277CBEC10]];
LABEL_10:
  if (error && v7)
  {
    v7 = v7;
    *error = v7;
  }

LABEL_13:
  v8 = v10;

  return v8;
}

- (id)decodeAppClipCodeFromBytes:(const char *)bytes length:(unint64_t)length allowUnsupportedRX:(BOOL)x error:(id *)error
{
  xCopy = x;
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  v10 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:v9 allowUnsupportedRX:xCopy error:error];

  return v10;
}

- (id)decodeAppClipCodeFromHexString:(id)string allowUnsupportedRX:(BOOL)x error:(id *)error
{
  xCopy = x;
  v8 = [MEMORY[0x277CBEA90] crxu_dataWithHexString:string];
  if (v8)
  {
    v9 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:v8 allowUnsupportedRX:xCopy error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:32 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:131 userInfo:MEMORY[0x277CBEC10]];
    *error = v9 = 0;
  }

  return v9;
}

- (BOOL)isACCVersionSupported:(unint64_t)supported
{
  if (supported - 1 < 5)
  {
    return 1;
  }

  if (supported == 6)
  {
    return MEMORY[0x282203478]("SeaLevel", "SeaUrchin");
  }

  return 0;
}

- (id)decodeAppClipCodeFromData:(id)data allowUnsupportedRX:(BOOL)x error:(id *)error
{
  xCopy = x;
  dataCopy = data;
  if ([dataCopy length])
  {
    v9 = [[CRXUBitBuffer alloc] initWithData:dataCopy];
    v21 = 0;
    v10 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeVersionFromBuffer:v9 error:&v21];
    v11 = v21;
    v12 = v11;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        v14 = 0;
        *error = v12;
LABEL_29:

        goto LABEL_30;
      }

LABEL_25:
      v14 = 0;
      goto LABEL_29;
    }

    if ([(CRXFAppClipCodeTranscoder *)self isACCVersionSupported:v10])
    {
      [(CRXUBitBuffer *)v9 rewind];
      if (v10 > 3)
      {
        switch(v10)
        {
          case 4:
            v15 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeV4FromBuffer:v9 allowUnsupportedRX:xCopy error:error];
            goto LABEL_28;
          case 5:
            v15 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeV5FromBuffer:v9 allowUnsupportedRX:xCopy error:error];
            goto LABEL_28;
          case 6:
            v15 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeV6FromBuffer:v9 allowUnsupportedRX:xCopy error:error];
            goto LABEL_28;
        }
      }

      else
      {
        switch(v10)
        {
          case 1:
            v15 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeV1FromBuffer:v9 allowUnsupportedRX:xCopy error:error];
            goto LABEL_28;
          case 2:
            v15 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeV2FromBuffer:v9 allowUnsupportedRX:xCopy error:error];
            goto LABEL_28;
          case 3:
            v15 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeV3FromBuffer:v9 allowUnsupportedRX:xCopy error:error];
LABEL_28:
            v14 = v15;
            goto LABEL_29;
        }
      }

      if (!error)
      {
        goto LABEL_25;
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = MEMORY[0x277CBEC10];
      v18 = 2;
      v19 = 238;
    }

    else
    {
      if (!error)
      {
        goto LABEL_25;
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = MEMORY[0x277CBEC10];
      v18 = 48;
      v19 = 189;
    }

    [v16 crxf_errorWithCode:v18 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v19 userInfo:v17];
    *error = v14 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:32 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:171 userInfo:MEMORY[0x277CBEC10]];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_30:

  return v14;
}

- (BOOL)encodeAppClipCode:(id)code toBytes:(char *)bytes length:(unint64_t)length error:(id *)error
{
  v10 = MEMORY[0x277CBEB28];
  codeCopy = code;
  v12 = [[v10 alloc] initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  LOBYTE(error) = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:codeCopy toData:v12 error:error];

  return error;
}

- (id)encodeAppClipCodeToHexString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [stringCopy version]);
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v7];
  LODWORD(error) = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:stringCopy toData:v8 error:error];

  if (error)
  {
    crxu_asHexString = [v8 crxu_asHexString];
  }

  else
  {
    crxu_asHexString = 0;
  }

  return crxu_asHexString;
}

- (BOOL)encodeAppClipCode:(id)code toData:(id)data error:(id *)error
{
  codeCopy = code;
  dataCopy = data;
  v10 = [[CRXUBitBuffer alloc] initWithMutableData:dataCopy];

  version = [codeCopy version];
  if (version > 3)
  {
    switch(version)
    {
      case 4:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV4:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 5:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV5:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 6:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV6:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
    }
  }

  else
  {
    switch(version)
    {
      case 1:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV1:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 2:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV2:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 3:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV3:codeCopy toBuffer:v10 error:error];
LABEL_16:
        v13 = v12;
        goto LABEL_17;
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:2 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:301 userInfo:MEMORY[0x277CBEC10]];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r haveRightLens:(BOOL)self0 rightSphere:(float)self1 rightCylinder:(float)self2 rightAxis:(unint64_t)self3 rightAddVR:(float)self4 identifyingColor:(unint64_t)self5 secret:(id)self6 error:(id *)self7
{
  rightLensCopy = rightLens;
  lensCopy = lens;
  secretCopy = secret;
  sphereCopy = sphere;
  cylinderCopy = cylinder;
  axisCopy = axis;
  v29 = vrx_apply_eye_rx_cylinder_sign_flip(&sphereCopy);
  if (v29)
  {
    sphere = sphereCopy;
    cylinder = cylinderCopy;
    axis = axisCopy;
  }

  rightSphereCopy = rightSphere;
  rightCylinderCopy = rightCylinder;
  rightAxisCopy = rightAxis;
  v30 = vrx_apply_eye_rx_cylinder_sign_flip(&rightSphereCopy);
  if (v30)
  {
    HIDWORD(v32) = HIDWORD(rightCylinderCopy);
    rightSphere = rightSphereCopy;
    rightCylinder = rightCylinderCopy;
    HIDWORD(v31) = HIDWORD(rightAxisCopy);
    rightAxis = rightAxisCopy;
  }

  if (!secretCopy)
  {
    secretCopy = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
  }

  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  if (!lensCopy)
  {
    v34 = 1;
    if (rightLensCopy)
    {
      goto LABEL_12;
    }

LABEL_16:
    v36 = 1;
    goto LABEL_17;
  }

  *&v31 = sphere;
  *&v32 = cylinder;
  v33 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:axis cylinder:&v52 axis:&v50 toRXID:v31 axisID:v32];
  v34 = v33 == 0;
  if (error && v33)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v33 leftLens:1];
    *error = v34 = 0;
  }

  if (!rightLensCopy)
  {
    goto LABEL_16;
  }

LABEL_12:
  *&v31 = rightSphere;
  *&v32 = rightCylinder;
  v35 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:rightAxis cylinder:&v51 axis:&v49 toRXID:v31 axisID:v32];
  v36 = v35 == 0;
  if (error && v35)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v35 leftLens:0];
    *error = v37 = 0;
    goto LABEL_20;
  }

LABEL_17:
  if (v34 && v36)
  {
    v38 = [CRXFAppClipCode alloc];
    LODWORD(v46) = 0;
    LODWORD(v45) = 0;
    *&v39 = cylinder;
    *&v40 = sphere;
    *&v41 = cylinder;
    *&v42 = r;
    *&v43 = rightSphere;
    v37 = [(CRXFAppClipCode *)v38 initWithVersion:version lensType:type cylLeftSignFlipped:v29 != 0 cylRightSignFlipped:v30 != 0 leftRXID:v52 leftCalibrationRXID:v52 leftDisplaySphere:COERCE_DOUBLE(LODWORD(sphere)) leftDisplayCylinder:v39 leftCalibrationSphere:v40 leftCalibrationCylinder:v41 leftAddVR:v42 leftAxisID:0.0 leftDisplayAxis:0.0 leftCalibrationAxis:v43 leftClamping:v50 leftHorizPrismBaseDirection:axis leftHorizPrism:axis leftVertPrismBaseDirection:0 leftVertPrism:0 rightRXID:0 rightCalibrationRXID:v51 rightDisplaySphere:v51 rightDisplayCylinder:__PAIR64__(LODWORD(rightSphere) rightCalibrationSphere:LODWORD(rightCylinder)) rightCalibrationCylinder:__PAIR64__(LODWORD(vR) rightAddVR:LODWORD(rightCylinder)) rightAxisID:v49 rightDisplayAxis:rightAxis rightCalibrationAxis:rightAxis rightClamping:0 rightHorizPrismBaseDirection:0 rightHorizPrism:v45 rightVertPrismBaseDirection:0 rightVertPrism:v46 identifyingColor:color secret:secretCopy randomBits:0];
  }

  else
  {
    v37 = 0;
  }

LABEL_20:

  return v37;
}

- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r leftHorizPrismBaseDirection:(unint64_t)self0 leftHorizPrism:(float)self1 leftVertPrismBaseDirection:(unint64_t)self2 leftVertPrism:(float)self3 haveRightLens:(BOOL)self4 rightSphere:(float)self5 rightCylinder:(float)self6 rightAxis:(unint64_t)self7 rightAddVR:(float)self8 rightHorizPrismBaseDirection:(unint64_t)self9 rightHorizPrism:(float)horizPrism rightVertPrismBaseDirection:(unint64_t)vertPrismBaseDirection rightVertPrism:(float)rightVertPrism identifyingColor:(unint64_t)color secret:(id)secret error:(id *)error
{
  lensCopy = lens;
  rightAxisCopy = rightAxis;
  secretCopy = secret;
  sphereCopy = sphere;
  cylinderCopy = cylinder;
  axisCopy = axis;
  v36 = vrx_apply_eye_rx_cylinder_sign_flip(&sphereCopy);
  if (v36)
  {
    sphere = sphereCopy;
    cylinder = cylinderCopy;
    axis = axisCopy;
  }

  rightSphereCopy = rightSphere;
  rightCylinderCopy = rightCylinder;
  rightAxisCopy2 = rightAxis;
  v37 = vrx_apply_eye_rx_cylinder_sign_flip(&rightSphereCopy);
  if (v37)
  {
    HIDWORD(v39) = HIDWORD(rightCylinderCopy);
    rightSphere = rightSphereCopy;
    rightCylinder = rightCylinderCopy;
    HIDWORD(v38) = HIDWORD(rightAxisCopy2);
    rightAxisCopy = rightAxisCopy2;
  }

  if (!secretCopy)
  {
    secretCopy = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
  }

  v65 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  if (!lensCopy)
  {
    v41 = 1;
    if (rightLens)
    {
      goto LABEL_12;
    }

LABEL_16:
    v43 = 1;
    goto LABEL_17;
  }

  *&v38 = sphere;
  *&v39 = cylinder;
  v40 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:axis cylinder:&v66 axis:&v64 toRXID:v38 axisID:v39];
  v41 = v40 == 0;
  if (error && v40)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v40 leftLens:1];
    *error = v41 = 0;
  }

  if (!rightLens)
  {
    goto LABEL_16;
  }

LABEL_12:
  *&v38 = rightSphere;
  *&v39 = rightCylinder;
  v42 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:rightAxisCopy cylinder:&v65 axis:&v63 toRXID:v38 axisID:v39];
  v43 = v42 == 0;
  if (error && v42)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v42 leftLens:0];
    *error = v44 = 0;
    goto LABEL_20;
  }

LABEL_17:
  if (v41 && v43)
  {
    v45 = [CRXFAppClipCode alloc];
    *&v56 = rightVertPrism;
    *&v55 = horizPrism;
    *&v46 = sphere;
    *&v47 = cylinder;
    *&v48 = sphere;
    *&v49 = cylinder;
    *&v50 = r;
    *&v51 = prism;
    *&v52 = vertPrism;
    *&v53 = rightSphere;
    v44 = [(CRXFAppClipCode *)v45 initWithVersion:version lensType:type cylLeftSignFlipped:v36 != 0 cylRightSignFlipped:v37 != 0 leftRXID:v66 leftCalibrationRXID:v66 leftDisplaySphere:v46 leftDisplayCylinder:v47 leftCalibrationSphere:v48 leftCalibrationCylinder:v49 leftAddVR:v50 leftAxisID:v51 leftDisplayAxis:v52 leftCalibrationAxis:v53 leftClamping:v64 leftHorizPrismBaseDirection:axis leftHorizPrism:axis leftVertPrismBaseDirection:0 leftVertPrism:direction rightRXID:baseDirection rightCalibrationRXID:v65 rightDisplaySphere:v65 rightDisplayCylinder:__PAIR64__(LODWORD(rightSphere) rightCalibrationSphere:LODWORD(rightCylinder)) rightCalibrationCylinder:__PAIR64__(LODWORD(vR) rightAddVR:LODWORD(rightCylinder)) rightAxisID:v63 rightDisplayAxis:rightAxisCopy rightCalibrationAxis:rightAxisCopy rightClamping:0 rightHorizPrismBaseDirection:prismBaseDirection rightHorizPrism:v55 rightVertPrismBaseDirection:vertPrismBaseDirection rightVertPrism:v56 identifyingColor:color secret:secretCopy randomBits:0];
  }

  else
  {
    v44 = 0;
  }

LABEL_20:

  return v44;
}

- (id)mergeLeftAppClipCode:(id)code withRightAppClipCode:(id)clipCode error:(id *)error
{
  codeCopy = code;
  clipCodeCopy = clipCode;
  version = [codeCopy version];
  if (version == [clipCodeCopy version])
  {
    if ([codeCopy rightRXID] || objc_msgSend(clipCodeCopy, "leftRXID"))
    {
      if (error)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = MEMORY[0x277CBEC10];
        v12 = 5;
        v13 = 561;
LABEL_8:
        [v10 crxf_errorWithCode:v12 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v13 userInfo:v11];
        *error = v14 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      lensType = [codeCopy lensType];
      if (lensType == [clipCodeCopy lensType])
      {
        v16 = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
        v73 = [CRXFAppClipCode alloc];
        version2 = [codeCopy version];
        lensType2 = [codeCopy lensType];
        cylLeftSignFlipped = [codeCopy cylLeftSignFlipped];
        cylRightSignFlipped = [codeCopy cylRightSignFlipped];
        leftRXID = [codeCopy leftRXID];
        leftCalibrationRXID = [codeCopy leftCalibrationRXID];
        [codeCopy leftDisplaySphere];
        v68 = v17;
        [codeCopy leftDisplayCylinder];
        v67 = v18;
        [codeCopy leftCalibrationSphere];
        v66 = v19;
        [codeCopy leftCalibrationCylinder];
        v65 = v20;
        [codeCopy leftAddVR];
        v64 = v21;
        leftAxisID = [codeCopy leftAxisID];
        leftDisplayAxis = [codeCopy leftDisplayAxis];
        leftCalibrationAxis = [codeCopy leftCalibrationAxis];
        leftClamping = [codeCopy leftClamping];
        leftHorizPrismBaseDirection = [codeCopy leftHorizPrismBaseDirection];
        [codeCopy leftHorizPrism];
        v23 = v22;
        leftVertPrismBaseDirection = [codeCopy leftVertPrismBaseDirection];
        [codeCopy leftVertPrism];
        v25 = v24;
        rightRXID = [clipCodeCopy rightRXID];
        rightCalibrationRXID = [clipCodeCopy rightCalibrationRXID];
        [clipCodeCopy rightDisplaySphere];
        v28 = v27;
        [clipCodeCopy rightDisplayCylinder];
        v30 = v29;
        [codeCopy rightCalibrationSphere];
        v32 = v31;
        [codeCopy rightCalibrationCylinder];
        v34 = v33;
        [clipCodeCopy rightAddVR];
        v36 = v35;
        rightAxisID = [clipCodeCopy rightAxisID];
        rightDisplayAxis = [clipCodeCopy rightDisplayAxis];
        rightCalibrationAxis = [clipCodeCopy rightCalibrationAxis];
        rightClamping = [clipCodeCopy rightClamping];
        rightHorizPrismBaseDirection = [codeCopy rightHorizPrismBaseDirection];
        [codeCopy rightHorizPrism];
        v43 = v42;
        rightVertPrismBaseDirection = [codeCopy rightVertPrismBaseDirection];
        [codeCopy rightVertPrism];
        LODWORD(v56) = v45;
        LODWORD(v55) = v43;
        LODWORD(v47) = v67;
        LODWORD(v46) = v68;
        LODWORD(v49) = v65;
        LODWORD(v48) = v66;
        LODWORD(v50) = v64;
        LODWORD(v51) = v23;
        LODWORD(v52) = v25;
        LODWORD(v53) = v28;
        v14 = [(CRXFAppClipCode *)v73 initWithVersion:version2 lensType:lensType2 cylLeftSignFlipped:cylLeftSignFlipped cylRightSignFlipped:cylRightSignFlipped leftRXID:leftRXID leftCalibrationRXID:leftCalibrationRXID leftDisplaySphere:v46 leftDisplayCylinder:v47 leftCalibrationSphere:v48 leftCalibrationCylinder:v49 leftAddVR:v50 leftAxisID:v51 leftDisplayAxis:v52 leftCalibrationAxis:v53 leftClamping:leftAxisID leftHorizPrismBaseDirection:leftDisplayAxis leftHorizPrism:leftCalibrationAxis leftVertPrismBaseDirection:leftClamping leftVertPrism:leftHorizPrismBaseDirection rightRXID:leftVertPrismBaseDirection rightCalibrationRXID:rightRXID rightDisplaySphere:rightCalibrationRXID rightDisplayCylinder:__PAIR64__(v32 rightCalibrationSphere:v30) rightCalibrationCylinder:__PAIR64__(v36 rightAddVR:v34) rightAxisID:rightAxisID rightDisplayAxis:rightDisplayAxis rightCalibrationAxis:rightCalibrationAxis rightClamping:rightClamping rightHorizPrismBaseDirection:rightHorizPrismBaseDirection rightHorizPrism:v55 rightVertPrismBaseDirection:rightVertPrismBaseDirection rightVertPrism:v56 identifyingColor:0 secret:v16 randomBits:0];

        goto LABEL_14;
      }

      if (error)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = MEMORY[0x277CBEC10];
        v12 = 31;
        v13 = 568;
        goto LABEL_8;
      }
    }
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = MEMORY[0x277CBEC10];
    v12 = 22;
    v13 = 554;
    goto LABEL_8;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (unint64_t)decodeCalibrationRXID:(unint64_t *)d calibrationSphere:(float *)sphere calibrationCylinder:(float *)cylinder calibrationAxis:(unint64_t *)axis addVR:(float *)r clampingStatus:(unint64_t *)status displaySphere:(float *)displaySphere displayCylinder:(float *)self0 displayAxis:(unint64_t *)self1 fromRXID:(unint64_t)self2 RXOffsetID:(unint64_t)self3 cylinderSignFlipped:(BOOL)self4 axisID:(unint64_t)self5 allowUnsupportedRX:(BOOL)self6
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  iDCopy = iD;
  if (status)
  {
    *status = 0;
  }

  if (iD == 1023)
  {
    if (x)
    {
      v22 = 0;
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:];
      }

      v22 = 8;
    }

    log = self->_log;
    v26 = 0.0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
      *&buf[12] = 1024;
      *&buf[14] = 649;
      _os_log_impl(&dword_24732C000, log, OS_LOG_TYPE_INFO, "%s @%d: rxID is out of range, allow unsupported RX", buf, 0x12u);
    }

    v27 = 0.0;
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
      *&buf[12] = 1024;
      *&buf[14] = 651;
      _os_log_impl(&dword_24732C000, v23, OS_LOG_TYPE_INFO, "%s @%d: rxID is in range", buf, 0x12u);
    }

    v24 = [(CRXFAppClipCodeTranscoder *)self lookUpSphereValue:&v47 + 4 cylinderValue:&v47 forRXID:iD];
    v22 = v24;
    LODWORD(v25) = HIDWORD(v47);
    if (v24)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = *&v47;
    }

    if (v24)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = *(&v47 + 1);
    }
  }

  v46 = 0;
  v29 = [(CRXFAppClipCodeTranscoder *)self lookUpAxisValue:&v46 forAxisID:axisID, v25];
  v33 = v46;
  if (v29)
  {
    v34 = v46;
  }

  else
  {
    v34 = 0;
  }

  v35 = vcvts_n_f32_u64(offsetID, 2uLL);
  v36 = *(&v47 + 1);
  LODWORD(v31) = v47;
  v37 = v29 | v22;
  if (v29 | v22)
  {
    v33 = v34;
  }

  else
  {
    *buf = *(&v47 + 1);
    *&buf[8] = *&v47;
    *&buf[16] = v46;
    if (flipped)
    {
      v44 = *buf;
      v45 = *&buf[16];
      vrx_unapply_eye_rx_cylinder_sign_flip(&v44);
      v27 = *&v44;
      v26 = *(&v44 + 1);
      v33 = v45;
    }

    if (offsetID)
    {
      vrx_apply_eye_rx_vr_add(buf, v30, v35, 15.0);
    }

    HIDWORD(v31) = *&buf[4];
    v36 = *buf;
    *&v31 = *&buf[8];
    v47 = __PAIR64__(LODWORD(v36), LODWORD(v31));
    HIDWORD(v32) = *&buf[20];
    v46 = *&buf[16];
  }

  *&v32 = v36;
  if ([(CRXFAppClipCodeTranscoder *)self lookupBestValidRXID:&iDCopy andSphere:&v47 + 4 matchingCylinder:v31 nearSphere:v32])
  {
    if (offsetID)
    {
      v37 |= 0x20uLL;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:];
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:];
      }

      v37 |= 8uLL;
    }

    rCopy4 = r;
    if (status)
    {
      v40 = 3;
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  if (!offsetID)
  {
    if (v27 != *(&v47 + 1))
    {
      v41 = self->_log;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
        *&buf[12] = 1024;
        *&buf[14] = 741;
        _os_log_impl(&dword_24732C000, v41, OS_LOG_TYPE_INFO, "%s @%d: RX clamped successfully!", buf, 0x12u);
      }

      rCopy4 = r;
      if (status)
      {
        v40 = 1;
        goto LABEL_45;
      }

      goto LABEL_52;
    }

LABEL_51:
    rCopy4 = r;
    goto LABEL_52;
  }

  if (v36 == *(&v47 + 1))
  {
    goto LABEL_51;
  }

  v38 = self->_log;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
    *&buf[12] = 1024;
    *&buf[14] = 733;
    _os_log_impl(&dword_24732C000, v38, OS_LOG_TYPE_INFO, "%s @%d: AddVR clamped successfully!", buf, 0x12u);
  }

  rCopy4 = r;
  if (status)
  {
    v40 = 2;
LABEL_45:
    *status = v40;
  }

LABEL_52:
  if (d)
  {
    *d = iDCopy;
  }

  if (sphere)
  {
    *sphere = *(&v47 + 1);
  }

  if (cylinder)
  {
    *cylinder = v47;
  }

  if (displaySphere)
  {
    *displaySphere = v27;
  }

  if (displayCylinder)
  {
    *displayCylinder = v26;
  }

  if (displayAxis)
  {
    *displayAxis = v33;
  }

  if (axis)
  {
    *axis = v46;
  }

  if (rCopy4)
  {
    *rCopy4 = v35;
  }

  return v37;
}

- (unint64_t)encodeSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis toRXID:(unint64_t *)d axisID:(unint64_t *)iD
{
  if (!d)
  {
    v11 = 0;
    if (!iD)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v11 = [CRXFAppClipCodeTranscoder lookUpRXID:"lookUpRXID:forSphereValue:cylinderValue:" forSphereValue:d cylinderValue:?];
  if (v11)
  {
    *d = 0;
  }

  if (iD)
  {
LABEL_7:
    v12 = [(CRXFAppClipCodeTranscoder *)self lookUpAxisID:iD forAxisValue:axis];
    if (v12)
    {
      *iD = 0;
      v11 |= v12;
    }
  }

  return v11;
}

- (id)errorForStatus:(unint64_t)status leftLens:(BOOL)lens
{
  lensCopy = lens;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  v8 = kCRXFErrorKeyLeftLensDecodeStatus;
  if (!lensCopy)
  {
    v8 = kCRXFErrorKeyRightLensDecodeStatus;
  }

  [dictionary setObject:v7 forKeyedSubscript:*v8];

  v9 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:835 userInfo:dictionary];

  return v9;
}

- (unint64_t)lookUpRXID:(unint64_t *)d forSphereValue:(float)value cylinderValue:(float)cylinderValue
{
  result = [RXIDLookup sphere:"sphere:cylinder:toRXID:" cylinder:d toRXID:?];
  if (result >= 3)
  {
    return 1;
  }

  return result;
}

- (unint64_t)lookupBestValidRXID:(unint64_t *)d andSphere:(float *)sphere matchingCylinder:(float)cylinder nearSphere:(float)nearSphere
{
  v6 = [RXIDLookup bestValidRXID:"bestValidRXID:andSphere:matchingCylinder:nearSphere:" andSphere:d matchingCylinder:sphere nearSphere:?];
  v7 = 1;
  if (v6 != 1)
  {
    v7 = 2;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (id)decodeAppClipCodeV1FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v45[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
  {
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "skipBits:", 12) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v43, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v41, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v42, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v40, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v38 = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v35 = 0;
      if (v43)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = 0;
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:0 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v39 displaySphere:&v37 + 4 displayCylinder:&v37 displayAxis:&v35 fromRXID:v43 RXOffsetID:0 cylinderSignFlipped:v18 axisID:v41 allowUnsupportedRX:v19];
      }

      else
      {
        v10 = 0;
      }

      if (v42)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = 0;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:0 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v38 displaySphere:&v36 + 4 displayCylinder:&v36 displayAxis:&v34 fromRXID:v42 RXOffsetID:0 cylinderSignFlipped:v18 axisID:v40 allowUnsupportedRX:v19];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV1FromBuffer_allowUnsupportedRX_error___block_invoke;
        v20[3] = &unk_278E9FC18;
        v30 = HIDWORD(v37);
        v31 = v37;
        v22 = v43;
        v23 = v41;
        v24 = v35;
        v25 = v39;
        v32 = HIDWORD(v36);
        v33 = v36;
        v26 = v42;
        v27 = v40;
        v28 = v34;
        v29 = v38;
        v21 = v9;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v20];
        v14 = v21;
        goto LABEL_29;
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v44[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v45[0] = v14;
        v44[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v45[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:985 userInfo:v16];

        v11 = 0;
LABEL_29:

        goto LABEL_24;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:934 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v11 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:918 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_25:

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV1FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [v11 setVersion:1];
  [v11 setLeftRXID:*(a1 + 40)];
  [v11 setLeftCalibrationRXID:*(a1 + 40)];
  LODWORD(v3) = *(a1 + 104);
  [v11 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 108);
  [v11 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 104);
  [v11 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 108);
  [v11 setLeftCalibrationCylinder:v6];
  [v11 setLeftAxisID:*(a1 + 48)];
  [v11 setLeftDisplayAxis:*(a1 + 56)];
  [v11 setLeftCalibrationAxis:*(a1 + 56)];
  [v11 setLeftClamping:*(a1 + 64)];
  [v11 setRightRXID:*(a1 + 72)];
  [v11 setRightCalibrationRXID:*(a1 + 72)];
  LODWORD(v7) = *(a1 + 112);
  [v11 setRightDisplaySphere:v7];
  LODWORD(v8) = *(a1 + 116);
  [v11 setRightDisplayCylinder:v8];
  LODWORD(v9) = *(a1 + 112);
  [v11 setRightCalibrationSphere:v9];
  LODWORD(v10) = *(a1 + 116);
  [v11 setRightCalibrationCylinder:v10];
  [v11 setRightAxisID:*(a1 + 80)];
  [v11 setRightDisplayAxis:*(a1 + 88)];
  [v11 setRightCalibrationAxis:*(a1 + 88)];
  [v11 setRightClamping:*(a1 + 96)];
  [v11 setSecret:*(a1 + 32)];
}

- (BOOL)encodeAppClipCodeV1:(id)v1 toBuffer:(id)buffer error:(id *)error
{
  v1Copy = v1;
  bufferCopy = buffer;
  if ([bufferCopy writeUInteger:objc_msgSend(v1Copy bitWidth:{"version"), 4}] && objc_msgSend(bufferCopy, "skipBits:", 12) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "leftRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "leftAxisID"), 6) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "rightRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "rightAxisID"), 6))
  {
    secret = [v1Copy secret];
    v10 = [bufferCopy writeData:secret bitWidth:80];
  }

  else
  {
    v10 = 0;
  }

  if (error && (v10 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] crxf_errorWithCode:4 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1027 userInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (id)decodeAppClipCodeV2FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v52[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
  {
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "skipBits:", 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v46, 4) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v45, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v50, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v48, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v49, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v47, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v43 = 0;
      v44 = 0;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v39 = 0;
      v38 = 0;
      v36 = 0;
      v37 = 0;
      if (v50)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = 0;
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v44 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v42 displaySphere:&v40 + 4 displayCylinder:&v40 displayAxis:&v37 fromRXID:v50 RXOffsetID:0 cylinderSignFlipped:v18 axisID:v48 allowUnsupportedRX:v19];
      }

      else
      {
        v10 = 0;
      }

      if (v49)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = 0;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v43 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v41 displaySphere:&v39 displayCylinder:&v38 displayAxis:&v36 fromRXID:v49 RXOffsetID:0 cylinderSignFlipped:v18 axisID:v47 allowUnsupportedRX:v19];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV2FromBuffer_allowUnsupportedRX_error___block_invoke;
        v20[3] = &unk_278E9FC40;
        v32 = HIDWORD(v40);
        v33 = v40;
        v22 = v50;
        v23 = v48;
        v24 = v37;
        v25 = v42;
        v34 = v39;
        v35 = v38;
        v26 = v49;
        v27 = v47;
        v28 = v36;
        v29 = v41;
        v30 = v46;
        v21 = v9;
        v31 = v45;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v20];
        v14 = v21;
        goto LABEL_31;
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v51[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v52[0] = v14;
        v51[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v52[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1131 userInfo:v16];

        v11 = 0;
LABEL_31:

        goto LABEL_26;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1079 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v11 = 0;
    goto LABEL_26;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1059 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_27:

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV2FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [v11 setVersion:2];
  [v11 setLeftRXID:*(a1 + 40)];
  [v11 setLeftCalibrationRXID:*(a1 + 40)];
  LODWORD(v3) = *(a1 + 120);
  [v11 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 124);
  [v11 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 120);
  [v11 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 124);
  [v11 setLeftCalibrationCylinder:v6];
  [v11 setLeftAxisID:*(a1 + 48)];
  [v11 setLeftDisplayAxis:*(a1 + 56)];
  [v11 setLeftCalibrationAxis:*(a1 + 56)];
  [v11 setLeftClamping:*(a1 + 64)];
  [v11 setRightRXID:*(a1 + 72)];
  [v11 setRightCalibrationRXID:*(a1 + 72)];
  LODWORD(v7) = *(a1 + 128);
  [v11 setRightDisplaySphere:v7];
  LODWORD(v8) = *(a1 + 132);
  [v11 setRightDisplayCylinder:v8];
  LODWORD(v9) = *(a1 + 128);
  [v11 setRightCalibrationSphere:v9];
  LODWORD(v10) = *(a1 + 132);
  [v11 setRightCalibrationCylinder:v10];
  [v11 setRightAxisID:*(a1 + 80)];
  [v11 setRightDisplayAxis:*(a1 + 88)];
  [v11 setRightCalibrationAxis:*(a1 + 88)];
  [v11 setRightClamping:*(a1 + 96)];
  [v11 setIdentifyingColor:*(a1 + 104)];
  [v11 setSecret:*(a1 + 32)];
  [v11 setRandomBits:*(a1 + 112)];
}

- (BOOL)encodeAppClipCodeV2:(id)v2 toBuffer:(id)buffer error:(id *)error
{
  v2Copy = v2;
  bufferCopy = buffer;
  if ([bufferCopy writeUInteger:objc_msgSend(v2Copy bitWidth:{"version"), 4}] && objc_msgSend(bufferCopy, "skipBits:", 2) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "identifyingColor"), 4) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "randomBits"), 6) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "leftRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "leftAxisID"), 6) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "rightRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "rightAxisID"), 6))
  {
    secret = [v2Copy secret];
    v10 = [bufferCopy writeData:secret bitWidth:80];
  }

  else
  {
    v10 = 0;
  }

  if (error && (v10 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] crxf_errorWithCode:4 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1177 userInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (id)decodeAppClipCodeV3FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v71[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
  {
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v64, 4) && objc_msgSend(bufferCopy, "readBool:", &v69 + 1) && objc_msgSend(bufferCopy, "readBool:", &v69) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v63, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v61, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v68, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v66, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v67, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v65, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      v55 = 0;
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      if (v68)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = HIBYTE(v69);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v49 calibrationSphere:&v56 + 4 calibrationCylinder:&v56 calibrationAxis:&v51 addVR:&v54 + 4 clampingStatus:&v60 displaySphere:&v58 + 4 displayCylinder:&v58 displayAxis:&v53 fromRXID:v68 RXOffsetID:v63 cylinderSignFlipped:v18 axisID:v66 allowUnsupportedRX:v19];
      }

      else
      {
        v10 = 0;
      }

      if (v67)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = v69;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v48 calibrationSphere:&v55 + 4 calibrationCylinder:&v55 calibrationAxis:&v50 addVR:&v54 clampingStatus:&v59 displaySphere:&v57 + 4 displayCylinder:&v57 displayAxis:&v52 fromRXID:v67 RXOffsetID:v62 cylinderSignFlipped:v18 axisID:v65 allowUnsupportedRX:v19];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV3FromBuffer_allowUnsupportedRX_error___block_invoke;
        v20[3] = &unk_278E9FC68;
        v46 = HIBYTE(v69);
        v47 = v69;
        v22 = v68;
        v23 = v49;
        v36 = HIDWORD(v58);
        v37 = v58;
        v38 = HIDWORD(v56);
        v39 = v56;
        v24 = v66;
        v25 = v53;
        v26 = v51;
        v27 = v60;
        v28 = v67;
        v29 = v48;
        v40 = HIDWORD(v54);
        v41 = HIDWORD(v57);
        v42 = v57;
        v43 = HIDWORD(v55);
        v44 = v55;
        v45 = v54;
        v30 = v65;
        v31 = v52;
        v32 = v50;
        v33 = v59;
        v34 = v64;
        v21 = v9;
        v35 = v61;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v20];
        v14 = v21;
        goto LABEL_34;
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v70[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v71[0] = v14;
        v70[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v71[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1289 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1233 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1208 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_30:

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV3FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setVersion:3];
  [v13 setCylLeftSignFlipped:*(a1 + 192)];
  [v13 setCylRightSignFlipped:*(a1 + 193)];
  [v13 setLeftRXID:*(a1 + 40)];
  [v13 setLeftCalibrationRXID:*(a1 + 48)];
  LODWORD(v3) = *(a1 + 152);
  [v13 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 156);
  [v13 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 160);
  [v13 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 164);
  [v13 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 168);
  [v13 setLeftAddVR:v7];
  [v13 setLeftAxisID:*(a1 + 56)];
  [v13 setLeftDisplayAxis:*(a1 + 64)];
  [v13 setLeftCalibrationAxis:*(a1 + 72)];
  [v13 setLeftClamping:*(a1 + 80)];
  [v13 setRightRXID:*(a1 + 88)];
  [v13 setRightCalibrationRXID:*(a1 + 96)];
  LODWORD(v8) = *(a1 + 172);
  [v13 setRightDisplaySphere:v8];
  LODWORD(v9) = *(a1 + 176);
  [v13 setRightDisplayCylinder:v9];
  LODWORD(v10) = *(a1 + 180);
  [v13 setRightCalibrationSphere:v10];
  LODWORD(v11) = *(a1 + 184);
  [v13 setRightCalibrationCylinder:v11];
  LODWORD(v12) = *(a1 + 188);
  [v13 setRightAddVR:v12];
  [v13 setRightAxisID:*(a1 + 104)];
  [v13 setRightDisplayAxis:*(a1 + 112)];
  [v13 setRightCalibrationAxis:*(a1 + 120)];
  [v13 setRightClamping:*(a1 + 128)];
  [v13 setIdentifyingColor:*(a1 + 136)];
  [v13 setSecret:*(a1 + 32)];
  [v13 setRandomBits:*(a1 + 144)];
}

- (BOOL)encodeAppClipCodeV3:(id)v3 toBuffer:(id)buffer error:(id *)error
{
  v3Copy = v3;
  bufferCopy = buffer;
  v18 = 0;
  v19 = 0;
  [v3Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1336;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_24;
  }

  [v3Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1346;
    goto LABEL_22;
  }

  if (![bufferCopy writeUInteger:objc_msgSend(v3Copy bitWidth:{"version"), 4}] || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "identifyingColor"), 4) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v3Copy, "cylLeftSignFlipped")) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v3Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "randomBits"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "leftRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "rightRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "rightAxisID"), 6) || (objc_msgSend(v3Copy, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(bufferCopy, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1364;
      goto LABEL_22;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = 1;
LABEL_24:

  return v12;
}

- (id)decodeAppClipCodeV4FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v71[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
  {
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    v61 = 0;
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v64, 4) && objc_msgSend(bufferCopy, "readBool:", &v69 + 1) && objc_msgSend(bufferCopy, "readBool:", &v69) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v63, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v61, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v68, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v66, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v67, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v65, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      v55 = 0;
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      if (v68)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = HIBYTE(v69);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v49 calibrationSphere:&v56 + 4 calibrationCylinder:&v56 calibrationAxis:&v51 addVR:&v54 + 4 clampingStatus:&v60 displaySphere:&v58 + 4 displayCylinder:&v58 displayAxis:&v53 fromRXID:v68 RXOffsetID:v63 cylinderSignFlipped:v18 axisID:v66 allowUnsupportedRX:v19];
      }

      else
      {
        v10 = 0;
      }

      if (v67)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = v69;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v48 calibrationSphere:&v55 + 4 calibrationCylinder:&v55 calibrationAxis:&v50 addVR:&v54 clampingStatus:&v59 displaySphere:&v57 + 4 displayCylinder:&v57 displayAxis:&v52 fromRXID:v67 RXOffsetID:v62 cylinderSignFlipped:v18 axisID:v65 allowUnsupportedRX:v19];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV4FromBuffer_allowUnsupportedRX_error___block_invoke;
        v20[3] = &unk_278E9FC68;
        v46 = HIBYTE(v69);
        v47 = v69;
        v22 = v61;
        v23 = v68;
        v36 = HIDWORD(v58);
        v37 = v58;
        v38 = HIDWORD(v56);
        v39 = v56;
        v24 = v49;
        v25 = v66;
        v26 = v53;
        v27 = v51;
        v28 = v60;
        v29 = v67;
        v40 = HIDWORD(v54);
        v41 = HIDWORD(v57);
        v42 = v57;
        v43 = HIDWORD(v55);
        v44 = v55;
        v45 = v54;
        v30 = v48;
        v31 = v65;
        v32 = v52;
        v33 = v50;
        v34 = v59;
        v35 = v64;
        v21 = v9;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v20];
        v14 = v21;
        goto LABEL_34;
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v70[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v71[0] = v14;
        v70[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v71[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1460 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1404 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1379 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_30:

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV4FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setVersion:4];
  [v13 setLensType:*(a1 + 40)];
  [v13 setCylLeftSignFlipped:*(a1 + 192)];
  [v13 setCylRightSignFlipped:*(a1 + 193)];
  [v13 setLeftRXID:*(a1 + 48)];
  [v13 setLeftCalibrationRXID:*(a1 + 56)];
  LODWORD(v3) = *(a1 + 152);
  [v13 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 156);
  [v13 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 160);
  [v13 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 164);
  [v13 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 168);
  [v13 setLeftAddVR:v7];
  [v13 setLeftAxisID:*(a1 + 64)];
  [v13 setLeftDisplayAxis:*(a1 + 72)];
  [v13 setLeftCalibrationAxis:*(a1 + 80)];
  [v13 setLeftClamping:*(a1 + 88)];
  [v13 setRightRXID:*(a1 + 96)];
  [v13 setRightCalibrationRXID:*(a1 + 104)];
  LODWORD(v8) = *(a1 + 172);
  [v13 setRightDisplaySphere:v8];
  LODWORD(v9) = *(a1 + 176);
  [v13 setRightDisplayCylinder:v9];
  LODWORD(v10) = *(a1 + 180);
  [v13 setRightCalibrationSphere:v10];
  LODWORD(v11) = *(a1 + 184);
  [v13 setRightCalibrationCylinder:v11];
  LODWORD(v12) = *(a1 + 188);
  [v13 setRightAddVR:v12];
  [v13 setRightAxisID:*(a1 + 112)];
  [v13 setRightDisplayAxis:*(a1 + 120)];
  [v13 setRightCalibrationAxis:*(a1 + 128)];
  [v13 setRightClamping:*(a1 + 136)];
  [v13 setIdentifyingColor:*(a1 + 144)];
  [v13 setSecret:*(a1 + 32)];
}

- (BOOL)encodeAppClipCodeV4:(id)v4 toBuffer:(id)buffer error:(id *)error
{
  v4Copy = v4;
  bufferCopy = buffer;
  v18 = 0;
  v19 = 0;
  [v4Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1507;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_24;
  }

  [v4Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1517;
    goto LABEL_22;
  }

  if (![bufferCopy writeUInteger:objc_msgSend(v4Copy bitWidth:{"version"), 4}] || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "identifyingColor"), 4) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v4Copy, "cylLeftSignFlipped")) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v4Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "lensType"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "leftRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "rightRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "rightAxisID"), 6) || (objc_msgSend(v4Copy, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(bufferCopy, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1535;
      goto LABEL_22;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = 1;
LABEL_24:

  return v12;
}

- (id)decodeAppClipCodeV5FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v71[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
  {
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    v61 = 0;
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "readBool:", &v69 + 1) && objc_msgSend(bufferCopy, "readBool:", &v69) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v64, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v63, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v61, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v68, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v66, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v67, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v65, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v62, 2) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      v55 = 0;
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      if (v68)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = HIBYTE(v69);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v49 calibrationSphere:&v56 + 4 calibrationCylinder:&v56 calibrationAxis:&v51 addVR:&v54 + 4 clampingStatus:&v60 displaySphere:&v58 + 4 displayCylinder:&v58 displayAxis:&v53 fromRXID:v68 RXOffsetID:v64 cylinderSignFlipped:v18 axisID:v66 allowUnsupportedRX:v19];
      }

      else
      {
        v10 = 0;
      }

      if (v67)
      {
        LOBYTE(v19) = x;
        LOBYTE(v18) = v69;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v48 calibrationSphere:&v55 + 4 calibrationCylinder:&v55 calibrationAxis:&v50 addVR:&v54 clampingStatus:&v59 displaySphere:&v57 + 4 displayCylinder:&v57 displayAxis:&v52 fromRXID:v67 RXOffsetID:v63 cylinderSignFlipped:v18 axisID:v65 allowUnsupportedRX:v19];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV5FromBuffer_allowUnsupportedRX_error___block_invoke;
        v20[3] = &unk_278E9FC68;
        v46 = HIBYTE(v69);
        v47 = v69;
        v22 = v61;
        v23 = v68;
        v36 = HIDWORD(v58);
        v37 = v58;
        v38 = HIDWORD(v56);
        v39 = v56;
        v24 = v49;
        v25 = v66;
        v26 = v53;
        v27 = v51;
        v28 = v60;
        v29 = v67;
        v40 = HIDWORD(v54);
        v41 = HIDWORD(v57);
        v42 = v57;
        v43 = HIDWORD(v55);
        v44 = v55;
        v45 = v54;
        v30 = v48;
        v31 = v65;
        v32 = v52;
        v33 = v50;
        v34 = v59;
        v21 = v9;
        v35 = v62;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v20];
        v14 = v21;
        goto LABEL_34;
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v70[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v71[0] = v14;
        v70[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v71[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1650 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1594 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1568 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_30:

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV5FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setVersion:5];
  [v13 setLensType:*(a1 + 40)];
  [v13 setCylLeftSignFlipped:*(a1 + 192)];
  [v13 setCylRightSignFlipped:*(a1 + 193)];
  [v13 setLeftRXID:*(a1 + 48)];
  [v13 setLeftCalibrationRXID:*(a1 + 56)];
  LODWORD(v3) = *(a1 + 152);
  [v13 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 156);
  [v13 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 160);
  [v13 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 164);
  [v13 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 168);
  [v13 setLeftAddVR:v7];
  [v13 setLeftAxisID:*(a1 + 64)];
  [v13 setLeftDisplayAxis:*(a1 + 72)];
  [v13 setLeftCalibrationAxis:*(a1 + 80)];
  [v13 setLeftClamping:*(a1 + 88)];
  [v13 setRightRXID:*(a1 + 96)];
  [v13 setRightCalibrationRXID:*(a1 + 104)];
  LODWORD(v8) = *(a1 + 172);
  [v13 setRightDisplaySphere:v8];
  LODWORD(v9) = *(a1 + 176);
  [v13 setRightDisplayCylinder:v9];
  LODWORD(v10) = *(a1 + 180);
  [v13 setRightCalibrationSphere:v10];
  LODWORD(v11) = *(a1 + 184);
  [v13 setRightCalibrationCylinder:v11];
  LODWORD(v12) = *(a1 + 188);
  [v13 setRightAddVR:v12];
  [v13 setRightAxisID:*(a1 + 112)];
  [v13 setRightDisplayAxis:*(a1 + 120)];
  [v13 setRightCalibrationAxis:*(a1 + 128)];
  [v13 setRightClamping:*(a1 + 136)];
  [v13 setIdentifyingColor:0];
  [v13 setSecret:*(a1 + 32)];
  [v13 setRandomBits:*(a1 + 144)];
}

- (BOOL)encodeAppClipCodeV5:(id)v5 toBuffer:(id)buffer error:(id *)error
{
  v5Copy = v5;
  bufferCopy = buffer;
  v18 = 0;
  v19 = 0;
  [v5Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1699;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_24;
  }

  [v5Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1709;
    goto LABEL_22;
  }

  if (![bufferCopy writeUInteger:objc_msgSend(v5Copy bitWidth:{"version"), 4}] || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v5Copy, "cylLeftSignFlipped")) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v5Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "lensType"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "leftRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "rightRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "rightAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "randomBits"), 2) || (objc_msgSend(v5Copy, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(bufferCopy, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1727;
      goto LABEL_22;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = 1;
LABEL_24:

  return v12;
}

- (id)decodeAppClipCodeV6FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v93[6] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 152)
  {
    v91 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v84 = 0;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    v79 = 2;
    v80 = 0;
    v77 = 2;
    v78 = 2;
    v76 = 2;
    if ([bufferCopy readData:v9 bitWidth:80] && objc_msgSend(bufferCopy, "readBool:", &v91) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v86, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v85, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v80, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v90, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v88, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v89, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v87, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v84, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v83, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v77, 1) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v76, 1) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v82, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v81, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v79, 1) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v78, 1) && objc_msgSend(bufferCopy, "skipBits:", 4) && (objc_msgSend(bufferCopy, "skipBits:", 3) & 1) != 0)
    {
      v74 = 0;
      v75 = 0;
      v72 = 0;
      v73 = 0;
      v70 = 0;
      v71 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 0;
      v67 = 0;
      v64 = 0;
      v65 = 0;
      v62 = 0;
      v63 = 0;
      v61 = 0;
      if (v90)
      {
        LOBYTE(v25) = x;
        LOBYTE(v24) = v91;
        v11 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v62 calibrationSphere:&v71 + 4 calibrationCylinder:&v71 calibrationAxis:&v64 addVR:&v67 + 4 clampingStatus:&v75 displaySphere:&v73 + 4 displayCylinder:&v73 displayAxis:&v66 fromRXID:v90 RXOffsetID:v86 cylinderSignFlipped:v24 axisID:v88 allowUnsupportedRX:v25];
      }

      else
      {
        v11 = 0;
      }

      if (v89)
      {
        LOBYTE(v25) = x;
        LOBYTE(v24) = v91;
        v13 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v61 calibrationSphere:&v70 + 4 calibrationCylinder:&v70 calibrationAxis:&v63 addVR:&v67 clampingStatus:&v74 displaySphere:&v72 + 4 displayCylinder:&v72 displayAxis:&v65 fromRXID:v89 RXOffsetID:v85 cylinderSignFlipped:v24 axisID:v87 allowUnsupportedRX:v25];
      }

      else
      {
        v13 = 0;
      }

      LODWORD(v10) = 7.75;
      if (![(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v84 minValue:&v69 + 4 maxValue:0.0 value:v10]|| (LODWORD(v14) = 7.75, ![(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v82 minValue:&v69 maxValue:0.0 value:v14]))
      {
        v11 |= 0x40uLL;
      }

      LODWORD(v14) = 7.75;
      if ([(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v83 minValue:&v68 + 4 maxValue:0.0 value:v14]&& (LODWORD(v15) = 7.75, [(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v81 minValue:&v68 maxValue:0.0 value:v15]))
      {
        if (!(v11 | v13))
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV6FromBuffer_allowUnsupportedRX_error___block_invoke;
          v27[3] = &unk_278E9FC90;
          v60 = v91;
          v29 = v80;
          v30 = v90;
          v46 = HIDWORD(v73);
          v47 = v73;
          v48 = HIDWORD(v71);
          v49 = v71;
          v31 = v62;
          v32 = v88;
          v33 = v66;
          v34 = v64;
          v50 = HIDWORD(v67);
          v51 = HIDWORD(v69);
          v35 = v77;
          v36 = v79;
          v37 = v75;
          v38 = v89;
          v52 = v69;
          v53 = HIDWORD(v72);
          v54 = v72;
          v55 = HIDWORD(v70);
          v56 = v70;
          v57 = v67;
          v39 = v61;
          v40 = v87;
          v41 = v65;
          v42 = v63;
          v43 = v76;
          v44 = v78;
          v58 = HIDWORD(v68);
          v59 = v68;
          v45 = v74;
          v28 = v9;
          v12 = [CRXFAppClipCode appClipCodeWithBlock:v27];
          v16 = v28;
LABEL_42:

          goto LABEL_44;
        }
      }

      else
      {
        v13 |= 0x40uLL;
      }

      if (error)
      {
        v26 = MEMORY[0x277CCA9B8];
        v92[0] = @"leftLensDecodeStatus";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        v93[0] = v16;
        v92[1] = @"leftLensRXID";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v90];
        v93[1] = v17;
        v92[2] = @"leftLensAxisID";
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v88];
        v93[2] = v18;
        v92[3] = @"rightLensDecodeStatus";
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        v93[3] = v19;
        v92[4] = @"rightLensRXID";
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v89];
        v93[4] = v20;
        v92[5] = @"rightLensAxisID";
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v87];
        v93[5] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:6];
        *error = [v26 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1863 userInfo:v22];

        v12 = 0;
        goto LABEL_42;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1780 userInfo:MEMORY[0x277CBEC10]];
      *error = v12 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v12 = 0;
    goto LABEL_44;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1743 userInfo:MEMORY[0x277CBEC10]];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_45:

  return v12;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV6FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  [v17 setVersion:6];
  [v17 setLensType:*(a1 + 40)];
  [v17 setCylLeftSignFlipped:*(a1 + 232)];
  [v17 setCylRightSignFlipped:*(a1 + 232)];
  [v17 setLeftRXID:*(a1 + 48)];
  [v17 setLeftCalibrationRXID:*(a1 + 56)];
  LODWORD(v3) = *(a1 + 176);
  [v17 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 180);
  [v17 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 184);
  [v17 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 188);
  [v17 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 192);
  [v17 setLeftAddVR:v7];
  [v17 setLeftAxisID:*(a1 + 64)];
  [v17 setLeftDisplayAxis:*(a1 + 72)];
  [v17 setLeftCalibrationAxis:*(a1 + 80)];
  [v17 setLeftHorizPrismBaseDirection:*(a1 + 88)];
  LODWORD(v8) = *(a1 + 196);
  [v17 setLeftHorizPrism:v8];
  [v17 setLeftVertPrismBaseDirection:*(a1 + 96)];
  LODWORD(v9) = *(a1 + 200);
  [v17 setLeftVertPrism:v9];
  [v17 setLeftClamping:*(a1 + 104)];
  [v17 setRightRXID:*(a1 + 112)];
  [v17 setRightCalibrationRXID:*(a1 + 120)];
  LODWORD(v10) = *(a1 + 204);
  [v17 setRightDisplaySphere:v10];
  LODWORD(v11) = *(a1 + 208);
  [v17 setRightDisplayCylinder:v11];
  LODWORD(v12) = *(a1 + 212);
  [v17 setRightCalibrationSphere:v12];
  LODWORD(v13) = *(a1 + 216);
  [v17 setRightCalibrationCylinder:v13];
  LODWORD(v14) = *(a1 + 220);
  [v17 setRightAddVR:v14];
  [v17 setRightAxisID:*(a1 + 128)];
  [v17 setRightDisplayAxis:*(a1 + 136)];
  [v17 setRightCalibrationAxis:*(a1 + 144)];
  [v17 setRightHorizPrismBaseDirection:*(a1 + 152)];
  LODWORD(v15) = *(a1 + 224);
  [v17 setRightHorizPrism:v15];
  [v17 setRightVertPrismBaseDirection:*(a1 + 160)];
  LODWORD(v16) = *(a1 + 228);
  [v17 setRightVertPrism:v16];
  [v17 setRightClamping:*(a1 + 168)];
  [v17 setIdentifyingColor:0];
  [v17 setSecret:*(a1 + 32)];
}

- (BOOL)encodeAppClipCodeV6:(id)v6 toBuffer:(id)buffer error:(id *)error
{
  v6Copy = v6;
  bufferCopy = buffer;
  v22 = 0;
  v23 = 0;
  [v6Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v23 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1919;
LABEL_33:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_40;
  }

  [v6Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v22 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1929;
    goto LABEL_33;
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  [v6Copy leftHorizPrism];
  if (!-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v21) || ([v6Copy leftVertPrism], !-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v19)))
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1946;
    goto LABEL_33;
  }

  [v6Copy rightHorizPrism];
  if (!-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v20) || ([v6Copy rightVertPrism], !-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v18)))
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1960;
    goto LABEL_33;
  }

  secret = [v6Copy secret];
  if (![bufferCopy writeData:secret bitWidth:80] || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v6Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v23, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v22, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "lensType"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v21, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v20, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftHorizPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightHorizPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftVertPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightVertPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "version"), 4))
  {

LABEL_37:
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1985;
      goto LABEL_33;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  v11 = [bufferCopy skipBits:3];

  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_40:

  return v12;
}

- (BOOL)getQuarterDiopterValueForIndex:(unint64_t)index minValue:(float)value maxValue:(float)maxValue value:(float *)a6
{
  v6 = value + (index * 0.25);
  if (v6 <= maxValue)
  {
    *a6 = v6;
  }

  return v6 <= maxValue;
}

- (BOOL)getIndexForQuarterDiopterValue:(float)value minValue:(float)minValue maxValue:(float)maxValue index:(unint64_t *)index
{
  v6 = value <= maxValue && value >= minValue;
  if (v6)
  {
    *index = (((value - minValue) * 100.0) + 24) / 0x19;
  }

  return v6;
}

- (id)deriveCanonicalPayloadFromPayload:(id)payload
{
  payloadCopy = payload;
  v17 = 0;
  v5 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:payloadCopy allowUnsupportedRX:0 error:&v17];
  v6 = v17;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_10;
  }

  if ([v5 version] < 5)
  {
    build = v5;
    v12 = v6;
  }

  else
  {
    v7 = [[CRXFAppClipCodeBuilder alloc] initWithAppClipCode:v5];
    [(CRXFAppClipCodeBuilder *)v7 setVersion:5];
    build = [(CRXFAppClipCodeBuilder *)v7 build];

    v9 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [build version]);
    v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v9];
    v16 = v6;
    v11 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:build toData:v10 error:&v16];
    v12 = v16;

    if (!v11)
    {

      v14 = 0;
      goto LABEL_9;
    }

    v13 = [MEMORY[0x277CBEA90] dataWithData:v10];

    payloadCopy = v13;
  }

  payloadCopy = payloadCopy;
  v14 = payloadCopy;
LABEL_9:

  v6 = v12;
LABEL_10:

  return v14;
}

- (id)derivePayloadWithLensTypeZeroed:(id)zeroed ifLensTypeIs:(unint64_t)is
{
  v17 = 0;
  v6 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:zeroed allowUnsupportedRX:0 error:&v17];
  v7 = v17;
  if (v6 && [v6 lensType] == is)
  {
    v8 = [[CRXFAppClipCodeBuilder alloc] initWithAppClipCode:v6];
    [(CRXFAppClipCodeBuilder *)v8 setLensType:0];
    build = [(CRXFAppClipCodeBuilder *)v8 build];

    v10 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [build version]);
    v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v10];
    v16 = v7;
    v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:build toData:v11 error:&v16];
    v13 = v16;

    v14 = 0;
    if (v12)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithData:v11];
    }

    v6 = build;
    v7 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end