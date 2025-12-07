@interface UIKBRenderFactory_MonolithLinear
- (id)_enabledTraitsForControlKey:(id)key;
- (id)_highlightedTraitsForControlKey:(id)key;
- (id)pillControlKeyPillBackgroundColor;
- (void)_updateGeometryForControlKey:(id)key withTraits:(id)traits;
- (void)configureGeometry:(id)geometry forControlKey:(id)key;
- (void)configureSymbolStyle:(id)style forControlKey:(id)key;
@end

@implementation UIKBRenderFactory_MonolithLinear

- (id)pillControlKeyPillBackgroundColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v5 = _labelColorSecondary(lightKeyboard, v4);

  return v5;
}

- (void)configureGeometry:(id)geometry forControlKey:(id)key
{
  geometryCopy = geometry;
  if ([key interactionType] == 15)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

    if ((colorAdaptiveBackground & 1) == 0)
    {
      [geometryCopy displayFrame];
      v9 = v8;
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyHeight];
      v11 = (v9 - v10) * 0.5;
      [geometryCopy displayFrame];
      [geometryCopy setDisplayFrame:{v12 + 0.0, v13 + v11}];
    }
  }
}

- (void)configureSymbolStyle:(id)style forControlKey:(id)key
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = UIKBRenderFactory_MonolithLinear;
  keyCopy = key;
  [(UIKBRenderFactory_Monolith *)&v9 configureSymbolStyle:styleCopy forControlKey:keyCopy];
  interactionType = [keyCopy interactionType];

  if (interactionType == 15)
  {
    [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFontSize];
    [styleCopy setFontSize:?];
  }
}

- (void)_updateGeometryForControlKey:(id)key withTraits:(id)traits
{
  keyCopy = key;
  traitsCopy = traits;
  if ([keyCopy interactionType] == 15)
  {
    symbolStyle = [traitsCopy symbolStyle];
    [symbolStyle fontSize];
    v9 = [off_1E70ECC18 systemFontOfSize:?];

    v39.receiver = self;
    v39.super_class = UIKBRenderFactory_MonolithLinear;
    v10 = [(UIKBRenderFactory_Monolith *)&v39 displayContentsForKey:keyCopy];
    displayString = [v10 displayString];
    [displayString sizeWithFont:v9];
    v13 = v12;

    [(UIKBRenderFactory_MonolithLinear *)self pillControlStringInset];
    v15 = v13 + v14 + v14;
    [(UIKBRenderFactory_MonolithLinear *)self pillSpaceKeyMinWidth];
    v17 = v16;
    [(UIKBRenderFactory_MonolithLinear *)self pillSpaceKeyMaxWidth];
    v19 = fmax(v17, fmin(v15, v18));
    v20 = objc_msgSend_geometry(traitsCopy);
    [v20 paddedFrame];
    v22 = (v21 - v19) * 0.5;

    v23 = objc_msgSend_geometry(traitsCopy);
    [v23 applyInsets:{0.0, v22, 0.0, v22}];

    v24 = objc_msgSend_geometry(traitsCopy);
    [v24 paddedFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(UIKBRenderFactory_MonolithLinear *)self pillControlStringInset];
    v34 = v33;
    [(UIKBRenderFactory_MonolithLinear *)self pillControlStringInset];
    v36 = v26 + v35;
    v37 = v30 - (v34 + v35);

    v38 = objc_msgSend_geometry(traitsCopy);
    [v38 setSymbolFrame:{v36, v28 + 0.0, v37, v32}];
  }
}

- (id)_enabledTraitsForControlKey:(id)key
{
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = UIKBRenderFactory_MonolithLinear;
  v5 = [(UIKBRenderFactory_Monolith *)&v16 _enabledTraitsForControlKey:keyCopy];
  interactionType = [keyCopy interactionType];
  if ((interactionType - 9) >= 2)
  {
    if (interactionType == 15)
    {
      renderConfig = [(UIKBRenderFactory *)self renderConfig];
      colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

      if (colorAdaptiveBackground)
      {
        [(UIKBRenderFactory_MonolithLinear *)self _updateGeometryForControlKey:keyCopy withTraits:v5];
      }

      [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
      v10 = v9;
      v11 = objc_msgSend_geometry(v5);
      [v11 setRoundRectRadius:v10];

      pillControlKeyPillBackgroundColor = [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyPillBackgroundColor];
      v13 = [UIKBGradient gradientWithFlatColor:pillControlKeyPillBackgroundColor];
      [v5 setBackgroundGradient:v13];

      [v5 setRenderFlags:&unk_1EFE2C5F8];
      symbolStyle = [v5 symbolStyle];
      [symbolStyle setTextColor:@"UIKBColorBlack"];

      [v5 setBlendForm:4];
    }
  }

  else
  {
    [v5 setRenderFlags:&unk_1EFE2C5E0];
  }

  return v5;
}

- (id)_highlightedTraitsForControlKey:(id)key
{
  keyCopy = key;
  v27.receiver = self;
  v27.super_class = UIKBRenderFactory_MonolithLinear;
  v5 = [(UIKBRenderFactory_Monolith *)&v27 _highlightedTraitsForControlKey:keyCopy];
  interactionType = [keyCopy interactionType];
  if (interactionType == 4)
  {
    v17 = objc_msgSend_geometry(v5);
    [v17 displayFrame];
    [v5 setFloatingContentViewControlFocusedBaseSize:{v18, v19}];

    [(UIKBRenderFactory_Monolith *)self letterKeyFocusIncreaseSize];
    [v5 setFloatingContentViewFocusedIncreaseSize:?];
    [(UIKBRenderFactory_Monolith *)self keyRectCornerRadius];
    [v5 setFloatingContentViewCornerRadius:?];
  }

  else if (interactionType == 15)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      [(UIKBRenderFactory_MonolithLinear *)self _updateGeometryForControlKey:keyCopy withTraits:v5];
      v9 = objc_msgSend_geometry(v5);
      [v9 paddedFrame];
      v11 = v10;
      v13 = v12;
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFocusPlatterInset];
      v15 = v14 + v14 + v11;
      v16 = v14 + v14 + v13;

      [v5 setFloatingContentViewControlFocusedBaseSize:{v15, v16}];
    }

    else
    {
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFocusIncreaseSize];
      [v5 setFloatingContentViewControlFocusedIncreaseSize:?];
    }

    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    v21 = v20;
    v22 = objc_msgSend_geometry(v5);
    [v22 setRoundRectRadius:v21];

    highlightedTextColor = [(UIKBRenderFactory_Monolith *)self highlightedTextColor];
    v24 = [UIKBGradient gradientWithFlatColor:highlightedTextColor];
    [v5 setBackgroundGradient:v24];

    [v5 setRenderFlags:&unk_1EFE2C610];
    symbolStyle = [v5 symbolStyle];
    [symbolStyle setTextColor:@"UIKBColorBlack"];

    [v5 setBlendForm:4];
  }

  return v5;
}

@end