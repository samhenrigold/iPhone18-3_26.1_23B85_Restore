@interface _MTVisualStylingVibrancyEffect
- (BOOL)isEqual:(id)equal;
- (_MTVisualStylingVibrancyEffect)initWithCoder:(id)coder;
- (_MTVisualStylingVibrancyEffect)initWithVisualStyling:(id)styling;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectConfig;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MTVisualStylingVibrancyEffect

- (_MTVisualStylingVibrancyEffect)initWithVisualStyling:(id)styling
{
  stylingCopy = styling;
  v9.receiver = self;
  v9.super_class = _MTVisualStylingVibrancyEffect;
  v6 = [(UIVibrancyEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualStyling, styling);
  }

  return v7;
}

- (_MTVisualStylingVibrancyEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:?];
  v6 = [MTVisualStylingProvider _visualStylingProviderForStyleSetNamed:"_visualStylingProviderForStyleSetNamed:inBundle:" inBundle:?];
  v7 = [coderCopy decodeObjectForKey:?];

  v8 = [v6 _visualStylingForStyleNamed:?];
  v9 = [(_MTVisualStylingVibrancyEffect *)self initWithVisualStyling:?];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  visualStyling = self->_visualStyling;
  coderCopy = coder;
  visualStyleSetName = [(MTVisualStyling *)visualStyling visualStyleSetName];
  [coderCopy encodeObject:? forKey:?];

  visualStyleName = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  [coderCopy encodeObject:? forKey:?];
}

- (id)effectConfig
{
  _layerConfig = [(MTVisualStyling *)self->_visualStyling _layerConfig];
  v3 = [MEMORY[0x277D763D0] configWithContentConfig:?];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [_MTVisualStylingVibrancyEffect alloc];

  return [(_MTVisualStylingVibrancyEffect *)v3 initWithVisualStyling:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x277CF0C20];
  objc_opt_class();
  v6 = [v5 builderWithObject:? ofExpectedClass:?];
  visualStyleSetName = [(MTVisualStyling *)self->_visualStyling visualStyleSetName];
  v14 = equalCopy;
  v8 = [v6 appendObject:? counterpart:?];

  visualStyleName = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  v13 = MEMORY[0x277D85DD0];
  v10 = v14;
  v11 = [v6 appendObject:v13 counterpart:{3221225472, __42___MTVisualStylingVibrancyEffect_isEqual___block_invoke_2, &unk_27835D518}];

  LOBYTE(visualStyleName) = [v6 isEqual];
  return visualStyleName;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  visualStyleSetName = [(MTVisualStyling *)self->_visualStyling visualStyleSetName];
  v5 = [builder appendObject:?];

  visualStyleName = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  v7 = [builder appendObject:?];

  v8 = [builder hash];
  return v8;
}

@end