@interface KNBuildAttributes
+ (BOOL)customAttributeKeyIsValid:(id)valid;
+ (id)attributeValueForProperty:(id)property value:(id)value;
+ (id)defaultAttributesForEffect:(id)effect buildType:(int64_t)type;
+ (id)supportedCustomAttributes;
- (BOOL)p_usesAlignToPath;
- (id)attributeValueForProperty:(id)property;
- (id)initFromBuildAttributesArchive:(const void *)archive;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)p_readBuildAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
- (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary;
- (void)p_readTEFAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary;
- (void)p_setUnsafeDirection:(unint64_t)direction onAttributes:(id)attributes;
- (void)p_writeBuildAttributesToArchive:(void *)archive archiver:(id)archiver;
- (void)p_writeSharedAttributesToArchive:(void *)archive;
@end

@implementation KNBuildAttributes

+ (id)attributeValueForProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valueCopy;
LABEL_9:
    v9 = v8;
    goto LABEL_10;
  }

  if (sub_275DDA62C(propertyCopy))
  {
    v8 = +[KNBuildAttributeValue valueWithInteger:](KNBuildAttributeValue, "valueWithInteger:", [v7 integerValue]);
    goto LABEL_9;
  }

  if (sub_275DDA790(propertyCopy))
  {
    [v7 doubleValue];
    v8 = [KNBuildAttributeValue valueWithDouble:?];
    goto LABEL_9;
  }

  if (sub_275DDA910(propertyCopy))
  {
    v8 = +[KNBuildAttributeValue valueWithBool:](KNBuildAttributeValue, "valueWithBool:", [v7 BOOLValue]);
    goto LABEL_9;
  }

  if (sub_275DDAA3C(propertyCopy))
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    v12 = [KNBuildAttributeValue valueWithString:v11];
LABEL_19:
    v9 = v12;

    goto LABEL_10;
  }

  if (sub_275DDAB30(propertyCopy))
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    v12 = [[KNBuildAttributeValue alloc] initWithPathSourceValue:v11];
    goto LABEL_19;
  }

  if ([propertyCopy isEqualToString:@"KNAnimationColor"])
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    v12 = [[KNBuildAttributeValue alloc] initWithColorValue:v11];
    goto LABEL_19;
  }

  if (valueCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNBuildAttributes attributeValueForProperty:value:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributes.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:181 isFatal:0 description:"Unknown value type."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)attributeValueForProperty:(id)property
{
  propertyCopy = property;
  v5 = [(KNAnimationAttributes *)self valueForAttributeKey:propertyCopy];
  v6 = [KNBuildAttributes attributeValueForProperty:propertyCopy value:v5];

  return v6;
}

+ (id)supportedCustomAttributes
{
  if (qword_280A3C108[0] != -1)
  {
    sub_275E5B610();
  }

  v3 = qword_280A3C100;

  return v3;
}

+ (BOOL)customAttributeKeyIsValid:(id)valid
{
  validCopy = valid;
  supportedCustomAttributes = [self supportedCustomAttributes];
  v6 = [supportedCustomAttributes containsObject:validCopy];

  return v6;
}

+ (id)defaultAttributesForEffect:(id)effect buildType:(int64_t)type
{
  effectCopy = effect;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = +[KNAnimationRegistry instance];
  v8 = [v7 animationInfoForEffectIdentifier:effectCopy animationType:type];

  v9 = [objc_msgSend(v8 "animationClass")];
  if (v9)
  {
    [dictionary setDictionary:v9];
  }

  v10 = [dictionary objectForKeyedSubscript:@"KNBuildAttributesDefaultDuration"];

  if (!v10)
  {
    [dictionary setObject:&unk_2884F3F00 forKeyedSubscript:@"KNBuildAttributesDefaultDuration"];
  }

  v11 = *MEMORY[0x277D80178];
  v12 = [dictionary objectForKeyedSubscript:*MEMORY[0x277D80178]];

  if (!v12)
  {
    v13 = KNAnimationTypeAsString();
    [dictionary setObject:v13 forKeyedSubscript:v11];
  }

  v14 = [dictionary objectForKeyedSubscript:@"KNBuildAttributesInitialChunkCreationEventTrigger"];

  if (!v14)
  {
    [dictionary setObject:&unk_2884F3A50 forKeyedSubscript:@"KNBuildAttributesInitialChunkCreationEventTrigger"];
  }

  v15 = [dictionary objectForKeyedSubscript:@"KNBuildAttributesInitialChunkCreationDelay"];

  if (!v15)
  {
    [dictionary setObject:&unk_2884F3D28 forKeyedSubscript:@"KNBuildAttributesInitialChunkCreationDelay"];
  }

  v16 = [dictionary objectForKeyedSubscript:@"KNBuildCustomAttributesRandomNumberSeed"];

  if (!v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[KNAnimationRandomGenerator generateNewSeed](KNAnimationRandomGenerator, "generateNewSeed")}];
    [dictionary setObject:v17 forKeyedSubscript:@"KNBuildCustomAttributesRandomNumberSeed"];
  }

  v18 = [dictionary objectForKeyedSubscript:@"WritingDirectionIsRTL"];

  if (!v18)
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"WritingDirectionIsRTL"];
  }

  v19 = [(KNAnimationAttributes *)KNBuildAttributes attributesWithEffect:effectCopy attributes:dictionary];

  return v19;
}

- (id)initFromBuildAttributesArchive:(const void *)archive
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((*(archive + 16) & 0x10) != 0)
  {
    sub_275DE4790(v13, *(archive + 8));
    [(KNBuildAttributes *)self p_readSharedAttributesForArchive:v13 intoDictionary:v5];
    if ((v13[16] & 2) != 0)
    {
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      0xFFFFFFFFFFFFFFFELL = [v7 tsp_initWithProtobufString:v14 & 0xFFFFFFFFFFFFFFFELL];
    }

    else
    {
      0xFFFFFFFFFFFFFFFELL = 0;
    }

    sub_275DE49FC(v13);
  }

  else
  {
    [(KNBuildAttributes *)self p_readTEFAttributesForArchive:archive intoDictionary:v5];
    if ((*(archive + 16) & 2) != 0)
    {
      0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 5) & 0xFFFFFFFFFFFFFFFELL];
    }

    else
    {
      0xFFFFFFFFFFFFFFFELL = 0;
    }
  }

  [(KNBuildAttributes *)self p_readBuildAttributesForArchive:archive intoDictionary:v5];
  if (!0xFFFFFFFFFFFFFFFELL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributes(PersistenceAdditions) initFromBuildAttributesArchive:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributesPersistenceAdditions.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:108 isFatal:0 description:"Nil build effect on unarchive."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    0xFFFFFFFFFFFFFFFELL = *MEMORY[0x277D80138];
  }

  v11 = [(KNAnimationAttributes *)self initWithEffect:0xFFFFFFFFFFFFFFFELL attributes:v5];

  return v11;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  [(KNBuildAttributes *)self p_writeSharedAttributesToArchive:archive];
  [(KNBuildAttributes *)self p_writeBuildAttributesToArchive:archive archiver:archiverCopy];
  effect = [(KNAnimationAttributes *)self effect];
  v7 = [effect isEqualToString:*MEMORY[0x277D80140]];

  if (v7)
  {
    [(KNBuildAttributes *)self p_writeAttributesForTypewriterToDiffArchive:archive archiver:archiverCopy];
  }

  if ([(KNBuildAttributes *)self p_usesAlignToPath])
  {
    [archiverCopy requiresDocumentReadVersion:UnsafePointer() writeVersion:*MEMORY[0x277D808D0] featureIdentifier:@"KNAlignToPath"];
    [archiverCopy setIgnoreAndPreserveUntilModifiedRuleForField:37 message:archive];
  }
}

- (BOOL)p_usesAlignToPath
{
  attributes = [(KNAnimationAttributes *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"KNBuildCustomAttributesAlignToPath"];
  v4 = v3 != 0;

  return v4;
}

- (void)p_readSharedAttributesForArchive:(void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = *(archive + 4);
  if (v6)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 3) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL forKey:*MEMORY[0x277D80178]];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x800) != 0)
  {
    [(KNBuildAttributes *)self p_setUnsafeDirection:*(archive + 28) onAttributes:dictionaryCopy];
    v6 = *(archive + 4);
  }

  if ((v6 & 0x200) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 12)];
    [dictionaryCopy setObject:v8 forKey:@"KNBuildAttributesDefaultDuration"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x400) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 13)];
    [dictionaryCopy setObject:v9 forKey:@"KNBuildAttributesInitialChunkCreationDelay"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x20) != 0)
  {
    v10 = TSPTSUColorCreateFromMessage();
    [dictionaryCopy setObject:v10 forKey:@"KNAnimationColor"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x1000) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 29)];
    [dictionaryCopy setObject:v11 forKey:@"KNBuildCustomAttributesRandomNumberSeed"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x40) != 0)
  {
    v12 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 9))
    {
      v13 = *(archive + 9);
    }

    else
    {
      v13 = MEMORY[0x277D804C8];
    }

    v14 = [v12 initWithArchive:v13];
    [dictionaryCopy setObject:v14 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurve1"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x80) != 0)
  {
    v15 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 10))
    {
      v16 = *(archive + 10);
    }

    else
    {
      v16 = MEMORY[0x277D804C8];
    }

    v17 = [v15 initWithArchive:v16];
    [dictionaryCopy setObject:v17 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurve2"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x100) != 0)
  {
    v18 = objc_alloc(MEMORY[0x277D801C8]);
    if (*(archive + 11))
    {
      v19 = *(archive + 11);
    }

    else
    {
      v19 = MEMORY[0x277D804C8];
    }

    v20 = [v18 initWithArchive:v19];
    [dictionaryCopy setObject:v20 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurve3"];

    v6 = *(archive + 4);
  }

  if ((v6 & 4) != 0)
  {
    0xFFFFFFFFFFFFFFFELL2 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 5) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL2 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];

    v6 = *(archive + 4);
  }

  if ((v6 & 8) != 0)
  {
    0xFFFFFFFFFFFFFFFELL3 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 6) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL3 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x10) != 0)
  {
    0xFFFFFFFFFFFFFFFELL4 = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 7) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL4 forKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x2000) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 15)];
    [dictionaryCopy setObject:v24 forKey:@"KNBuildCustomAttributesDetail"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x8000) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 129)];
    [dictionaryCopy setObject:v25 forKey:@"WritingDirectionIsRTL"];
  }
}

- (void)p_readBuildAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = *(archive + 4);
  if ((v5 & 0x80) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 21)];
    [dictionaryCopy setObject:v6 forKey:@"KNBuildAttributesInitialChunkCreationEventTrigger"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x200) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 12)];
    [dictionaryCopy setObject:v7 forKey:@"KNAnimationDelayAutomaticAfter"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x400) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 13)];
    [dictionaryCopy setObject:v8 forKey:@"KNAnimationDelayAutomaticWith"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x1000) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 15)];
    [dictionaryCopy setObject:v9 forKey:*MEMORY[0x277D80100]];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x2000) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 16)];
    [dictionaryCopy setObject:v10 forKey:*MEMORY[0x277D80110]];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x4000) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 17)];
    [dictionaryCopy setObject:v11 forKey:*MEMORY[0x277D800F0]];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x8000000) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 47)];
    [dictionaryCopy setObject:v12 forKey:@"KNBuildAttributesStartOffset"];

    v5 = *(archive + 4);
  }

  if ((v5 & 0x10000000) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 48)];
    [dictionaryCopy setObject:v13 forKey:@"KNBuildAttributesEndOffset"];
  }

  if ((*(archive + 20) & 4) != 0)
  {
    if (*(archive + 54) == 31)
    {
      v14 = 31;
    }

    else
    {
      v14 = 32;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    [dictionaryCopy setObject:v15 forKey:*MEMORY[0x277D80108]];
  }

  v16 = *(archive + 4);
  if ((v16 & 0x8000) != 0)
  {
    v17 = *(archive + 36);
    if (v17 >= 5)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E607A0();
      }

      v17 = 0;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
    [dictionaryCopy setObject:v18 forKey:*MEMORY[0x277D800E8]];

    v16 = *(archive + 4);
  }

  if ((v16 & 0x20) != 0)
  {
    v23 = objc_alloc(MEMORY[0x277D80238]);
    if (*(archive + 9))
    {
      v24 = *(archive + 9);
    }

    else
    {
      v24 = MEMORY[0x277D804C8];
    }

    v21 = [v23 initWithArchive:v24];
    [dictionaryCopy setObject:v21 forKey:*MEMORY[0x277D800F8]];
  }

  else
  {
    if ((v16 & 4) == 0)
    {
      goto LABEL_38;
    }

    v19 = objc_alloc(MEMORY[0x277D81160]);
    v20 = *(archive + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v20 + 23) < 0)
    {
      v20 = *v20;
    }

    v21 = [v19 initWithCString:v20];
    v22 = [MEMORY[0x277D80238] editableBezierPathSourceWithBezierPath:v21];
    [dictionaryCopy setObject:v22 forKey:*MEMORY[0x277D800F8]];
  }

LABEL_38:
  v25 = *(archive + 4);
  if ((v25 & 0x400000) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 180)];
    [dictionaryCopy setObject:v26 forKey:@"KNBuildCustomAttributesBounce"];

    v25 = *(archive + 4);
  }

  if (v25 < 0)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 198)];
    [dictionaryCopy setObject:v27 forKey:@"KNBuildCustomAttributesAlignToPath"];

    v25 = *(archive + 4);
    if ((v25 & 0x1000000) == 0)
    {
LABEL_42:
      if ((v25 & 0x2000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_47:
      v29 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 183)];
      [dictionaryCopy setObject:v29 forKey:@"KNBuildCustomAttributesIncludeEndpoints"];

      if ((*(archive + 4) & 0x20000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if ((v25 & 0x1000000) == 0)
  {
    goto LABEL_42;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 182)];
  [dictionaryCopy setObject:v28 forKey:@"KNBuildCustomAttributesMotionBlur"];

  v25 = *(archive + 4);
  if ((v25 & 0x2000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_43:
  if ((v25 & 0x20000000) != 0)
  {
LABEL_48:
    v30 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 196)];
    [dictionaryCopy setObject:v30 forKey:@"KNBuildCustomAttributesShine"];
  }

LABEL_49:
  v31 = *(archive + 5);
  if (v31)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 25)];
    [dictionaryCopy setObject:v32 forKey:@"KNBuildCustomAttributesScaleAmount"];

    v31 = *(archive + 5);
  }

  if ((v31 & 2) != 0)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 26)];
    [dictionaryCopy setObject:v33 forKey:@"KNBuildCustomAttributesTravelDistance"];
  }

  v34 = *(archive + 4);
  if ((v34 & 0x40000000) != 0)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 197)];
    [dictionaryCopy setObject:v35 forKey:@"KNBuildCustomAttributesCursor"];

    v34 = *(archive + 4);
  }

  if ((v34 & 0x800000) != 0)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithBool:*(archive + 181)];
    [dictionaryCopy setObject:v36 forKey:@"KNActionBuildCustomAttributesDecay"];

    v34 = *(archive + 4);
  }

  if ((v34 & 0x200000) != 0)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithInt:*(archive + 44)];
    [dictionaryCopy setObject:v37 forKey:@"KNActionBuildCustomAttributesRepeatCount"];

    v34 = *(archive + 4);
  }

  if ((v34 & 0x100000) != 0)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 21)];
    [dictionaryCopy setObject:v38 forKey:@"KNActionBuildCustomAttributesScale"];

    v34 = *(archive + 4);
  }

  if ((v34 & 0x4000000) != 0)
  {
    v39 = *(archive + 46);
    v40 = 1;
    if (v39 == 2)
    {
      v40 = 2;
    }

    if (v39)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
    [dictionaryCopy setObject:v42 forKey:@"KNActionBuildCustomAttributesJiggleIntensity"];

    v34 = *(archive + 4);
  }

  if ((v34 & 0x40000) != 0)
  {
    v43 = *(archive + 40);
    if ((v43 - 1) >= 4)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E607B4();
      }

      v43 = 0;
    }

    v44 = [MEMORY[0x277CCABB0] numberWithInteger:v43];
    [dictionaryCopy setObject:v44 forKey:@"KNBuildCustomAttributesTextDelivery"];

    v34 = *(archive + 4);
  }

  if ((v34 & 0x80000) != 0)
  {
    v45 = *(archive + 41);
    if (v45 >= 6)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E607C8();
      }

      v45 = 0;
    }

    v46 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
    [dictionaryCopy setObject:v46 forKey:@"KNBuildCustomAttributesDeliveryOption"];
  }
}

- (void)p_readTEFAttributesForArchive:(const void *)archive intoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = *(archive + 4);
  if ((v6 & 0x40) != 0)
  {
    [(KNBuildAttributes *)self p_setUnsafeDirection:*(archive + 20) onAttributes:dictionaryCopy];
    v6 = *(archive + 4);
  }

  if ((v6 & 0x800) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 14)];
    [dictionaryCopy setObject:v7 forKey:@"KNBuildAttributesDefaultDuration"];

    v6 = *(archive + 4);
  }

  if ((v6 & 0x100) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(archive + 11)];
    [dictionaryCopy setObject:v8 forKey:@"KNBuildAttributesInitialChunkCreationDelay"];

    v6 = *(archive + 4);
  }

  if ((v6 & 8) != 0)
  {
    v9 = TSPTSUColorCreateFromMessage();
    [dictionaryCopy setObject:v9 forKey:@"KNAnimationColor"];

    v6 = *(archive + 4);
  }

  if (v6)
  {
    0xFFFFFFFFFFFFFFFELL = [objc_alloc(MEMORY[0x277CCACA8]) tsp_initWithProtobufString:*(archive + 4) & 0xFFFFFFFFFFFFFFFELL];
    [dictionaryCopy setObject:0xFFFFFFFFFFFFFFFELL forKey:*MEMORY[0x277D80178]];
  }
}

- (void)p_setUnsafeDirection:(unint64_t)direction onAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (KNIsValidDirection())
  {
    directionCopy = direction;
  }

  else
  {
    directionCopy = 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:directionCopy];
  [attributesCopy setObject:v6 forKey:@"KNBuildAttributesDirection"];
}

- (void)p_writeSharedAttributesToArchive:(void *)archive
{
  *(archive + 4) |= 0x10u;
  v4 = *(archive + 8);
  if (!v4)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = sub_275E1F5E0(v6);
    *(archive + 8) = v4;
  }

  effect = [(KNAnimationAttributes *)self effect];
  tsp_protobufString = [effect tsp_protobufString];
  *(v4 + 16) |= 2u;
  sub_275D55B98(__p, tsp_protobufString);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  attributes = [(KNAnimationAttributes *)self attributes];
  v10 = [attributes objectForKey:*MEMORY[0x277D80178]];
  tsp_protobufString2 = [v10 tsp_protobufString];
  *(v4 + 16) |= 1u;
  sub_275D55B98(__p, tsp_protobufString2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = [attributes objectForKey:@"KNBuildAttributesDirection"];

  if (v12)
  {
    intValue = [v12 intValue];
    *(v4 + 16) |= 0x800u;
    *(v4 + 112) = intValue;
  }

  v14 = [attributes objectForKeyedSubscript:@"KNBuildAttributesDefaultDuration"];

  if (v14)
  {
    [v14 doubleValue];
    *(v4 + 16) |= 0x200u;
    *(v4 + 96) = v15;
  }

  v16 = [attributes objectForKeyedSubscript:@"KNBuildAttributesInitialChunkCreationDelay"];

  if (v16)
  {
    [v16 doubleValue];
    *(v4 + 16) |= 0x400u;
    *(v4 + 104) = v17;
  }

  v18 = [attributes objectForKey:@"KNAnimationColor"];

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

  v21 = [attributes objectForKey:@"KNBuildCustomAttributesRandomNumberSeed"];

  if (v21)
  {
    intValue2 = [v21 intValue];
    *(v4 + 16) |= 0x1000u;
    *(v4 + 116) = intValue2;
  }

  v23 = [attributes objectForKey:@"KNBuildCustomAttributesDetail"];

  if (v23)
  {
    [v23 doubleValue];
    *(v4 + 16) |= 0x2000u;
    *(v4 + 120) = v24;
  }

  v25 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurve1"];

  if (v25)
  {
    v26 = v25;
    *(v4 + 16) |= 0x40u;
    v27 = *(v4 + 72);
    if (!v27)
    {
      v28 = *(v4 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C8EFB0](v28);
      *(v4 + 72) = v27;
    }

    [v26 saveToArchive:v27];
  }

  v29 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurve2"];

  if (v29)
  {
    v30 = v29;
    *(v4 + 16) |= 0x80u;
    v31 = *(v4 + 80);
    if (!v31)
    {
      v32 = *(v4 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C8EFB0](v32);
      *(v4 + 80) = v31;
    }

    [v30 saveToArchive:v31];
  }

  v33 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurve3"];

  if (v33)
  {
    v34 = v33;
    *(v4 + 16) |= 0x100u;
    v35 = *(v4 + 88);
    if (!v35)
    {
      v36 = *(v4 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C8EFB0](v36);
      *(v4 + 88) = v35;
    }

    [v34 saveToArchive:v35];
  }

  v37 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];

  if (v37)
  {
    tsp_protobufString3 = [v37 tsp_protobufString];
    *(v4 + 16) |= 4u;
    sub_275D55B98(__p, tsp_protobufString3);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v39 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];

  if (v39)
  {
    tsp_protobufString4 = [v39 tsp_protobufString];
    *(v4 + 16) |= 8u;
    sub_275D55B98(__p, tsp_protobufString4);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v41 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];

  if (v41)
  {
    tsp_protobufString5 = [v41 tsp_protobufString];
    *(v4 + 16) |= 0x10u;
    sub_275D55B98(__p, tsp_protobufString5);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v43 = [attributes objectForKey:@"WritingDirectionIsRTL"];

  if (v43)
  {
    bOOLValue = [v43 BOOLValue];
    *(v4 + 16) |= 0x8000u;
    *(v4 + 129) = bOOLValue;
  }
}

- (void)p_writeBuildAttributesToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  attributes = [(KNAnimationAttributes *)self attributes];
  v7 = [attributes objectForKey:@"KNBuildAttributesInitialChunkCreationEventTrigger"];
  v8 = v7;
  if (v7)
  {
    intValue = [v7 intValue];
    *(archive + 4) |= 0x80u;
    *(archive + 21) = intValue;
  }

  v10 = [attributes objectForKey:@"KNBuildAttributesStartOffset"];

  if (v10)
  {
    intValue2 = [v10 intValue];
    *(archive + 4) |= 0x8000000u;
    *(archive + 47) = intValue2;
  }

  v12 = [attributes objectForKey:@"KNBuildAttributesEndOffset"];

  if (v12)
  {
    intValue3 = [v12 intValue];
    *(archive + 4) |= 0x10000000u;
    *(archive + 48) = intValue3;
  }

  v14 = [attributes objectForKey:*MEMORY[0x277D80100]];

  if (v14)
  {
    [v14 doubleValue];
    *(archive + 4) |= 0x1000u;
    *(archive + 15) = v15;
  }

  v16 = [attributes objectForKey:*MEMORY[0x277D80108]];

  if (v16)
  {
    if ([v16 integerValue] == 31)
    {
      v17 = 31;
    }

    else
    {
      v17 = 32;
    }

    *(archive + 5) |= 4u;
    *(archive + 54) = v17;
  }

  v18 = [attributes objectForKey:*MEMORY[0x277D80110]];

  if (v18)
  {
    [v18 doubleValue];
    *(archive + 4) |= 0x2000u;
    *(archive + 16) = v19;
  }

  v20 = [attributes objectForKey:*MEMORY[0x277D800F0]];

  if (v20)
  {
    [v20 doubleValue];
    *(archive + 4) |= 0x4000u;
    *(archive + 17) = v21;
  }

  v22 = [attributes objectForKey:*MEMORY[0x277D800E8]];

  if (v22)
  {
    integerValue = [v22 integerValue];
    if (integerValue <= 1)
    {
      if (!integerValue)
      {
        *(archive + 4) |= 0x8000u;
        *(archive + 36) = 0;
        goto LABEL_30;
      }

      if (integerValue == 1)
      {
        *(archive + 4) |= 0x8000u;
        v24 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      switch(integerValue)
      {
        case 2:
          *(archive + 4) |= 0x8000u;
          v24 = 2;
          goto LABEL_29;
        case 3:
          *(archive + 4) |= 0x8000u;
          v24 = 3;
          goto LABEL_29;
        case 4:
          *(archive + 4) |= 0x8000u;
          v24 = 4;
LABEL_29:
          *(archive + 36) = v24;
          goto LABEL_30;
      }
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_275E607DC();
    }
  }

LABEL_30:
  v25 = [attributes objectForKey:*MEMORY[0x277D800F8]];

  if (v25)
  {
    v26 = v25;
    *(archive + 4) |= 0x20u;
    v27 = *(archive + 9);
    if (!v27)
    {
      v28 = *(archive + 1);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C8EFB0](v28);
      *(archive + 9) = v27;
    }

    [v26 saveToArchive:v27];
  }

  v29 = [attributes objectForKey:@"KNBuildCustomAttributesBounce"];

  if (v29)
  {
    bOOLValue = [v29 BOOLValue];
    *(archive + 4) |= 0x400000u;
    *(archive + 180) = bOOLValue;
  }

  v31 = [attributes objectForKey:@"KNBuildCustomAttributesAlignToPath"];

  if (v31)
  {
    bOOLValue2 = [v31 BOOLValue];
    *(archive + 4) |= 0x80000000;
    *(archive + 198) = bOOLValue2;
  }

  v33 = [attributes objectForKey:@"KNBuildCustomAttributesMotionBlur"];

  if (v33)
  {
    bOOLValue3 = [v33 BOOLValue];
    *(archive + 4) |= 0x1000000u;
    *(archive + 182) = bOOLValue3;
  }

  v35 = [attributes objectForKey:@"KNBuildCustomAttributesIncludeEndpoints"];

  if (v35)
  {
    bOOLValue4 = [v35 BOOLValue];
    *(archive + 4) |= 0x2000000u;
    *(archive + 183) = bOOLValue4;
  }

  v37 = [attributes objectForKey:@"KNBuildCustomAttributesTravelDistance"];

  if (v37)
  {
    [v37 doubleValue];
    *(archive + 5) |= 2u;
    *(archive + 26) = v38;
  }

  v39 = [attributes objectForKey:@"KNBuildCustomAttributesCursor"];

  if (v39)
  {
    bOOLValue5 = [v39 BOOLValue];
    *(archive + 4) |= 0x40000000u;
    *(archive + 197) = bOOLValue5;
  }

  v41 = [attributes objectForKey:@"KNActionBuildCustomAttributesDecay"];

  if (v41)
  {
    bOOLValue6 = [v41 BOOLValue];
    *(archive + 4) |= 0x800000u;
    *(archive + 181) = bOOLValue6;
  }

  v43 = [attributes objectForKey:@"KNActionBuildCustomAttributesRepeatCount"];

  if (v43)
  {
    intValue4 = [v43 intValue];
    *(archive + 4) |= 0x200000u;
    *(archive + 44) = intValue4;
  }

  v45 = [attributes objectForKey:@"KNActionBuildCustomAttributesScale"];

  if (v45)
  {
    [v45 doubleValue];
    *(archive + 4) |= 0x100000u;
    *(archive + 21) = v46;
  }

  v47 = [attributes objectForKey:@"KNActionBuildCustomAttributesJiggleIntensity"];

  if (v47)
  {
    unsignedIntegerValue = [v47 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue == 1)
      {
        *(archive + 4) |= 0x4000000u;
        v49 = 1;
        goto LABEL_60;
      }

      if (unsignedIntegerValue == 2)
      {
        *(archive + 4) |= 0x4000000u;
        v49 = 2;
LABEL_60:
        *(archive + 46) = v49;
        goto LABEL_64;
      }

      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E607F0();
      }
    }

    else
    {
      *(archive + 4) |= 0x4000000u;
      *(archive + 46) = 0;
    }
  }

LABEL_64:
  v50 = [attributes objectForKey:@"KNBuildCustomAttributesTextDelivery"];

  if (!v50)
  {
    goto LABEL_82;
  }

  unsignedIntegerValue2 = [v50 unsignedIntegerValue];
  if (unsignedIntegerValue2 <= 1)
  {
    if (unsignedIntegerValue2)
    {
      if (unsignedIntegerValue2 != 1)
      {
        goto LABEL_82;
      }

      v52 = 1;
    }

    else
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E60804();
      }

      v52 = 0;
    }
  }

  else
  {
    switch(unsignedIntegerValue2)
    {
      case 2:
        v52 = 2;
        break;
      case 3:
        v52 = 3;
        break;
      case 4:
        v52 = 4;
        break;
      default:
        goto LABEL_82;
    }
  }

  *(archive + 4) |= 0x40000u;
  *(archive + 40) = v52;
LABEL_82:
  v53 = [attributes objectForKey:@"KNBuildCustomAttributesDeliveryOption"];

  if (!v53)
  {
    goto LABEL_99;
  }

  integerValue2 = [v53 integerValue];
  if (integerValue2 > 2)
  {
    switch(integerValue2)
    {
      case 3:
        *(archive + 4) |= 0x80000u;
        v55 = 3;
        goto LABEL_98;
      case 4:
        *(archive + 4) |= 0x80000u;
        v55 = 4;
        goto LABEL_98;
      case 5:
        *(archive + 4) |= 0x80000u;
        v55 = 5;
        goto LABEL_98;
    }
  }

  else
  {
    switch(integerValue2)
    {
      case 0:
        *(archive + 4) |= 0x80000u;
        *(archive + 41) = 0;
        goto LABEL_99;
      case 1:
        *(archive + 4) |= 0x80000u;
        v55 = 1;
        goto LABEL_98;
      case 2:
        *(archive + 4) |= 0x80000u;
        v55 = 2;
LABEL_98:
        *(archive + 41) = v55;
        goto LABEL_99;
    }
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_275E60818();
  }

LABEL_99:
  v56 = [attributes objectForKey:@"KNBuildCustomAttributesShine"];

  if (v56)
  {
    [archiverCopy setIgnoreAndPreserveRuleForField:33 message:archive];
    bOOLValue7 = [v56 BOOLValue];
    *(archive + 4) |= 0x20000000u;
    *(archive + 196) = bOOLValue7;
  }

  v58 = [attributes objectForKey:@"KNBuildCustomAttributesScaleAmount"];

  if (v58)
  {
    [archiverCopy setIgnoreAndPreserveRuleForField:34 message:archive];
    [v58 doubleValue];
    *(archive + 5) |= 1u;
    *(archive + 25) = v59;
  }
}

@end