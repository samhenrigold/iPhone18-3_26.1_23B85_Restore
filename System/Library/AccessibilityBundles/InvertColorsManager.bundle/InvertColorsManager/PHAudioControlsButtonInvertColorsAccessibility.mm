@interface PHAudioControlsButtonInvertColorsAccessibility
- (PHAudioControlsButtonInvertColorsAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadInvertColors;
- (void)updateRoundViewColorAnimated:(BOOL)animated;
@end

@implementation PHAudioControlsButtonInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v38 = 0;
  objc_opt_class();
  v27 = __UIAccessibilityCastAsClass();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v27 subviews];
  v3 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v29 = *v35;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        layer = [v7 layer];
        sublayers = [layer sublayers];

        v10 = [sublayers countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(sublayers);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v7;

                v5 = v14;
                goto LABEL_16;
              }
            }

            v11 = [sublayers countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  layer2 = [v5 layer];
  [AXInvertColorsAppHelper toggleInvertColors:layer2];

  [v5 setAccessibilityIgnoresInvertColors:0];
  v38 = 0;
  objc_opt_class();
  v16 = [(PHAudioControlsButtonInvertColorsAccessibility *)self safeValueForKey:@"roundView"];
  v17 = __UIAccessibilityCastAsClass();

  if (v38 == 1)
  {
    abort();
  }

  _accessibilityBackgroundColor = [(PHAudioControlsButtonInvertColorsAccessibility *)self _accessibilityBackgroundColor];
  v19 = _accessibilityBackgroundColor;
  if (_accessibilityBackgroundColor)
  {
    backgroundColor = _accessibilityBackgroundColor;
  }

  else
  {
    backgroundColor = [v17 backgroundColor];
  }

  v21 = backgroundColor;

  if (_AXSInvertColorsEnabled())
  {
    if (!AXProcessIsInCallService())
    {
      v25 = AXInvertColorForColorPreservingAlpha();
      goto LABEL_29;
    }

    window = [v17 window];
    traitCollection = [window traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == &dword_0 + 1)
    {
      v25 = +[UIColor blackColor];
LABEL_29:
      v26 = v25;

      v21 = v26;
    }
  }

  [v17 setBackgroundColor:v21];
}

- (void)updateRoundViewColorAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = PHAudioControlsButtonInvertColorsAccessibility;
  [(PHAudioControlsButtonInvertColorsAccessibility *)&v4 updateRoundViewColorAnimated:animated];
  [(PHAudioControlsButtonInvertColorsAccessibility *)self _setAccessibilityBackgroundColor:0];
  [(PHAudioControlsButtonInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (PHAudioControlsButtonInvertColorsAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PHAudioControlsButtonInvertColorsAccessibility;
  v3 = [(PHAudioControlsButtonInvertColorsAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PHAudioControlsButtonInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];
  return v3;
}

@end