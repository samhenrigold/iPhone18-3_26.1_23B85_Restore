@interface UIKBRenderFactory_CarTenKey
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
@end

@implementation UIKBRenderFactory_CarTenKey

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v98[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v97.receiver = self;
  v97.super_class = UIKBRenderFactory_CarTenKey;
  keyplaneCopy = keyplane;
  v8 = [(UIKBRenderFactory_Car *)&v97 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  v9 = [(UIKBRenderFactory_Car *)self lightKeycapsFontName:v97.receiver];
  symbolStyle = [v8 symbolStyle];
  [symbolStyle setFontName:v9];

  v11 = [(UIKBRenderFactory_Car *)self displayContentsForKey:keyCopy];
  displayString = [v11 displayString];
  if (displayString)
  {
    v13 = displayString;
    secondaryDisplayStrings = [v11 secondaryDisplayStrings];
    v15 = [secondaryDisplayStrings count];

    if (v15)
    {
      symbolStyle2 = [v8 symbolStyle];
      v17 = [symbolStyle2 copy];

      v98[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
      [v8 setSecondarySymbolStyles:v18];

      if ([keyCopy displayType] == 34)
      {
        lightKeycapsFontName = [(UIKBRenderFactory_Car *)self lightKeycapsFontName];
        [v17 setFontName:lightKeycapsFontName];

        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        [v17 setFontSize:v20 * 0.6];
        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        v22 = v21 * 0.3;
        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        [v17 setTextOffset:{v22, v23 * 0.5}];
      }

      else
      {
        if ([keyCopy displayType] == 31)
        {
          displayString2 = [v11 displayString];
          if (!displayString2)
          {
            goto LABEL_11;
          }

          v25 = displayString2;
          secondaryDisplayStrings2 = [v11 secondaryDisplayStrings];
          v27 = [secondaryDisplayStrings2 count];

          if (!v27)
          {
            goto LABEL_11;
          }

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v29 = v28 * 0.8;
          symbolStyle3 = [v8 symbolStyle];
          [symbolStyle3 setFontSize:v29];

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v32 = v31 * 0.2;
          symbolStyle4 = [v8 symbolStyle];
          [symbolStyle4 setTextOffset:{0.0, v32}];

          symbolStyle5 = [v8 symbolStyle];
          [symbolStyle5 setKerning:0.0];

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setFontSize:v35 * 0.8];
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v37 = v36 * 0.2;
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setTextOffset:{v37, v38 * -0.1}];
          v39 = -4.0;
        }

        else
        {
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v41 = v40 * -0.3;
          symbolStyle6 = [v8 symbolStyle];
          [symbolStyle6 setTextOffset:{0.0, v41}];

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setFontSize:v43 * 0.5];
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setTextOffset:{0.0, v44 * 0.5}];
          v39 = 1.0;
        }

        [v17 setKerning:v39];
      }

LABEL_11:
    }
  }

  displayString3 = [v11 displayString];
  v46 = [displayString3 length];

  if (v46 >= 2)
  {
    symbolStyle7 = [v8 symbolStyle];
    [symbolStyle7 fontSize];
    v49 = v48 * 0.8;
    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 setFontSize:v49];
  }

  name = [keyCopy name];
  if ([name hasPrefix:@"TenKey-Chinese-Pinyin-"])
  {
  }

  else
  {
    name2 = [keyCopy name];
    v53 = [name2 hasPrefix:@"TenKey-Latin-"];

    if (!v53)
    {
      goto LABEL_18;
    }
  }

  symbolStyle9 = [v8 symbolStyle];
  [symbolStyle9 setFontName:@"UIKBRenderFactorySystemFontName"];

LABEL_18:
  [keyCopy frame];
  MaxX = CGRectGetMaxX(v100);
  [keyplaneCopy frame];
  if (MaxX >= CGRectGetMaxX(v101))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = 0.5;
  }

  [keyCopy frame];
  [keyplaneCopy frame];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v103.origin.x = v58;
  v103.origin.y = v60;
  v103.size.width = v62;
  v103.size.height = v64;
  MaxY = CGRectGetMaxY(v103);
  v66 = objc_msgSend_geometry(v8, MaxY);
  [v66 paddedFrame];
  v68 = v67 + 0.0;
  v70 = v69 - v56;
  v72 = v71 + 0.0;
  v74 = v73 + -0.5;
  v75 = objc_msgSend_geometry(v8);
  [v75 setFrame:{v68, v72, v70, v74}];

  v76 = objc_msgSend_geometry(v8);
  [v76 frame];
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = objc_msgSend_geometry(v8);
  [v85 setPaddedFrame:{v78, v80, v82, v84}];

  v86 = objc_msgSend_geometry(v8);
  [v86 frame];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = objc_msgSend_geometry(v8);
  [v95 setDisplayFrame:{v88, v90, v92, v94}];

  return v8;
}

@end