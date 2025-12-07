@interface MKFCKScene
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (id)decodeActionAppleMediaAccessoryPower:(id)power localModel:(id)model context:(id)context;
- (id)decodeActionCharacteristic:(id)characteristic localModel:(id)model context:(id)context;
- (id)decodeActionCommand:(id)command localModel:(id)model context:(id)context;
- (id)decodeActionMediaPlayback:(id)playback localModel:(id)model context:(id)context;
- (id)decodeActionNaturalLight:(id)light localModel:(id)model context:(id)context;
- (id)decodeActionShortcut:(id)shortcut localModel:(id)model context:(id)context;
- (id)encodeActionAppleMediaAccessoryPower:(id)power accessories:(id)accessories context:(id)context;
- (id)encodeActionCharacteristic:(id)characteristic accessories:(id)accessories context:(id)context;
- (id)encodeActionCommand:(id)command accessories:(id)accessories context:(id)context;
- (id)encodeActionMediaPlayback:(id)playback accessories:(id)accessories context:(id)context;
- (id)encodeActionNaturalLight:(id)light accessories:(id)accessories shouldRemoveAction:(BOOL *)action context:(id)context;
- (id)encodeActionShortcut:(id)shortcut context:(id)context;
@end

@implementation MKFCKScene

- (id)encodeActionNaturalLight:(id)light accessories:(id)accessories shouldRemoveAction:(BOOL *)action context:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  lightCopy = light;
  accessoriesCopy = accessories;
  contextCopy = context;
  accessory = [lightCopy accessory];
  v14 = accessory;
  if (accessory)
  {
    modelID = [accessory modelID];
    v16 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
    if (v16)
    {
      [accessoriesCopy addObject:v16];
      v39[0] = @"NL";
      v38[0] = @"At";
      v38[1] = @"Am";
      modelID2 = [lightCopy modelID];
      v39[1] = modelID2;
      v39[2] = modelID;
      v38[2] = @"Lm";
      v38[3] = @"Le";
      naturalLightingEnabledField = [lightCopy naturalLightingEnabledField];
      v18 = objc_msgSend_copy(naturalLightingEnabledField);
      v39[3] = v18;
      v38[4] = @"Ll";
      [lightCopy lightProfileUUID];
      v19 = lightCopy;
      v20 = v14;
      v21 = v16;
      v22 = modelID;
      v23 = contextCopy;
      v25 = v24 = accessoriesCopy;
      v39[4] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:5];

      accessoriesCopy = v24;
      contextCopy = v23;
      modelID = v22;
      v16 = v21;
      v14 = v20;
      lightCopy = v19;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v37 = v31;
        *buf = 138543874;
        v41 = v34;
        v42 = 2112;
        v43 = modelID;
        v44 = 2112;
        v45 = lightCopy;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %@: %@", buf, 0x20u);

        v31 = v37;
      }

      objc_autoreleasePoolPop(v31);
      v26 = 0;
      *action = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = lightCopy;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, no accessory specified: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
    *action = 1;
  }

  return v26;
}

- (id)decodeActionNaturalLight:(id)light localModel:(id)model context:(id)context
{
  v77 = *MEMORY[0x277D85DE8];
  lightCopy = light;
  modelCopy = model;
  contextCopy = context;
  v10 = [lightCopy objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [lightCopy objectForKeyedSubscript:@"Lm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [lightCopy objectForKeyedSubscript:@"Ll"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        v19 = [lightCopy objectForKeyedSubscript:@"Le"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v57 = v21;
        if (v21)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v74 = __Block_byref_object_copy__33336;
          v75 = __Block_byref_object_dispose__33337;
          v76 = 0;
          home = [modelCopy home];
          accessories = [home accessories];
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke;
          v65[3] = &unk_278672270;
          selfCopy = self;
          v68 = buf;
          v66 = v15;
          [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v65];

          if (*(*&buf[8] + 40))
          {
            *v69 = 0;
            *&v69[8] = v69;
            *&v69[16] = 0x3032000000;
            v70 = __Block_byref_object_copy__33336;
            v71 = __Block_byref_object_dispose__33337;
            v72 = 0;
            actions = [modelCopy actions];
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke_10;
            v59[3] = &unk_2786874A0;
            v25 = v12;
            v64 = v69;
            v60 = v25;
            selfCopy2 = self;
            v62 = lightCopy;
            v26 = contextCopy;
            v63 = v26;
            [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v59];

            v27 = *(*&v69[8] + 40);
            if (!v27)
            {
              v28 = [[_MKFNaturalLightingAction alloc] initWithContext:v26];
              v29 = *(*&v69[8] + 40);
              *(*&v69[8] + 40) = v28;

              [*(*&v69[8] + 40) setModelID:v25];
              writerTimestamp = [(MKFCKScene *)self writerTimestamp];
              [*(*&v69[8] + 40) setWriterTimestamp:writerTimestamp];

              [modelCopy addActions_Object:*(*&v69[8] + 40)];
              v27 = *(*&v69[8] + 40);
            }

            lightProfileUUID = [v27 lightProfileUUID];
            v32 = [v18 isEqual:lightProfileUUID];

            if ((v32 & 1) == 0)
            {
              [*(*&v69[8] + 40) setLightProfileUUID:v18];
            }

            naturalLightingEnabledField = [*(*&v69[8] + 40) naturalLightingEnabledField];
            v34 = [v57 isEqual:naturalLightingEnabledField];

            if ((v34 & 1) == 0)
            {
              [*(*&v69[8] + 40) setNaturalLightingEnabledField:v57];
            }

            v35 = *(*&v69[8] + 40);

            _Block_object_dispose(v69, 8);
          }

          else
          {
            v52 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = HMFGetLogIdentifier();
              *v69 = 138543618;
              *&v69[4] = v55;
              *&v69[12] = 2112;
              *&v69[14] = lightCopy;
              _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory matching action: %@", v69, 0x16u);
            }

            objc_autoreleasePoolPop(v52);
            v35 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v48 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v51;
            *&buf[12] = 2112;
            *&buf[14] = lightCopy;
            _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode enable in action: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v48);
          v35 = 0;
        }
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v47;
          *&buf[12] = 2112;
          *&buf[14] = lightCopy;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode profileID in action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v35 = 0;
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v43;
        *&buf[12] = 2112;
        *&buf[14] = lightCopy;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v35 = 0;
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = lightCopy;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v35 = 0;
  }

  return v35;
}

void __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v16;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing accessory is not a HAP accessory: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    *a3 = 1;
  }
}

void __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke_10(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v18 = 138543874;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }
}

- (id)encodeActionCharacteristic:(id)characteristic accessories:(id)accessories context:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  accessoriesCopy = accessories;
  contextCopy = context;
  accessory = [characteristicCopy accessory];
  modelID = [accessory modelID];

  v13 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
  if (v13)
  {
    [accessoriesCopy addObject:v13];
    v34[0] = @"CW";
    v33[0] = @"At";
    v33[1] = @"Am";
    modelID2 = [characteristicCopy modelID];
    v34[1] = modelID2;
    v34[2] = modelID;
    v33[2] = @"Cm";
    v33[3] = @"Cs";
    service = [characteristicCopy service];
    instanceID = [service instanceID];
    v34[3] = instanceID;
    v33[4] = @"Cc";
    characteristicID = [characteristicCopy characteristicID];
    v34[4] = characteristicID;
    v33[5] = @"Ct";
    [characteristicCopy targetValue];
    v16 = v32 = accessoriesCopy;
    v17 = objc_msgSend_copy(v16);
    v18 = contextCopy;
    v19 = v17;
    v20 = *MEMORY[0x277CBEEE8];
    if (v17)
    {
      v20 = v17;
    }

    v21 = v13;
    v22 = modelID;
    v23 = v20;
    v34[5] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];

    modelID = v22;
    v13 = v21;

    contextCopy = v18;
    accessoriesCopy = v32;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138544130;
      v36 = v28;
      v37 = 2160;
      v38 = 1752392040;
      v39 = 2112;
      v40 = modelID;
      v41 = 2112;
      v42 = characteristicCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %{mask.hash}@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  return v24;
}

- (id)decodeActionCharacteristic:(id)characteristic localModel:(id)model context:(id)context
{
  v89 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  modelCopy = model;
  contextCopy = context;
  v11 = [characteristicCopy objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [characteristicCopy objectForKeyedSubscript:@"Cm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v50 = objc_autoreleasePoolPush();
      selfCopy = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      v45 = 0;
      goto LABEL_64;
    }

    v17 = [characteristicCopy objectForKeyedSubscript:@"Cs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (!v19)
    {
      v54 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode serviceID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v54);
      v45 = 0;
      goto LABEL_63;
    }

    v20 = [characteristicCopy objectForKeyedSubscript:@"Cc"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v78 = v22;
    if (v22)
    {
      v23 = [characteristicCopy objectForKeyedSubscript:@"Ct"];
      v77 = v23;
      if (v23)
      {
        if (*MEMORY[0x277CBEEE8] == v23)
        {

          v77 = 0;
        }

        home = [modelCopy home];
        v76 = [home accessoryWithModelID:v16 context:contextCopy];

        if (v76)
        {
          v25 = v76;
          objc_opt_class();
          v26 = objc_opt_isKindOfClass() & 1;
          if (v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          if (v26)
          {

            context = [v25 serviceWithID:v19 context:contextCopy];
            if (context)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v86 = __Block_byref_object_copy__57059;
              v87 = __Block_byref_object_dispose__57060;
              v88 = 0;
              actions = [modelCopy actions];
              v79[0] = MEMORY[0x277D85DD0];
              v79[1] = 3221225472;
              v79[2] = __82__MKFCKScene_ActionCharacteristic__decodeActionCharacteristic_localModel_context___block_invoke;
              v79[3] = &unk_2786874A0;
              v84 = buf;
              v73 = v13;
              v80 = v73;
              selfCopy3 = self;
              v82 = characteristicCopy;
              v30 = contextCopy;
              v83 = v30;
              [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v79];

              v31 = *(*&buf[8] + 40);
              if (!v31)
              {
                v32 = [[_MKFCharacteristicWriteAction alloc] initWithContext:v30];
                v33 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v32;

                [*(*&buf[8] + 40) setModelID:v73];
                writerTimestamp = [(MKFCKScene *)self writerTimestamp];
                [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

                [modelCopy addActions_Object:*(*&buf[8] + 40)];
                v31 = *(*&buf[8] + 40);
              }

              accessory = [v31 accessory];
              v36 = HMFEqualObjects();

              if ((v36 & 1) == 0)
              {
                [*(*&buf[8] + 40) setAccessory:v25];
              }

              service = [*(*&buf[8] + 40) service];
              v38 = HMFEqualObjects();

              if ((v38 & 1) == 0)
              {
                [*(*&buf[8] + 40) setService:context];
              }

              characteristicID = [*(*&buf[8] + 40) characteristicID];
              v40 = HMFEqualObjects();

              if ((v40 & 1) == 0)
              {
                v41 = objc_msgSend_copy(v78);
                [*(*&buf[8] + 40) setCharacteristicID:v41];
              }

              targetValue = [*(*&buf[8] + 40) targetValue];
              v43 = HMFEqualObjects();

              if ((v43 & 1) == 0)
              {
                v44 = objc_msgSend_copy(v77);
                [*(*&buf[8] + 40) setTargetValue:v44];
              }

              v45 = *(*&buf[8] + 40);

              _Block_object_dispose(buf, 8);
            }

            else
            {
              v68 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v71;
                *&buf[12] = 2112;
                *&buf[14] = characteristicCopy;
                _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@Could not find service matching action: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v68);
              v45 = 0;
            }

            goto LABEL_61;
          }

          contexta = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v67;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            *&buf[22] = 2112;
            v86 = characteristicCopy;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ is not a HAP accessory in action: %@", buf, 0x20u);
          }
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v65 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v65;
            *&buf[12] = 2112;
            *&buf[14] = characteristicCopy;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory matching action: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(contexta);
        v45 = 0;
LABEL_61:

        goto LABEL_62;
      }

      v58 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode targetValue in action: %@", buf, 0x16u);
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode characteristicID in action: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v58);
    v45 = 0;
LABEL_62:

LABEL_63:
LABEL_64:

    goto LABEL_65;
  }

  v46 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v49;
    *&buf[12] = 2112;
    *&buf[14] = characteristicCopy;
    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v46);
  v45 = 0;
LABEL_65:

  return v45;
}

void __82__MKFCKScene_ActionCharacteristic__decodeActionCharacteristic_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v18 = 138543874;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }
}

- (id)encodeActionCommand:(id)command accessories:(id)accessories context:(id)context
{
  v56 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  accessoriesCopy = accessories;
  contextCopy = context;
  v11 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v11 isRVCEnabled];

  if (isRVCEnabled)
  {
    matterPaths = [commandCopy matterPaths];
    firstObject = [matterPaths firstObject];
    accessory = [firstObject accessory];
    modelID = [accessory modelID];

    array = [MEMORY[0x277CBEB18] array];
    matterPaths2 = [commandCopy matterPaths];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __68__MKFCKScene_ActionComand__encodeActionCommand_accessories_context___block_invoke;
    v44[3] = &unk_278677A50;
    v19 = array;
    v45 = v19;
    [matterPaths2 hmf_enumerateWithAutoreleasePoolUsingBlock:v44];

    v20 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
    if (v20)
    {
      [accessoriesCopy addObject:v20];
      v47[0] = @"C";
      v46[0] = @"At";
      v46[1] = @"Am";
      modelID2 = [commandCopy modelID];
      v47[1] = modelID2;
      v46[2] = @"Cmp";
      v21 = objc_msgSend_copy(v19);
      v47[2] = v21;
      v47[3] = modelID;
      v46[3] = @"Cm";
      v46[4] = @"Cf";
      commands = [commandCopy commands];
      [HMDMatterCommandActionUtilities commandsInStoreRepresentation:commands];
      v43 = v20;
      v23 = modelID;
      v25 = v24 = accessoriesCopy;
      v47[4] = v25;
      v46[5] = @"Ceeo";
      enforceExecutionOrder = [commandCopy enforceExecutionOrder];
      v27 = commandCopy;
      v28 = v19;
      v29 = contextCopy;
      v30 = enforceExecutionOrder;
      v31 = MEMORY[0x277CBEC28];
      if (enforceExecutionOrder)
      {
        v31 = enforceExecutionOrder;
      }

      v47[5] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:6];

      contextCopy = v29;
      v19 = v28;
      commandCopy = v27;

      accessoriesCopy = v24;
      modelID = v23;
      v20 = v43;
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138544130;
        v49 = v40;
        v50 = 2160;
        v51 = 1752392040;
        v52 = 2112;
        v53 = modelID;
        v54 = 2112;
        v55 = commandCopy;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %{mask.hash}@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v37);
      v32 = 0;
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@RVC feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
  }

  return v32;
}

void __68__MKFCKScene_ActionComand__encodeActionCommand_accessories_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 modelID];
  [v2 addObject:v3];
}

- (id)decodeActionCommand:(id)command localModel:(id)model context:(id)context
{
  v107 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  modelCopy = model;
  contextCopy = context;
  v11 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v11 isRVCEnabled];

  if (isRVCEnabled)
  {
    v13 = [commandCopy objectForKeyedSubscript:@"Am"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [commandCopy objectForKeyedSubscript:@"Cm"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        v19 = [commandCopy objectForKeyedSubscript:@"Cmp"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v98 = 0;
        v22 = [commandCopy hmf_BOOLForKey:@"Ceeo" isPresent:&v98];
        if (v98)
        {
          v23 = v22;
          v85 = [commandCopy objectForKeyedSubscript:@"Cf"];
          home = [modelCopy home];
          v86 = [home accessoryWithModelID:v18 context:contextCopy];

          if (v86)
          {
            v25 = v86;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v27 = v25;
            }

            else
            {
              v27 = 0;
            }

            v84 = v27;

            if (isKindOfClass)
            {
              matterPaths = [v25 matterPaths];
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v104 = __Block_byref_object_copy__94783;
              v105 = __Block_byref_object_dispose__94784;
              array = [MEMORY[0x277CBEB18] array];
              v93[0] = MEMORY[0x277D85DD0];
              v93[1] = 3221225472;
              v93[2] = __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke;
              v93[3] = &unk_278686568;
              v83 = matterPaths;
              v94 = v83;
              selfCopy = self;
              v29 = commandCopy;
              v96 = v29;
              v97 = buf;
              [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v93];
              v30 = *(*&buf[8] + 40);
              if (v30 && (v31 = [v30 count], v31 == objc_msgSend(v21, "count")))
              {
                *v99 = 0;
                *&v99[8] = v99;
                *&v99[16] = 0x3032000000;
                v100 = __Block_byref_object_copy__94783;
                v101 = __Block_byref_object_dispose__94784;
                v102 = 0;
                actions = [modelCopy actions];
                v87[0] = MEMORY[0x277D85DD0];
                v87[1] = 3221225472;
                v87[2] = __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_20;
                v87[3] = &unk_2786874A0;
                v92 = v99;
                context = v15;
                contextCopy2 = context;
                selfCopy2 = self;
                v90 = v29;
                v33 = contextCopy;
                v91 = v33;
                [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v87];

                v34 = *(*&v99[8] + 40);
                if (!v34)
                {
                  v35 = [[_MKFMatterCommandAction alloc] initWithContext:v33];
                  v36 = *(*&v99[8] + 40);
                  *(*&v99[8] + 40) = v35;

                  [*(*&v99[8] + 40) setModelID:context];
                  writerTimestamp = [(MKFCKScene *)self writerTimestamp];
                  [*(*&v99[8] + 40) setWriterTimestamp:writerTimestamp];

                  [modelCopy addActions_Object:*(*&v99[8] + 40)];
                  v34 = *(*&v99[8] + 40);
                }

                matterPaths2 = [v34 matterPaths];
                v39 = HMFEqualObjects();

                if ((v39 & 1) == 0)
                {
                  v40 = MEMORY[0x277CBEB98];
                  v41 = objc_msgSend_copy(*(*&buf[8] + 40));
                  v42 = [v40 setWithArray:v41];
                  [*(*&v99[8] + 40) setMatterPaths_:v42];
                }

                enforceExecutionOrder = [*(*&v99[8] + 40) enforceExecutionOrder];
                if (enforceExecutionOrder)
                {
                  enforceExecutionOrder2 = [*(*&v99[8] + 40) enforceExecutionOrder];
                  bOOLValue = [enforceExecutionOrder2 BOOLValue];

                  if (v23 != bOOLValue)
                  {
                    v46 = [MEMORY[0x277CCABB0] numberWithBool:v23];
                    [*(*&v99[8] + 40) setEnforceExecutionOrder:v46];
                  }
                }

                commands = [*(*&v99[8] + 40) commands];
                if (commands)
                {
                  commands2 = [*(*&v99[8] + 40) commands];
                  v49 = HMFEqualObjects();

                  if ((v49 & 1) == 0)
                  {
                    v50 = objc_msgSend_copy(v85);
                    v51 = [HMDMatterCommandActionUtilities commandsInMemoryRepresentation:v50];
                    [*(*&v99[8] + 40) setCommands:v51];
                  }
                }

                v52 = *(*&v99[8] + 40);

                _Block_object_dispose(v99, 8);
              }

              else
              {
                contexta = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v78 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                {
                  v79 = HMFGetLogIdentifier();
                  *v99 = 138543618;
                  *&v99[4] = v79;
                  *&v99[12] = 2112;
                  *&v99[14] = v29;
                  _os_log_impl(&dword_229538000, v78, OS_LOG_TYPE_ERROR, "%{public}@Could not find matter path matching action: %@", v99, 0x16u);
                }

                objc_autoreleasePoolPop(contexta);
                v52 = 0;
              }

              _Block_object_dispose(buf, 8);
            }

            else
            {
              v73 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v75 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v76 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v76;
                *&buf[12] = 2112;
                *&buf[14] = commandCopy;
                _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_ERROR, "%{public}@Accessory is an unexpected type: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v73);
              v52 = 0;
            }
          }

          else
          {
            v69 = objc_autoreleasePoolPush();
            selfCopy5 = self;
            v71 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v72 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v72;
              *&buf[12] = 2112;
              *&buf[14] = commandCopy;
              _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory matching action: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v69);
            v52 = 0;
          }
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v68;
            *&buf[12] = 2112;
            *&buf[14] = commandCopy;
            _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode enforceExecutionOrder in action: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v65);
          v52 = 0;
        }
      }

      else
      {
        v61 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v64 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v64;
          *&buf[12] = 2112;
          *&buf[14] = commandCopy;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v61);
        v52 = 0;
      }
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2112;
        *&buf[14] = commandCopy;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v57);
      v52 = 0;
    }
  }

  else
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v56;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@RVC feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v53);
    v52 = 0;
  }

  return v52;
}

void __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_2;
  v10[3] = &unk_278677A28;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v11 = v3;
  v12 = v4;
  v7 = v6;
  v8 = a1[7];
  v13 = v7;
  v14 = v8;
  v9 = v3;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
}

void __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_20(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v18 = 138543874;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }
}

void __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 modelID];
  v8 = [v7 hmf_isEqualToUUID:*(a1 + 32)];

  if (v8)
  {
    v9 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 48);
        v17 = 138543874;
        v18 = v15;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Existing matter path is an unexpected type: %@, %@", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }

    [*(*(*(a1 + 56) + 8) + 40) addObject:v11];
    *a4 = 1;
  }
}

- (id)encodeActionAppleMediaAccessoryPower:(id)power accessories:(id)accessories context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  accessoriesCopy = accessories;
  contextCopy = context;
  accessory = [powerCopy accessory];
  modelID = [accessory modelID];

  v13 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
  if (v13)
  {
    v23[0] = @"AMAP";
    modelID2 = [powerCopy modelID];
    v23[1] = modelID2;
    v23[2] = modelID;
    v22[2] = @"AMAPATVU";
    v22[3] = @"AMAPASWS";
    targetSleepWakeState = [powerCopy targetSleepWakeState];
    v23[3] = targetSleepWakeState;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v25 = v20;
      v26 = 2160;
      v27 = 1752392040;
      v28 = 2112;
      v29 = modelID;
      v30 = 2114;
      v31 = powerCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching appleTV with modelID %{mask.hash}@: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  return v16;
}

- (id)decodeActionAppleMediaAccessoryPower:(id)power localModel:(id)model context:(id)context
{
  v60 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  modelCopy = model;
  contextCopy = context;
  v11 = [powerCopy objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [powerCopy hmf_UUIDForKey:@"AMAPATVU"];
    if (v14)
    {
      v15 = [powerCopy hmf_numberForKey:@"AMAPASWS"];
      if (v15)
      {
        home = [modelCopy home];
        v17 = [home accessoryWithModelID:v14 context:contextCopy];

        v18 = v17;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v50 = v20;
        if (v20)
        {

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v58 = __Block_byref_object_copy__151561;
          *&v59 = __Block_byref_object_dispose__151562;
          *(&v59 + 1) = 0;
          actions = [modelCopy actions];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __85__MKFCKScene_ActionAppleTV__decodeActionAppleMediaAccessoryPower_localModel_context___block_invoke;
          v51[3] = &unk_2786874A0;
          v22 = v13;
          v56 = buf;
          v52 = v22;
          selfCopy = self;
          v54 = powerCopy;
          v23 = contextCopy;
          v55 = v23;
          [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v51];

          v24 = *(*&buf[8] + 40);
          if (!v24)
          {
            v25 = [[_MKFAppleMediaAccessoryPowerAction alloc] initWithContext:v23];
            v26 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v25;

            [*(*&buf[8] + 40) setModelID:v22];
            writerTimestamp = [(MKFCKScene *)self writerTimestamp];
            [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

            [modelCopy addActions_Object:*(*&buf[8] + 40)];
            v24 = *(*&buf[8] + 40);
          }

          accessory = [v24 accessory];
          v29 = HMFEqualObjects();

          if ((v29 & 1) == 0)
          {
            [*(*&buf[8] + 40) setAccessory:v50];
          }

          targetSleepWakeState = [*(*&buf[8] + 40) targetSleepWakeState];
          v31 = HMFEqualObjects();

          if ((v31 & 1) == 0)
          {
            [*(*&buf[8] + 40) setTargetSleepWakeState:v15];
          }

          v32 = *(*&buf[8] + 40);

          _Block_object_dispose(buf, 8);
        }

        else
        {
          context = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138544130;
            *&buf[4] = v47;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v58 = v14;
            LOWORD(v59) = 2112;
            *(&v59 + 2) = powerCopy;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory %{mask.hash}@ matching action %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(context);
          v32 = 0;
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v44;
          *&buf[12] = 2112;
          *&buf[14] = powerCopy;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode targetSleepWakeState in action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        v32 = 0;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v40;
        *&buf[12] = 2112;
        *&buf[14] = powerCopy;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessoryUUID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v32 = 0;
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = powerCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
  }

  return v32;
}

void __85__MKFCKScene_ActionAppleTV__decodeActionAppleMediaAccessoryPower_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v18 = 138543874;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }
}

- (id)encodeActionShortcut:(id)shortcut context:(id)context
{
  v12[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"S";
  v11[0] = @"At";
  v11[1] = @"Am";
  shortcutCopy = shortcut;
  modelID = [shortcutCopy modelID];
  v12[1] = modelID;
  v11[2] = @"Sd";
  data = [shortcutCopy data];

  v7 = objc_msgSend_copy(data);
  data2 = v7;
  if (!v7)
  {
    data2 = [MEMORY[0x277CBEA90] data];
  }

  v12[2] = data2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!v7)
  {
  }

  return v9;
}

- (id)decodeActionShortcut:(id)shortcut localModel:(id)model context:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  shortcutCopy = shortcut;
  modelCopy = model;
  contextCopy = context;
  v11 = [shortcutCopy objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [shortcutCopy objectForKeyedSubscript:@"Sd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v43 = __Block_byref_object_copy__211009;
      v44 = __Block_byref_object_dispose__211010;
      v45 = 0;
      actions = [modelCopy actions];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __70__MKFCKScene_ActionShortcut__decodeActionShortcut_localModel_context___block_invoke;
      v36[3] = &unk_2786874A0;
      v18 = v13;
      v41 = buf;
      v37 = v18;
      selfCopy = self;
      v39 = shortcutCopy;
      v19 = contextCopy;
      v40 = v19;
      [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v36];

      v20 = *(*&buf[8] + 40);
      if (!v20)
      {
        v21 = [[_MKFShortcutAction alloc] initWithContext:v19];
        v22 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v21;

        [*(*&buf[8] + 40) setModelID:v18];
        writerTimestamp = [(MKFCKScene *)self writerTimestamp];
        [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

        [modelCopy addActions_Object:*(*&buf[8] + 40)];
        v20 = *(*&buf[8] + 40);
      }

      data = [v20 data];
      v25 = [v16 isEqual:data];

      if ((v25 & 1) == 0)
      {
        [*(*&buf[8] + 40) setData:v16];
      }

      v26 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2112;
        *&buf[14] = shortcutCopy;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v26 = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = shortcutCopy;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  return v26;
}

void __70__MKFCKScene_ActionShortcut__decodeActionShortcut_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v18 = 138543874;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }
}

- (id)encodeActionMediaPlayback:(id)playback accessories:(id)accessories context:(id)context
{
  v60 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  accessoriesCopy = accessories;
  contextCopy = context;
  v10 = MEMORY[0x277CBEB58];
  accessories = [playbackCopy accessories];
  v12 = [v10 setWithCapacity:{objc_msgSend(accessories, "count")}];

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  accessories2 = [playbackCopy accessories];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke;
  v45[3] = &unk_2786874C8;
  v45[4] = self;
  v39 = contextCopy;
  v46 = v39;
  v14 = playbackCopy;
  v47 = v14;
  v49 = &v50;
  v15 = v12;
  v48 = v15;
  [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];

  if ((v51[3] & 1) == 0)
  {
    v21 = 0;
    goto LABEL_16;
  }

  encodedPlaybackArchive = [v14 encodedPlaybackArchive];

  if (encodedPlaybackArchive)
  {
    v17 = MEMORY[0x277CCAAB0];
    encodedPlaybackArchive2 = [v14 encodedPlaybackArchive];
    v44 = 0;
    v19 = [v17 archivedDataWithRootObject:encodedPlaybackArchive2 requiringSecureCoding:1 error:&v44];
    v20 = v44;

    if (!v19)
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v37;
        v58 = 2114;
        v59 = v20;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode playback archive: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v21 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v15, "count")}];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke_22;
  v41[3] = &unk_2786874F0;
  v23 = v22;
  v42 = v23;
  v43 = accessoriesCopy;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v41];
  v24 = MEMORY[0x277CBEB38];
  v55[0] = @"MP";
  v54[0] = @"At";
  v54[1] = @"Am";
  modelID = [v14 modelID];
  v55[1] = modelID;
  v54[2] = @"Mm";
  allObjects = [v23 allObjects];
  v55[2] = allObjects;
  v54[3] = @"Ms";
  state = [v14 state];
  v28 = objc_msgSend_copy(state);
  v55[3] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v30 = [v24 dictionaryWithDictionary:v29];

  volume = [v14 volume];

  if (volume)
  {
    volume2 = [v14 volume];
    v33 = objc_msgSend_copy(volume2);
    [v30 setObject:v33 forKeyedSubscript:@"Mv"];
  }

  if (v19)
  {
    [v30 setObject:v19 forKeyedSubscript:@"Ma"];
  }

  v21 = objc_msgSend_copy(v30);

  v20 = v19;
LABEL_15:

LABEL_16:
  _Block_object_dispose(&v50, 8);

  return v21;
}

void __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [(MKFCKHomeObject *)*(a1 + 32) _accessoryWithModelID:v6 context:*(a1 + 40)];
  if (v7)
  {
    [*(a1 + 56) addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v13 = 138544130;
      v14 = v11;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %{mask.hash}@: %@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v5 modelID];
  [v3 addObject:v4];

  [*(a1 + 40) addObject:v5];
}

- (id)decodeActionMediaPlayback:(id)playback localModel:(id)model context:(id)context
{
  v108 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  modelCopy = model;
  contextCopy = context;
  v9 = [playbackCopy objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [playbackCopy objectForKeyedSubscript:@"Mm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v15 = [playbackCopy objectForKeyedSubscript:@"Ms"];
      v16 = v15;
      if (!v15 || ((v17 = v15, objc_opt_class(), (v18 = objc_opt_isKindOfClass() & 1) == 0) ? (v19 = 0) : (v19 = v17), v20 = v19, v17, v18))
      {

        v21 = [playbackCopy objectForKeyedSubscript:@"Mv"];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
          objc_opt_class();
          v24 = objc_opt_isKindOfClass() & 1;
          v25 = v24 ? v23 : 0;
          v26 = v25;

          if (!v24)
          {
            v47 = objc_autoreleasePoolPush();
            selfCopy = self;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v50;
              *&buf[12] = 2112;
              *&buf[14] = playbackCopy;
              _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode volume in action: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            v38 = 0;
            v22 = v23;
            goto LABEL_62;
          }
        }

        v27 = [playbackCopy objectForKeyedSubscript:@"Ma"];
        v28 = v27;
        if (v27)
        {
          contextCopy2 = v27;
          objc_opt_class();
          v30 = objc_opt_isKindOfClass() & 1;
          if (v30)
          {
            v31 = contextCopy2;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;

          if (v30)
          {
            v103 = 0;
            context = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:contextCopy2 error:&v103];
            v33 = v103;
            if (context)
            {

LABEL_40:
              v51 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v14, "count")}];
              v99 = 0;
              v100 = &v99;
              v101 = 0x2020000000;
              v102 = 1;
              v93[0] = MEMORY[0x277D85DD0];
              v93[1] = 3221225472;
              v93[2] = __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke;
              v93[3] = &unk_278687478;
              v93[4] = self;
              v52 = playbackCopy;
              v94 = v52;
              v98 = &v99;
              v53 = modelCopy;
              v95 = v53;
              v54 = contextCopy;
              v96 = v54;
              v80 = v51;
              v97 = v80;
              [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v93];
              if (v100[3])
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v105 = __Block_byref_object_copy__262722;
                v106 = __Block_byref_object_dispose__262723;
                v107 = 0;
                v79 = v53;
                actions = [v53 actions];
                v87[0] = MEMORY[0x277D85DD0];
                v87[1] = 3221225472;
                v87[2] = __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke_17;
                v87[3] = &unk_2786874A0;
                v92 = buf;
                v56 = v11;
                v88 = v56;
                selfCopy2 = self;
                v90 = v52;
                v57 = v54;
                v91 = v57;
                [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v87];

                v58 = *(*&buf[8] + 40);
                if (!v58)
                {
                  v59 = [[_MKFMediaPlaybackAction alloc] initWithContext:v57];
                  v60 = *(*&buf[8] + 40);
                  *(*&buf[8] + 40) = v59;

                  [*(*&buf[8] + 40) setModelID:v56];
                  writerTimestamp = [(MKFCKScene *)self writerTimestamp];
                  [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

                  [v79 addActions_Object:*(*&buf[8] + 40)];
                  v58 = *(*&buf[8] + 40);
                }

                state = [v58 state];
                v63 = HMFEqualObjects();

                if ((v63 & 1) == 0)
                {
                  [*(*&buf[8] + 40) setState:v16];
                }

                volume = [*(*&buf[8] + 40) volume];
                v65 = HMFEqualObjects();

                if ((v65 & 1) == 0)
                {
                  [*(*&buf[8] + 40) setVolume:v22];
                }

                encodedPlaybackArchive = [*(*&buf[8] + 40) encodedPlaybackArchive];
                v67 = HMFEqualObjects();

                if ((v67 & 1) == 0)
                {
                  [*(*&buf[8] + 40) setEncodedPlaybackArchive:context];
                }

                accessories = [*(*&buf[8] + 40) accessories];
                v69 = [accessories isEqualToSet:v80];

                if ((v69 & 1) == 0)
                {
                  v70 = *(*&buf[8] + 40);
                  v71 = objc_msgSend_copy(v80);
                  [v70 setAccessories_:v71];
                }

                v38 = *(*&buf[8] + 40);

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v38 = 0;
              }

              _Block_object_dispose(&v99, 8);
              contextCopy2 = context;
              goto LABEL_61;
            }

            contextb = v33;
            v81 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v76 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v77 = HMFGetLogIdentifier();
              *buf = 138543874;
              *&buf[4] = v77;
              *&buf[12] = 2112;
              *&buf[14] = playbackCopy;
              *&buf[22] = 2114;
              v105 = contextb;
              _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode playback archive in action: %@, %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v81);
          }

          else
          {
            contexta = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v74;
              *&buf[12] = 2112;
              *&buf[14] = playbackCopy;
              _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode encodedArchive in action: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(contexta);
          }

          v38 = 0;
LABEL_61:

LABEL_62:
          goto LABEL_63;
        }

        context = 0;
        goto LABEL_40;
      }

      v43 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2112;
        *&buf[14] = playbackCopy;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode state in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = playbackCopy;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelIDs in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
    }

    v38 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v34 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v37;
    *&buf[12] = 2112;
    *&buf[14] = playbackCopy;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
  v38 = 0;
LABEL_64:

  return v38;
}

void __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [*(a1 + 48) home];
    v10 = [v9 accessoryWithModelID:v8 context:*(a1 + 56)];

    if (v10)
    {
      [*(a1 + 64) addObject:v10];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 40);
        v21 = 138543874;
        v22 = v19;
        v23 = 2112;
        v24 = v8;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory %@ matching action: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      *a4 = 1;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    *a4 = 1;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

void __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke_17(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v18 = 138543874;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v64 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v11 = modelCopy;
  v12 = propertiesCopy;
  v13 = contextCopy;
  if (self && [(MKFCKModel *)self copyPropertiesFromLocalModel:v11 context:v13])
  {
    v14 = MEMORY[0x277CBEB58];
    actions = [v11 actions];
    v16 = [v14 setWithCapacity:{objc_msgSend(actions, "count")}];

    v17 = [MEMORY[0x277CBEB58] set];
    hmd_currentChangeSet = [v13 hmd_currentChangeSet];
    v19 = MEMORY[0x277CBEB38];
    actions2 = [(MKFCKScene *)self actions];
    v21 = [v19 dictionaryWithCapacity:{objc_msgSend(actions2, "count")}];

    actions3 = [(MKFCKScene *)self actions];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke;
    v57[3] = &unk_278689E38;
    v44 = hmd_currentChangeSet;
    v58 = v44;
    v23 = v21;
    v59 = v23;
    [actions3 hmf_enumerateWithAutoreleasePoolUsingBlock:v57];

    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 1;
    actions4 = [v11 actions];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_2;
    v47[3] = &unk_278689E60;
    v47[4] = self;
    v25 = v17;
    v48 = v25;
    v49 = v13;
    v52 = &v53;
    v26 = v23;
    v50 = v26;
    v45 = v16;
    v51 = v45;
    [actions4 hmf_enumerateWithAutoreleasePoolUsingBlock:v47];

    if (v54[3])
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_37;
      v61 = &unk_278689E88;
      v27 = v45;
      v62 = v27;
      selfCopy = self;
      [v26 enumerateKeysAndObjectsUsingBlock:buf];
      v28 = MEMORY[0x277CBEB98];
      actions5 = [(MKFCKScene *)self actions];
      v30 = [v28 setWithArray:actions5];
      LOBYTE(v28) = HMFEqualObjects();

      if ((v28 & 1) == 0)
      {
        allObjects = [v27 allObjects];
        [(MKFCKScene *)self setActions:allObjects];
      }

      accessories = [(MKFCKScene *)self accessories];
      v33 = HMFEqualObjects();

      if ((v33 & 1) == 0)
      {
        v34 = objc_msgSend_copy(v25);
        [(MKFCKScene *)self setAccessories:v34];
      }

      v35 = [_MKFApplicationData appDataDictionaryForContainer:v11];
      applicationData = [(MKFCKScene *)self applicationData];
      v37 = HMFEqualObjects();

      if ((v37 & 1) == 0)
      {
        [(MKFCKScene *)self setApplicationData:v35];
      }
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode all actions, assuming a later export will succeed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
    }

    _Block_object_dispose(&v53, 8);
    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  objc_autoreleasePoolPop(context);
  return v38;
}

void __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) deletedModelIDs];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }
}

void __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) encodeActionCharacteristic:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 32) encodeActionNaturalLight:v5 accessories:*(a1 + 40) shouldRemoveAction:&v20 context:*(a1 + 48)];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [*(a1 + 32) encodeActionMediaPlayback:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [*(a1 + 32) encodeActionShortcut:v5 context:*(a1 + 48)];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [*(a1 + 32) encodeActionAppleMediaAccessoryPower:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v18 = +[HMDCoreData featuresDataSource];
            v19 = [v18 isRVCEnabled];

            if (!v19)
            {
              goto LABEL_18;
            }

            v6 = [*(a1 + 32) encodeActionCommand:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
          }
        }
      }
    }
  }

  v7 = v6;
  if (!v6)
  {
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a3 = 1;
    goto LABEL_19;
  }

  v8 = *(a1 + 56);
  v9 = [v5 modelID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [MKFCKModel mergedDictionaryFromCloud:v10 localModifications:v7];
  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v15;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to merge cloud & local actions: %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a3 = 1;
  }

  v16 = *(a1 + 56);
  v17 = [v5 modelID];
  [v16 removeObjectForKey:v17];

  [*(a1 + 64) addObject:v11];
LABEL_19:
}

void __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addObject:v6];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 objectForKeyedSubscript:@"At"];
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Found new action type [%{public}@] not supported by this software. Adding it back to cloud: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v9 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:contextCopy];
  if (v9)
  {
    v10 = MEMORY[0x277CBEB58];
    actions = [(MKFCKScene *)self actions];
    v12 = [v10 setWithCapacity:{objc_msgSend(actions, "count")}];

    actions2 = [(MKFCKScene *)self actions];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke;
    v28[3] = &unk_278689DE8;
    v28[4] = self;
    v14 = modelCopy;
    v29 = v14;
    v15 = contextCopy;
    v30 = v15;
    v16 = v12;
    v31 = v16;
    [actions2 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];

    actions3 = [v14 actions];
    allObjects = [actions3 allObjects];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke_24;
    v25 = &unk_278689E10;
    v26 = v16;
    v27 = v15;
    v19 = v16;
    [allObjects hmf_enumerateWithAutoreleasePoolUsingBlock:&v22];

    v20 = [(MKFCKScene *)self applicationData:v22];
    [_MKFApplicationData setAppDataDictionary:v20 forContainer:v14];
  }

  return v9;
}

void __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"At"];
  if ([v4 isEqualToString:@"CW"])
  {
    v5 = [*(a1 + 32) decodeActionCharacteristic:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"NL"])
  {
    v5 = [*(a1 + 32) decodeActionNaturalLight:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"MP"])
  {
    v5 = [*(a1 + 32) decodeActionMediaPlayback:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"S"])
  {
    v5 = [*(a1 + 32) decodeActionShortcut:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"AMAP"])
  {
    v5 = [*(a1 + 32) decodeActionAppleMediaAccessoryPower:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if (![v4 isEqualToString:@"C"])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown encoded action type: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_19;
  }

  v9 = +[HMDCoreData featuresDataSource];
  v10 = [v9 isRVCEnabled];

  if (v10)
  {
    v5 = [*(a1 + 32) decodeActionCommand:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
LABEL_11:
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 56);
      v8 = [v5 objectID];
      [v7 addObject:v8];

      goto LABEL_22;
    }
  }

LABEL_19:
  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode action, ignoring: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
LABEL_22:
}

void __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 objectID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) deleteObject:v6];
  }
}

@end