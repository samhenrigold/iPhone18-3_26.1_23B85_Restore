@interface KNTransitionAttributes
+ (BOOL)customAttributeKeyIsValid:(id)valid;
+ (id)defaultAttributesForEffect:(id)effect;
+ (id)p_readDeprecatedAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
+ (id)supportedCustomAttributes;
+ (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary;
+ (void)p_readTransitionAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
- (id)initFromTransitionAttributesArchive:(const void *)archive;
- (void)encodeToArchive:(void *)archive;
- (void)p_writeSharedAttributesToArchive:(void *)archive;
- (void)p_writeTransitionAttributesToArchive:(void *)archive;
@end

@implementation KNTransitionAttributes

+ (id)defaultAttributesForEffect:(id)effect
{
  effectCopy = effect;
  v5 = +[KNAnimationRegistry instance];
  v6 = [v5 animationInfoForEffectIdentifier:effectCopy animationType:3];

  animationClass = [v6 animationClass];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  defaultAttributes = [animationClass defaultAttributes];
  if (defaultAttributes)
  {
    [dictionary setDictionary:defaultAttributes];
  }

  v10 = [dictionary objectForKeyedSubscript:@"KNTransitionAttributesDuration"];

  if (!v10)
  {
    [dictionary setObject:&unk_2884F3F30 forKeyedSubscript:@"KNTransitionAttributesDuration"];
  }

  v11 = *MEMORY[0x277D80178];
  v12 = [dictionary objectForKeyedSubscript:*MEMORY[0x277D80178]];

  if (!v12)
  {
    v13 = KNAnimationTypeAsString();
    [dictionary setObject:v13 forKeyedSubscript:v11];
  }

  v14 = [dictionary objectForKeyedSubscript:@"KNTransitionAttributesDelay"];

  if (!v14)
  {
    [dictionary setObject:&unk_2884F3D38 forKeyedSubscript:@"KNTransitionAttributesDelay"];
  }

  v15 = [dictionary objectForKeyedSubscript:@"KNTransitionAttributesIsAutomatic"];

  if (!v15)
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"KNTransitionAttributesIsAutomatic"];
  }

  v16 = [dictionary objectForKeyedSubscript:@"KNTransitionCustomAttributesRandomNumberSeed"];

  if (!v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[KNAnimationRandomGenerator generateNewSeed](KNAnimationRandomGenerator, "generateNewSeed")}];
    [dictionary setObject:v17 forKeyedSubscript:@"KNTransitionCustomAttributesRandomNumberSeed"];
  }

  v18 = [self attributesWithEffect:effectCopy attributes:dictionary];

  return v18;
}

+ (id)supportedCustomAttributes
{
  if (qword_280A3C5A8 != -1)
  {
    sub_275E6078C();
  }

  v3 = qword_280A3C5A0;

  return v3;
}

+ (BOOL)customAttributeKeyIsValid:(id)valid
{
  validCopy = valid;
  supportedCustomAttributes = [self supportedCustomAttributes];
  v6 = [supportedCustomAttributes containsObject:validCopy];

  return v6;
}

- (id)initFromTransitionAttributesArchive:(const void *)archive
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_opt_class();
  v7 = v6;
  if ((*(archive + 16) & 8) != 0)
  {
    sub_275DE4790(v12, *(archive + 6));
    [v7 p_readSharedAttributesForArchive:v12 intoDictionary:dictionary];
    if ((v12[16] & 2) != 0)
    {
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      0xFFFFFFFFFFFFFFFELL = [v9 tsp_initWithProtobufString:v13 & 0xFFFFFFFFFFFFFFFELL];
    }

    else
    {
      0xFFFFFFFFFFFFFFFELL = 0;
    }

    sub_275DE49FC(v12);
  }

  else
  {
    0xFFFFFFFFFFFFFFFELL = [v6 p_readDeprecatedAttributesForArchive:archive intoDictionary:dictionary];
  }

  [v7 p_readTransitionAttributesForArchive:archive intoDictionary:dictionary];
  v10 = [(KNAnimationAttributes *)self initWithEffect:0xFFFFFFFFFFFFFFFELL attributes:dictionary];

  return v10;
}

- (void)encodeToArchive:(void *)archive
{
  [(KNTransitionAttributes *)self p_writeSharedAttributesToArchive:?];

  MEMORY[0x2821F9670](self, sel_p_writeTransitionAttributesToArchive_);
}

+ (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = *(archive + 4);
  if (v5)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 3) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL forKey:*MEMORY[0x277D80178]];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x200) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 12)];
    [dictionaryCopy setObject:v7 forKey:@"KNTransitionAttributesDuration"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x800) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 28)];
    [dictionaryCopy setObject:v8 forKey:@"KNTransitionAttributesDirection"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x400) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 13)];
    [dictionaryCopy setObject:v9 forKey:@"KNTransitionAttributesDelay"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x20) != 0)
  {
    v10 = TSPTSUColorCreateFromMessage();
    [dictionaryCopy setObject:v10 forKey:@"KNTransitionAttributesColor"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x4000) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 128)];
    [dictionaryCopy setObject:v11 forKeyedSubscript:@"KNTransitionAttributesIsAutomatic"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x1000) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 29)];
    [dictionaryCopy setObject:v12 forKey:@"KNTransitionCustomAttributesRandomNumberSeed"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x40) != 0)
  {
    v13 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 9))
    {
      v14 = *(archive + 9);
    }

    else
    {
      v14 = MEMORY[0x277D804C8];
    }

    v15 = [v13 initWithArchive:v14];
    [dictionaryCopy setObject:v15 forKey:@"KNAnimationAttributesCustomEffectTimingCurve1"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x80) != 0)
  {
    v16 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 10))
    {
      v17 = *(archive + 10);
    }

    else
    {
      v17 = MEMORY[0x277D804C8];
    }

    v18 = [v16 initWithArchive:v17];
    [dictionaryCopy setObject:v18 forKey:@"KNAnimationAttributesCustomEffectTimingCurve2"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x100) != 0)
  {
    v19 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 11))
    {
      v20 = *(archive + 11);
    }

    else
    {
      v20 = MEMORY[0x277D804C8];
    }

    v21 = [v19 initWithArchive:v20];
    [dictionaryCopy setObject:v21 forKey:@"KNAnimationAttributesCustomEffectTimingCurve3"];

    v5 = *(archive + 4);
  }

  if ((v5 & 4) != 0)
  {
    0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 5) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL2 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];

    v5 = *(archive + 4);
  }

  if ((v5 & 8) != 0)
  {
    0xFFFFFFFFFFFFFFFELL3 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 6) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL3 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x10) != 0)
  {
    0xFFFFFFFFFFFFFFFELL4 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 7) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL4 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x8000) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 129)];
    [dictionaryCopy setObject:v25 forKey:@"WritingDirectionIsRTL"];
  }
}

+ (void)p_readTransitionAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = *(archive + 4);
  if ((v5 & 0x2000) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 87)];
    [dictionaryCopy setObject:v6 forKeyedSubscript:@"KNTransitionAttributesIsAutomatic"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x80) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 18)];
    [dictionaryCopy setObject:v7 forKey:@"com.apple.iWork.Keynote.BUKTwist.twist"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x100) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 19)];
    [dictionaryCopy setObject:v8 forKey:@"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x200) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 20)];
    [dictionaryCopy setObject:v9 forKey:@"com.apple.iWork.Keynote.BLTMosaicFlip.type"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x400) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 84)];
    [dictionaryCopy setObject:v10 forKey:@"KNTransitionCustomAttributesBounce"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x1000) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 86)];
    [dictionaryCopy setObject:v11 forKey:@"KNTransitionCustomAttributesMotionBlur"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x800) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 85)];
    [dictionaryCopy setObject:v12 forKey:@"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x4000) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 22)];
    [dictionaryCopy setObject:v13 forKey:@"KNTransitionCustomAttributesTravelDistance"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x8000) != 0)
  {
    v14 = *(archive + 23);
    if ((v14 - 1) >= 5)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E608E0();
      }

      v14 = 0;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    [dictionaryCopy setObject:v15 forKey:@"KNTransitionCustomAttributesTimingCurve"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x10000) != 0)
  {
    v16 = *(archive + 24);
    if ((v16 - 1) >= 4)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E608F4();
      }

      v16 = 0;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [dictionaryCopy setObject:v17 forKey:@"KNTransitionCustomAttributesTextDelivery"];
  }
}

+ (id)p_readDeprecatedAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = *(archive + 4);
  if ((v6 & 2) != 0)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 4) & 0xFFFFFFFFFFFFFFFELL];
    v6 = *(archive + 4);
    v7 = 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 16)];
  [dictionaryCopy setObject:v9 forKey:@"KNTransitionAttributesDirection"];

  v6 = *(archive + 4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 7)];
  [dictionaryCopy setObject:v10 forKey:@"KNTransitionAttributesDuration"];

  v6 = *(archive + 4);
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v12 = TSPTSUColorCreateFromMessage();
    [dictionaryCopy setObject:v12 forKey:@"KNTransitionAttributesColor"];

    if ((*(archive + 4) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 17)];
  [dictionaryCopy setObject:v11 forKey:@"KNTransitionAttributesDelay"];

  v6 = *(archive + 4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v6)
  {
LABEL_13:
    0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 3) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL2 forKey:*MEMORY[0x277D80178]];
  }

LABEL_14:

  return v7;
}

- (void)p_writeSharedAttributesToArchive:(void *)archive
{
  *(archive + 4) |= 8u;
  v4 = *(archive + 6);
  if (!v4)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = sub_275E1F5E0(v6);
    *(archive + 6) = v4;
  }

  effect = [(KNAnimationAttributes *)self effect];
  attributes = [(KNAnimationAttributes *)self attributes];
  if (effect)
  {
    tsp_protobufString = [effect tsp_protobufString];
    *(v4 + 16) |= 2u;
    sub_275D55B98(__p, tsp_protobufString);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = [attributes objectForKey:*MEMORY[0x277D80178]];
  if (!v10)
  {
    v10 = KNAnimationTypeAsString();
  }

  uTF8String = [v10 UTF8String];
  *(v4 + 16) |= 1u;
  sub_275D55B98(__p, uTF8String);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = [attributes objectForKey:@"KNTransitionAttributesDirection"];

  if (v12)
  {
    intValue = [v12 intValue];
    *(v4 + 16) |= 0x800u;
    *(v4 + 112) = intValue;
  }

  v14 = [attributes objectForKey:@"KNTransitionAttributesDuration"];

  if (v14)
  {
    [v14 floatValue];
    *(v4 + 16) |= 0x200u;
    *(v4 + 96) = v15;
  }

  v16 = [attributes objectForKey:@"KNTransitionAttributesDelay"];

  if (v16)
  {
    [v16 floatValue];
    *(v4 + 16) |= 0x400u;
    *(v4 + 104) = v17;
  }

  v18 = [attributes objectForKey:@"KNTransitionAttributesColor"];

  if (v18)
  {
    v19 = v18;
    *(v4 + 16) |= 0x20u;
    if (!*(v4 + 64))
    {
      v20 = *(v4 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v4 + 64) = MEMORY[0x277C8F010](v20);
    }

    TSPTSUColorCopyToMessage();
  }

  v21 = [attributes objectForKeyedSubscript:@"KNTransitionAttributesIsAutomatic"];

  if (v21)
  {
    objc_opt_class();
    v22 = TSUDynamicCast();
    bOOLValue = [v22 BOOLValue];

    *(v4 + 16) |= 0x4000u;
    *(v4 + 128) = bOOLValue;
  }

  v24 = [attributes objectForKey:@"KNTransitionCustomAttributesRandomNumberSeed"];

  if (v24)
  {
    intValue2 = [v24 intValue];
    *(v4 + 16) |= 0x1000u;
    *(v4 + 116) = intValue2;
  }

  v26 = [attributes objectForKey:@"KNAnimationAttributesCustomEffectTimingCurve1"];

  if (v26)
  {
    v27 = v26;
    *(v4 + 16) |= 0x40u;
    v28 = *(v4 + 72);
    if (!v28)
    {
      v29 = *(v4 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C8EFB0](v29);
      *(v4 + 72) = v28;
    }

    [v27 saveToArchive:v28];
  }

  v30 = [attributes objectForKey:@"KNAnimationAttributesCustomEffectTimingCurve2"];

  if (v30)
  {
    v31 = v30;
    *(v4 + 16) |= 0x80u;
    v32 = *(v4 + 80);
    if (!v32)
    {
      v33 = *(v4 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C8EFB0](v33);
      *(v4 + 80) = v32;
    }

    [v31 saveToArchive:v32];
  }

  v34 = [attributes objectForKey:@"KNAnimationAttributesCustomEffectTimingCurve3"];

  if (v34)
  {
    v35 = v34;
    *(v4 + 16) |= 0x100u;
    v36 = *(v4 + 88);
    if (!v36)
    {
      v37 = *(v4 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = MEMORY[0x277C8EFB0](v37);
      *(v4 + 88) = v36;
    }

    [v35 saveToArchive:v36];
  }

  v38 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];

  if (v38)
  {
    uTF8String2 = [v38 UTF8String];
    *(v4 + 16) |= 4u;
    sub_275D55B98(__p, uTF8String2);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v40 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];

  if (v40)
  {
    uTF8String3 = [v40 UTF8String];
    *(v4 + 16) |= 8u;
    sub_275D55B98(__p, uTF8String3);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v42 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];

  if (v42)
  {
    uTF8String4 = [v42 UTF8String];
    *(v4 + 16) |= 0x10u;
    sub_275D55B98(__p, uTF8String4);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v47 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v44 = [attributes objectForKey:@"WritingDirectionIsRTL"];

  if (v44)
  {
    bOOLValue2 = [v44 BOOLValue];
    *(v4 + 16) |= 0x8000u;
    *(v4 + 129) = bOOLValue2;
  }
}

- (void)p_writeTransitionAttributesToArchive:(void *)archive
{
  attributes = [(KNAnimationAttributes *)self attributes];
  v5 = [attributes objectForKey:@"com.apple.iWork.Keynote.BUKTwist.twist"];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    *(archive + 4) |= 0x80u;
    *(archive + 18) = v7;
  }

  v8 = [attributes objectForKey:@"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles"];

  if (v8)
  {
    unsignedIntValue = [v8 unsignedIntValue];
    *(archive + 4) |= 0x100u;
    *(archive + 19) = unsignedIntValue;
  }

  v10 = [attributes objectForKey:@"com.apple.iWork.Keynote.BLTMosaicFlip.type"];

  if (v10)
  {
    unsignedIntValue2 = [v10 unsignedIntValue];
    *(archive + 4) |= 0x200u;
    *(archive + 20) = unsignedIntValue2;
  }

  v12 = [attributes objectForKey:@"KNTransitionCustomAttributesMotionBlur"];

  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
    *(archive + 4) |= 0x1000u;
    *(archive + 86) = bOOLValue;
  }

  v14 = [attributes objectForKey:@"KNTransitionCustomAttributesBounce"];

  if (v14)
  {
    bOOLValue2 = [v14 BOOLValue];
    *(archive + 4) |= 0x400u;
    *(archive + 84) = bOOLValue2;
  }

  v16 = [attributes objectForKey:@"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects"];

  if (v16)
  {
    bOOLValue3 = [v16 BOOLValue];
    *(archive + 4) |= 0x800u;
    *(archive + 85) = bOOLValue3;
  }

  v18 = [attributes objectForKey:@"KNTransitionCustomAttributesTravelDistance"];

  if (v18)
  {
    [v18 floatValue];
    *(archive + 4) |= 0x4000u;
    *(archive + 22) = v19;
  }

  v20 = [attributes objectForKey:@"KNTransitionCustomAttributesTimingCurve"];

  if (v20)
  {
    integerValue = [v20 integerValue];
    if (integerValue > 2)
    {
      switch(integerValue)
      {
        case 3:
          *(archive + 4) |= 0x8000u;
          v22 = 3;
          break;
        case 4:
          *(archive + 4) |= 0x8000u;
          v22 = 4;
          break;
        case 5:
          *(archive + 4) |= 0x8000u;
          v22 = 5;
          break;
        default:
          goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (integerValue)
    {
      if (integerValue == 1)
      {
        *(archive + 4) |= 0x8000u;
        v22 = 1;
      }

      else
      {
        if (integerValue != 2)
        {
          goto LABEL_31;
        }

        *(archive + 4) |= 0x8000u;
        v22 = 2;
      }

LABEL_30:
      *(archive + 23) = v22;
      goto LABEL_31;
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_275E60908();
    }
  }

LABEL_31:
  v25 = [attributes objectForKeyedSubscript:@"KNTransitionCustomAttributesTextDelivery"];

  if (!v25)
  {
    goto LABEL_43;
  }

  integerValue2 = [v25 integerValue];
  if (integerValue2 > 1)
  {
    switch(integerValue2)
    {
      case 2:
        *(archive + 4) |= 0x10000u;
        v24 = 2;
        break;
      case 3:
        *(archive + 4) |= 0x10000u;
        v24 = 3;
        break;
      case 4:
        *(archive + 4) |= 0x10000u;
        v24 = 4;
        break;
      default:
        goto LABEL_43;
    }

LABEL_42:
    *(archive + 24) = v24;
    goto LABEL_43;
  }

  if (integerValue2)
  {
    if (integerValue2 != 1)
    {
      goto LABEL_43;
    }

    *(archive + 4) |= 0x10000u;
    v24 = 1;
    goto LABEL_42;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_275E6091C();
  }

LABEL_43:
}

@end