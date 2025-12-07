@interface TPNumberPadButtonInvertColorsAccessibility
- (id)initForCharacter:(int64_t)character;
- (void)_accessibilityLoadInvertColors;
- (void)setColor:(id)color;
@end

@implementation TPNumberPadButtonInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (qword_83538 != -1)
  {
    sub_20748();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v3 subviews];
    v4 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v4)
    {
      v5 = v4;
      selfCopy = self;
      v25 = v3;
      v6 = 0;
      v27 = *v33;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          layer = [v8 layer];
          sublayers = [layer sublayers];

          v11 = [sublayers countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v29;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(sublayers);
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v8;

                  v6 = v15;
                  goto LABEL_19;
                }
              }

              v12 = [sublayers countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:
        }

        v5 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v5);

      if (!v6)
      {
        self = selfCopy;
        v3 = v25;
        goto LABEL_26;
      }

      layer2 = [v6 layer];
      [AXInvertColorsAppHelper toggleInvertColors:layer2];
      self = selfCopy;
      v3 = v25;
    }

    else
    {
      v6 = 0;
      layer2 = obj;
    }

LABEL_26:
    [v6 setAccessibilityIgnoresInvertColors:0];
    [v3 setAccessibilityIgnoresInvertColors:1];
    v36 = 0;
    objc_opt_class();
    v17 = [(TPNumberPadButtonInvertColorsAccessibility *)self safeValueForKey:@"circleView"];
    v18 = __UIAccessibilityCastAsClass();

    if (v36 == 1)
    {
      abort();
    }

    _accessibilityBackgroundColor = [(TPNumberPadButtonInvertColorsAccessibility *)self _accessibilityBackgroundColor];
    v20 = _accessibilityBackgroundColor;
    if (_accessibilityBackgroundColor)
    {
      backgroundColor = _accessibilityBackgroundColor;
    }

    else
    {
      backgroundColor = [v18 backgroundColor];
    }

    v22 = backgroundColor;

    if (_AXSInvertColorsEnabled())
    {
      v23 = AXInvertColorForColorPreservingAlpha();

      v22 = v23;
    }

    [v18 setBackgroundColor:v22];
  }
}

- (void)setColor:(id)color
{
  v5.receiver = self;
  v5.super_class = TPNumberPadButtonInvertColorsAccessibility;
  colorCopy = color;
  [(TPNumberPadButtonInvertColorsAccessibility *)&v5 setColor:colorCopy];
  [(TPNumberPadButtonInvertColorsAccessibility *)self _setAccessibilityBackgroundColor:colorCopy, v5.receiver, v5.super_class];

  [(TPNumberPadButtonInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (id)initForCharacter:(int64_t)character
{
  v5.receiver = self;
  v5.super_class = TPNumberPadButtonInvertColorsAccessibility;
  v3 = [(TPNumberPadButtonInvertColorsAccessibility *)&v5 initForCharacter:character];
  [v3 _accessibilityLoadInvertColors];
  return v3;
}

@end