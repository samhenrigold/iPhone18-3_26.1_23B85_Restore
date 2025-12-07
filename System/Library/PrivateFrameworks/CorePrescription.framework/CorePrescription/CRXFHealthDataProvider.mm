@interface CRXFHealthDataProvider
- (BOOL)isCloudSyncDisabledError:(id)error;
- (CRXFHealthDataProvider)init;
- (CRXFHealthDataProvider)initWithDeviceModel:(id)model;
- (id)createDiopterRangeWithMinimum:(double)minimum maximum:(double)maximum;
- (id)createPrescriptionWithSphereRight:(double)right cylinderRight:(double)cylinderRight axisRight:(unint64_t)axisRight prismRight:(id)prismRight sphereLeft:(double)left cylinderLeft:(double)cylinderLeft axisLeft:(unint64_t)axisLeft prismLeft:(id)self0 readerRange:(id)self1 accPayload:(id)self2 description:(id)self3 colorCode:(unint64_t)self4 lensTypeCode:(unint64_t)self5 serialNumber:(id)self6 issueDate:(id)self7;
- (id)createVisionPrismForVerticalAmount:(double)amount verticalDirection:(unint64_t)direction horizontalAmount:(double)horizontalAmount horizontalDirection:(unint64_t)horizontalDirection leftEye:(BOOL)eye;
- (id)updatePrescription:(id)prescription withMetadata:(id)metadata axisRight:(id)right axisLeft:(id)left prismRight:(id)prismRight prismLeft:(id)prismLeft;
- (void)deletePrescriptionsMatchingPredicate:(id)predicate completionQueue:(id)queue completion:(id)completion;
- (void)getSyncTimesWithCompletionQueue:(id)queue completion:(id)completion;
- (void)listPrescriptionsWithCompletionQueue:(id)queue completion:(id)completion;
- (void)updateWithAddedPrescriptions:(id)prescriptions deletedPrescriptions:(id)deletedPrescriptions completionQueue:(id)queue completion:(id)completion;
@end

@implementation CRXFHealthDataProvider

- (CRXFHealthDataProvider)init
{
  v3 = +[CRXUSystemInfo sharedInstance];
  modelName = [v3 modelName];
  v5 = [(CRXFHealthDataProvider *)self initWithDeviceModel:modelName];

  return v5;
}

- (CRXFHealthDataProvider)initWithDeviceModel:(id)model
{
  v29[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v28.receiver = self;
  v28.super_class = CRXFHealthDataProvider;
  v6 = [(CRXFHealthDataProvider *)&v28 init];
  v7 = v6;
  if (v6)
  {
    v8 = CRXFLoggingSubsystem;
    ClassName = object_getClassName(v6);
    v10 = os_log_create(v8, ClassName);
    log = v7->_log;
    v7->_log = v10;

    objc_storeStrong(&v7->_deviceModel, model);
    v12 = [MEMORY[0x277CCAC80] scannerWithString:modelCopy];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v27 = 0;
    v14 = [v12 scanUpToCharactersFromSet:decimalDigitCharacterSet intoString:&v27];
    v15 = v27;

    deviceModel = v15;
    if ((v14 & 1) == 0)
    {
      deviceModel = v7->_deviceModel;
    }

    objc_storeStrong(&v7->_deviceModelPrefix, deviceModel);
    visionPrescriptionType = [MEMORY[0x277CCD8D8] visionPrescriptionType];
    sampleType = v7->_sampleType;
    v7->_sampleType = visionPrescriptionType;

    v19 = [MEMORY[0x277CCD838] predicateForObjectsWithMetadataKey:*MEMORY[0x277CCE120]];
    samplePredicate = v7->_samplePredicate;
    v7->_samplePredicate = v19;

    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
    v29[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    sortDescriptors = v7->_sortDescriptors;
    v7->_sortDescriptors = v22;

    v24 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    healthStore = v7->_healthStore;
    v7->_healthStore = v24;
  }

  return v7;
}

- (id)createPrescriptionWithSphereRight:(double)right cylinderRight:(double)cylinderRight axisRight:(unint64_t)axisRight prismRight:(id)prismRight sphereLeft:(double)left cylinderLeft:(double)cylinderLeft axisLeft:(unint64_t)axisLeft prismLeft:(id)self0 readerRange:(id)self1 accPayload:(id)self2 description:(id)self3 colorCode:(unint64_t)self4 lensTypeCode:(unint64_t)self5 serialNumber:(id)self6 issueDate:(id)self7
{
  v78[7] = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  payloadCopy = payload;
  descriptionCopy = description;
  numberCopy = number;
  v28 = MEMORY[0x277CBEB38];
  deviceModel = self->_deviceModel;
  v30 = *MEMORY[0x277CCE120];
  v77[0] = *MEMORY[0x277CCE138];
  v77[1] = v30;
  v78[0] = deviceModel;
  v78[1] = payloadCopy;
  v75 = payloadCopy;
  v77[2] = *MEMORY[0x277CCE128];
  v31 = MEMORY[0x277CCABB0];
  dateCopy = date;
  prismLeftCopy = prismLeft;
  prismRightCopy = prismRight;
  v33 = [v31 numberWithUnsignedInteger:code];
  v78[2] = v33;
  v77[3] = *MEMORY[0x277CCE130];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:typeCode];
  v35 = *MEMORY[0x277CCC4A8];
  v78[3] = v34;
  v78[4] = descriptionCopy;
  v74 = descriptionCopy;
  v36 = *MEMORY[0x277CCC520];
  v77[4] = v35;
  v77[5] = v36;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v77[6] = *MEMORY[0x277CCC528];
  v78[5] = uUIDString;
  v78[6] = &unk_285933BA8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:7];
  v40 = [v28 dictionaryWithDictionary:v39];

  if (numberCopy)
  {
    [v40 setObject:numberCopy forKeyedSubscript:*MEMORY[0x277CCE140]];
  }

  v73 = numberCopy;
  if (rangeCopy)
  {
    minimum = [rangeCopy minimum];
    [v40 setObject:minimum forKeyedSubscript:@"_HKPrivateMetadataKeyVisionReaderStrengthRangeLow"];

    maximum = [rangeCopy maximum];
    [v40 setObject:maximum forKeyedSubscript:@"_HKPrivateMetadataKeyVisionReaderStrengthRangeHigh"];
  }

  v43 = MEMORY[0x277CCD7E8];
  diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
  v45 = [v43 quantityWithUnit:diopterUnit doubleValue:right];

  v46 = MEMORY[0x277CCD7E8];
  diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
  v48 = [v46 quantityWithUnit:diopterUnit2 doubleValue:cylinderRight];

  if (axisRight)
  {
    v49 = MEMORY[0x277CCD7E8];
    degreeAngleUnit = [MEMORY[0x277CCDAB0] degreeAngleUnit];
    v51 = [v49 quantityWithUnit:degreeAngleUnit doubleValue:axisRight];
  }

  else
  {
    v51 = 0;
  }

  v67 = v51;
  v69 = v45;
  v52 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v45 cylinder:v48 axis:v51 addPower:0 vertexDistance:0 prism:prismRightCopy farPupillaryDistance:0 nearPupillaryDistance:0];

  v53 = MEMORY[0x277CCD7E8];
  diopterUnit3 = [MEMORY[0x277CCDAB0] diopterUnit];
  v55 = [v53 quantityWithUnit:diopterUnit3 doubleValue:left];

  v56 = MEMORY[0x277CCD7E8];
  diopterUnit4 = [MEMORY[0x277CCDAB0] diopterUnit];
  v58 = [v56 quantityWithUnit:diopterUnit4 doubleValue:cylinderLeft];

  if (axisLeft)
  {
    v59 = MEMORY[0x277CCD7E8];
    degreeAngleUnit2 = [MEMORY[0x277CCDAB0] degreeAngleUnit];
    v61 = [v59 quantityWithUnit:degreeAngleUnit2 doubleValue:axisLeft];
  }

  else
  {
    v61 = 0;
  }

  v62 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v55 cylinder:v58 axis:v61 addPower:0 vertexDistance:0 prism:prismLeftCopy farPupillaryDistance:0 nearPupillaryDistance:0];

  v63 = MEMORY[0x277CCD488];
  localDevice = [MEMORY[0x277CCD2E8] localDevice];
  v65 = [v63 prescriptionWithRightEyeSpecification:v52 leftEyeSpecification:v62 dateIssued:dateCopy expirationDate:0 device:localDevice metadata:v40];

  return v65;
}

- (id)updatePrescription:(id)prescription withMetadata:(id)metadata axisRight:(id)right axisLeft:(id)left prismRight:(id)prismRight prismLeft:(id)prismLeft
{
  prescriptionCopy = prescription;
  rightCopy = right;
  leftCopy = left;
  prismRightCopy = prismRight;
  prismLeftCopy = prismLeft;
  v18 = MEMORY[0x277CBEB38];
  metadataCopy = metadata;
  metadata = [prescriptionCopy metadata];
  v21 = [v18 dictionaryWithDictionary:metadata];

  [v21 addEntriesFromDictionary:metadataCopy];
  v22 = *MEMORY[0x277CCC528];
  v23 = [v21 crxu_integerForKey:*MEMORY[0x277CCC528]];
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v23 + 1];
  v67 = v21;
  [v21 setObject:v24 forKeyedSubscript:v22];

  rightEye = [prescriptionCopy rightEye];
  leftEye = [prescriptionCopy leftEye];
  v27 = prismLeftCopy;
  v28 = prismRightCopy;
  v68 = leftCopy;
  v65 = rightCopy;
  v66 = v27;
  if (rightCopy | v28)
  {
    v57 = objc_alloc(MEMORY[0x277CCD480]);
    sphere = [rightEye sphere];
    [rightEye cylinder];
    v62 = axis = rightCopy;
    if (!rightCopy)
    {
      axis = [rightEye axis];
    }

    addPower = [rightEye addPower];
    vertexDistance = [rightEye vertexDistance];
    prism = v28;
    if (!v28)
    {
      prism = [rightEye prism];
    }

    farPupillaryDistance = [rightEye farPupillaryDistance];
    nearPupillaryDistance = [rightEye nearPupillaryDistance];
    v35 = v57;
    v58 = sphere;
    v36 = [v35 initWithSphere:sphere cylinder:v62 axis:axis addPower:addPower vertexDistance:vertexDistance prism:prism farPupillaryDistance:farPupillaryDistance nearPupillaryDistance:nearPupillaryDistance];

    if (!v28)
    {
    }

    rightCopy = v65;
    v27 = v66;
    if (!v65)
    {
    }

    rightEye = v36;
    leftCopy = v68;
  }

  if (leftCopy | v27)
  {
    v56 = v28;
    v55 = objc_alloc(MEMORY[0x277CCD480]);
    sphere2 = [leftEye sphere];
    [leftEye cylinder];
    v61 = axis2 = leftCopy;
    if (!leftCopy)
    {
      axis2 = [leftEye axis];
    }

    addPower2 = [leftEye addPower];
    vertexDistance2 = [leftEye vertexDistance];
    prism2 = v27;
    v40 = v27;
    if (!v27)
    {
      prism2 = [leftEye prism];
    }

    farPupillaryDistance2 = [leftEye farPupillaryDistance];
    nearPupillaryDistance2 = [leftEye nearPupillaryDistance];
    v43 = [v55 initWithSphere:sphere2 cylinder:v61 axis:axis2 addPower:addPower2 vertexDistance:vertexDistance2 prism:prism2 farPupillaryDistance:farPupillaryDistance2 nearPupillaryDistance:nearPupillaryDistance2];

    if (!v40)
    {
    }

    if (!v68)
    {
    }

    leftEye = v43;
    rightCopy = v65;
    v28 = v56;
  }

  v44 = MEMORY[0x277CCD488];
  dateIssued = [prescriptionCopy dateIssued];
  expirationDate = [prescriptionCopy expirationDate];
  device = [prescriptionCopy device];
  v48 = [v44 prescriptionWithRightEyeSpecification:rightEye leftEyeSpecification:leftEye dateIssued:dateIssued expirationDate:expirationDate device:device metadata:v67];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFHealthDataProvider updatePrescription:v48 withMetadata:? axisRight:? axisLeft:? prismRight:? prismLeft:?];
  }

  sourceRevision = [prescriptionCopy sourceRevision];
  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  [v48 _setSourceBundleIdentifier:bundleIdentifier];

  v53 = self->_log;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    [CRXFHealthDataProvider updatePrescription:v53 withMetadata:v48 axisRight:? axisLeft:? prismRight:? prismLeft:?];
  }

  return v48;
}

- (void)listPrescriptionsWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[CRXUDispatchQueue main];
  }

  v8 = objc_alloc(MEMORY[0x277CCD8D0]);
  sampleType = self->_sampleType;
  samplePredicate = self->_samplePredicate;
  sortDescriptors = self->_sortDescriptors;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__CRXFHealthDataProvider_listPrescriptionsWithCompletionQueue_completion___block_invoke;
  v15[3] = &unk_278EA0350;
  v15[4] = self;
  v16 = queueCopy;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = [v8 initWithSampleType:sampleType predicate:samplePredicate limit:0 sortDescriptors:sortDescriptors resultsHandler:v15];
  [(HKHealthStore *)self->_healthStore executeQuery:v14];
}

void __74__CRXFHealthDataProvider_listPrescriptionsWithCompletionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v26 = v8;
    v28 = v6;
    v29 = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      v30 = *MEMORY[0x277CCE138];
      do
      {
        v14 = 0;
        do
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 metadata];
            if (v16)
            {
              v17 = v16;
              v18 = [v15 metadata];
              v19 = [v18 objectForKeyedSubscript:v30];
              v20 = [v19 hasPrefix:*(*(a1 + 32) + 56)];

              if (v20)
              {
                [v29 addObject:v15];
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v12);
    }

    v7 = v27;
    v6 = v28;
    v9 = v26;
    v21 = v29;
  }

  else
  {
    if (!v8)
    {
      v9 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:365 userInfo:MEMORY[0x277CBEC10]];
    }

    v21 = 0;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __74__CRXFHealthDataProvider_listPrescriptionsWithCompletionQueue_completion___block_invoke_2;
  v32[3] = &unk_278EA0328;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v34 = v9;
  v35 = v23;
  v33 = v21;
  v24 = v9;
  v25 = v21;
  [v22 dispatchAsync:v32];
}

- (void)updateWithAddedPrescriptions:(id)prescriptions deletedPrescriptions:(id)deletedPrescriptions completionQueue:(id)queue completion:(id)completion
{
  prescriptionsCopy = prescriptions;
  deletedPrescriptionsCopy = deletedPrescriptions;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[CRXUDispatchQueue main];
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke;
  v36[3] = &unk_278EA0378;
  v14 = queueCopy;
  v37 = v14;
  v38 = completionCopy;
  v15 = completionCopy;
  v16 = MEMORY[0x24C1A0F30](v36);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3;
  v31[3] = &unk_278EA03F0;
  v17 = prescriptionsCopy;
  v32 = v17;
  selfCopy = self;
  v34 = v14;
  v18 = v16;
  v35 = v18;
  v19 = v14;
  v20 = MEMORY[0x24C1A0F30](v31);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3_117;
  v26[3] = &unk_278EA0440;
  v26[4] = self;
  v21 = deletedPrescriptionsCopy;
  v27 = v21;
  v22 = v18;
  v29 = v22;
  v23 = v17;
  v28 = v23;
  v24 = v20;
  v30 = v24;
  v25 = MEMORY[0x24C1A0F30](v26);
  if ([v21 count])
  {
    v25[2](v25);
  }

  else if ([v23 count])
  {
    v24[2](v24);
  }

  else
  {
    (*(v22 + 2))(v22, 0);
  }
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_2;
  v7[3] = &unk_278E9FCB8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchAsync:v7];
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [[CRXUDispatchGroup alloc] initWithName:@"HealthSaveGroup"];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v3)
  {
    v5 = *v25;
    *&v4 = 136315650;
    v15 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [v7 _sourceBundleIdentifier];
        if (!v8)
        {
          v9 = [v7 sourceRevision];
          v10 = [v9 source];
          v8 = [v10 bundleIdentifier];
        }

        v11 = *(*(a1 + 40) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = v15;
          v32 = "[CRXFHealthDataProvider updateWithAddedPrescriptions:deletedPrescriptions:completionQueue:completion:]_block_invoke";
          v33 = 1024;
          v34 = 421;
          v35 = 2114;
          v36 = v8;
          _os_log_debug_impl(&dword_24732C000, v11, OS_LOG_TYPE_DEBUG, "%s @%d: Prescription to add has source bundle ID: %{public}@", buf, 0x1Cu);
          if (!v8)
          {
LABEL_13:
            v12 = *(*(a1 + 40) + 40);
            goto LABEL_14;
          }
        }

        else if (!v8)
        {
          goto LABEL_13;
        }

        v12 = [v17 objectForKeyedSubscript:v8];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x277CCD4D8]);
          [v12 setSourceBundleIdentifier:v8];
          [v12 resume];
          [v17 setObject:v12 forKeyedSubscript:v8];
        }

LABEL_14:
        [(CRXUDispatchGroup *)v2 enter];
        v30 = v7;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_114;
        v21[3] = &unk_278EA03A0;
        v23 = v28;
        v22 = v2;
        [v12 saveObjects:v13 withCompletion:v21];
      }

      v3 = [obj countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v3);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_2_116;
  v18[3] = &unk_278EA03C8;
  v14 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = v28;
  [(CRXUDispatchGroup *)v2 notifyOnQueue:v14 withBlock:v18];

  _Block_object_dispose(v28, 8);
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_114(uint64_t a1, char a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0 && !*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = MEMORY[0x277CCA9B8];
    if (v5)
    {
      v15 = *MEMORY[0x277CCA7E8];
      v16[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v9 = [v7 crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:440 userInfo:v8];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:442 userInfo:MEMORY[0x277CBEC10]];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }

  [*(a1 + 32) leave];
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3_117(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_4;
  v4[3] = &unk_278EA0418;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  [v3 deleteObjects:v2 withCompletion:v4];
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v5 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:459 userInfo:MEMORY[0x277CBEC10]];
  }

  v7 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
LABEL_6:
    v6();
    goto LABEL_9;
  }

  if (![*(a1 + 32) count])
  {
    v6 = *(*(a1 + 40) + 16);
    goto LABEL_6;
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

- (void)deletePrescriptionsMatchingPredicate:(id)predicate completionQueue:(id)queue completion:(id)completion
{
  predicateCopy = predicate;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[CRXUDispatchQueue main];
  }

  healthStore = self->_healthStore;
  visionPrescriptionType = [MEMORY[0x277CCD720] visionPrescriptionType];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke;
  v15[3] = &unk_278EA0468;
  v15[4] = self;
  v16 = queueCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = queueCopy;
  [(HKHealthStore *)healthStore deleteObjectsOfType:visionPrescriptionType predicate:predicateCopy withCompletion:v15];
}

void __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke_cold_1(v8, a3);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
    goto LABEL_5;
  }

  if ((a2 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:503 userInfo:MEMORY[0x277CBEC10]];
  }

LABEL_5:
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke_119;
  v12[3] = &unk_278E9FCB8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v7;
  v14 = v10;
  v11 = v7;
  [v9 dispatchAsync:v12];
}

- (void)getSyncTimesWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[CRXUDispatchQueue main];
  }

  if ([(CRXFHealthDataProvider *)self mockCloudSyncTimes])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__CRXFHealthDataProvider_getSyncTimesWithCompletionQueue_completion___block_invoke;
    v10[3] = &unk_278EA0490;
    v11 = completionCopy;
    [queueCopy dispatchAsync:v10];
  }

  else
  {
    v8 = [[CRXFHealthCloudSyncObserver alloc] initWithQueue:queueCopy completion:completionCopy];
    cloudSyncObserver = self->_cloudSyncObserver;
    self->_cloudSyncObserver = v8;

    [(CRXFHealthCloudSyncObserver *)self->_cloudSyncObserver startObservingHealthStore:self->_healthStore];
  }
}

uint64_t __69__CRXFHealthDataProvider_getSyncTimesWithCompletionQueue_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] crxu_now];
  v3 = *(*(a1 + 32) + 16);
  v4.n128_u64[0] = v2.n128_u64[0];

  return v3(v2, v4);
}

- (id)createVisionPrismForVerticalAmount:(double)amount verticalDirection:(unint64_t)direction horizontalAmount:(double)horizontalAmount horizontalDirection:(unint64_t)horizontalDirection leftEye:(BOOL)eye
{
  eyeCopy = eye;
  if (!direction)
  {
    v11 = 1;
LABEL_5:
    v12 = MEMORY[0x277CCD7E8];
    prismDiopterUnit = [MEMORY[0x277CCDAB0] prismDiopterUnit];
    v14 = [v12 quantityWithUnit:prismDiopterUnit doubleValue:amount];

    if (horizontalDirection)
    {
      goto LABEL_6;
    }

LABEL_9:
    v15 = 4;
    goto LABEL_10;
  }

  if (direction == 1)
  {
    v11 = 2;
    goto LABEL_5;
  }

  v11 = 0;
  v14 = 0;
  if (!horizontalDirection)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (horizontalDirection == 1)
  {
    v15 = 3;
LABEL_10:
    v16 = MEMORY[0x277CCD7E8];
    prismDiopterUnit2 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
    v18 = [v16 quantityWithUnit:prismDiopterUnit2 doubleValue:horizontalAmount];

    goto LABEL_12;
  }

  v15 = 0;
  v18 = 0;
LABEL_12:
  if (eyeCopy)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [objc_alloc(MEMORY[0x277CCDBD0]) initWithVerticalAmount:v14 verticalBase:v11 horizontalAmount:v18 horizontalBase:v15 eye:v19];

  return v20;
}

- (id)createDiopterRangeWithMinimum:(double)minimum maximum:(double)maximum
{
  v6 = MEMORY[0x277CCD7E8];
  diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
  v8 = [v6 quantityWithUnit:diopterUnit doubleValue:minimum];

  v9 = MEMORY[0x277CCD7E8];
  diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
  v11 = [v9 quantityWithUnit:diopterUnit2 doubleValue:maximum];

  v12 = [objc_alloc(MEMORY[0x277CCD7F8]) initWithMinimum:v8 maximum:v11 isMinimumInclusive:1 isMaximumInclusive:1];

  return v12;
}

- (BOOL)isCloudSyncDisabledError:(id)error
{
  errorCopy = error;
  if ([errorCopy hk_isHealthKitErrorWithCode:701])
  {
    v4 = 1;
  }

  else if ([errorCopy hk_isHealthKitErrorWithCode:100])
  {
    v5 = [errorCopy description];
    v4 = [v5 containsString:@"Code=701"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updatePrescription:(void *)a1 withMetadata:(void *)a2 axisRight:axisLeft:prismRight:prismLeft:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 _sourceBundleIdentifier];
  v11 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_24732C000, v5, v6, "%s @%d: updatePrescription sourceBundleIdentifier: %{public}@", v7, v8, v9, v10, v11);
}

- (void)updatePrescription:(void *)a1 withMetadata:(void *)a2 axisRight:axisLeft:prismRight:prismLeft:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 _sourceBundleIdentifier];
  v11 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_24732C000, v5, v6, "%s @%d: sourceBundleID on derived RX set to %{public}@", v7, v8, v9, v10, v11);
}

void __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:a2];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_24732C000, v4, OS_LOG_TYPE_DEBUG, "%s @%d: Deleted %{public}@ HealthKit objects", v6, 0x1Cu);
}

@end