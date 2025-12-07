@interface _HMCameraSettingsControl
- (_HMCameraSettingsControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service;
@end

@implementation _HMCameraSettingsControl

- (_HMCameraSettingsControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service
{
  v42 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v40.receiver = self;
  v40.super_class = _HMCameraSettingsControl;
  v9 = [(_HMCameraControl *)&v40 initWithCameraProfile:profile profileUniqueIdentifier:identifier];
  if (v9)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    characteristics = [serviceCopy characteristics];
    v11 = [characteristics countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(characteristics);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = objc_msgSend_characteristicType(v15);
          v17 = [v16 isEqualToString:@"0000011B-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__nightVision;
          if ((v17 & 1) == 0)
          {
            v19 = objc_msgSend_characteristicType(v15);
            v20 = [v19 isEqualToString:@"0000007B-0000-1000-8000-0026BB765291"];

            v18 = &OBJC_IVAR____HMCameraSettingsControl__targetHorizontalTilt;
            if ((v20 & 1) == 0)
            {
              v21 = objc_msgSend_characteristicType(v15);
              v22 = [v21 isEqualToString:@"0000006C-0000-1000-8000-0026BB765291"];

              v18 = &OBJC_IVAR____HMCameraSettingsControl__currentHorizontalTilt;
              if ((v22 & 1) == 0)
              {
                v23 = objc_msgSend_characteristicType(v15);
                v24 = [v23 isEqualToString:@"0000007D-0000-1000-8000-0026BB765291"];

                v18 = &OBJC_IVAR____HMCameraSettingsControl__targetVerticalTilt;
                if ((v24 & 1) == 0)
                {
                  v25 = objc_msgSend_characteristicType(v15);
                  v26 = [v25 isEqualToString:@"0000006E-0000-1000-8000-0026BB765291"];

                  v18 = &OBJC_IVAR____HMCameraSettingsControl__currentVerticalTilt;
                  if ((v26 & 1) == 0)
                  {
                    v27 = objc_msgSend_characteristicType(v15);
                    v28 = [v27 isEqualToString:@"0000011C-0000-1000-8000-0026BB765291"];

                    v18 = &OBJC_IVAR____HMCameraSettingsControl__opticalZoom;
                    if ((v28 & 1) == 0)
                    {
                      v29 = objc_msgSend_characteristicType(v15);
                      v30 = [v29 isEqualToString:@"0000011D-0000-1000-8000-0026BB765291"];

                      v18 = &OBJC_IVAR____HMCameraSettingsControl__digitalZoom;
                      if ((v30 & 1) == 0)
                      {
                        v31 = objc_msgSend_characteristicType(v15);
                        v32 = [v31 isEqualToString:@"0000011E-0000-1000-8000-0026BB765291"];

                        v18 = &OBJC_IVAR____HMCameraSettingsControl__imageRotation;
                        if ((v32 & 1) == 0)
                        {
                          v33 = objc_msgSend_characteristicType(v15);
                          v34 = [v33 isEqualToString:@"0000011F-0000-1000-8000-0026BB765291"];

                          v18 = &OBJC_IVAR____HMCameraSettingsControl__imageMirroring;
                          if (!v34)
                          {
                            continue;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          objc_storeStrong((&v9->super.super.isa + *v18), v15);
        }

        v12 = [characteristics countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }
  }

  return v9;
}

@end