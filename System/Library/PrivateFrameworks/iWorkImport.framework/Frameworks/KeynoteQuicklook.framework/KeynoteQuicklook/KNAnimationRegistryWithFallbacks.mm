@interface KNAnimationRegistryWithFallbacks
- (KNAnimationRegistryWithFallbacks)init;
- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type;
- (void)registerFallbackEffectIdentifer:(id)identifer forEffectIdentifer:(id)effectIdentifer;
@end

@implementation KNAnimationRegistryWithFallbacks

- (KNAnimationRegistryWithFallbacks)init
{
  v6.receiver = self;
  v6.super_class = KNAnimationRegistryWithFallbacks;
  v2 = [(KNAnimationRegistryWithFallbacks *)&v6 init];
  if (v2)
  {
    v3 = +[KNAnimationRegistry instance];
    registry = v2->_registry;
    v2->_registry = v3;
  }

  return v2;
}

- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type
{
  identifierCopy = identifier;
  fallbacks = self->_fallbacks;
  if (!fallbacks || ([(NSMutableDictionary *)fallbacks objectForKeyedSubscript:identifierCopy], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = identifierCopy;
  }

  v9 = [(KNAnimationRegistry *)self->_registry animationInfoForEffectIdentifier:v8 animationType:type];

  return v9;
}

- (void)registerFallbackEffectIdentifer:(id)identifer forEffectIdentifer:(id)effectIdentifer
{
  identiferCopy = identifer;
  effectIdentiferCopy = effectIdentifer;
  fallbacks = self->_fallbacks;
  if (!fallbacks)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    v9 = self->_fallbacks;
    self->_fallbacks = v8;

    fallbacks = self->_fallbacks;
  }

  [(NSMutableDictionary *)fallbacks setObject:identiferCopy forKeyedSubscript:effectIdentiferCopy];
}

@end