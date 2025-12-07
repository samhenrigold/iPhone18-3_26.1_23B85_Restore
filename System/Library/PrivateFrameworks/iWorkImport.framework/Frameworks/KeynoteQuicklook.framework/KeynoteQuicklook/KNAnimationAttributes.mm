@interface KNAnimationAttributes
+ (BOOL)customAttributeKeyIsValid:(id)valid;
+ (id)attributesWithEffect:(id)effect attributes:(id)attributes;
+ (id)supportedCustomAttributes;
- (BOOL)containsAttributeForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (KNAnimationAttributes)initWithEffect:(id)effect attributes:(id)attributes;
- (id)attributesAdjustedForTheme:(id)theme;
- (id)attributesByAddingAttributes:(id)attributes;
- (id)attributesByAddingAttributesFromDictionary:(id)dictionary;
- (id)attributesByChangingEffectToEffect:(id)effect;
- (id)attributesByRemovingAttributeForKey:(id)key;
- (id)attributesBySettingValue:(id)value forAttributeKey:(id)key;
- (id)attributesByUpdatingThemeCurveNamesWithOldToNewCurveNameMap:(id)map;
- (id)description;
- (id)p_curveForNameKey:(id)key forTheme:(id)theme;
- (unint64_t)hash;
@end

@implementation KNAnimationAttributes

+ (id)attributesWithEffect:(id)effect attributes:(id)attributes
{
  attributesCopy = attributes;
  effectCopy = effect;
  v7 = [objc_alloc(objc_opt_class()) initWithEffect:effectCopy attributes:attributesCopy];

  return v7;
}

+ (id)supportedCustomAttributes
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationAttributes supportedCustomAttributes]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:32 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "+[KNAnimationAttributes supportedCustomAttributes]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

+ (BOOL)customAttributeKeyIsValid:(id)valid
{
  validCopy = valid;
  v4 = MEMORY[0x277D81150];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[KNAnimationAttributes customAttributeKeyIsValid:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:37 isFatal:0 description:{"Abstract method not overridden by %{public}@", v8}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "+[KNAnimationAttributes customAttributeKeyIsValid:]"];
  v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (KNAnimationAttributes)initWithEffect:(id)effect attributes:(id)attributes
{
  effectCopy = effect;
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = KNAnimationAttributes;
  v8 = [(KNAnimationAttributes *)&v14 init];
  if (v8)
  {
    v9 = [effectCopy copy];
    effect = v8->_effect;
    v8->_effect = v9;

    v11 = [attributesCopy copy];
    attributes = v8->_attributes;
    v8->_attributes = v11;
  }

  return v8;
}

- (id)attributesByAddingAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (!attributesCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationAttributes attributesByAddingAttributes:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:57 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "otherAttributes != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  effect = [attributesCopy effect];

  if (!effect)
  {
    v9 = MEMORY[0x277D81150];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationAttributes attributesByAddingAttributes:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:58 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "otherAttributes.effect != nil"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v12 = [(NSDictionary *)self->_attributes mutableCopy];
  attributes = [attributesCopy attributes];
  [v12 addEntriesFromDictionary:attributes];

  v14 = objc_opt_class();
  effect2 = [attributesCopy effect];
  v16 = [v14 attributesWithEffect:effect2 attributes:v12];

  return v16;
}

- (id)attributesBySettingValue:(id)value forAttributeKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (!keyCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationAttributes attributesBySettingValue:forAttributeKey:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:69 isFatal:0 description:{"invalid nil value for '%{public}s'", "attributeKey"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v11 = [(NSDictionary *)self->_attributes mutableCopy];
  v12 = v11;
  if (valueCopy)
  {
    [v11 setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [v11 removeObjectForKey:keyCopy];
  }

  v13 = [objc_opt_class() attributesWithEffect:self->_effect attributes:v12];

  return v13;
}

- (id)attributesByChangingEffectToEffect:(id)effect
{
  effectCopy = effect;
  v5 = [objc_opt_class() attributesWithEffect:effectCopy attributes:self->_attributes];

  return v5;
}

- (id)attributesByAddingAttributesFromDictionary:(id)dictionary
{
  attributes = self->_attributes;
  dictionaryCopy = dictionary;
  v6 = [(NSDictionary *)attributes mutableCopy];
  [v6 addEntriesFromDictionary:dictionaryCopy];

  v7 = [objc_opt_class() attributesWithEffect:self->_effect attributes:v6];

  return v7;
}

- (id)attributesByRemovingAttributeForKey:(id)key
{
  attributes = self->_attributes;
  keyCopy = key;
  v6 = [(NSDictionary *)attributes mutableCopy];
  [v6 removeObjectForKey:keyCopy];

  v7 = [objc_opt_class() attributesWithEffect:self->_effect attributes:v6];

  return v7;
}

- (BOOL)containsAttributeForKey:(id)key
{
  v3 = [(KNAnimationAttributes *)self valueForAttributeKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)attributesAdjustedForTheme:(id)theme
{
  themeCopy = theme;
  selfCopy = self;
  if (!themeCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationAttributes attributesAdjustedForTheme:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationAttributes.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:117 isFatal:0 description:{"invalid nil value for '%{public}s'", "theme"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v10 = [(KNAnimationAttributes *)selfCopy p_curveForNameKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1" forTheme:themeCopy];
  [v9 tsu_setNonNilObject:v10 forKey:@"KNAnimationAttributesCustomEffectTimingCurve1"];
  v11 = [(KNAnimationAttributes *)selfCopy p_curveForNameKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2" forTheme:themeCopy];
  [v9 tsu_setNonNilObject:v11 forKey:@"KNAnimationAttributesCustomEffectTimingCurve2"];
  v12 = [(KNAnimationAttributes *)selfCopy p_curveForNameKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3" forTheme:themeCopy];
  [v9 tsu_setNonNilObject:v12 forKey:@"KNAnimationAttributesCustomEffectTimingCurve3"];
  if ([v9 count])
  {
    v13 = [(KNAnimationAttributes *)selfCopy attributesByAddingAttributesFromDictionary:v9];

    selfCopy = v13;
  }

  return selfCopy;
}

- (id)attributesByUpdatingThemeCurveNamesWithOldToNewCurveNameMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  if ([mapCopy count])
  {
    attributes = [(KNAnimationAttributes *)selfCopy attributes];
    v7 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];
    v8 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];
    v9 = [attributes objectForKeyedSubscript:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];
    v18 = v7;
    v10 = [mapCopy objectForKeyedSubscript:v7];
    v17 = v8;
    v11 = [mapCopy objectForKeyedSubscript:v8];
    v16 = v9;
    v12 = [mapCopy objectForKeyedSubscript:v9];
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:attributes];
    [v13 tsu_setNonNilObject:v10 forKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName1"];
    [v13 tsu_setNonNilObject:v11 forKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName2"];
    [v13 tsu_setNonNilObject:v12 forKey:@"KNAnimationAttributesCustomEffectTimingCurveThemeName3"];
    if ([v13 count])
    {
      v14 = [(KNAnimationAttributes *)selfCopy attributesByAddingAttributesFromDictionary:v13];

      selfCopy = v14;
    }
  }

  return selfCopy;
}

- (id)p_curveForNameKey:(id)key forTheme:(id)theme
{
  themeCopy = theme;
  keyCopy = key;
  attributes = [(KNAnimationAttributes *)self attributes];
  v9 = [attributes objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    v10 = [themeCopy customTimingCurveWithName:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  effect = [(KNAnimationAttributes *)self effect];
  attributes = [(KNAnimationAttributes *)self attributes];
  v7 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v4, self, effect, attributes];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  effect = [v5 effect];
  effect2 = [(KNAnimationAttributes *)self effect];
  if ([effect isEqualToString:effect2])
  {
    attributes = [v5 attributes];
    attributes2 = [(KNAnimationAttributes *)self attributes];
    v10 = [attributes isEqual:attributes2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  attributes = [(KNAnimationAttributes *)self attributes];
  v4 = [attributes hash];
  effect = [(KNAnimationAttributes *)self effect];
  v6 = [effect hash];

  return v6 + v4;
}

@end