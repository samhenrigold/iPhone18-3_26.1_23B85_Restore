@interface KNAnimationInfo
+ (id)localizedEffectNamesForAnimationInfos:(id)infos animationType:(int64_t)type;
- (BOOL)isDrift;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsAnimationType:(int64_t)type;
- (BOOL)supportsCustomAttributeKey:(id)key;
- (KNAnimationInfo)initWithAnimationClass:(Class)class;
- (NSArray)customAttributes;
- (NSSet)supportedCustomAttributeKeys;
- (id)customAttributesForAttributeKey:(id)key;
- (id)customEffectTimingCurveDisplayParametersForAttributes:(id)attributes layoutStyleOnly:(BOOL)only;
- (id)description;
- (id)localizedNameForType:(int64_t)type;
- (unint64_t)hash;
@end

@implementation KNAnimationInfo

- (KNAnimationInfo)initWithAnimationClass:(Class)class
{
  if (class && ([(objc_class *)class conformsToProtocol:&unk_2884F5FE0]& 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationInfo initWithAnimationClass:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationInfo.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:30 isFatal:0 description:"The animationClass argument must conform to the KNAnimationPlugin protocol."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v15.receiver = self;
  v15.super_class = KNAnimationInfo;
  v8 = [(KNAnimationInfo *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_animationClass, class);
    v10 = MEMORY[0x277CBEB98];
    supportedTypes = [(objc_class *)v9->_animationClass supportedTypes];
    v12 = [v10 setWithArray:supportedTypes];
    validAnimationTypes = v9->_validAnimationTypes;
    v9->_validAnimationTypes = v12;
  }

  return v9;
}

+ (id)localizedEffectNamesForAnimationInfos:(id)infos animationType:(int64_t)type
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_275D43768;
  v6[3] = &unk_27A697830;
  v6[4] = type;
  v4 = [infos tsu_setByMappingObjectsUsingBlock:v6];

  return v4;
}

- (BOOL)isDrift
{
  animationClass = [(KNAnimationInfo *)self animationClass];
  v3 = [(objc_class *)animationClass conformsToProtocol:&unk_2885461F0];
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x2821F9670](animationClass, sel_isDriftAnimation);
  }

  return v3;
}

- (id)customAttributesForAttributeKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  customAttributes = [(KNAnimationInfo *)self customAttributes];
  v6 = [customAttributes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(customAttributes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:&unk_2884F35E8];
        v12 = [v11 isEqual:keyCopy];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [customAttributes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (NSArray)customAttributes
{
  if (objc_opt_respondsToSelector())
  {
    customAttributes = [(objc_class *)self->_animationClass customAttributes];
  }

  else
  {
    customAttributes = 0;
  }

  return customAttributes;
}

- (NSSet)supportedCustomAttributeKeys
{
  if (!self->_supportedCustomAttributeKeys)
  {
    if (objc_opt_respondsToSelector())
    {
      customAttributes = [(objc_class *)self->_animationClass customAttributes];
      v4 = [customAttributes tsu_arrayByMappingObjectsUsingBlock:&unk_2884D4AC0];
      tsu_uniqueObjects = [v4 tsu_uniqueObjects];
      supportedCustomAttributeKeys = self->_supportedCustomAttributeKeys;
      self->_supportedCustomAttributeKeys = tsu_uniqueObjects;
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] set];
      customAttributes = self->_supportedCustomAttributeKeys;
      self->_supportedCustomAttributeKeys = v7;
    }
  }

  v8 = self->_supportedCustomAttributeKeys;

  return v8;
}

- (BOOL)supportsCustomAttributeKey:(id)key
{
  keyCopy = key;
  supportedCustomAttributeKeys = [(KNAnimationInfo *)self supportedCustomAttributeKeys];
  v6 = [supportedCustomAttributeKeys containsObject:keyCopy];

  return v6;
}

- (id)customEffectTimingCurveDisplayParametersForAttributes:(id)attributes layoutStyleOnly:(BOOL)only
{
  onlyCopy = only;
  attributesCopy = attributes;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(objc_class *)self->_animationClass customEffectTimingCurveDisplayParametersForAttributes:attributesCopy layoutStyleOnly:onlyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedNameForType:(int64_t)type
{
  if (![(KNAnimationInfo *)self supportsAnimationType:?])
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationInfo localizedNameForType:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationInfo.m"];
    v8 = KNAnimationTypeAsString();
    v9 = NSStringFromClass([(KNAnimationInfo *)self animationClass]);
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:194 isFatal:0 description:{"Requesting %{public}@, but that is not a valid type for %{public}@.", v8, v9}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  animationClass = self->_animationClass;

  return [(objc_class *)animationClass localizedMenuString:type];
}

- (BOOL)supportsAnimationType:(int64_t)type
{
  validAnimationTypes = self->_validAnimationTypes;
  v4 = KNAnimationTypeAsNumber();
  LOBYTE(validAnimationTypes) = [(NSSet *)validAnimationTypes containsObject:v4];

  return validAnimationTypes;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    animationClass = [equalCopy animationClass];
    v6 = animationClass == [(KNAnimationInfo *)self animationClass];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CCACA8];
  if (self->_animationClass)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v2 stringWithFormat:@"%@Info", v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Info", @"KNAnimation"];
  }

  v6 = [v5 hash];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = KNAnimationInfo;
  v4 = [(KNAnimationInfo *)&v9 description];
  effectIdentifier = [(KNAnimationInfo *)self effectIdentifier];
  animationFilter = [(KNAnimationInfo *)self animationFilter];
  v7 = [v3 stringWithFormat:@"%@ %@ %@", v4, effectIdentifier, animationFilter];

  return v7;
}

@end