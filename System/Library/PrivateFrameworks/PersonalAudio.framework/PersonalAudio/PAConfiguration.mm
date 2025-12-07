@interface PAConfiguration
+ (PAConfiguration)configurationWithAudiogram:(id)audiogram;
+ (PAConfiguration)configurationWithLeftMediaLoss:(id)loss rightMediaLoss:(id)mediaLoss leftSpeechLoss:(id)speechLoss andRightSpeechLoss:(id)rightSpeechLoss;
+ (PAConfiguration)configurationWithLevel:(unint64_t)level andShape:(unint64_t)shape;
+ (PAConfiguration)configurationWithMediaOffsets:(id)offsets andSpeechOffsets:(id)speechOffsets;
+ (PAConfiguration)configurationWithPreset:(id)preset andAdjustments:(id)adjustments;
+ (PAConfiguration)configurationWithRawAdjustment:(unint64_t)adjustment;
+ (id)configurationFromAudiogramSample:(id)sample;
+ (id)configurationFromType:(unint64_t)type;
+ (id)dataFromPreset:(id *)preset;
+ (id)paramDataWithValue:(float)value andOffset:(int)offset;
- ($0F930BAB90C9DC9B4982FDE0E97FE34F)transparencySettingsv4ForAddress:(id)address;
- ($582E6112602F317AA177BE214B91E8F0)readSettingsFromPreset:(id)preset;
- ($582E6112602F317AA177BE214B91E8F0)settingsFromConfiguration:(BOOL)configuration;
- ($D1907C19D6DE236B0F95485CBF7F2EE1)transparencySettingsForAddress:(id)address;
- (BOOL)isEqual:(id)equal;
- (PAConfiguration)initWithCoder:(id)coder;
- (float)pureToneAverageForSpeech:(BOOL)speech;
- (id)lossArrayFromDictionary:(id)dictionary forLeft:(BOOL)left;
- (id)onBudsMediaSettingsForRoute:(id)route;
- (id)presetDictionaryForSpeech:(BOOL)speech;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAConfiguration

+ (PAConfiguration)configurationWithPreset:(id)preset andAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  presetCopy = preset;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setPreset:presetCopy];

  [v7 setPresetAdjustments:adjustmentsCopy];

  return v7;
}

+ (id)configurationFromType:(unint64_t)type
{
  v3 = 0;
  if (type > 6)
  {
    if (type <= 8)
    {
      if (type != 7)
      {
        v4 = 2;
        goto LABEL_20;
      }

      v4 = 2;
    }

    else
    {
      if (type == 9)
      {
        v4 = 3;
        goto LABEL_22;
      }

      if (type != 10)
      {
        if (type != 11)
        {
          goto LABEL_26;
        }

        v4 = 3;
        goto LABEL_20;
      }

      v4 = 3;
    }

LABEL_24:
    v5 = 2;
    goto LABEL_25;
  }

  if (type > 3)
  {
    if (type != 4)
    {
      if (type != 5)
      {
        v4 = 2;
LABEL_22:
        v5 = 1;
        goto LABEL_25;
      }

      v4 = 1;
LABEL_20:
      v5 = 3;
LABEL_25:
      v3 = [PAConfiguration configurationWithLevel:v4 andShape:v5];
      goto LABEL_26;
    }

    v4 = 1;
    goto LABEL_24;
  }

  if (type - 1 < 2)
  {
    v3 = [PAConfiguration configurationWithRawAdjustment:?];
    goto LABEL_26;
  }

  if (type == 3)
  {
    v4 = 1;
    goto LABEL_22;
  }

LABEL_26:

  return v3;
}

+ (PAConfiguration)configurationWithLevel:(unint64_t)level andShape:(unint64_t)shape
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = paBundle(self, a2);
  shape = [MEMORY[0x277CCACA8] stringWithFormat:@"Presets_Level_%lu_Shape_%lu", level, shape];
  v8 = [v6 pathForResource:shape ofType:@"aupreset"];

  v11 = paBundle(v9, v10);
  shape2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Presets_SpeechMode_Level_%lu_Shape_%lu", level, shape];
  v13 = [v11 pathForResource:shape2 ofType:@"aupreset"];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v13];
  if ([v15 count])
  {
    v19 = @"PAPresetAdjustmentSpeechModeKey";
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

  else
  {
    v16 = 0;
  }

  if ([v14 count])
  {
    v17 = [PAConfiguration configurationWithPreset:v14 andAdjustments:v16];
    [v17 setLevel:level];
    [v17 setShape:shape];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (PAConfiguration)configurationWithRawAdjustment:(unint64_t)adjustment
{
  v4 = paBundle(self, a2);
  v5 = [v4 pathForResource:@"Presets_0_dB_gain" ofType:@"aupreset"];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v7 = [PAConfiguration configurationWithPreset:v6 andAdjustments:0];
  [v7 setLevel:0];
  [v7 setShape:adjustment];

  return v7;
}

+ (PAConfiguration)configurationWithAudiogram:(id)audiogram
{
  v9 = *MEMORY[0x277D85DE8];
  audiogramCopy = audiogram;
  if ([audiogramCopy count] == 8)
  {
    v4 = [PAConfiguration configurationWithMediaOffsets:audiogramCopy andSpeechOffsets:audiogramCopy];
  }

  else
  {
    v5 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = audiogramCopy;
      _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Skipping audiogram %@", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

+ (PAConfiguration)configurationWithMediaOffsets:(id)offsets andSpeechOffsets:(id)speechOffsets
{
  v128 = *MEMORY[0x277D85DE8];
  offsetsCopy = offsets;
  speechOffsetsCopy = speechOffsets;
  v123 = offsetsCopy;
  if ([offsetsCopy count] == 8 && objc_msgSend(speechOffsetsCopy, "count") == 8)
  {
    selfCopy = self;
    v116 = [PAConfiguration configurationWithLevel:1 andShape:1];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = paBundle(dictionary, v8);
    v10 = [v9 pathForResource:@"PresetValues" ofType:@"plist"];

    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v10];
    v12 = [v11 objectForKey:@"level"];
    stringValue = [&unk_28702BDF0 stringValue];
    v14 = [v12 objectForKey:stringValue];

    v15 = MEMORY[0x277CBEB38];
    v16 = [v14 objectForKey:@"shape"];
    [&unk_28702BDF0 stringValue];
    v17 = v121 = speechOffsetsCopy;
    v18 = [v16 objectForKey:v17];
    v19 = [v15 dictionaryWithDictionary:v18];

    v22 = paBundle(v20, v21);
    v23 = [v22 pathForResource:@"PresetValuesSpeech" ofType:@"plist"];

    v119 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v23];

    v118 = v24;
    v25 = [v24 objectForKey:@"level"];
    stringValue2 = [&unk_28702BDF0 stringValue];
    v27 = [v25 objectForKey:stringValue2];

    v28 = MEMORY[0x277CBEB38];
    v117 = v27;
    v29 = [v27 objectForKey:@"shape"];
    stringValue3 = [&unk_28702BDF0 stringValue];
    v31 = [v29 objectForKey:stringValue3];
    v32 = [v28 dictionaryWithDictionary:v31];

    speechOffsetsCopy = v121;
    v33 = v116;
    v34 = [v116 settingsFromConfiguration:0];
    v35 = [v116 settingsFromConfiguration:1];
    v36 = [PAAudiogramUtilities offsetsSortedByFrequency:v123];
    v37 = [PAAudiogramUtilities offsetsSortedByFrequency:v121];
    if (v34)
    {
      v38 = [v36 objectAtIndexedSubscript:0];
      [v38 floatValue];
      v34[32] = v39;
      *v34 = v39;

      v40 = [v36 objectAtIndexedSubscript:1];
      [v40 floatValue];
      v34[33] = v41;
      v34[1] = v41;

      v42 = [v36 objectAtIndexedSubscript:2];
      [v42 floatValue];
      v34[34] = v43;
      v34[2] = v43;

      v44 = [v36 objectAtIndexedSubscript:3];
      [v44 floatValue];
      v34[35] = v45;
      v34[3] = v45;

      v46 = [v36 objectAtIndexedSubscript:4];
      [v46 floatValue];
      v34[36] = v47;
      v34[4] = v47;

      v48 = [v36 objectAtIndexedSubscript:5];
      [v48 floatValue];
      v34[37] = v49;
      v34[5] = v49;

      v50 = [v36 objectAtIndexedSubscript:6];
      [v50 floatValue];
      v34[38] = v51;
      v34[6] = v51;

      v52 = [v36 objectAtIndexedSubscript:7];
      [v52 floatValue];
      v34[39] = v53;
      v34[7] = v53;

      v34[31] = 0;
      v54 = [v36 objectAtIndexedSubscript:0];
      [v19 setObject:v54 forKey:@"leftLoss250_dBHL"];

      v55 = [v36 objectAtIndexedSubscript:1];
      [v19 setObject:v55 forKey:@"leftLoss500_dBHL"];

      v56 = [v36 objectAtIndexedSubscript:2];
      [v19 setObject:v56 forKey:@"leftLoss1000_dBHL"];

      v57 = [v36 objectAtIndexedSubscript:3];
      [v19 setObject:v57 forKey:@"leftLoss2000_dBHL"];

      v58 = [v36 objectAtIndexedSubscript:4];
      [v19 setObject:v58 forKey:@"leftLoss3000_dBHL"];

      v59 = [v36 objectAtIndexedSubscript:5];
      [v19 setObject:v59 forKey:@"leftLoss4000_dBHL"];

      v60 = [v36 objectAtIndexedSubscript:6];
      [v19 setObject:v60 forKey:@"leftLoss6000_dBHL"];

      v61 = [v36 objectAtIndexedSubscript:7];
      [v19 setObject:v61 forKey:@"leftLoss10000_dBHL"];

      v62 = [v36 objectAtIndexedSubscript:0];
      [v19 setObject:v62 forKey:@"rightLoss250_dBHL"];

      v63 = [v36 objectAtIndexedSubscript:1];
      [v19 setObject:v63 forKey:@"rightLoss500_dBHL"];

      v64 = [v36 objectAtIndexedSubscript:2];
      [v19 setObject:v64 forKey:@"rightLoss1000_dBHL"];

      v65 = [v36 objectAtIndexedSubscript:3];
      [v19 setObject:v65 forKey:@"rightLoss2000_dBHL"];

      v66 = [v36 objectAtIndexedSubscript:4];
      [v19 setObject:v66 forKey:@"rightLoss3000_dBHL"];

      v67 = [v36 objectAtIndexedSubscript:5];
      [v19 setObject:v67 forKey:@"rightLoss4000_dBHL"];

      v68 = [v36 objectAtIndexedSubscript:6];
      [v19 setObject:v68 forKey:@"rightLoss6000_dBHL"];

      v69 = [v36 objectAtIndexedSubscript:7];
      [v19 setObject:v69 forKey:@"rightLoss10000_dBHL"];

      [dictionary setObject:v19 forKey:@"PAConfigPresetMediaKey"];
      v70 = MEMORY[0x277CBEB38];
      preset = [v116 preset];
      v72 = [v70 dictionaryWithDictionary:preset];

      v73 = [selfCopy dataFromPreset:v34];
      [v72 setValue:v73 forKey:@"data"];

      v33 = v116;
      [v116 setPreset:v72];
      free(v34);
    }

    if (v35)
    {
      v74 = [v37 objectAtIndexedSubscript:0];
      [v74 floatValue];
      v35[32] = v75;
      *v35 = v75;

      v76 = [v37 objectAtIndexedSubscript:1];
      [v76 floatValue];
      v35[33] = v77;
      v35[1] = v77;

      v78 = [v37 objectAtIndexedSubscript:2];
      [v78 floatValue];
      v35[34] = v79;
      v35[2] = v79;

      v80 = [v37 objectAtIndexedSubscript:3];
      [v80 floatValue];
      v35[35] = v81;
      v35[3] = v81;

      v82 = [v37 objectAtIndexedSubscript:4];
      [v82 floatValue];
      v35[36] = v83;
      v35[4] = v83;

      v84 = [v37 objectAtIndexedSubscript:5];
      [v84 floatValue];
      v35[37] = v85;
      v35[5] = v85;

      v86 = [v37 objectAtIndexedSubscript:6];
      [v86 floatValue];
      v35[38] = v87;
      v35[6] = v87;

      v88 = [v37 objectAtIndexedSubscript:7];
      [v88 floatValue];
      v35[39] = v89;
      v35[7] = v89;

      v35[31] = 0;
      v90 = [v37 objectAtIndexedSubscript:0];
      [v32 setObject:v90 forKey:@"leftLoss250_dBHL"];

      v91 = [v37 objectAtIndexedSubscript:1];
      [v32 setObject:v91 forKey:@"leftLoss500_dBHL"];

      v92 = [v37 objectAtIndexedSubscript:2];
      [v32 setObject:v92 forKey:@"leftLoss1000_dBHL"];

      v93 = [v37 objectAtIndexedSubscript:3];
      [v32 setObject:v93 forKey:@"leftLoss2000_dBHL"];

      v94 = [v37 objectAtIndexedSubscript:4];
      [v32 setObject:v94 forKey:@"leftLoss3000_dBHL"];

      v95 = [v37 objectAtIndexedSubscript:5];
      [v32 setObject:v95 forKey:@"leftLoss4000_dBHL"];

      v96 = [v37 objectAtIndexedSubscript:6];
      [v32 setObject:v96 forKey:@"leftLoss6000_dBHL"];

      v97 = [v37 objectAtIndexedSubscript:7];
      [v32 setObject:v97 forKey:@"leftLoss10000_dBHL"];

      v98 = [v37 objectAtIndexedSubscript:0];
      [v32 setObject:v98 forKey:@"rightLoss250_dBHL"];

      v99 = [v37 objectAtIndexedSubscript:1];
      [v32 setObject:v99 forKey:@"rightLoss500_dBHL"];

      v100 = [v37 objectAtIndexedSubscript:2];
      [v32 setObject:v100 forKey:@"rightLoss1000_dBHL"];

      v101 = [v37 objectAtIndexedSubscript:3];
      [v32 setObject:v101 forKey:@"rightLoss2000_dBHL"];

      v102 = [v37 objectAtIndexedSubscript:4];
      [v32 setObject:v102 forKey:@"rightLoss3000_dBHL"];

      v103 = [v37 objectAtIndexedSubscript:5];
      [v32 setObject:v103 forKey:@"rightLoss4000_dBHL"];

      v104 = [v37 objectAtIndexedSubscript:6];
      [v32 setObject:v104 forKey:@"rightLoss6000_dBHL"];

      v105 = [v37 objectAtIndexedSubscript:7];
      [v32 setObject:v105 forKey:@"rightLoss10000_dBHL"];

      [dictionary setObject:v32 forKey:@"PAConfigPresetSpeechKey"];
      v106 = MEMORY[0x277CBEB38];
      [v33 presetAdjustments];
      v107 = v19;
      v109 = v108 = v33;
      v110 = [v109 valueForKey:@"PAPresetAdjustmentSpeechModeKey"];
      v111 = [v106 dictionaryWithDictionary:v110];

      v112 = [selfCopy dataFromPreset:v35];
      [v111 setValue:v112 forKey:@"data"];

      speechOffsetsCopy = v121;
      v113 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v111 forKey:@"PAPresetAdjustmentSpeechModeKey"];
      [v108 setPresetAdjustments:v113];

      v33 = v108;
      v19 = v107;
      free(v35);
    }

    [v33 setAudiogramSettings:dictionary];
    [v33 setShape:12];
    [v33 setLevel:12];
  }

  else
  {
    v114 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v125 = offsetsCopy;
      v126 = 2112;
      v127 = speechOffsetsCopy;
      _os_log_impl(&dword_25E445000, v114, OS_LOG_TYPE_DEFAULT, "Skipping offsets %@ - %@", buf, 0x16u);
    }

    v33 = 0;
  }

  return v33;
}

+ (PAConfiguration)configurationWithLeftMediaLoss:(id)loss rightMediaLoss:(id)mediaLoss leftSpeechLoss:(id)speechLoss andRightSpeechLoss:(id)rightSpeechLoss
{
  v194 = *MEMORY[0x277D85DE8];
  lossCopy = loss;
  mediaLossCopy = mediaLoss;
  speechLossCopy = speechLoss;
  rightSpeechLossCopy = rightSpeechLoss;
  if ([lossCopy count] < 8 || objc_msgSend(mediaLossCopy, "count") < 8 || objc_msgSend(speechLossCopy, "count") < 8 || objc_msgSend(rightSpeechLossCopy, "count") < 8)
  {
    dictionary = HCLogAudioAccommodations();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *v188 = [lossCopy count];
      *&v188[8] = 2048;
      v189 = [mediaLossCopy count];
      v190 = 2048;
      v191 = [speechLossCopy count];
      v192 = 2048;
      v193 = [rightSpeechLossCopy count];
      _os_log_impl(&dword_25E445000, dictionary, OS_LOG_TYPE_DEFAULT, "Missing coefficients [%lu, %lu, %lu, %lu]", buf, 0x2Au);
    }

    v15 = 0;
    goto LABEL_8;
  }

  selfCopy = self;
  v178 = mediaLossCopy;
  v179 = rightSpeechLossCopy;
  v180 = speechLossCopy;
  v183 = 0;
  v17 = 1;
  v18 = 0x279A1C000uLL;
  v182 = lossCopy;
  do
  {
    for (i = 1; i != 4; ++i)
    {
      v20 = [*(v18 + 3648) configurationWithLevel:v17 andShape:i];
      v21 = [v20 settingsFromConfiguration:0];

      if (!v21)
      {
        continue;
      }

      v22 = [lossCopy objectAtIndexedSubscript:0];
      [v22 floatValue];
      if (v23 != *v21)
      {
        goto LABEL_29;
      }

      v24 = [lossCopy objectAtIndexedSubscript:1];
      [v24 floatValue];
      if (v25 != v21[1])
      {
        goto LABEL_28;
      }

      v26 = [lossCopy objectAtIndexedSubscript:2];
      [v26 floatValue];
      if (v27 != v21[2])
      {
        goto LABEL_27;
      }

      v28 = [lossCopy objectAtIndexedSubscript:3];
      [v28 floatValue];
      if (v29 != v21[3])
      {

LABEL_27:
LABEL_28:

        goto LABEL_29;
      }

      v30 = [lossCopy objectAtIndexedSubscript:4];
      [v30 floatValue];
      if (v31 != v21[4])
      {

        goto LABEL_36;
      }

      [lossCopy objectAtIndexedSubscript:5];
      v33 = v32 = lossCopy;
      [v33 floatValue];
      if (v34 != v21[5])
      {
        goto LABEL_35;
      }

      v185 = [v32 objectAtIndexedSubscript:6];
      [v185 floatValue];
      if (v35 != v21[6])
      {

LABEL_35:
        lossCopy = v32;
LABEL_36:
        v18 = 0x279A1C000;
        goto LABEL_29;
      }

      v36 = [v32 objectAtIndexedSubscript:7];
      [v36 floatValue];
      v38 = v37;
      v39 = v21[7];

      if (v38 != v39)
      {
        lossCopy = v182;
        v18 = 0x279A1C000;
        goto LABEL_30;
      }

      v40 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v188 = v17;
        *&v188[4] = 1024;
        *&v188[6] = i;
        _os_log_impl(&dword_25E445000, v40, OS_LOG_TYPE_DEFAULT, "Loss matches preset [%d, %d]", buf, 0xEu);
      }

      v18 = 0x279A1C000uLL;
      [PAConfiguration configurationWithLevel:v17 andShape:i];
      lossCopy = v182;
      v183 = v22 = v183;
LABEL_29:

LABEL_30:
      free(v21);
    }

    ++v17;
  }

  while (v17 != 4);
  mediaLossCopy = v178;
  rightSpeechLossCopy = v179;
  speechLossCopy = v180;
  v15 = v183;
  if (!v183)
  {
    v184 = [*(v18 + 3648) configurationWithLevel:1 andShape:2];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v42 = paBundle(dictionary, v41);
    v43 = [v42 pathForResource:@"PresetValues" ofType:@"plist"];

    v44 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v43];
    v45 = [v44 objectForKey:@"level"];
    stringValue = [&unk_28702BDF0 stringValue];
    v47 = [v45 objectForKey:stringValue];

    v48 = MEMORY[0x277CBEB38];
    [v47 objectForKey:@"shape"];
    v50 = v49 = lossCopy;
    stringValue2 = [&unk_28702BDF0 stringValue];
    v52 = [v50 objectForKey:stringValue2];
    v175 = [v48 dictionaryWithDictionary:v52];

    mediaLossCopy = v178;
    lossCopy = v49;
    v55 = paBundle(v53, v54);
    v56 = [v55 pathForResource:@"PresetValuesSpeech" ofType:@"plist"];

    v186 = v56;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v56];

    v181 = v57;
    v58 = [v57 objectForKey:@"level"];
    stringValue3 = [&unk_28702BDF0 stringValue];
    v60 = [v58 objectForKey:stringValue3];

    v61 = MEMORY[0x277CBEB38];
    v176 = v60;
    v62 = [v60 objectForKey:@"shape"];
    stringValue4 = [&unk_28702BDF0 stringValue];
    v64 = [v62 objectForKey:stringValue4];
    v65 = [v61 dictionaryWithDictionary:v64];

    v66 = v175;
    v15 = v184;

    v67 = [v184 settingsFromConfiguration:0];
    v68 = [v184 settingsFromConfiguration:1];
    if (v67)
    {
      v69 = [lossCopy objectAtIndexedSubscript:0];
      [v69 floatValue];
      *v67 = v70;

      v71 = [lossCopy objectAtIndexedSubscript:1];
      [v71 floatValue];
      v67[1] = v72;

      v73 = [lossCopy objectAtIndexedSubscript:2];
      [v73 floatValue];
      v67[2] = v74;

      v75 = [lossCopy objectAtIndexedSubscript:3];
      [v75 floatValue];
      v67[3] = v76;

      v77 = [lossCopy objectAtIndexedSubscript:4];
      [v77 floatValue];
      v67[4] = v78;

      v79 = [lossCopy objectAtIndexedSubscript:5];
      [v79 floatValue];
      v67[5] = v80;

      v81 = [lossCopy objectAtIndexedSubscript:6];
      [v81 floatValue];
      v67[6] = v82;

      v83 = [lossCopy objectAtIndexedSubscript:7];
      [v83 floatValue];
      v67[7] = v84;

      v85 = [v178 objectAtIndexedSubscript:0];
      [v85 floatValue];
      v67[32] = v86;

      v87 = [v178 objectAtIndexedSubscript:1];
      [v87 floatValue];
      v67[33] = v88;

      v89 = [v178 objectAtIndexedSubscript:2];
      [v89 floatValue];
      v67[34] = v90;

      v91 = [v178 objectAtIndexedSubscript:3];
      [v91 floatValue];
      v67[35] = v92;

      v93 = [v178 objectAtIndexedSubscript:4];
      [v93 floatValue];
      v67[36] = v94;

      v95 = [v178 objectAtIndexedSubscript:5];
      [v95 floatValue];
      v67[37] = v96;

      v97 = [v178 objectAtIndexedSubscript:6];
      [v97 floatValue];
      v67[38] = v98;

      v99 = [v178 objectAtIndexedSubscript:7];
      [v99 floatValue];
      v67[39] = v100;

      v101 = [lossCopy objectAtIndexedSubscript:0];
      [v175 setObject:v101 forKey:@"leftLoss250_dBHL"];

      v102 = [lossCopy objectAtIndexedSubscript:1];
      [v175 setObject:v102 forKey:@"leftLoss500_dBHL"];

      v103 = [lossCopy objectAtIndexedSubscript:2];
      [v175 setObject:v103 forKey:@"leftLoss1000_dBHL"];

      v104 = [lossCopy objectAtIndexedSubscript:3];
      [v175 setObject:v104 forKey:@"leftLoss2000_dBHL"];

      v105 = [lossCopy objectAtIndexedSubscript:4];
      [v175 setObject:v105 forKey:@"leftLoss3000_dBHL"];

      v106 = [lossCopy objectAtIndexedSubscript:5];
      [v175 setObject:v106 forKey:@"leftLoss4000_dBHL"];

      v107 = [lossCopy objectAtIndexedSubscript:6];
      [v175 setObject:v107 forKey:@"leftLoss6000_dBHL"];

      v108 = [lossCopy objectAtIndexedSubscript:7];
      [v175 setObject:v108 forKey:@"leftLoss10000_dBHL"];

      v109 = [v178 objectAtIndexedSubscript:0];
      [v175 setObject:v109 forKey:@"rightLoss250_dBHL"];

      v110 = [v178 objectAtIndexedSubscript:1];
      [v175 setObject:v110 forKey:@"rightLoss500_dBHL"];

      v111 = [v178 objectAtIndexedSubscript:2];
      [v175 setObject:v111 forKey:@"rightLoss1000_dBHL"];

      v112 = [v178 objectAtIndexedSubscript:3];
      [v175 setObject:v112 forKey:@"rightLoss2000_dBHL"];

      v113 = [v178 objectAtIndexedSubscript:4];
      [v175 setObject:v113 forKey:@"rightLoss3000_dBHL"];

      v114 = [v178 objectAtIndexedSubscript:5];
      [v175 setObject:v114 forKey:@"rightLoss4000_dBHL"];

      v115 = [v178 objectAtIndexedSubscript:6];
      [v175 setObject:v115 forKey:@"rightLoss6000_dBHL"];

      v116 = [v178 objectAtIndexedSubscript:7];
      [v175 setObject:v116 forKey:@"rightLoss10000_dBHL"];

      [dictionary setObject:v175 forKey:@"PAConfigPresetMediaKey"];
      [dictionary setObject:lossCopy forKey:@"PAConfigLeftMediaKey"];
      [dictionary setObject:v178 forKey:@"PAConfigRightMediaKey"];
      v117 = MEMORY[0x277CBEB38];
      preset = [v184 preset];
      v119 = [v117 dictionaryWithDictionary:preset];

      v120 = [selfCopy dataFromPreset:v67];
      [v119 setValue:v120 forKey:@"data"];

      [v184 setPreset:v119];
      free(v67);
    }

    if (v68)
    {
      v121 = [v180 objectAtIndexedSubscript:0];
      [v121 floatValue];
      *v68 = v122;

      v123 = [v180 objectAtIndexedSubscript:1];
      [v123 floatValue];
      v68[1] = v124;

      v125 = [v180 objectAtIndexedSubscript:2];
      [v125 floatValue];
      v68[2] = v126;

      v127 = [v180 objectAtIndexedSubscript:3];
      [v127 floatValue];
      v68[3] = v128;

      v129 = [v180 objectAtIndexedSubscript:4];
      [v129 floatValue];
      v68[4] = v130;

      v131 = [v180 objectAtIndexedSubscript:5];
      [v131 floatValue];
      v68[5] = v132;

      v133 = [v180 objectAtIndexedSubscript:6];
      [v133 floatValue];
      v68[6] = v134;

      v135 = [v180 objectAtIndexedSubscript:7];
      [v135 floatValue];
      v68[7] = v136;

      v137 = [v179 objectAtIndexedSubscript:0];
      [v137 floatValue];
      v68[32] = v138;

      v139 = [v179 objectAtIndexedSubscript:1];
      [v139 floatValue];
      v68[33] = v140;

      v141 = [v179 objectAtIndexedSubscript:2];
      [v141 floatValue];
      v68[34] = v142;

      v143 = [v179 objectAtIndexedSubscript:3];
      [v143 floatValue];
      v68[35] = v144;

      v145 = [v179 objectAtIndexedSubscript:4];
      [v145 floatValue];
      v68[36] = v146;

      v147 = [v179 objectAtIndexedSubscript:5];
      [v147 floatValue];
      v68[37] = v148;

      v149 = [v179 objectAtIndexedSubscript:6];
      [v149 floatValue];
      v68[38] = v150;

      v151 = [v179 objectAtIndexedSubscript:7];
      [v151 floatValue];
      v68[39] = v152;

      v153 = [v180 objectAtIndexedSubscript:0];
      [v65 setObject:v153 forKey:@"leftLoss250_dBHL"];

      v154 = [v180 objectAtIndexedSubscript:1];
      [v65 setObject:v154 forKey:@"leftLoss500_dBHL"];

      v155 = [v180 objectAtIndexedSubscript:2];
      [v65 setObject:v155 forKey:@"leftLoss1000_dBHL"];

      v156 = [v180 objectAtIndexedSubscript:3];
      [v65 setObject:v156 forKey:@"leftLoss2000_dBHL"];

      v157 = [v180 objectAtIndexedSubscript:4];
      [v65 setObject:v157 forKey:@"leftLoss3000_dBHL"];

      v158 = [v180 objectAtIndexedSubscript:5];
      [v65 setObject:v158 forKey:@"leftLoss4000_dBHL"];

      v159 = [v180 objectAtIndexedSubscript:6];
      [v65 setObject:v159 forKey:@"leftLoss6000_dBHL"];

      v160 = [v180 objectAtIndexedSubscript:7];
      [v65 setObject:v160 forKey:@"leftLoss10000_dBHL"];

      v161 = [v179 objectAtIndexedSubscript:0];
      [v65 setObject:v161 forKey:@"rightLoss250_dBHL"];

      v162 = [v179 objectAtIndexedSubscript:1];
      [v65 setObject:v162 forKey:@"rightLoss500_dBHL"];

      v163 = [v179 objectAtIndexedSubscript:2];
      [v65 setObject:v163 forKey:@"rightLoss1000_dBHL"];

      v164 = [v179 objectAtIndexedSubscript:3];
      [v65 setObject:v164 forKey:@"rightLoss2000_dBHL"];

      v165 = [v179 objectAtIndexedSubscript:4];
      [v65 setObject:v165 forKey:@"rightLoss3000_dBHL"];

      v166 = [v179 objectAtIndexedSubscript:5];
      [v65 setObject:v166 forKey:@"rightLoss4000_dBHL"];

      v167 = [v179 objectAtIndexedSubscript:6];
      [v65 setObject:v167 forKey:@"rightLoss6000_dBHL"];

      v168 = [v179 objectAtIndexedSubscript:7];
      [v65 setObject:v168 forKey:@"rightLoss10000_dBHL"];

      [dictionary setObject:v65 forKey:@"PAConfigPresetSpeechKey"];
      [dictionary setObject:v180 forKey:@"PAConfigLeftSpeechKey"];
      [dictionary setObject:v179 forKey:@"PAConfigRightSpeechKey"];
      v169 = MEMORY[0x277CBEB38];
      presetAdjustments = [v184 presetAdjustments];
      v171 = [presetAdjustments valueForKey:@"PAPresetAdjustmentSpeechModeKey"];
      v172 = [v169 dictionaryWithDictionary:v171];

      v66 = v175;
      v173 = [selfCopy dataFromPreset:v68];
      [v172 setValue:v173 forKey:@"data"];

      v15 = v184;
      v174 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v172 forKey:@"PAPresetAdjustmentSpeechModeKey"];
      [v184 setPresetAdjustments:v174];

      free(v68);
    }

    [v15 setAudiogramSettings:{dictionary, v175}];
    [v15 setShape:12];
    [v15 setLevel:12];

    rightSpeechLossCopy = v179;
    speechLossCopy = v180;
LABEL_8:
  }

  return v15;
}

+ (id)configurationFromAudiogramSample:(id)sample
{
  v3 = [PAAudiogramUtilities normalizedOffsetsFromAudiogram:sample];
  v4 = [PAConfiguration configurationWithAudiogram:v3];

  return v4;
}

+ (id)paramDataWithValue:(float)value andOffset:(int)offset
{
  v6[0] = bswap32(offset >> 2);
  v6[1] = bswap32(LODWORD(value));
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:8];

  return v4;
}

+ (id)dataFromPreset:(id *)preset
{
  data = [MEMORY[0x277CBEB28] data];
  v6 = data;
  *&v7 = preset->var0;
  if (preset->var0 == preset->var32 && (*&v7 = preset->var1, *&v7 == preset->var33) && (*&v7 = preset->var2, *&v7 == preset->var34) && (*&v7 = preset->var3, *&v7 == preset->var35) && (*&v7 = preset->var4, *&v7 == preset->var36) && (*&v7 = preset->var5, *&v7 == preset->var37) && (*&v7 = preset->var6, *&v7 == preset->var38))
  {
    *&v7 = preset->var7;
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v90 = 0;
  v91 = 671088640;
  [data appendBytes:&v90 length:{12, v7}];
  *&v9 = preset->var0;
  v10 = [self paramDataWithValue:0 andOffset:v9];
  [v6 appendData:v10];

  *&v11 = preset->var1;
  v12 = [self paramDataWithValue:4 andOffset:v11];
  [v6 appendData:v12];

  *&v13 = preset->var2;
  v14 = [self paramDataWithValue:8 andOffset:v13];
  [v6 appendData:v14];

  *&v15 = preset->var3;
  v16 = [self paramDataWithValue:12 andOffset:v15];
  [v6 appendData:v16];

  *&v17 = preset->var4;
  v18 = [self paramDataWithValue:16 andOffset:v17];
  [v6 appendData:v18];

  *&v19 = preset->var5;
  v20 = [self paramDataWithValue:20 andOffset:v19];
  [v6 appendData:v20];

  *&v21 = preset->var6;
  v22 = [self paramDataWithValue:24 andOffset:v21];
  [v6 appendData:v22];

  *&v23 = preset->var7;
  v24 = [self paramDataWithValue:28 andOffset:v23];
  [v6 appendData:v24];

  *&v25 = preset->var8;
  v26 = [self paramDataWithValue:32 andOffset:v25];
  [v6 appendData:v26];

  *&v27 = preset->var9;
  v28 = [self paramDataWithValue:36 andOffset:v27];
  [v6 appendData:v28];

  *&v29 = preset->var10;
  v30 = [self paramDataWithValue:40 andOffset:v29];
  [v6 appendData:v30];

  *&v31 = preset->var11;
  v32 = [self paramDataWithValue:44 andOffset:v31];
  [v6 appendData:v32];

  *&v33 = preset->var12;
  v34 = [self paramDataWithValue:48 andOffset:v33];
  [v6 appendData:v34];

  *&v35 = preset->var13;
  v36 = [self paramDataWithValue:52 andOffset:v35];
  [v6 appendData:v36];

  *&v37 = preset->var14;
  v38 = [self paramDataWithValue:56 andOffset:v37];
  [v6 appendData:v38];

  *&v39 = preset->var15;
  v40 = [self paramDataWithValue:60 andOffset:v39];
  [v6 appendData:v40];

  *&v41 = preset->var16;
  v42 = [self paramDataWithValue:64 andOffset:v41];
  [v6 appendData:v42];

  *&v43 = preset->var17;
  v44 = [self paramDataWithValue:68 andOffset:v43];
  [v6 appendData:v44];

  *&v45 = preset->var18;
  v46 = [self paramDataWithValue:72 andOffset:v45];
  [v6 appendData:v46];

  *&v47 = preset->var19;
  v48 = [self paramDataWithValue:76 andOffset:v47];
  [v6 appendData:v48];

  *&v49 = preset->var20;
  v50 = [self paramDataWithValue:80 andOffset:v49];
  [v6 appendData:v50];

  *&v51 = preset->var21;
  v52 = [self paramDataWithValue:84 andOffset:v51];
  [v6 appendData:v52];

  *&v53 = preset->var22;
  v54 = [self paramDataWithValue:88 andOffset:v53];
  [v6 appendData:v54];

  *&v55 = preset->var23;
  v56 = [self paramDataWithValue:92 andOffset:v55];
  [v6 appendData:v56];

  *&v57 = preset->var24;
  v58 = [self paramDataWithValue:96 andOffset:v57];
  [v6 appendData:v58];

  *&v59 = preset->var25;
  v60 = [self paramDataWithValue:100 andOffset:v59];
  [v6 appendData:v60];

  *&v61 = preset->var26;
  v62 = [self paramDataWithValue:104 andOffset:v61];
  [v6 appendData:v62];

  *&v63 = preset->var27;
  v64 = [self paramDataWithValue:108 andOffset:v63];
  [v6 appendData:v64];

  *&v65 = preset->var28;
  v66 = [self paramDataWithValue:112 andOffset:v65];
  [v6 appendData:v66];

  *&v67 = preset->var29;
  v68 = [self paramDataWithValue:116 andOffset:v67];
  [v6 appendData:v68];

  *&v69 = preset->var30;
  v70 = [self paramDataWithValue:120 andOffset:v69];
  [v6 appendData:v70];

  *&v71 = v8;
  v72 = [self paramDataWithValue:124 andOffset:v71];
  [v6 appendData:v72];

  *&v73 = preset->var32;
  v74 = [self paramDataWithValue:128 andOffset:v73];
  [v6 appendData:v74];

  *&v75 = preset->var33;
  v76 = [self paramDataWithValue:132 andOffset:v75];
  [v6 appendData:v76];

  *&v77 = preset->var34;
  v78 = [self paramDataWithValue:136 andOffset:v77];
  [v6 appendData:v78];

  *&v79 = preset->var35;
  v80 = [self paramDataWithValue:140 andOffset:v79];
  [v6 appendData:v80];

  *&v81 = preset->var36;
  v82 = [self paramDataWithValue:144 andOffset:v81];
  [v6 appendData:v82];

  *&v83 = preset->var37;
  v84 = [self paramDataWithValue:148 andOffset:v83];
  [v6 appendData:v84];

  *&v85 = preset->var38;
  v86 = [self paramDataWithValue:152 andOffset:v85];
  [v6 appendData:v86];

  *&v87 = preset->var39;
  v88 = [self paramDataWithValue:156 andOffset:v87];
  [v6 appendData:v88];

  return v6;
}

- (PAConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = PAConfiguration;
  v5 = [(PAConfiguration *)&v25 init];
  if (v5)
  {
    -[PAConfiguration setLevel:](v5, "setLevel:", [coderCopy decodeIntegerForKey:@"PAConfigPresetLevelKey"]);
    -[PAConfiguration setShape:](v5, "setShape:", [coderCopy decodeIntegerForKey:@"PAConfigPresetShapeKey"]);
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v24 = 0;
    v13 = [coderCopy decodeTopLevelObjectOfClasses:v12 forKey:@"PAConfigPresetKey" error:&v24];
    v14 = v24;
    [(PAConfiguration *)v5 setPreset:v13];

    if (v14 && [v14 code] != 4865)
    {
      v15 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PAConfiguration initWithCoder:];
      }
    }

    v23 = 0;
    v16 = [coderCopy decodeTopLevelObjectOfClasses:v12 forKey:@"PAConfigPresetAdjustmentsKey" error:&v23];
    v17 = v23;
    [(PAConfiguration *)v5 setPresetAdjustments:v16];

    if (v17 && [v17 code] != 4865)
    {
      v18 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PAConfiguration initWithCoder:];
      }
    }

    if ([coderCopy containsValueForKey:@"PAConfigPresetAudiogramKey"])
    {

      v22 = 0;
      v19 = [coderCopy decodeTopLevelObjectOfClasses:v12 forKey:@"PAConfigPresetAudiogramKey" error:&v22];
      v17 = v22;
      [(PAConfiguration *)v5 setAudiogramSettings:v19];

      if (v17)
      {
        v20 = HCLogAudioAccommodations();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PAConfiguration initWithCoder:];
        }
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_level forKey:@"PAConfigPresetLevelKey"];
  [coderCopy encodeInteger:self->_shape forKey:@"PAConfigPresetShapeKey"];
  preset = [(PAConfiguration *)self preset];
  [coderCopy encodeObject:preset forKey:@"PAConfigPresetKey"];

  presetAdjustments = [(PAConfiguration *)self presetAdjustments];
  [coderCopy encodeObject:presetAdjustments forKey:@"PAConfigPresetAdjustmentsKey"];

  audiogramSettings = [(PAConfiguration *)self audiogramSettings];
  v7 = [audiogramSettings count];

  if (v7)
  {
    audiogramSettings2 = [(PAConfiguration *)self audiogramSettings];
    [coderCopy encodeObject:audiogramSettings2 forKey:@"PAConfigPresetAudiogramKey"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    preset = [(PAConfiguration *)self preset];
    preset2 = [v5 preset];
    if ([preset isEqualToDictionary:preset2])
    {
      presetAdjustments = [(PAConfiguration *)self presetAdjustments];
      presetAdjustments2 = [v5 presetAdjustments];
      v10 = [presetAdjustments isEqualToDictionary:presetAdjustments2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)presetDictionaryForSpeech:(BOOL)speech
{
  level = self->_level;
  if (level)
  {
    speechCopy = speech;
    if (level == 12)
    {
      audiogramSettings = [(PAConfiguration *)self audiogramSettings];
      v7 = audiogramSettings;
      if (speechCopy)
      {
        v8 = @"PAConfigPresetSpeechKey";
      }

      else
      {
        v8 = @"PAConfigPresetMediaKey";
      }

      dictionary = [audiogramSettings objectForKey:v8];
    }

    else
    {
      v26 = @"PresetValues";
      if (speech)
      {
        v26 = @"PresetValuesSpeech";
      }

      v27 = v26;
      v29 = paBundle(v27, v28);
      v7 = [v29 pathForResource:v27 ofType:@"plist"];

      v30 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v7];
      v31 = [v30 objectForKey:@"level"];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAConfiguration level](self, "level")}];
      stringValue = [v32 stringValue];
      v34 = [v31 objectForKey:stringValue];

      v35 = [v34 objectForKey:@"shape"];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAConfiguration shape](self, "shape")}];
      stringValue2 = [v36 stringValue];
      dictionary = [v35 objectForKey:stringValue2];
    }
  }

  else
  {
    if (self->_shape == 2)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 0.0;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v11 forKey:@"leftLoss250_dBHL"];

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v12 forKey:@"leftLoss500_dBHL"];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v13 forKey:@"leftLoss1000_dBHL"];

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v14 forKey:@"leftLoss2000_dBHL"];

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v15 forKey:@"leftLoss3000_dBHL"];

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v16 forKey:@"leftLoss4000_dBHL"];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v17 forKey:@"leftLoss6000_dBHL"];

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v18 forKey:@"leftLoss10000_dBHL"];

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v19 forKey:@"rightLoss250_dBHL"];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v20 forKey:@"rightLoss500_dBHL"];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v21 forKey:@"rightLoss1000_dBHL"];

    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v22 forKey:@"rightLoss2000_dBHL"];

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v23 forKey:@"rightLoss3000_dBHL"];

    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v24 forKey:@"rightLoss4000_dBHL"];

    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v25 forKey:@"rightLoss6000_dBHL"];

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [dictionary setObject:v7 forKey:@"rightLoss10000_dBHL"];
  }

  return dictionary;
}

- ($582E6112602F317AA177BE214B91E8F0)settingsFromConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v109 = *MEMORY[0x277D85DE8];
  v4 = [(PAConfiguration *)self presetDictionaryForSpeech:?];
  v5 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 objectForKey:@"leftLoss250_dBHL"];
    v7 = [v4 objectForKey:@"rightLoss250_dBHL"];
    v105 = 138412546;
    v106 = v6;
    v107 = 2112;
    v108 = v7;
    _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Preset values (first band) {%@, %@}", &v105, 0x16u);
  }

  v8 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PAConfiguration settingsFromConfiguration:];
  }

  if ([v4 count] && objc_msgSend(v4, "count") != 40)
  {
    v10 = [PAConfiguration configurationWithLevel:1 andShape:1];
    v11 = [v10 presetDictionaryForSpeech:configurationCopy];
    v9 = [v11 mutableCopy];

    [v9 addEntriesFromDictionary:v4];
    [v9 removeObjectsForKeys:&unk_28702BE20];
    v12 = [v4 objectForKey:@"loss_01_dBHL"];
    if (v12)
    {
      [v9 setObject:v12 forKey:@"leftLoss250_dBHL"];
      [v9 setObject:v12 forKey:@"rightLoss250_dBHL"];
    }

    v13 = [v4 objectForKey:@"loss_02_dBHL"];

    if (v13)
    {
      [v9 setObject:v13 forKey:@"leftLoss500_dBHL"];
      [v9 setObject:v13 forKey:@"rightLoss500_dBHL"];
    }

    v14 = [v4 objectForKey:@"loss_03_dBHL"];

    if (v14)
    {
      [v9 setObject:v14 forKey:@"leftLoss1000_dBHL"];
      [v9 setObject:v14 forKey:@"rightLoss1000_dBHL"];
    }

    v15 = [v4 objectForKey:@"loss_04_dBHL"];

    if (v15)
    {
      [v9 setObject:v15 forKey:@"leftLoss2000_dBHL"];
      [v9 setObject:v15 forKey:@"rightLoss2000_dBHL"];
    }

    v16 = [v4 objectForKey:@"loss_05_dBHL"];

    if (v16)
    {
      [v9 setObject:v16 forKey:@"leftLoss3000_dBHL"];
      [v9 setObject:v16 forKey:@"rightLoss3000_dBHL"];
    }

    v17 = [v4 objectForKey:@"loss_06_dBHL"];

    if (v17)
    {
      [v9 setObject:v17 forKey:@"leftLoss4000_dBHL"];
      [v9 setObject:v17 forKey:@"rightLoss4000_dBHL"];
    }

    v18 = [v4 objectForKey:@"loss_07_dBHL"];

    if (v18)
    {
      [v9 setObject:v18 forKey:@"leftLoss6000_dBHL"];
      [v9 setObject:v18 forKey:@"rightLoss6000_dBHL"];
    }

    v19 = [v4 objectForKey:@"loss_08_dBHL"];

    if (v19)
    {
      [v9 setObject:v19 forKey:@"leftLoss10000_dBHL"];
      [v9 setObject:v19 forKey:@"rightLoss10000_dBHL"];
    }

    v20 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v9 allKeys];
      v105 = 138412290;
      v106 = allKeys;
      _os_log_impl(&dword_25E445000, v20, OS_LOG_TYPE_DEFAULT, "Preset dictionary was missing information %@", &v105, 0xCu);
    }
  }

  else
  {
    v9 = v4;
  }

  if ([v9 count] == 40)
  {
    v22 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1000040B8406A4EuLL);
    v23 = [v9 objectForKey:@"leftLoss250_dBHL"];
    [v23 floatValue];
    v22->var0 = v24;

    v25 = [v9 objectForKey:@"leftLoss500_dBHL"];
    [v25 floatValue];
    v22->var1 = v26;

    v27 = [v9 objectForKey:@"leftLoss1000_dBHL"];
    [v27 floatValue];
    v22->var2 = v28;

    v29 = [v9 objectForKey:@"leftLoss2000_dBHL"];
    [v29 floatValue];
    v22->var3 = v30;

    v31 = [v9 objectForKey:@"leftLoss3000_dBHL"];
    [v31 floatValue];
    v22->var4 = v32;

    v33 = [v9 objectForKey:@"leftLoss4000_dBHL"];
    [v33 floatValue];
    v22->var5 = v34;

    v35 = [v9 objectForKey:@"leftLoss6000_dBHL"];
    [v35 floatValue];
    v22->var6 = v36;

    v37 = [v9 objectForKey:@"leftLoss10000_dBHL"];
    [v37 floatValue];
    v22->var7 = v38;

    v39 = [v9 objectForKey:@"maxFdcGain_dB"];
    [v39 floatValue];
    v22->var8 = v40;

    v41 = [v9 objectForKey:@"minFdcGain_dB"];
    [v41 floatValue];
    v22->var9 = v42;

    v43 = [v9 objectForKey:@"attackTime_ms"];
    [v43 floatValue];
    v22->var10 = v44;

    v45 = [v9 objectForKey:@"releaseTime_ms"];
    [v45 floatValue];
    v22->var11 = v46;

    v47 = [v9 objectForKey:@"fdcInputSmoothingTime_ms"];
    [v47 floatValue];
    v22->var12 = v48;

    v49 = [v9 objectForKey:@"fineTuningGainBias_dB"];
    [v49 floatValue];
    v22->var13 = v50;

    v51 = [v9 objectForKey:@"fineTuningBrightnessAdjust_dB"];
    [v51 floatValue];
    v22->var14 = v52;

    v53 = [v9 objectForKey:@"fineTuningRatioAdjust"];
    [v53 floatValue];
    v22->var15 = v54;

    v55 = [v9 objectForKey:@"fineTuningSplBias_dB"];
    [v55 floatValue];
    v22->var16 = v56;

    v57 = [v9 objectForKey:@"enableNoiseSuppression"];
    [v57 floatValue];
    v22->var17 = v58;

    v59 = [v9 objectForKey:@"noiseEstTimeConst_s"];
    [v59 floatValue];
    v22->var18 = v60;

    v61 = [v9 objectForKey:@"noiseEstBias_dB"];
    [v61 floatValue];
    v22->var19 = v62;

    v63 = [v9 objectForKey:@"noiseSuppTimeConst_ms"];
    [v63 floatValue];
    v22->var20 = v64;

    v65 = [v9 objectForKey:@"noiseSuppFloor_dB"];
    [v65 floatValue];
    v22->var21 = v66;

    v67 = [v9 objectForKey:@"minCombinedGain_dB"];
    [v67 floatValue];
    v22->var22 = v68;

    v69 = [v9 objectForKey:@"filteringMode"];
    [v69 floatValue];
    v22->var23 = v70;

    v71 = [v9 objectForKey:@"outputSensitivity_dB"];
    [v71 floatValue];
    v22->var24 = v72;

    v73 = [v9 objectForKey:@"downstreamGain_dB"];
    [v73 floatValue];
    v22->var25 = v74;

    v75 = [v9 objectForKey:@"processingMode"];
    [v75 floatValue];
    v22->var26 = v76;

    v77 = [v9 objectForKey:@"headphoneType"];
    [v77 floatValue];
    v22->var27 = v78;

    v79 = [v9 objectForKey:@"expanderRatio"];
    [v79 floatValue];
    v22->var28 = v80;

    v81 = [v9 objectForKey:@"expanderThreshold_dB"];
    [v81 floatValue];
    v22->var29 = v82;

    v83 = [v9 objectForKey:@"linkedMode"];
    [v83 floatValue];
    v22->var30 = v84;

    v85 = [v9 objectForKey:@"rightLoss250_dBHL"];
    [v85 floatValue];
    v22->var32 = v86;

    v87 = [v9 objectForKey:@"rightLoss500_dBHL"];
    [v87 floatValue];
    v22->var33 = v88;

    v89 = [v9 objectForKey:@"rightLoss1000_dBHL"];
    [v89 floatValue];
    v22->var34 = v90;

    v91 = [v9 objectForKey:@"rightLoss2000_dBHL"];
    [v91 floatValue];
    v22->var35 = v92;

    v93 = [v9 objectForKey:@"rightLoss3000_dBHL"];
    [v93 floatValue];
    v22->var36 = v94;

    v95 = [v9 objectForKey:@"rightLoss4000_dBHL"];
    [v95 floatValue];
    v22->var37 = v96;

    v97 = [v9 objectForKey:@"rightLoss6000_dBHL"];
    [v97 floatValue];
    v22->var38 = v98;

    v99 = [v9 objectForKey:@"rightLoss10000_dBHL"];
    [v99 floatValue];
    v22->var39 = v100;

    if (v22->var0 == v22->var32 && v22->var1 == v22->var33 && v22->var2 == v22->var34 && v22->var3 == v22->var35 && v22->var4 == v22->var36 && v22->var5 == v22->var37 && v22->var6 == v22->var38 && v22->var7 == v22->var39)
    {
      v101 = 0.0;
    }

    else
    {
      v101 = 1.0;
    }

    v22->var31 = v101;
  }

  else
  {
    v102 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      allKeys2 = [v9 allKeys];
      v105 = 138412290;
      v106 = allKeys2;
      _os_log_impl(&dword_25E445000, v102, OS_LOG_TYPE_DEFAULT, "Preset dictionary is missing information %@", &v105, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

- ($582E6112602F317AA177BE214B91E8F0)readSettingsFromPreset:(id)preset
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [preset valueForKey:@"data"];
  if ([v3 length])
  {
    v4 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1000040B8406A4EuLL);
    v5 = [MEMORY[0x277CBEB28] dataWithLength:160];
    v17 = 0;
    v16 = 0;
    [v3 getBytes:&v16 range:{0, 12}];
    v6 = bswap32(v17);
    if (v6 >= 1)
    {
      v7 = 20;
      do
      {
        *buf = 0;
        if (v7 <= [v3 length])
        {
          [v3 getBytes:buf range:{v7 - 8, 8}];
          v8 = bswap32(*buf);
          v15 = bswap32(*&buf[4]);
          if (v8 <= 0x28)
          {
            [v5 replaceBytesInRange:4 * v8 withBytes:{4, &v15}];
          }
        }

        v7 += 8;
        --v6;
      }

      while (v6);
    }

    if ([v5 length] != 160)
    {
      v9 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(PAConfiguration *)v5 readSettingsFromPreset:v9];
      }
    }

    [v5 getBytes:v4 length:{objc_msgSend(v5, "length")}];
    v10 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = v4->var0;
      var32 = v4->var32;
      *buf = 134218240;
      *&buf[4] = var0;
      v19 = 2048;
      v20 = var32;
      _os_log_impl(&dword_25E445000, v10, OS_LOG_TYPE_DEFAULT, "Preset settings (first band) {%lf, %lf}", buf, 0x16u);
    }

    v13 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PAConfiguration readSettingsFromPreset:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- ($0F930BAB90C9DC9B4982FDE0E97FE34F)transparencySettingsv4ForAddress:(id)address
{
  v117 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v5 = [(PAConfiguration *)self settingsFromConfiguration:0];
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
    v8 = vdupq_n_s64(0x4054000000000000uLL);
    *(v7 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(*v6), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6->f32), v8), 0));
    *(v7 + 20) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[2]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[2].f32), v8), 0));
    *(v7 + 52) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[16]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[16].f32), v8), 0));
    *(v7 + 68) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[18]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[18].f32), v8), 0));
    v9 = +[PASettings sharedInstance];
    [v9 transparencyToneForAddress:addressCopy];
    v11 = v10 * 2.0 + -1.0;

    v12 = +[PASettings sharedInstance];
    [v12 transparencyBalanceForAddress:addressCopy];
    v14 = v13 * 2.0 + -1.0;

    v15 = +[PASettings sharedInstance];
    [v15 transparencyAmplificationForAddress:addressCopy];
    v17 = v16 * 2.0 + -1.0;

    if (v14 <= 0.0)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = v17 - v18;
    v20 = fmax(v14, 0.0) + v17;
    v21 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v65 = 134218752;
      v66 = v11;
      v67 = 2048;
      v68 = v19;
      v69 = 2048;
      v70 = v20;
      v71 = 2048;
      v72 = v14;
      _os_log_impl(&dword_25E445000, v21, OS_LOG_TYPE_DEFAULT, "Sending tone: %lf, leftGain: %lf, rightGain: %lf balance %lf", &v65, 0x2Au);
    }

    v22 = +[PASettings sharedInstance];
    v23 = [v22 transparencyBeamformingForAddress:addressCopy];
    *(v7 + 23) = v23;
    *(v7 + 11) = v23;

    v24 = +[PASettings sharedInstance];
    [v24 transparencyNoiseSupressorForAddress:addressCopy];
    *&v25 = v25;
    *(v7 + 24) = LODWORD(v25);
    *(v7 + 12) = LODWORD(v25);

    v26 = fmax(fmin(v11, 1.0), -1.0);
    v27 = fmax(fmin(v19, 2.0), -1.0);
    *(v7 + 9) = v27;
    *(v7 + 10) = v26;
    v28 = fmax(fmin(v20, 2.0), -1.0);
    *(v7 + 21) = v28;
    *(v7 + 22) = v26;
    v29 = +[PASettings sharedInstance];
    if ([v29 personalMediaEnabled])
    {
      v30 = +[PASettings sharedInstance];
      *v7 = [v30 transparencyCustomizedForAddress:addressCopy];
    }

    else
    {
      *v7 = 0;
    }

    v31 = +[PASettings sharedInstance];
    [v31 transparencyOwnVoiceForAddress:addressCopy];
    *&v32 = v32;
    *(v7 + 25) = LODWORD(v32);

    v33 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *v7;
      v35 = *(v7 + 1);
      v36 = *(v7 + 13);
      v65 = 134218496;
      v66 = v34;
      v67 = 2048;
      v68 = v35;
      v69 = 2048;
      v70 = v36;
      _os_log_impl(&dword_25E445000, v33, OS_LOG_TYPE_DEFAULT, "Sending enabled %lf, first band: {%lf, %lf}", &v65, 0x20u);
    }

    v37 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *v7;
      v39 = *(v7 + 25);
      v40 = *(v7 + 1);
      v41 = *(v7 + 2);
      v42 = *(v7 + 3);
      v43 = *(v7 + 4);
      v44 = *(v7 + 5);
      v45 = *(v7 + 6);
      v46 = *(v7 + 7);
      v47 = *(v7 + 8);
      v48 = *(v7 + 9);
      v49 = *(v7 + 10);
      v50 = *(v7 + 11);
      v51 = *(v7 + 12);
      v52 = *(v7 + 13);
      v53 = *(v7 + 14);
      v54 = *(v7 + 15);
      v55 = *(v7 + 16);
      v56 = *(v7 + 17);
      v57 = *(v7 + 18);
      v58 = *(v7 + 19);
      v59 = *(v7 + 20);
      v60 = *(v7 + 21);
      v61 = *(v7 + 22);
      v62 = *(v7 + 23);
      v63 = *(v7 + 24);
      v65 = 134224384;
      v66 = v38;
      v67 = 2048;
      v68 = v39;
      v69 = 2048;
      v70 = v40;
      v71 = 2048;
      v72 = v41;
      v73 = 2048;
      v74 = v42;
      v75 = 2048;
      v76 = v43;
      v77 = 2048;
      v78 = v44;
      v79 = 2048;
      v80 = v45;
      v81 = 2048;
      v82 = v46;
      v83 = 2048;
      v84 = v47;
      v85 = 2048;
      v86 = v48;
      v87 = 2048;
      v88 = v49;
      v89 = 2048;
      v90 = v50;
      v91 = 2048;
      v92 = v51;
      v93 = 2048;
      v94 = v52;
      v95 = 2048;
      v96 = v53;
      v97 = 2048;
      v98 = v54;
      v99 = 2048;
      v100 = v55;
      v101 = 2048;
      v102 = v56;
      v103 = 2048;
      v104 = v57;
      v105 = 2048;
      v106 = v58;
      v107 = 2048;
      v108 = v59;
      v109 = 2048;
      v110 = v60;
      v111 = 2048;
      v112 = v61;
      v113 = 2048;
      v114 = v62;
      v115 = 2048;
      v116 = v63;
      _os_log_impl(&dword_25E445000, v37, OS_LOG_TYPE_DEFAULT, "Sending enabled %lf, %lf, %lf, left: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}, right: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}", &v65, 0x106u);
    }

    free(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- ($D1907C19D6DE236B0F95485CBF7F2EE1)transparencySettingsForAddress:(id)address
{
  v112 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v5 = [(PAConfiguration *)self settingsFromConfiguration:0];
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x64uLL, 0x100004093FC706DuLL);
    v8 = vdupq_n_s64(0x4054000000000000uLL);
    *(v7 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(*v6), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6->f32), v8), 0));
    *(v7 + 20) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[2]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[2].f32), v8), 0));
    *(v7 + 52) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[16]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[16].f32), v8), 0));
    *(v7 + 68) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[18]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[18].f32), v8), 0));
    v9 = +[PASettings sharedInstance];
    [v9 transparencyToneForAddress:addressCopy];
    v11 = v10 * 2.0 + -1.0;

    v12 = +[PASettings sharedInstance];
    [v12 transparencyBalanceForAddress:addressCopy];
    v14 = v13 * 2.0 + -1.0;

    v15 = +[PASettings sharedInstance];
    [v15 transparencyAmplificationForAddress:addressCopy];
    v17 = v16 * 2.0 + -1.0;

    if (v14 <= 0.0)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = v17 - v18;
    v20 = fmax(v14, 0.0) + v17;
    v21 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v62 = 134218752;
      v63 = v11;
      v64 = 2048;
      v65 = v19;
      v66 = 2048;
      v67 = v20;
      v68 = 2048;
      v69 = v14;
      _os_log_impl(&dword_25E445000, v21, OS_LOG_TYPE_DEFAULT, "Sending tone: %lf, leftGain: %lf, rightGain: %lf balance %lf", &v62, 0x2Au);
    }

    v22 = +[PASettings sharedInstance];
    v23 = [v22 transparencyBeamformingForAddress:addressCopy];
    *(v7 + 23) = v23;
    *(v7 + 11) = v23;

    v24 = +[PASettings sharedInstance];
    [v24 transparencyNoiseSupressorForAddress:addressCopy];
    *&v25 = v25;
    *(v7 + 24) = LODWORD(v25);
    *(v7 + 12) = LODWORD(v25);

    v26 = fmax(fmin(v11, 1.0), -1.0);
    v27 = fmax(fmin(v19, 2.0), -1.0);
    *(v7 + 9) = v27;
    *(v7 + 10) = v26;
    v28 = fmax(fmin(v20, 2.0), -1.0);
    *(v7 + 21) = v28;
    *(v7 + 22) = v26;
    v29 = +[PASettings sharedInstance];
    if ([v29 personalMediaEnabled])
    {
      v30 = +[PASettings sharedInstance];
      *v7 = [v30 transparencyCustomizedForAddress:addressCopy];
    }

    else
    {
      *v7 = 0;
    }

    v31 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *v7;
      v33 = *(v7 + 1);
      v34 = *(v7 + 13);
      v62 = 134218496;
      v63 = v32;
      v64 = 2048;
      v65 = v33;
      v66 = 2048;
      v67 = v34;
      _os_log_impl(&dword_25E445000, v31, OS_LOG_TYPE_DEFAULT, "Sending enabled %lf, first band: {%lf, %lf}", &v62, 0x20u);
    }

    v35 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v37 = *v7;
      v38 = *(v7 + 1);
      v39 = *(v7 + 2);
      v40 = *(v7 + 3);
      v41 = *(v7 + 4);
      v42 = *(v7 + 5);
      v43 = *(v7 + 6);
      v44 = *(v7 + 7);
      v45 = *(v7 + 8);
      v46 = *(v7 + 9);
      v47 = *(v7 + 10);
      v48 = *(v7 + 11);
      v49 = *(v7 + 12);
      v50 = *(v7 + 13);
      v51 = *(v7 + 14);
      v52 = *(v7 + 15);
      v53 = *(v7 + 16);
      v54 = *(v7 + 17);
      v55 = *(v7 + 18);
      v56 = *(v7 + 19);
      v57 = *(v7 + 20);
      v58 = *(v7 + 21);
      v59 = *(v7 + 22);
      v60 = *(v7 + 23);
      v61 = *(v7 + 24);
      v62 = 134224128;
      v63 = v37;
      v64 = 2048;
      v65 = v38;
      v66 = 2048;
      v67 = v39;
      v68 = 2048;
      v69 = v40;
      v70 = 2048;
      v71 = v41;
      v72 = 2048;
      v73 = v42;
      v74 = 2048;
      v75 = v43;
      v76 = 2048;
      v77 = v44;
      v78 = 2048;
      v79 = v45;
      v80 = 2048;
      v81 = v46;
      v82 = 2048;
      v83 = v47;
      v84 = 2048;
      v85 = v48;
      v86 = 2048;
      v87 = v49;
      v88 = 2048;
      v89 = v50;
      v90 = 2048;
      v91 = v51;
      v92 = 2048;
      v93 = v52;
      v94 = 2048;
      v95 = v53;
      v96 = 2048;
      v97 = v54;
      v98 = 2048;
      v99 = v55;
      v100 = 2048;
      v101 = v56;
      v102 = 2048;
      v103 = v57;
      v104 = 2048;
      v105 = v58;
      v106 = 2048;
      v107 = v59;
      v108 = 2048;
      v109 = v60;
      v110 = 2048;
      v111 = v61;
      _os_log_debug_impl(&dword_25E445000, v35, OS_LOG_TYPE_DEBUG, "Sending enabled %lf, left: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}, right: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}", &v62, 0xFCu);
    }

    free(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lossArrayFromDictionary:(id)dictionary forLeft:(BOOL)left
{
  leftCopy = left;
  v5 = MEMORY[0x277CBEB18];
  dictionaryCopy = dictionary;
  array = [v5 array];
  if (leftCopy)
  {
    v8 = @"leftLoss250_dBHL";
  }

  else
  {
    v8 = @"rightLoss250_dBHL";
  }

  if (leftCopy)
  {
    v9 = @"leftLoss500_dBHL";
  }

  else
  {
    v9 = @"rightLoss500_dBHL";
  }

  if (leftCopy)
  {
    v10 = @"leftLoss1000_dBHL";
  }

  else
  {
    v10 = @"rightLoss1000_dBHL";
  }

  if (leftCopy)
  {
    v11 = @"leftLoss2000_dBHL";
  }

  else
  {
    v11 = @"rightLoss2000_dBHL";
  }

  if (leftCopy)
  {
    v12 = @"leftLoss3000_dBHL";
  }

  else
  {
    v12 = @"rightLoss3000_dBHL";
  }

  if (leftCopy)
  {
    v13 = @"leftLoss4000_dBHL";
  }

  else
  {
    v13 = @"rightLoss4000_dBHL";
  }

  if (leftCopy)
  {
    v14 = @"leftLoss6000_dBHL";
  }

  else
  {
    v14 = @"rightLoss6000_dBHL";
  }

  if (leftCopy)
  {
    v15 = @"leftLoss10000_dBHL";
  }

  else
  {
    v15 = @"rightLoss10000_dBHL";
  }

  v16 = [dictionaryCopy objectForKey:v8];
  [array hcSafeAddObject:v16];

  v17 = [dictionaryCopy objectForKey:v9];
  [array hcSafeAddObject:v17];

  v18 = [dictionaryCopy objectForKey:v10];
  [array hcSafeAddObject:v18];

  v19 = [dictionaryCopy objectForKey:v11];
  [array hcSafeAddObject:v19];

  v20 = [dictionaryCopy objectForKey:v12];
  [array hcSafeAddObject:v20];

  v21 = [dictionaryCopy objectForKey:v13];
  [array hcSafeAddObject:v21];

  v22 = [dictionaryCopy objectForKey:v14];
  [array hcSafeAddObject:v22];

  v23 = [dictionaryCopy objectForKey:v15];

  [array hcSafeAddObject:v23];
  if ([array count] == 8)
  {
    v24 = array;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

- (id)onBudsMediaSettingsForRoute:(id)route
{
  v44 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v5 = objc_alloc_init(getHMDeviceConfigurationsClass());
  v6 = +[PASettings sharedInstance];
  v35 = routeCopy;
  v7 = [v6 personalMediaEnabledForRouteUID:routeCopy];

  if (v7)
  {
    v8 = +[PASettings sharedInstance];
    personalAudioAccommodationTypes = [v8 personalAudioAccommodationTypes];
  }

  else
  {
    personalAudioAccommodationTypes = 0;
  }

  v10 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = +[PASettings sharedInstance];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "currentEnrollmentProgress")}];
    v14 = +[PASettings sharedInstance];
    personalMediaEnabledByRouteUID = [v14 personalMediaEnabledByRouteUID];
    v16 = +[PASettings sharedInstance];
    accommodationTypesByRouteUID = [v16 accommodationTypesByRouteUID];
    *buf = 138413058;
    v37 = v35;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = personalMediaEnabledByRouteUID;
    v42 = 2112;
    v43 = accommodationTypesByRouteUID;
    _os_log_impl(&dword_25E445000, v10, OS_LOG_TYPE_DEFAULT, "Checking state %@ - %@ - %@ - %@", buf, 0x2Au);
  }

  v18 = +[PASettings sharedInstance];
  if ([v18 currentEnrollmentProgress] == 2)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  [v5 setEnrollPMEVoice:v19];

  if ((personalAudioAccommodationTypes & 2) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  [v5 setEnablePMEVoice:v20];
  if ((personalAudioAccommodationTypes & 4) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  [v5 setEnablePMEMedia:v21];
  v22 = [(PAConfiguration *)self presetDictionaryForSpeech:1];
  v23 = [(PAConfiguration *)self presetDictionaryForSpeech:0];
  v24 = [(PAConfiguration *)self lossArrayFromDictionary:v23 forLeft:1];
  [v5 setMediaLossArrayLeft:v24];

  v25 = [(PAConfiguration *)self lossArrayFromDictionary:v23 forLeft:0];
  [v5 setMediaLossArrayRight:v25];

  v26 = [(PAConfiguration *)self lossArrayFromDictionary:v22 forLeft:1];
  [v5 setVoiceLossArrayLeft:v26];

  v27 = [(PAConfiguration *)self lossArrayFromDictionary:v22 forLeft:0];
  [v5 setVoiceLossArrayRight:v27];

  v28 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v5;
    _os_log_impl(&dword_25E445000, v28, OS_LOG_TYPE_DEFAULT, "Media config for route %@", buf, 0xCu);
  }

  v29 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    mediaLossArrayLeft = [v5 mediaLossArrayLeft];
    mediaLossArrayRight = [v5 mediaLossArrayRight];
    voiceLossArrayLeft = [v5 voiceLossArrayLeft];
    voiceLossArrayRight = [v5 voiceLossArrayRight];
    *buf = 138413058;
    v37 = mediaLossArrayLeft;
    v38 = 2112;
    v39 = mediaLossArrayRight;
    v40 = 2112;
    v41 = voiceLossArrayLeft;
    v42 = 2112;
    v43 = voiceLossArrayRight;
    _os_log_impl(&dword_25E445000, v29, OS_LOG_TYPE_DEFAULT, "Sending configuration [%@, %@], [%@, %@]", buf, 0x2Au);
  }

  return v5;
}

- (float)pureToneAverageForSpeech:(BOOL)speech
{
  speechCopy = speech;
  v50 = *MEMORY[0x277D85DE8];
  if (self->_level == 12)
  {
    audiogramSettings = [(PAConfiguration *)self audiogramSettings];
    v6 = audiogramSettings;
    if (speechCopy)
    {
      v7 = @"PAConfigPresetSpeechKey";
    }

    else
    {
      v7 = @"PAConfigPresetMediaKey";
    }

    v8 = [audiogramSettings objectForKey:v7];
  }

  else
  {
    v9 = @"PresetValues";
    if (speech)
    {
      v9 = @"PresetValuesSpeech";
    }

    v10 = v9;
    v12 = paBundle(v10, v11);
    v6 = [v12 pathForResource:v10 ofType:@"plist"];

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v14 = [v13 objectForKey:@"level"];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAConfiguration level](self, "level")}];
    stringValue = [v15 stringValue];
    v17 = [v14 objectForKey:stringValue];

    v18 = [v17 objectForKey:@"shape"];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAConfiguration shape](self, "shape")}];
    stringValue2 = [v19 stringValue];
    v8 = [v18 objectForKey:stringValue2];
  }

  v21 = 0.0;
  if ([v8 count] == 40)
  {
    v22 = [v8 objectForKey:@"leftLoss500_dBHL"];
    [v22 floatValue];
    v24 = v23;
    v25 = [v8 objectForKey:@"leftLoss1000_dBHL"];
    [v25 floatValue];
    v27 = v24 + v26;
    v28 = [v8 objectForKey:@"leftLoss2000_dBHL"];
    [v28 floatValue];
    v30 = v27 + v29;
    v31 = [v8 objectForKey:@"leftLoss4000_dBHL"];
    [v31 floatValue];
    v33 = (v30 + v32) * 0.25;

    v34 = [v8 objectForKey:@"rightLoss500_dBHL"];
    [v34 floatValue];
    v36 = v35;
    v37 = [v8 objectForKey:@"rightLoss1000_dBHL"];
    [v37 floatValue];
    v39 = v36 + v38;
    v40 = [v8 objectForKey:@"rightLoss2000_dBHL"];
    [v40 floatValue];
    v42 = v39 + v41;
    v43 = [v8 objectForKey:@"rightLoss4000_dBHL"];
    [v43 floatValue];
    v21 = (v42 + v44) * 0.25;

    if (v33 < v21)
    {
      v21 = v33;
    }
  }

  v45 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v47[0] = 67109376;
    v47[1] = speechCopy;
    v48 = 2048;
    v49 = v21;
    _os_log_impl(&dword_25E445000, v45, OS_LOG_TYPE_DEFAULT, "PTA %d = %lf", v47, 0x12u);
  }

  return v21;
}

- (void)settingsFromConfiguration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25E445000, v0, OS_LOG_TYPE_DEBUG, "Preset values %@", v1, 0xCu);
}

- (void)readSettingsFromPreset:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_25E445000, a2, OS_LOG_TYPE_FAULT, "PAPresetSettings translated data wrong length %lu", v3, 0xCu);
}

- (void)readSettingsFromPreset:(float *)a1 .cold.2(float *a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v59 = 134227968;
  v60 = OUTLINED_FUNCTION_0(*a1);
  v62 = v1;
  v64 = OUTLINED_FUNCTION_0(*(v2 + 8));
  v66 = v3;
  v68 = OUTLINED_FUNCTION_0(*(v4 + 16));
  v70 = v5;
  v72 = OUTLINED_FUNCTION_0(*(v6 + 24));
  v74 = v7;
  v76 = OUTLINED_FUNCTION_0(*(v8 + 32));
  v78 = v9;
  v80 = OUTLINED_FUNCTION_0(*(v10 + 40));
  v82 = v11;
  v84 = OUTLINED_FUNCTION_0(*(v12 + 48));
  *(v13 + 134) = v14;
  v87 = OUTLINED_FUNCTION_0(*(v15 + 56));
  *(v16 + 154) = v17;
  v19 = OUTLINED_FUNCTION_0(*(v18 + 64));
  *(v20 + 164) = v19;
  *(v20 + 174) = v21;
  v92 = OUTLINED_FUNCTION_0(*(v22 + 72));
  *(v23 + 194) = v24;
  v26 = OUTLINED_FUNCTION_0(*(v25 + 80));
  *(v27 + 204) = v26;
  *(v27 + 214) = v28;
  v97 = OUTLINED_FUNCTION_0(*(v29 + 88));
  *(v30 + 234) = v31;
  v33 = OUTLINED_FUNCTION_0(*(v32 + 96));
  *(v34 + 244) = v33;
  *(v34 + 254) = v35;
  v102 = OUTLINED_FUNCTION_0(*(v36 + 104));
  *v37 = v38;
  v40 = OUTLINED_FUNCTION_0(*(v39 + 112));
  *(v41 + 10) = v40;
  *(v41 + 20) = v42;
  v107 = OUTLINED_FUNCTION_0(*(v43 + 120));
  *(v44 + 40) = v45;
  v47 = OUTLINED_FUNCTION_0(*(v46 + 128));
  *(v48 + 50) = v47;
  *(v48 + 60) = v49;
  v112 = OUTLINED_FUNCTION_0(*(v50 + 136));
  *(v51 + 80) = v52;
  v54 = OUTLINED_FUNCTION_0(*(v53 + 144));
  *(v55 + 90) = v54;
  *(v55 + 100) = v56;
  LODWORD(v56) = *(v57 + 156);
  v117 = *(v57 + 152);
  *(v55 + 120) = *&v56;
  v61 = 2048;
  v63 = 2048;
  v65 = 2048;
  v67 = 2048;
  v69 = 2048;
  v71 = 2048;
  v73 = 2048;
  v75 = 2048;
  v77 = 2048;
  v79 = 2048;
  v81 = 2048;
  v83 = 2048;
  v85 = 2048;
  v86 = 2048;
  v88 = 2048;
  v89 = 2048;
  v90 = 2048;
  v91 = 2048;
  v93 = 2048;
  v94 = 2048;
  v95 = 2048;
  v96 = 2048;
  v98 = 2048;
  v99 = 2048;
  v100 = 2048;
  v101 = 2048;
  v103 = 2048;
  v104 = 2048;
  v105 = 2048;
  v106 = 2048;
  v108 = 2048;
  v109 = 2048;
  v110 = 2048;
  v111 = 2048;
  v113 = 2048;
  v114 = 2048;
  v115 = 2048;
  v116 = 2048;
  v118 = 2048;
  _os_log_debug_impl(&dword_25E445000, v58, OS_LOG_TYPE_DEBUG, "Preset settings {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}", &v59, 0x192u);
}

@end