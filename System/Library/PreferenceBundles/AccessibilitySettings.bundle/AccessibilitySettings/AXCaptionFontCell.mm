@interface AXCaptionFontCell
+ (double)heightForFontName:(id)name;
- (AXCaptionFontCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateLabel;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXCaptionFontCell

+ (double)heightForFontName:(id)name
{
  nameCopy = name;
  v4 = [UIFont fontWithName:nameCopy size:17.0];
  [nameCopy _legacy_sizeWithFont:v4];
  v6 = v5;

  return v6;
}

- (AXCaptionFontCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = AXCaptionFontCell;
  v4 = [(AXCaptionFontCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(AXCaptionFontCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_fontSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = AXCaptionFontCell;
  [(AXCaptionFontCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(AXCaptionFontCell *)self _updateLabel];
}

- (void)_updateLabel
{
  selfCopy = self;
  specifier = [(AXCaptionFontCell *)self specifier];
  v4 = [specifier propertyForKey:PSIDKey];

  textLabel = [(AXCaptionFontCell *)selfCopy textLabel];
  specifier2 = [(AXCaptionFontCell *)selfCopy specifier];
  v7 = [specifier2 propertyForKey:PSTitleKey];
  if (v7)
  {
    [textLabel setText:v7];
  }

  else
  {
    specifier3 = [(AXCaptionFontCell *)selfCopy specifier];
    name = [specifier3 name];
    [textLabel setText:name];
  }

  if ([v4 isEqualToString:@"Helvetica-Bold"])
  {
    v10 = settingsLocString(@"default.choice", @"CaptioningStyle");
    specifier4 = [(AXCaptionFontCell *)selfCopy specifier];
    name2 = [specifier4 name];
    v13 = [NSString stringWithFormat:v10, name2];
    [textLabel setText:v13];
  }

  text = [textLabel text];

  if (text)
  {
    v17 = AXCaptionFonts(v15, v16);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v46 = selfCopy;
      v47 = textLabel;
      v20 = *v49;
      v21 = 17.0;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v48 + 1) + 8 * i);
          v24 = [v23 objectForKeyedSubscript:@"name"];
          v25 = [v24 isEqualToString:v4];

          if (v25)
          {
            v26 = [v23 objectForKeyedSubscript:@"size"];
            [v26 floatValue];
            v21 = v27;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v19);
      v28 = v21;
      selfCopy = v46;
      textLabel = v47;
    }

    else
    {
      v28 = 17.0;
    }

    specifier5 = [(AXCaptionFontCell *)selfCopy specifier];
    v30 = [specifier5 propertyForKey:@"isBold"];
    bOOLValue = [v30 BOOLValue];

    if (bOOLValue)
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = _CTFontCreateWithNameAndSymbolicTraits();
    v34 = CTFontCopyCharacterSet(v33);
    text2 = [textLabel text];
    v36 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, text2);

    if (v34 && v36)
    {
      if (CFCharacterSetIsSupersetOfSet(v34, v36))
      {
        v37 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        [v37 _scaledValueForValue:v28];
        v39 = v38;

        v40 = [v4 isEqualToString:MACaptionAppearanceSystemFontIdentifier];
        v41 = [v4 isEqual:MACaptionAppearanceMonoSystemFontIdentifier];
        v42 = [v4 isEqual:MACaptionAppearanceMediumSystemFontIdentifier];
        v43 = v39;
        if (v41)
        {
          v44 = [UIFont monospacedSystemFontOfSize:v43 weight:UIFontWeightRegular];
        }

        else if (v40)
        {
          v44 = [UIFont systemFontOfSize:v43];
        }

        else
        {
          if (v42)
          {
            [UIFont systemFontOfSize:v43 weight:UIFontWeightMedium];
          }

          else
          {
            [UIFont fontWithName:v4 size:v32 traits:v43];
          }
          v44 = ;
        }

        v45 = v44;
        [textLabel setFont:v44];
      }
    }

    else if (!v34)
    {
      if (!v36)
      {
LABEL_29:
        if (v33)
        {
          CFRelease(v33);
        }

        [textLabel sizeToFit];

        goto LABEL_32;
      }

LABEL_28:
      CFRelease(v36);
      goto LABEL_29;
    }

    CFRelease(v34);
    if (!v36)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_32:
}

@end