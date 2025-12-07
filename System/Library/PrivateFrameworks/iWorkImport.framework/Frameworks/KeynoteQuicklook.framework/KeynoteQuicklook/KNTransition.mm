@interface KNTransition
+ (id)attributeKeyForBindingKeyPath:(id)path;
+ (id)bindingKeyPathForAttributeKey:(id)key;
+ (id)bindingMap;
+ (unint64_t)directionTypeForEffect:(id)effect;
- (BOOL)customBounce;
- (BOOL)customMagicMoveFadeUnmatchedObjects;
- (BOOL)customMotionBlur;
- (BOOL)documentIsRTL;
- (BOOL)hasAutomaticTrigger;
- (BOOL)isAutomaticTransition;
- (BOOL)isMagicMove;
- (BOOL)isMagicMoveBased;
- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)styles;
- (BOOL)supportsBounce;
- (BOOL)supportsColor;
- (BOOL)supportsCustomEffectTimingCurve1;
- (BOOL)supportsCustomEffectTimingCurve2;
- (BOOL)supportsCustomEffectTimingCurve3;
- (BOOL)supportsDuration;
- (BOOL)supportsRandomNumberSeedInspection;
- (BOOL)supportsTimingCurves;
- (BOOL)supportsTravelDistance;
- (BOOL)supportsTwist;
- (KNAnimationInfo)animationInfo;
- (KNAnimationPluginMenu)directionMenu;
- (KNTransition)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner;
- (KNTransition)initWithOwner:(id)owner attributes:(id)attributes;
- (NSArray)localizedEventTriggerNames;
- (NSSet)inspectableAttributes;
- (NSString)customEffectTimingCurveThemeName1;
- (NSString)customEffectTimingCurveThemeName2;
- (NSString)customEffectTimingCurveThemeName3;
- (NSString)description;
- (TSDBezierPathSource)customEffectTimingCurve1;
- (TSDBezierPathSource)customEffectTimingCurve2;
- (TSDBezierPathSource)customEffectTimingCurve3;
- (TSUColor)color;
- (double)delay;
- (double)duration;
- (float)customTravelDistance;
- (float)customTwist;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)customMosaicSize;
- (int64_t)customMosaicType;
- (int64_t)customTextDelivery;
- (int64_t)customTimingCurve;
- (int64_t)randomNumberSeed;
- (unint64_t)direction;
- (unint64_t)directionType;
- (unint64_t)p_keynoteVersionFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setAttributes:(id)attributes;
@end

@implementation KNTransition

+ (unint64_t)directionTypeForEffect:(id)effect
{
  effectCopy = effect;
  v4 = +[KNAnimationRegistry instance];
  v5 = [v4 animationInfoForEffectIdentifier:effectCopy animationType:3];

  directionType = [v5 directionType];
  return directionType;
}

+ (id)bindingMap
{
  if (qword_280A3C590 != -1)
  {
    sub_275E60778();
  }

  v3 = qword_280A3C598;

  return v3;
}

+ (id)bindingKeyPathForAttributeKey:(id)key
{
  keyCopy = key;
  bindingMap = [self bindingMap];
  v6 = [bindingMap objectForKey:keyCopy];

  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNTransition bindingKeyPathForAttributeKey:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTransition.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:106 isFatal:0 description:{"cannot find binding key path for attribute key %@", keyCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return v6;
}

+ (id)attributeKeyForBindingKeyPath:(id)path
{
  pathCopy = path;
  bindingMap = [self bindingMap];
  v6 = [bindingMap allKeysForObject:pathCopy];
  lastObject = [v6 lastObject];

  if (!lastObject)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNTransition attributeKeyForBindingKeyPath:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTransition.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:112 isFatal:0 description:{"cannot find attribute key for binding key path %@", pathCopy}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return lastObject;
}

- (KNTransition)initWithOwner:(id)owner attributes:(id)attributes
{
  ownerCopy = owner;
  attributesCopy = attributes;
  v13.receiver = self;
  v13.super_class = KNTransition;
  v8 = [(KNTransition *)&v13 initWithOwner:ownerCopy];
  if (v8)
  {
    if (!attributesCopy)
    {
      attributesCopy = [KNTransitionAttributes defaultAttributesForEffect:*MEMORY[0x277D80160]];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(ownerCopy, "documentIsRTL")}];
    v10 = [attributesCopy attributesBySettingValue:v9 forAttributeKey:@"WritingDirectionIsRTL"];
    attributes = v8->_attributes;
    v8->_attributes = v10;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  owner = [(KNTransition *)self owner];
  attributes = [(KNTransition *)self attributes];
  v7 = [v4 initWithOwner:owner attributes:attributes];

  return v7;
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_attributes != attributesCopy)
  {
    v6 = attributesCopy;
    [(KNTransition *)self willModify];
    v5 = [(KNTransitionAttributes *)v6 copy];

    objc_storeStrong(&self->_attributes, v5);
    attributesCopy = v5;
  }
}

- (KNAnimationInfo)animationInfo
{
  v3 = +[KNAnimationRegistry instance];
  effect = [(KNTransition *)self effect];
  v5 = [v3 animationInfoForEffectIdentifier:effect animationType:3];

  return v5;
}

- (NSArray)localizedEventTriggerNames
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"On Tap" value:&stru_2884D8E20 table:@"Keynote"];
  v8[0] = v3;
  v4 = sub_275DC204C(v3);
  v5 = [v4 localizedStringForKey:@"Automatically" value:&stru_2884D8E20 table:@"Keynote"];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (KNAnimationPluginMenu)directionMenu
{
  animationInfo = [(KNTransition *)self animationInfo];
  animationClass = [animationInfo animationClass];

  v5 = +[KNAnimationPluginMenu animationPluginMenu];
  [animationClass fillLocalizedDirectionMenu:v5 forType:3];
  if ([(KNTransition *)self documentIsRTL])
  {
    defaultDirection = [v5 defaultDirection];
    v7 = defaultDirection - 11;
    if (defaultDirection - 11) <= 0xD && ((0x3C03u >> v7))
    {
      defaultDirection = qword_275E79128[v7];
    }

    [v5 setDefaultDirection:defaultDirection];
  }

  return v5;
}

- (unint64_t)directionType
{
  animationInfo = [(KNTransition *)self animationInfo];
  directionType = [animationInfo directionType];

  return directionType;
}

- (unint64_t)direction
{
  if (![(KNTransition *)self supportsDirection])
  {
    return 0;
  }

  v3 = +[KNAnimationPluginMenu animationPluginMenu];
  animationInfo = [(KNTransition *)self animationInfo];
  animationClass = [animationInfo animationClass];

  [animationClass fillLocalizedDirectionMenu:v3 forType:3];
  v6 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionAttributesDirection"];
  v7 = v6;
  if (!v6 || (v8 = [v6 intValue], (objc_msgSend(v3, "containsDirection:", v8) & 1) == 0))
  {
    documentIsRTL = [(KNTransition *)self documentIsRTL];
    defaultDirection = [v3 defaultDirection];
    v8 = defaultDirection;
    if (documentIsRTL)
    {
      v11 = defaultDirection - 11;
      if (defaultDirection - 11) <= 0xD && ((0x3C03u >> v11))
      {
        v8 = qword_275E79128[v11];
      }
    }
  }

  return v8;
}

- (BOOL)documentIsRTL
{
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"WritingDirectionIsRTL"];
  if (!v3)
  {
    v4 = MEMORY[0x277CCABB0];
    owner = [(KNTransition *)self owner];
    v3 = [v4 numberWithBool:{objc_msgSend(owner, "documentIsRTL")}];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsDuration
{
  effect = [(KNTransition *)self effect];
  if ([effect isEqualToString:*MEMORY[0x277D80138]])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    effect2 = [(KNTransition *)self effect];
    v4 = [effect2 isEqualToString:*MEMORY[0x277D80160]] ^ 1;
  }

  return v4;
}

- (BOOL)supportsBounce
{
  effect = [(KNTransition *)self effect];
  v3 = [KNTransitionAttributes defaultAttributesForEffect:effect];

  LOBYTE(effect) = [v3 containsAttributeForKey:@"KNTransitionCustomAttributesBounce"];
  return effect;
}

- (BOOL)supportsColor
{
  effect = [(KNTransition *)self effect];
  v3 = [KNTransitionAttributes defaultAttributesForEffect:effect];

  LOBYTE(effect) = [v3 containsAttributeForKey:@"KNTransitionAttributesColor"];
  return effect;
}

- (BOOL)supportsTwist
{
  effect = [(KNTransition *)self effect];
  v3 = [KNTransitionAttributes defaultAttributesForEffect:effect];

  LOBYTE(effect) = [v3 containsAttributeForKey:@"com.apple.iWork.Keynote.BUKTwist.twist"];
  return effect;
}

- (BOOL)supportsTravelDistance
{
  effect = [(KNTransition *)self effect];
  v3 = [KNTransitionAttributes defaultAttributesForEffect:effect];

  LOBYTE(effect) = [v3 containsAttributeForKey:@"KNTransitionCustomAttributesTravelDistance"];
  return effect;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  attributes = [(KNTransition *)self attributes];
  v6 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, attributes];

  return v6;
}

- (BOOL)hasAutomaticTrigger
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionAttributesIsAutomatic"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)duration
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionAttributesDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)delay
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionAttributesDelay"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (TSUColor)color
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionAttributesColor"];
  v3 = [v2 copy];

  return v3;
}

- (float)customTwist
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"com.apple.iWork.Keynote.BUKTwist.twist"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)customTravelDistance
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesTravelDistance"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int64_t)customMosaicSize
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)customMosaicType
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"com.apple.iWork.Keynote.BLTMosaicFlip.type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)customBounce
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesBounce"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)customMotionBlur
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesMotionBlur"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)customTimingCurve
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesTimingCurve"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)randomNumberSeed
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesRandomNumberSeed"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (TSDBezierPathSource)customEffectTimingCurve1
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurve1"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (TSDBezierPathSource)customEffectTimingCurve2
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurve2"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (TSDBezierPathSource)customEffectTimingCurve3
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurve3"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (NSString)customEffectTimingCurveThemeName1
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (NSString)customEffectTimingCurveThemeName2
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (NSString)customEffectTimingCurveThemeName3
{
  objc_opt_class();
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (BOOL)customMagicMoveFadeUnmatchedObjects
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)customTextDelivery
{
  v2 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesTextDelivery"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSSet)inspectableAttributes
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 addObject:@"KNTransitionAttributesIsAutomatic"];
  effect = [(KNTransition *)self effect];
  v5 = [effect isEqualToString:@"none"];

  if ((v5 & 1) == 0)
  {
    animationInfo = [(KNTransition *)self animationInfo];
    defaultAttributes = [animationInfo defaultAttributes];

    allKeys = [defaultAttributes allKeys];
    [v3 addObjectsFromArray:allKeys];

    [v3 kn_addOrRemoveObject:@"KNTransitionAttributesDirection" withCondition:{-[KNTransition supportsDirection](self, "supportsDirection")}];
    [v3 kn_addOrRemoveObject:@"KNTransitionAttributesDelay" withCondition:{-[KNTransition hasAutomaticTrigger](self, "hasAutomaticTrigger")}];
    [v3 kn_addOrRemoveObject:@"KNTransitionAttributesDuration" withCondition:{-[KNTransition supportsDuration](self, "supportsDuration")}];
    [v3 kn_addOrRemoveObject:@"KNTransitionCustomAttributesBounce" withCondition:{-[KNTransition supportsBounce](self, "supportsBounce")}];
    [v3 kn_addOrRemoveObject:@"com.apple.iWork.Keynote.BUKTwist.twist" withCondition:{-[KNTransition supportsTwist](self, "supportsTwist")}];
    [v3 kn_addOrRemoveObject:@"KNTransitionCustomAttributesTimingCurve" withCondition:{-[KNTransition supportsTimingCurves](self, "supportsTimingCurves")}];
    [v3 kn_addOrRemoveObject:@"KNTransitionCustomAttributesRandomNumberSeed" withCondition:{-[KNTransition supportsRandomNumberSeedInspection](self, "supportsRandomNumberSeedInspection")}];
    supportsCustomEffectTimingCurve3 = [(KNTransition *)self supportsCustomEffectTimingCurve3];
    [v3 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve3" withCondition:supportsCustomEffectTimingCurve3];
    if (supportsCustomEffectTimingCurve3)
    {
      [v3 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve2" withCondition:0];
    }

    else
    {
      supportsCustomEffectTimingCurve2 = [(KNTransition *)self supportsCustomEffectTimingCurve2];
      [v3 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve2" withCondition:supportsCustomEffectTimingCurve2];
      if (!supportsCustomEffectTimingCurve2)
      {
        supportsCustomEffectTimingCurve1 = [(KNTransition *)self supportsCustomEffectTimingCurve1];
        goto LABEL_7;
      }
    }

    supportsCustomEffectTimingCurve1 = 0;
LABEL_7:
    [v3 kn_addOrRemoveObject:@"KNAnimationAttributesCustomEffectTimingCurve1" withCondition:supportsCustomEffectTimingCurve1];
  }

  return v3;
}

- (BOOL)isAutomaticTransition
{
  effect = [(KNTransition *)self effect];
  if ([effect isEqualToString:*MEMORY[0x277D80160]])
  {
    hasAutomaticTrigger = [(KNTransition *)self hasAutomaticTrigger];
  }

  else
  {
    hasAutomaticTrigger = 0;
  }

  return hasAutomaticTrigger;
}

- (BOOL)supportsTimingCurves
{
  v3 = [(KNAnimationAttributes *)self->_attributes valueForAttributeKey:@"KNTransitionCustomAttributesTimingCurve"];
  integerValue = [v3 integerValue];

  v5 = +[KNAnimationUtils isCustomEffectTimingCurveEditingEnabled];
  supportsCustomEffectTimingCurve1 = [(KNTransition *)self supportsCustomEffectTimingCurve1];
  effect = [(KNTransition *)self effect];
  v8 = [KNTransitionAttributes defaultAttributesForEffect:effect];

  if (supportsCustomEffectTimingCurve1 && (integerValue == 5 || v5))
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 containsAttributeForKey:@"KNTransitionCustomAttributesTimingCurve"];
  }

  return v9;
}

- (BOOL)supportsRandomNumberSeedInspection
{
  v3 = +[KNAnimationUtils isRandomNumberSeedInspectionEnabled];
  if (v3)
  {
    effect = [(KNTransition *)self effect];
    v5 = [KNTransitionAttributes defaultAttributesForEffect:effect];

    LOBYTE(effect) = [v5 containsAttributeForKey:@"KNTransitionCustomAttributesRandomNumberSeed"];
    LOBYTE(v3) = effect;
  }

  return v3;
}

- (BOOL)supportsCustomEffectTimingCurve1
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2884F3A68, 0}];
  LOBYTE(self) = [(KNTransition *)self p_supportsCustomEffectTimingCurveForLayoutStyles:v3];

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve2
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2884F3A80, &unk_2884F3A98, 0}];
  LOBYTE(self) = [(KNTransition *)self p_supportsCustomEffectTimingCurveForLayoutStyles:v3];

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve3
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2884F3AB0, 0}];
  LOBYTE(self) = [(KNTransition *)self p_supportsCustomEffectTimingCurveForLayoutStyles:v3];

  return self;
}

- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)styles
{
  stylesCopy = styles;
  v5 = +[KNAnimationUtils isCustomEffectTimingCurveEditingEnabled];
  animationInfo = [(KNTransition *)self animationInfo];
  attributes = [(KNTransition *)self attributes];
  v7Attributes = [attributes attributes];
  v9 = [animationInfo customEffectTimingCurveDisplayParametersForAttributes:v7Attributes layoutStyleOnly:1];

  v10 = [v9 objectForKeyedSubscript:&unk_2884F3AC8];
  LOBYTE(animationInfo) = [stylesCopy containsObject:v10];

  return v5 & animationInfo;
}

- (BOOL)isMagicMove
{
  effect = [(KNTransition *)self effect];
  v3 = [0 containsObject:effect];

  return v3;
}

- (BOOL)isMagicMoveBased
{
  effect = [(KNTransition *)self effect];
  v3 = [0 containsObject:effect];

  return v3;
}

- (unint64_t)p_keynoteVersionFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if ([unarchiverCopy hasPreUFFVersion])
  {
    preUFFVersion = [unarchiverCopy preUFFVersion];
  }

  else
  {
    fileFormatVersion = [unarchiverCopy fileFormatVersion];
    if (fileFormatVersion >= *MEMORY[0x277D80958])
    {
      if (fileFormatVersion >= *MEMORY[0x277D80988])
      {
        if (fileFormatVersion >= *MEMORY[0x277D808C8])
        {
          v6 = &qword_275E79258;
        }

        else
        {
          v6 = &unk_275E79248;
        }
      }

      else
      {
        v6 = &qword_275E79240;
      }
    }

    else
    {
      v6 = &qword_275E79238;
    }

    preUFFVersion = *v6;
  }

  return preUFFVersion;
}

- (KNTransition)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v36.receiver = self;
  v36.super_class = KNTransition;
  v10 = [(KNTransition *)&v36 initWithOwner:ownerCopy];
  if (v10)
  {
    v11 = [KNTransitionAttributes alloc];
    if (*(archive + 3))
    {
      v12 = *(archive + 3);
    }

    else
    {
      v12 = &unk_2812EAAD8;
    }

    v13 = [(KNTransitionAttributes *)v11 initFromTransitionAttributesArchive:v12];
    v14 = [v13 valueForAttributeKey:@"WritingDirectionIsRTL"];

    if (!v14)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(ownerCopy, "documentIsRTL")}];
      v16 = [v13 attributesBySettingValue:v15 forAttributeKey:@"WritingDirectionIsRTL"];

      v13 = v16;
    }

    animationInfo = [(KNTransition *)v10 animationInfo];
    v18 = +[KNAnimationRegistry instance];
    effect = [v13 effect];
    v20 = [v18 animationInfoForEffectIdentifier:effect animationType:3 includeObsoleteNames:1];

    effectIdentifier = [animationInfo effectIdentifier];
    animationClass = [animationInfo animationClass];
    v23 = effectIdentifier;
    effectIdentifier2 = [v20 effectIdentifier];
    LOBYTE(effectIdentifier) = [effectIdentifier2 isEqualToString:*MEMORY[0x277D80160]];

    if (effectIdentifier)
    {
      v25 = v23;
    }

    else
    {
      effectIdentifier3 = [v20 effectIdentifier];

      animationClass = [v20 animationClass];
      v25 = effectIdentifier3;
    }

    if ([animationClass conformsToProtocol:&unk_28852EB30])
    {
      v34 = unarchiverCopy;
      v27 = [(KNTransition *)v10 p_keynoteVersionFromUnarchiver:unarchiverCopy];
      attributes = [v13 attributes];
      v35 = attributes;
      [animationClass upgradeAttributes:&v35 animationName:v25 oldAnimationName:v23 warning:0 type:3 isFromClassic:0 version:v27];
      v29 = v35;

      if (attributes != v29)
      {
        [(KNTransition *)v10 willModifyForUpgrade];
        v30 = [(KNAnimationAttributes *)KNTransitionAttributes attributesWithEffect:v25 attributes:v29];

        v13 = v30;
      }

      unarchiverCopy = v34;
    }

    v31 = [v13 copy];
    attributes = v10->_attributes;
    v10->_attributes = v31;
  }

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  attributes = [(KNTransition *)self attributes];
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275E1F66C(v8);
    *(archive + 3) = v7;
  }

  [attributes encodeToArchive:v7];
}

@end