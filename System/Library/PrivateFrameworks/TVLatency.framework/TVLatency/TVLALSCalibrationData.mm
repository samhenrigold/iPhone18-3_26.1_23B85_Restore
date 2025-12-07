@interface TVLALSCalibrationData
+ (id)instanceFromDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
@end

@implementation TVLALSCalibrationData

- (id)dictionaryRepresentation
{
  v32[10] = *MEMORY[0x277D85DE8];
  version = [(TVLALSCalibrationData *)self version];
  if (!version)
  {
    goto LABEL_19;
  }

  v4 = version;
  displayID = [(TVLALSCalibrationData *)self displayID];
  if (!displayID)
  {
    goto LABEL_18;
  }

  v6 = displayID;
  spectrumNom = [(TVLALSCalibrationData *)self spectrumNom];
  if (!spectrumNom)
  {
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v8 = spectrumNom;
  wavelengthStartVisible = [(TVLALSCalibrationData *)self wavelengthStartVisible];
  if (!wavelengthStartVisible)
  {
LABEL_16:

    goto LABEL_17;
  }

  v10 = wavelengthStartVisible;
  wavelengthStartNIR = [(TVLALSCalibrationData *)self wavelengthStartNIR];
  if (!wavelengthStartNIR)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = wavelengthStartNIR;
  wavelengthEnd = [(TVLALSCalibrationData *)self wavelengthEnd];
  if (!wavelengthEnd)
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = wavelengthEnd;
  wavelengthStep = [(TVLALSCalibrationData *)self wavelengthStep];
  if (!wavelengthStep)
  {

    goto LABEL_14;
  }

  v16 = wavelengthStep;
  channels = [(TVLALSCalibrationData *)self channels];

  if (channels)
  {
    v32[0] = &unk_287E0E970;
    v18 = [(TVLALSCalibrationData *)self version:@"ALS_CALIBRATION_RESERVED"];
    v32[1] = v18;
    v31[2] = @"ALS_CALIBRATION_DISPLAY_ID";
    displayID2 = [(TVLALSCalibrationData *)self displayID];
    v32[2] = displayID2;
    v31[3] = @"ALS_CALIBRATION_NCHANNELS";
    channels2 = [(TVLALSCalibrationData *)self channels];
    v32[3] = channels2;
    v31[4] = @"ALS_CALIBRATION_SPECTRUM_NOM";
    spectrumNom2 = [(TVLALSCalibrationData *)self spectrumNom];
    v32[4] = spectrumNom2;
    v31[5] = @"ALS_CALIBRATION_NARMALIZATION_FACTOR";
    normalizationFactor = [(TVLALSCalibrationData *)self normalizationFactor];
    v23 = normalizationFactor;
    if (normalizationFactor)
    {
      v24 = normalizationFactor;
    }

    else
    {
      v24 = &unk_287E0E970;
    }

    v32[5] = v24;
    v31[6] = @"ALS_CALIBRATION_WAVELENGTH_END";
    wavelengthEnd2 = [(TVLALSCalibrationData *)self wavelengthEnd];
    v32[6] = wavelengthEnd2;
    v31[7] = @"ALS_CALIBRATION_WAVELENGTH_STEP";
    wavelengthStep2 = [(TVLALSCalibrationData *)self wavelengthStep];
    v32[7] = wavelengthStep2;
    v31[8] = @"ALS_CALIBRATION_WAVELENGTH_START_NIR";
    wavelengthStartNIR2 = [(TVLALSCalibrationData *)self wavelengthStartNIR];
    v32[8] = wavelengthStartNIR2;
    v31[9] = @"ALS_CALIBRATION_WAVELENGTH_START_VISIBLE";
    wavelengthStartVisible2 = [(TVLALSCalibrationData *)self wavelengthStartVisible];
    v32[9] = wavelengthStartVisible2;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:10];

    goto LABEL_20;
  }

LABEL_19:
  v29 = MEMORY[0x277CBEC10];
LABEL_20:

  return v29;
}

+ (id)instanceFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(TVLALSCalibrationData);
  v5 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_VERSION"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_287E0E970;
  }

  [(TVLALSCalibrationData *)v4 setVersion:v7];

  v8 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_DISPLAY_ID"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &unk_287E0E970;
  }

  [(TVLALSCalibrationData *)v4 setDisplayID:v10];

  v11 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_NCHANNELS"];
  [(TVLALSCalibrationData *)v4 setChannels:v11];

  v12 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_SPECTRUM_NOM"];
  [(TVLALSCalibrationData *)v4 setSpectrumNom:v12];

  v13 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_WAVELENGTH_START_VISIBLE"];
  [(TVLALSCalibrationData *)v4 setWavelengthStartVisible:v13];

  v14 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_WAVELENGTH_START_NIR"];
  [(TVLALSCalibrationData *)v4 setWavelengthStartNIR:v14];

  v15 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_WAVELENGTH_END"];
  [(TVLALSCalibrationData *)v4 setWavelengthEnd:v15];

  v16 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_WAVELENGTH_STEP"];
  [(TVLALSCalibrationData *)v4 setWavelengthStep:v16];

  v17 = [dictionaryCopy objectForKey:@"ALS_CALIBRATION_NARMALIZATION_FACTOR"];

  [(TVLALSCalibrationData *)v4 setNormalizationFactor:v17];
  version = [(TVLALSCalibrationData *)v4 version];
  if (version)
  {
    displayID = [(TVLALSCalibrationData *)v4 displayID];
    if (displayID)
    {
      v20 = displayID;
      spectrumNom = [(TVLALSCalibrationData *)v4 spectrumNom];
      if (spectrumNom)
      {
        v22 = spectrumNom;
        wavelengthStartVisible = [(TVLALSCalibrationData *)v4 wavelengthStartVisible];
        if (wavelengthStartVisible)
        {
          v24 = wavelengthStartVisible;
          wavelengthStartNIR = [(TVLALSCalibrationData *)v4 wavelengthStartNIR];
          if (wavelengthStartNIR)
          {
            v26 = wavelengthStartNIR;
            wavelengthEnd = [(TVLALSCalibrationData *)v4 wavelengthEnd];
            if (wavelengthEnd)
            {
              v28 = wavelengthEnd;
              wavelengthStep = [(TVLALSCalibrationData *)v4 wavelengthStep];
              if (wavelengthStep)
              {
                v30 = wavelengthStep;
                channels = [(TVLALSCalibrationData *)v4 channels];

                if (channels)
                {
                  version = v4;
                  goto LABEL_23;
                }

                goto LABEL_22;
              }
            }
          }
        }
      }
    }

LABEL_22:
    version = 0;
  }

LABEL_23:

  return version;
}

@end