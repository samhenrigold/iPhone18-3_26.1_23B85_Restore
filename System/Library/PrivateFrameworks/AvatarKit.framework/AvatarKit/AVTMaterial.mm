@interface AVTMaterial
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)applyToVFXMaterial:(id)material;
@end

@implementation AVTMaterial

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVTMaterial);
  objc_storeStrong(&v4->_baseColor, self->_baseColor);
  objc_storeStrong(&v4->_additionalPropertyColors, self->_additionalPropertyColors);
  return v4;
}

- (void)applyToVFXMaterial:(id)material
{
  materialCopy = material;
  diffuse = [materialCopy diffuse];
  [diffuse setContents:?];

  additionalPropertyColors = self->_additionalPropertyColors;
  v8 = materialCopy;
  v7 = materialCopy;
  [(NSDictionary *)additionalPropertyColors enumerateKeysAndObjectsUsingBlock:?];
}

void __34__AVTMaterial_applyToVFXMaterial___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) valueForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v10 stringByAppendingString:?];
    v9 = v7;
  }

  else
  {
    AVTGetColorComponents(v5);
    v8 = [MEMORY[0x1E696B098] avt_valueWithFloat4:?];
    v9 = *(a1 + 32);
  }

  [v9 setValue:? forKeyPath:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  baseColor = self->_baseColor;
  allKeys = [(NSDictionary *)self->_additionalPropertyColors allKeys];
  v7 = [v3 stringWithFormat:v4, self, baseColor, allKeys];

  return v7;
}

@end