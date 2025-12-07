@interface _HMCameraAudioControl
- (_HMCameraAudioControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service;
@end

@implementation _HMCameraAudioControl

- (_HMCameraAudioControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v26.receiver = self;
  v26.super_class = _HMCameraAudioControl;
  v9 = [(_HMCameraControl *)&v26 initWithCameraProfile:profile profileUniqueIdentifier:identifier];
  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    characteristics = [serviceCopy characteristics];
    v11 = [characteristics countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(characteristics);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = objc_msgSend_characteristicType(v15);
          v17 = [v16 isEqualToString:@"0000011A-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraAudioControl__mute;
          if ((v17 & 1) == 0)
          {
            v19 = objc_msgSend_characteristicType(v15);
            v20 = [v19 isEqualToString:@"00000119-0000-1000-8000-0026BB765291"];

            v18 = &OBJC_IVAR____HMCameraAudioControl__volume;
            if (!v20)
            {
              continue;
            }
          }

          objc_storeStrong((&v9->super.super.isa + *v18), v15);
        }

        v12 = [characteristics countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }
  }

  return v9;
}

@end