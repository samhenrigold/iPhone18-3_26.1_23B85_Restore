@interface HMDCameraSignificantEventBulletinParamsDictionaryTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDCameraSignificantEventBulletinParamsDictionaryTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v6 = valueCopy;
  if (valueCopy)
  {
    v7 = [valueCopy hmf_UUIDForKey:@"HMDCSEBP.ck.UUID"];
    if (v7)
    {
      v8 = [v6 valueForKey:@"HMDCSEBP.ck.reason"];
      v9 = v8;
      if (v8)
      {
        unsignedIntegerValue = [v8 unsignedIntegerValue];
        v11 = [v6 valueForKey:@"HMDCSEBP.ck.date"];
        if (v11)
        {
          v12 = [v6 valueForKey:@"HMDCSEBP.ck.confidenceLevel"];
          v13 = v12;
          if (v12)
          {
            unsignedIntegerValue2 = [v12 unsignedIntegerValue];
            v15 = [v6 hmf_UUIDForKey:@"HMDCSEBP.ck.cameraProfileUUID"];
            if (v15)
            {
              v16 = [v6 valueForKey:@"HMDCSEBP.ck.faceClassifications"];
              v33 = v16;
              if (v16)
              {
                v17 = v16;
                v28 = unsignedIntegerValue2;
                v29 = v15;
                v30 = unsignedIntegerValue;
                v31 = v13;
                v32 = v9;
                v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v19 = v17;
                v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v35;
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      if (*v35 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = [HMDCameraSignificantEventFaceClassificationDictionaryTransformer reverseTransformedValue:*(*(&v34 + 1) + 8 * i) error:error];
                      [v18 addObject:v24];
                    }

                    v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
                  }

                  while (v21);
                }

                v9 = v32;
                unsignedIntegerValue = v30;
                v13 = v31;
                v25 = v28;
                v15 = v29;
              }

              else
              {
                v25 = unsignedIntegerValue2;
                v18 = 0;
              }

              v26 = [[HMDCameraSignificantEventBulletinParams alloc] initWithUUID:v7 reason:unsignedIntegerValue dateOfOccurrence:v11 confidenceLevel:v25 faceClassifications:v18 cameraProfileUUID:v15];
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (valueCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    uUID = [valueCopy UUID];
    uUIDString = [uUID UUIDString];
    [dictionary setValue:uUIDString forKey:@"HMDCSEBP.ck.UUID"];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(valueCopy, "reason")}];
    [dictionary setValue:v9 forKey:@"HMDCSEBP.ck.reason"];

    dateOfOccurrence = [valueCopy dateOfOccurrence];
    [dictionary setValue:dateOfOccurrence forKey:@"HMDCSEBP.ck.date"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(valueCopy, "confidenceLevel")}];
    [dictionary setValue:v11 forKey:@"HMDCSEBP.ck.confidenceLevel"];

    cameraProfileUUID = [valueCopy cameraProfileUUID];
    uUIDString2 = [cameraProfileUUID UUIDString];
    [dictionary setValue:uUIDString2 forKey:@"HMDCSEBP.ck.cameraProfileUUID"];

    array = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    faceClassifications = [valueCopy faceClassifications];
    v16 = [faceClassifications countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(faceClassifications);
          }

          v20 = [HMDCameraSignificantEventFaceClassificationDictionaryTransformer transformedValue:*(*(&v24 + 1) + 8 * i) error:error];
          [array addObject:v20];
        }

        v17 = [faceClassifications countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    v21 = objc_msgSend_copy(array);
    [dictionary setValue:v21 forKey:@"HMDCSEBP.ck.faceClassifications"];

    v22 = objc_msgSend_copy(dictionary);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end