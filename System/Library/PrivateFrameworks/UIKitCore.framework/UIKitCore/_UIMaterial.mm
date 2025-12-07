@interface _UIMaterial
+ (_UIMaterial)_labelMaterial;
+ (id)_solariumMaterialForColor:(id)color traitCollection:(id)collection;
+ (id)_systemGreenEffect;
+ (id)materialForSystemColorName:(id)name;
+ (id)vibrancyEffectWithA:(double)a B:(double)b C:(double)c D:(double)d E:(double)e F:;
- (_UIMaterial)initWithVibrancy:(int64_t)vibrancy forBlurEffectStyle:(int64_t)style;
- (_UIMaterial)initWithVibrantVisualEffect:(id)effect;
- (id)description;
- (id)initWithBlur:(id *)blur;
- (id)initWithVisualEffect:(id *)effect;
@end

@implementation _UIMaterial

+ (id)_systemGreenEffect
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___UIMaterial__systemGreenEffect__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  if (qword_1ED49B930 != -1)
  {
    dispatch_once(&qword_1ED49B930, block);
  }

  v2 = qword_1ED49B928;

  return v2;
}

+ (_UIMaterial)_labelMaterial
{
  v2 = sub_188B569CC();

  return v2;
}

+ (id)_solariumMaterialForColor:(id)color traitCollection:(id)collection
{
  colorCopy = color;
  collectionCopy = collection;
  v7 = sub_189050FD0(colorCopy, collectionCopy);

  return v7;
}

+ (id)materialForSystemColorName:(id)name
{
  nameCopy = name;
  objc_opt_self();
  if (qword_1ED49B920 != -1)
  {
    dispatch_once(&qword_1ED49B920, &__block_literal_global_1813);
  }

  v4 = qword_1ED49B918;
  v5 = [v4 objectForKeyedSubscript:nameCopy];

  return v5;
}

- (id)initWithBlur:(id *)blur
{
  blurCopy = blur;
  if (blur)
  {
    v3 = [UIBlurEffect effectWithStyle:a2];
    blurCopy = [(_UIMaterial *)blurCopy initWithVisualEffect:v3];
  }

  return blurCopy;
}

+ (id)vibrancyEffectWithA:(double)a B:(double)b C:(double)c D:(double)d E:(double)e F:
{
  objc_opt_self();
  v13 = a2 / 100.0;
  v14 = a / 100.0;
  v15 = b / 100.0;
  v16 = c / 100.0;
  v17 = d / 100.0;
  v30 = v13;
  v29 = xmmword_18A67C7A0;
  v32 = v14;
  v31 = xmmword_18A67C820;
  v34 = v15;
  v33 = xmmword_18A67C830;
  v21 = xmmword_18A67C7A0;
  v35 = xmmword_18A65AB30;
  v36 = 0;
  v22 = v16;
  v23 = xmmword_18A67C820;
  v24 = v17;
  v25 = xmmword_18A67C830;
  v18 = e / 100.0;
  v26 = v18;
  v27 = xmmword_18A65AB30;
  v28 = 0;
  v19 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v29 darkCAColorMatrix:&v21 alpha:1.0];

  return v19;
}

- (id)initWithVisualEffect:(id *)effect
{
  v3 = a2;
  if (effect)
  {
    v7.receiver = effect;
    v7.super_class = _UIMaterial;
    effect = objc_msgSendSuper2(&v7, sel_init);
    if (effect)
    {
      obj = 0;
      v6 = 0;
      _UIVisualEffectViewUpgradeLegacyEffect(v3, &v6, &obj);
      objc_storeStrong(effect + 3, obj);
      objc_storeStrong(effect + 2, v6);
    }
  }

  return effect;
}

- (_UIMaterial)initWithVibrancy:(int64_t)vibrancy forBlurEffectStyle:(int64_t)style
{
  v6 = [UIBlurEffect effectWithStyle:style];
  v7 = [UIVibrancyEffect effectForBlurEffect:v6 style:vibrancy];

  v8 = [(_UIMaterial *)self initWithVibrantVisualEffect:v7];
  return v8;
}

- (_UIMaterial)initWithVibrantVisualEffect:(id)effect
{
  effectCopy = effect;
  if (!_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_VibrancyDebug, @"VibrancyDebug") && byte_1ED48B1BC)
  {
    v5 = +[_UIMaterial _systemGreenEffect];

    effectCopy = v5;
  }

  v6 = [(_UIMaterial *)&self->super.isa initWithVisualEffect:effectCopy];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 1;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  contentEffects = [(_UIMaterial *)self contentEffects];
  backgroundEffects = [(_UIMaterial *)self backgroundEffects];
  v8 = [v3 stringWithFormat:@"<%@: %p contentEffects: %@, backgroundEffects: %@>", v5, self, contentEffects, backgroundEffects];;

  return v8;
}

@end