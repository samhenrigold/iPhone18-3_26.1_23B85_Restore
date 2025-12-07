@interface AVTPresetDependency
- (id)description;
- (uint64_t)setCategory:(uint64_t)result;
- (void)setMaterialVariant:(uint64_t)variant;
- (void)setVisibilityRules:(uint64_t)rules;
@end

@implementation AVTPresetDependency

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = AVTPresetCategoryToString(self->_category);
  v6 = [v3 initWithFormat:v4, self, v5];

  preset = self->_preset;
  if (preset)
  {
    identifier = [(AVTPreset *)preset identifier];
    [v6 appendFormat:identifier];
  }

  if (self->_morphVariant)
  {
    [v6 appendFormat:self->_morphVariant];
  }

  if (self->_imageVariant)
  {
    [v6 appendFormat:self->_imageVariant];
  }

  if (self->_materialVariant)
  {
    [v6 appendFormat:self->_materialVariant];
  }

  [v6 appendString:?];

  return v6;
}

- (uint64_t)setCategory:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (void)setMaterialVariant:(uint64_t)variant
{
  if (variant)
  {
    objc_storeStrong((variant + 48), a2);
  }
}

- (void)setVisibilityRules:(uint64_t)rules
{
  if (rules)
  {
    objc_storeStrong((rules + 56), a2);
  }
}

@end