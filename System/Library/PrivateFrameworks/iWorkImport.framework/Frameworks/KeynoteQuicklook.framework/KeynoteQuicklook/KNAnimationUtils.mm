@interface KNAnimationUtils
+ (BOOL)allowBlendingMotionBackgroundsDefaultValue;
+ (BOOL)isCustomEffectTimingCurveEditingEnabled;
+ (BOOL)isDisplayLoggingEnabled;
+ (BOOL)isMotionBlurCapableWithAnimationContext:(id)context;
+ (BOOL)isRandomNumberSeedInspectionEnabled;
+ (BOOL)shouldForceDisplayPreferredMode;
+ (BOOL)willPluginClassAllowBlendingMotionBackgrounds:(Class)backgrounds;
+ (CGRect)recommendedLayerBoundsForNaturalPlaybackSize:(CGSize)size inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale isExternalDisplay:(BOOL)display;
+ (id)CAAccelerationFromSFXActionAcceleration:(unint64_t)acceleration;
+ (id)customAttributesArrayWithDeliveryOptions:(id)options;
+ (id)customAttributesArrayWithJiggleIntensityOptions:(id)options;
+ (id)customAttributesArrayWithTextDeliveryOptions:(id)options;
+ (id)timingsArrayWithDirection:(unint64_t)direction duration:(double)duration count:(unint64_t)count chunkDuration:(double)chunkDuration randomness:(double)randomness randomGenerator:(id)generator;
+ (id)videoControllerSignpostLog;
+ (unint64_t)directionFromCustomAttributesDeliveryOption:(unint64_t)option;
+ (unint64_t)randomBasicDirection;
+ (unint64_t)randomDirection;
+ (void)getRecommendedPosition:(CGPoint *)position andTransform:(CATransform3D *)transform toFitLayer:(id)layer inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale;
+ (void)initialize;
+ (void)updateDefaultsValues;
@end

@implementation KNAnimationUtils

+ (void)updateDefaultsValues
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"EnableFPSLogging"];
  byte_280A3C038 = [v3 BOOLValue];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults2 valueForKey:@"BadgeMetalRendering"];
  byte_280A3C039 = [v5 BOOLValue];

  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults3 valueForKey:@"EnableLocalRendering"];
  byte_280A3C03A = [v7 BOOLValue];

  standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults4 valueForKey:@"DisableDiscreteGPUAquisition"];
  byte_280A3C03B = [v9 BOOLValue];

  standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [standardUserDefaults5 valueForKey:@"DisableViewScaling"];
  byte_280A3C03C = [v11 BOOLValue];

  standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [standardUserDefaults6 valueForKey:@"EnableAnimationPluginDevelopment"];
  byte_280A3C03D = [v13 BOOLValue];

  standardUserDefaults7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v15 = [standardUserDefaults7 valueForKey:@"DisableTexturePrecaching"];
  byte_280A3C03E = [v15 BOOLValue];

  standardUserDefaults8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v17 = [standardUserDefaults8 valueForKey:@"KNAnimationMotionBlurEnabled"];
  byte_280A3C03F = [v17 BOOLValue];

  standardUserDefaults9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v19 = [standardUserDefaults9 valueForKey:@"ForceMotionBlurOn"];
  byte_280A3C040 = [v19 BOOLValue];

  standardUserDefaults10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v21 = [standardUserDefaults10 valueForKey:@"ForceMotionBlurOff"];
  byte_280A3C041 = [v21 BOOLValue];

  standardUserDefaults11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v23 = [standardUserDefaults11 valueForKey:@"EnableMotionBlurLogging"];
  byte_280A3C042 = [v23 BOOLValue];

  if (byte_280A3C040 != byte_280A3C043)
  {
    byte_280A3C043 = byte_280A3C040;
    if (byte_280A3C042 == 1)
    {
      if (byte_280A3C040)
      {
        v24 = @"ENABLED";
      }

      else
      {
        v24 = @"DISABLED";
      }

      NSLog(&cfstr_Is.isa, @"ForceMotionBlurOn", v24);
    }
  }

  if (byte_280A3C041 != byte_280A3C044)
  {
    byte_280A3C044 = byte_280A3C041;
    if (byte_280A3C042 == 1)
    {
      if (byte_280A3C041)
      {
        v25 = @"ENABLED";
      }

      else
      {
        v25 = @"DISABLED";
      }

      NSLog(&cfstr_Is.isa, @"ForceMotionBlurOff", v25);
    }
  }

  if (byte_280A3C040 == 1 && byte_280A3C041 == 1 && *MEMORY[0x277D81408] != -1)
  {
    sub_275E5B4A8();
  }

  standardUserDefaults12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  byte_280A3C045 = [standardUserDefaults12 BOOLForKey:@"RandomNumberSeedAlwaysRandom"];

  standardUserDefaults13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  byte_280A3C046 = [standardUserDefaults13 BOOLForKey:@"RandomNumberSeedAlwaysZero"];

  standardUserDefaults14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v29 = [standardUserDefaults14 valueForKey:@"EnableResponsivenessLogging"];
  byte_280A3C047 = [v29 BOOLValue];

  standardUserDefaults15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v31 = [standardUserDefaults15 valueForKey:@"EnableFullSpeedDynamicBackgrounds"];
  byte_280A3C048 = [v31 BOOLValue];

  standardUserDefaults16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v32 = [standardUserDefaults16 valueForKey:@"EnableDynamicBackgroundMultisampling"];
  byte_280A3C049 = [v32 BOOLValue];
}

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D99DB8;
  block[3] = &unk_27A698760;
  block[4] = self;
  if (qword_280A3C050 != -1)
  {
    dispatch_once(&qword_280A3C050, block);
  }
}

+ (id)timingsArrayWithDirection:(unint64_t)direction duration:(double)duration count:(unint64_t)count chunkDuration:(double)chunkDuration randomness:(double)randomness randomGenerator:(id)generator
{
  v87 = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  if (direction - 111 >= 5)
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:244 isFatal:0 description:{"Wrong direction! Expected Character direction, not %tu", direction}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (chunkDuration < 0.0 || chunkDuration > 1.0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:246 isFatal:0 description:{"Chunk duration must be between [0, 1]!"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (!generatorCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]"];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
    [v21 handleFailureInFunction:v22 file:v23 lineNumber:247 isFatal:0 description:{"invalid nil value for '%{public}s'", "randGen"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v24 = count - 1;
  if (count == 1)
  {
    durationCopy = duration;
  }

  else
  {
    durationCopy = duration * chunkDuration;
  }

  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  if (direction - 111 < 2)
  {
    if (count)
    {
      v40 = 0;
      v41 = (duration - durationCopy) / count;
      countCopy = count;
      do
      {
        v43 = v41 * v40;
        if (randomness == 0.0)
        {
          durationCopy2 = durationCopy;
        }

        else
        {
          if (v40 && countCopy != 1)
          {
            [generatorCopy doubleBetween:-0.5 :0.5];
            v43 = v43 + v41 * randomness * v44;
          }

          [generatorCopy doubleBetween:-0.5 :0.5];
          v46 = durationCopy + durationCopy * randomness * v45;
          if (v46 >= duration)
          {
            durationCopy2 = duration;
          }

          else
          {
            durationCopy2 = v46;
          }

          if (v43 >= 0.0)
          {
            v48 = v43;
          }

          else
          {
            v48 = 0.0;
          }

          if (v48 >= duration - durationCopy2)
          {
            v43 = duration - durationCopy2;
          }

          else
          {
            v43 = v48;
          }
        }

        v49 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v43, durationCopy2}];
        [v26 addObject:v49];

        ++v40;
        --countCopy;
      }

      while (countCopy);
    }
  }

  else if (direction - 114 >= 2)
  {
    if (direction != 113)
    {
      v56 = MEMORY[0x277D81150];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]"];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
      [v56 handleFailureInFunction:v57 file:v58 lineNumber:342 isFatal:0 description:{"KNAnimationUtils: We should never have gotten here! Direction: %tu", direction}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      v59 = MEMORY[0x277CBEBF8];
      goto LABEL_93;
    }

    v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    if (count)
    {
      v51 = 0;
      do
      {
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51];
        [v50 addObject:v52];

        ++v51;
      }

      while (count != v51);
    }

    v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    while ([v50 count])
    {
      v54 = [generatorCopy intBetween:0 :{objc_msgSend(v50, "count") - 1}];
      v55 = [v50 objectAtIndex:v54];
      [v53 addObject:v55];

      [v50 removeObjectAtIndex:v54];
    }

    if (count)
    {
      v60 = 0;
      v61 = (duration - durationCopy) / count;
      do
      {
        v62 = [v53 objectAtIndex:v60];
        intValue = [v62 intValue];

        v64 = v61 * intValue;
        if (randomness == 0.0)
        {
          durationCopy3 = durationCopy;
        }

        else
        {
          [generatorCopy doubleBetween:-0.5 :0.5];
          v66 = v64 + v61 * randomness * v65;
          [generatorCopy doubleBetween:-0.5 :0.5];
          v68 = durationCopy + durationCopy * randomness * v67;
          if (v68 >= duration)
          {
            durationCopy3 = duration;
          }

          else
          {
            durationCopy3 = v68;
          }

          if (v66 >= 0.0)
          {
            v70 = v66;
          }

          else
          {
            v70 = 0.0;
          }

          if (v70 >= duration - durationCopy3)
          {
            v64 = duration - durationCopy3;
          }

          else
          {
            v64 = v70;
          }
        }

        v71 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v64, durationCopy3}];
        [v26 addObject:v71];

        ++v60;
      }

      while (count != v60);
    }
  }

  else
  {
    if (count >> 1 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = count >> 1;
    }

    if (count)
    {
      v28 = 0;
      v29 = (duration - durationCopy) / v27;
      v30 = vcvtd_n_f64_u64(count, 1uLL);
      do
      {
        if (v30 <= v28)
        {
          v31 = v24;
        }

        else
        {
          v31 = v28;
        }

        v32 = v29 * v31;
        if (randomness == 0.0)
        {
          durationCopy4 = durationCopy;
        }

        else
        {
          if (v31)
          {
            v33 = v31 == count >> 1;
          }

          else
          {
            v33 = 1;
          }

          if (!v33)
          {
            [generatorCopy doubleBetween:-0.5 :0.5];
            v32 = v32 + v29 * randomness * v34;
          }

          [generatorCopy doubleBetween:-0.5 :0.5];
          v36 = durationCopy + durationCopy * randomness * v35;
          if (v36 >= duration)
          {
            durationCopy4 = duration;
          }

          else
          {
            durationCopy4 = v36;
          }

          v38 = 0.0;
          if (v32 >= 0.0)
          {
            v38 = v32;
          }

          if (v38 >= duration - durationCopy4)
          {
            v32 = duration - durationCopy4;
          }

          else
          {
            v32 = v38;
          }
        }

        v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v32, durationCopy4}];
        [v26 addObject:v39];

        ++v28;
        --v24;
      }

      while (v24 != -1);
    }
  }

  if ((direction & 0xFFFFFFFFFFFFFFFDLL) == 0x70)
  {
    v72 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v73 = v26;
    v74 = [v73 countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v83;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v83 != v76)
          {
            objc_enumerationMutation(v73);
          }

          [*(*(&v82 + 1) + 8 * i) CGPointValue];
          v80 = [MEMORY[0x277CCAE60] valueWithCGPoint:duration - v78 - v79];
          [v72 addObject:v80];
        }

        v75 = [v73 countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v75);
    }
  }

  else
  {
    v72 = v26;
  }

  v26 = v72;
  v59 = v26;
LABEL_93:

  return v59;
}

+ (id)customAttributesArrayWithTextDeliveryOptions:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(optionsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = optionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        integerValue = [*(*(&v25 + 1) + 8 * v9) integerValue];
        if (integerValue > 1)
        {
          switch(integerValue)
          {
            case 2:
              v11 = sub_275DC204C(2);
              v12 = [v11 localizedStringForKey:@"By Word *Text Delivery*" value:@"By Word" table:@"Keynote"];
              v13 = v4;
              v14 = &unk_2884F3768;
              break;
            case 3:
              v11 = sub_275DC204C(3);
              v12 = [v11 localizedStringForKey:@"By Character *Text Delivery*" value:@"By Character" table:@"Keynote"];
              v13 = v4;
              v14 = &unk_2884F3780;
              break;
            case 4:
              v11 = sub_275DC204C(4);
              v12 = [v11 localizedStringForKey:@"By Line *Text Delivery*" value:@"By Line" table:@"Keynote"];
              v13 = v4;
              v14 = &unk_2884F3798;
              break;
            default:
              goto LABEL_17;
          }

LABEL_16:
          [v13 setObject:v14 forKey:v12];

          goto LABEL_17;
        }

        if (integerValue)
        {
          if (integerValue != 1)
          {
            goto LABEL_17;
          }

          v11 = sub_275DC204C(1);
          v12 = [v11 localizedStringForKey:@"By Object *Text Delivery*" value:@"By Object" table:@"Keynote"];
          v13 = v4;
          v14 = &unk_2884F3750;
          goto LABEL_16;
        }

        v15 = MEMORY[0x277D81150];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils customAttributesArrayWithTextDeliveryOptions:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
        [v15 handleFailureInFunction:v16 file:v17 lineNumber:391 isFatal:0 description:"Unknown text delivery option!"];

        [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_17:
        ++v9;
      }

      while (v7 != v9);
      v18 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
      v7 = v18;
    }

    while (v18);
  }

  v31[0] = @"KNBuildCustomAttributesTextDelivery";
  v30[0] = &unk_2884F3750;
  v30[1] = &unk_2884F3768;
  v20 = sub_275DC204C(v19);
  v21 = [v20 localizedStringForKey:@"Text Animation *Build" value:@"Text Animation" table:@"Keynote"];
  v31[1] = v21;
  v31[2] = &unk_2884F37B0;
  v30[2] = &unk_2884F3780;
  v30[3] = &unk_2884F37C8;
  v31[3] = v4;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v29 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

  return v23;
}

+ (id)customAttributesArrayWithDeliveryOptions:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(optionsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = optionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        integerValue = [*(*(&v25 + 1) + 8 * v9) integerValue];
        if (integerValue <= 2)
        {
          if (integerValue == 1)
          {
            v11 = sub_275DC204C(1);
            v12 = [v11 localizedStringForKey:@"Forward *Delivery Option*" value:@"Forward" table:@"Keynote"];
            v13 = v4;
            v14 = &unk_2884F37E0;
            goto LABEL_17;
          }

          if (integerValue == 2)
          {
            v11 = sub_275DC204C(2);
            v12 = [v11 localizedStringForKey:@"Backward *Delivery Option*" value:@"Backward" table:@"Keynote"];
            v13 = v4;
            v14 = &unk_2884F37F8;
            goto LABEL_17;
          }
        }

        else
        {
          switch(integerValue)
          {
            case 3:
              v11 = sub_275DC204C(3);
              v12 = [v11 localizedStringForKey:@"From Center *Delivery Option*" value:@"From Center" table:@"Keynote"];
              v13 = v4;
              v14 = &unk_2884F3810;
              goto LABEL_17;
            case 4:
              v11 = sub_275DC204C(4);
              v12 = [v11 localizedStringForKey:@"From Edges *Delivery Option*" value:@"From Edges" table:@"Keynote"];
              v13 = v4;
              v14 = &unk_2884F3828;
              goto LABEL_17;
            case 5:
              v11 = sub_275DC204C(5);
              v12 = [v11 localizedStringForKey:@"Random *Delivery Option*" value:@"Random" table:@"Keynote"];
              v13 = v4;
              v14 = &unk_2884F3840;
LABEL_17:
              [v13 setObject:v14 forKey:v12];

              goto LABEL_18;
          }
        }

        v15 = MEMORY[0x277D81150];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils customAttributesArrayWithDeliveryOptions:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
        [v15 handleFailureInFunction:v16 file:v17 lineNumber:434 isFatal:0 description:"Unknown delivery option!"];

        [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_18:
        ++v9;
      }

      while (v7 != v9);
      v18 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
      v7 = v18;
    }

    while (v18);
  }

  v31[0] = @"KNBuildCustomAttributesDeliveryOption";
  v30[0] = &unk_2884F3750;
  v30[1] = &unk_2884F3768;
  v20 = sub_275DC204C(v19);
  v21 = [v20 localizedStringForKey:@"Delivery Option *Build" value:@"Delivery Option" table:@"Keynote"];
  v31[1] = v21;
  v31[2] = &unk_2884F37B0;
  v30[2] = &unk_2884F3780;
  v30[3] = &unk_2884F37C8;
  v31[3] = v4;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v29 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

  return v23;
}

+ (id)customAttributesArrayWithJiggleIntensityOptions:(id)options
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(optionsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = optionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
        if (integerValue == 2)
        {
          v11 = sub_275DC204C(2);
          v12 = [v11 localizedStringForKey:@"Large *Jiggle Intensity" value:@"Large" table:@"Keynote"];
          v13 = v4;
          v14 = &unk_2884F37F8;
        }

        else if (integerValue == 1)
        {
          v11 = sub_275DC204C(1);
          v12 = [v11 localizedStringForKey:@"Medium *Jiggle Intensity" value:@"Medium" table:@"Keynote"];
          v13 = v4;
          v14 = &unk_2884F37E0;
        }

        else
        {
          if (integerValue)
          {
            continue;
          }

          v11 = sub_275DC204C(0);
          v12 = [v11 localizedStringForKey:@"Small *Jiggle Intensity" value:@"Small" table:@"Keynote"];
          v13 = v4;
          v14 = &unk_2884F3858;
        }

        [v13 setObject:v14 forKey:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v7);
  }

  v29[0] = @"KNActionBuildCustomAttributesJiggleIntensity";
  v28[0] = &unk_2884F3750;
  v28[1] = &unk_2884F3768;
  v16 = sub_275DC204C(v15);
  v17 = [v16 localizedStringForKey:@"Jiggle Intensity *Action Build" value:@"Intensity" table:@"Keynote"];
  v29[1] = v17;
  v29[2] = &unk_2884F37B0;
  v28[2] = &unk_2884F3780;
  v28[3] = &unk_2884F37C8;
  v29[3] = v4;
  v28[4] = &unk_2884F3798;
  v18 = sub_275DC204C(v17);
  v19 = [v18 localizedStringForKey:@"Adjust the intensity of the jiggle on the object." value:&stru_2884D8E20 table:@"Keynote"];
  v29[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];

  v27 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];

  return v21;
}

+ (unint64_t)directionFromCustomAttributesDeliveryOption:(unint64_t)option
{
  if (option - 2 > 3)
  {
    return 111;
  }

  else
  {
    return qword_275E71058[option - 2];
  }
}

+ (unint64_t)randomDirection
{
  TSURandomBetween();
  if (v2 < 9)
  {
    return qword_275E71078[v2];
  }

  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils randomDirection]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:521 isFatal:0 description:"Invalid random number between 0 and 8!"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  return 0;
}

+ (unint64_t)randomBasicDirection
{
  TSURandomBetween();
  if (v2 < 5)
  {
    return qword_275E710C0[v2];
  }

  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationUtils randomBasicDirection]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:539 isFatal:0 description:"Invalid random number between 0 and 4!"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  return 0;
}

+ (BOOL)isDisplayLoggingEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"EnableDisplayLogging"];

  return v3;
}

+ (BOOL)isRandomNumberSeedInspectionEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"InspectRandomNumberSeed"];

  return v3;
}

+ (BOOL)shouldForceDisplayPreferredMode
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ForceDisplayPreferredMode"];

  return v3;
}

+ (BOOL)isCustomEffectTimingCurveEditingEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"EnableCustomAccelerationCurves"];

  return v3;
}

+ (BOOL)allowBlendingMotionBackgroundsDefaultValue
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"DebugEnableMotionBackgroundAttributeBlending"];

  return v3;
}

+ (BOOL)willPluginClassAllowBlendingMotionBackgrounds:(Class)backgrounds
{
  v4 = +[KNAnimationUtils allowBlendingMotionBackgroundsDefaultValue];
  if (![(objc_class *)backgrounds conformsToProtocol:&unk_288546310])
  {
    return v4;
  }

  return MEMORY[0x2821F9670](backgrounds, sel_allowsMotionBackgroundBlending);
}

+ (id)videoControllerSignpostLog
{
  if (qword_280A3C060 != -1)
  {
    sub_275E5B4BC();
  }

  v3 = qword_280A3C068;

  return v3;
}

+ (BOOL)isMotionBlurCapableWithAnimationContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  if (byte_280A3C041)
  {
    v5 = 0;
  }

  else if (byte_280A3C040)
  {
    v5 = 1;
  }

  else
  {
    capabilities = [contextCopy capabilities];
    v7 = [capabilities platform] == 2;
    v5 = v7 & byte_280A3C03F;
  }

  return v5;
}

+ (id)CAAccelerationFromSFXActionAcceleration:(unint64_t)acceleration
{
  if (acceleration > 1)
  {
    switch(acceleration)
    {
      case 2uLL:
        v4 = MEMORY[0x277CDA7C0];
        break;
      case 3uLL:
        v4 = MEMORY[0x277CDA7B8];
        break;
      case 4uLL:
LABEL_5:
        v3 = 0;
        goto LABEL_13;
      default:
        goto LABEL_16;
    }

LABEL_12:
    v3 = *v4;
    goto LABEL_13;
  }

  if (!acceleration)
  {
    v4 = MEMORY[0x277CDA7C8];
    goto LABEL_12;
  }

  if (acceleration == 1)
  {
    v4 = MEMORY[0x277CDA7B0];
    goto LABEL_12;
  }

LABEL_16:
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_275E5B4D0();
    goto LABEL_5;
  }

  v3 = 0;
LABEL_13:

  return v3;
}

+ (CGRect)recommendedLayerBoundsForNaturalPlaybackSize:(CGSize)size inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale isExternalDisplay:(BOOL)display
{
  TSUMultiplyRectScalar();
  TSUScaleSizeWithinSize();
  TSURectWithSize();
  TSURoundedRectForScale();
  currentCapabilities = [MEMORY[0x277D801F0] currentCapabilities];
  [currentCapabilities isRendererH4OrBelow];
  TSURectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (void)getRecommendedPosition:(CGPoint *)position andTransform:(CATransform3D *)transform toFitLayer:(id)layer inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale
{
  layerCopy = layer;
  [layerCopy bounds];
  v40 = v11;
  v41 = v10;
  TSUScaleSizeWithinSize();
  TSURectWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  TSURoundedRectForScale();
  v21 = v20;
  v23 = v22;
  v43.origin.x = v13;
  v43.origin.y = v15;
  v43.size.width = v17;
  v43.size.height = v19;
  CGRectIntegral(v43);
  TSURectWithCenterAndSize();
  v45 = CGRectIntegral(v44);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  [layerCopy anchorPoint];
  v29 = v28;
  v31 = v30;

  v32 = *(MEMORY[0x277CD9DE8] + 80);
  *&v42.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v42.m33 = v32;
  v33 = *(MEMORY[0x277CD9DE8] + 112);
  *&v42.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v42.m43 = v33;
  v34 = *(MEMORY[0x277CD9DE8] + 16);
  *&v42.m11 = *MEMORY[0x277CD9DE8];
  *&v42.m13 = v34;
  v35 = *(MEMORY[0x277CD9DE8] + 48);
  *&v42.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v42.m23 = v35;
  if (v41 != v21 || v40 != v23)
  {
    CATransform3DMakeScale(&v42, width / v41, height / v40, 1.0);
  }

  if (position)
  {
    position->x = x + width * v29;
    position->y = y + height * v31;
  }

  if (transform)
  {
    v36 = *&v42.m33;
    *&transform->m31 = *&v42.m31;
    *&transform->m33 = v36;
    v37 = *&v42.m43;
    *&transform->m41 = *&v42.m41;
    *&transform->m43 = v37;
    v38 = *&v42.m13;
    *&transform->m11 = *&v42.m11;
    *&transform->m13 = v38;
    v39 = *&v42.m23;
    *&transform->m21 = *&v42.m21;
    *&transform->m23 = v39;
  }
}

@end