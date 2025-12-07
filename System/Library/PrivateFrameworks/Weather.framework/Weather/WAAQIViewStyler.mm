@interface WAAQIViewStyler
+ (id)shadowColor;
+ (id)textColorWithLightLabel:(BOOL)label;
- (id)stringWithLogoImageFromText:(id)text attribution:(id)attribution attr:(id)attr;
- (id)styledAQICategoryText:(id)text mode:(id)mode;
- (id)styledAQILocalizedIndexText:(id)text mode:(id)mode;
- (id)styledAQIMetadataCitationText:(id)text attribution:(id)attribution shouldInsertGlyph:(BOOL)glyph;
- (id)styledAQIMetadataGradeText:(id)text;
- (id)styledAQIMetadataRecommendationText:(id)text;
- (id)styledAQIMetadataSourceText:(id)text;
- (id)styledAQIText:(id)text mode:(id)mode;
- (id)styledDashWithLabelColor:(BOOL)color;
@end

@implementation WAAQIViewStyler

+ (id)textColorWithLightLabel:(BOOL)label
{
  labelCopy = label;
  if (textColorWithLightLabel__onceToken != -1)
  {
    +[WAAQIViewStyler textColorWithLightLabel:];
  }

  v4 = textColorWithLightLabel____solid;
  if (labelCopy)
  {
    v5 = textColorWithLightLabel____light;

    v4 = v5;
  }

  return v4;
}

uint64_t __43__WAAQIViewStyler_textColorWithLightLabel___block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.600000024];
  v1 = textColorWithLightLabel____light;
  textColorWithLightLabel____light = v0;

  v2 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v3 = textColorWithLightLabel____solid;
  textColorWithLightLabel____solid = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (id)shadowColor
{
  if (shadowColor_onceToken != -1)
  {
    +[WAAQIViewStyler shadowColor];
  }

  v3 = shadowColor___shadowColor;

  return v3;
}

uint64_t __30__WAAQIViewStyler_shadowColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
  v1 = shadowColor___shadowColor;
  shadowColor___shadowColor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)styledAQIText:(id)text mode:(id)mode
{
  var1 = mode.var1;
  var0 = mode.var0;
  v48[2] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (var1 == 1)
  {
    if (var0 <= 1)
    {
      if (var0)
      {
        if (var0 != 1)
        {
          goto LABEL_26;
        }

        wa_bold = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v18 = *MEMORY[0x277D740C0];
        v35[0] = *MEMORY[0x277D740A8];
        v35[1] = v18;
        v36[0] = wa_bold;
        v36[1] = labelColor;
        v12 = MEMORY[0x277CBEAC0];
        v13 = v36;
        v14 = v35;
      }

      else
      {
        wa_bold = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v26 = *MEMORY[0x277D740C0];
        v37[0] = *MEMORY[0x277D740A8];
        v37[1] = v26;
        v38[0] = wa_bold;
        v38[1] = labelColor;
        v12 = MEMORY[0x277CBEAC0];
        v13 = v38;
        v14 = v37;
      }
    }

    else
    {
      switch(var0)
      {
        case 2:
          wa_bold = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
          labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
          v22 = *MEMORY[0x277D740C0];
          v33[0] = *MEMORY[0x277D740A8];
          v33[1] = v22;
          v34[0] = wa_bold;
          v34[1] = labelColor;
          v12 = MEMORY[0x277CBEAC0];
          v13 = v34;
          v14 = v33;
          break;
        case 3:
          v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          wa_bold = [v23 wa_bold];

          labelColor = [MEMORY[0x277D75348] labelColor];
          v24 = *MEMORY[0x277D740C0];
          v31[0] = *MEMORY[0x277D740A8];
          v31[1] = v24;
          v32[0] = wa_bold;
          v32[1] = labelColor;
          v12 = MEMORY[0x277CBEAC0];
          v13 = v32;
          v14 = v31;
          break;
        case 4:
          v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          wa_bold = [v15 wa_bold];

          labelColor = [MEMORY[0x277D75348] labelColor];
          v16 = *MEMORY[0x277D740C0];
          v29[0] = *MEMORY[0x277D740A8];
          v29[1] = v16;
          v30[0] = wa_bold;
          v30[1] = labelColor;
          v12 = MEMORY[0x277CBEAC0];
          v13 = v30;
          v14 = v29;
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  else
  {
    if (var1)
    {
      goto LABEL_26;
    }

    if (var0 <= 1)
    {
      if (var0)
      {
        if (var0 != 1)
        {
          goto LABEL_26;
        }

        wa_bold = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v17 = *MEMORY[0x277D740C0];
        v45[0] = *MEMORY[0x277D740A8];
        v45[1] = v17;
        v46[0] = wa_bold;
        v46[1] = labelColor;
        v12 = MEMORY[0x277CBEAC0];
        v13 = v46;
        v14 = v45;
      }

      else
      {
        wa_bold = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v25 = *MEMORY[0x277D740C0];
        v47[0] = *MEMORY[0x277D740A8];
        v47[1] = v25;
        v48[0] = wa_bold;
        v48[1] = labelColor;
        v12 = MEMORY[0x277CBEAC0];
        v13 = v48;
        v14 = v47;
      }
    }

    else
    {
      switch(var0)
      {
        case 2:
          wa_bold = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
          labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
          v19 = *MEMORY[0x277D740C0];
          v43[0] = *MEMORY[0x277D740A8];
          v43[1] = v19;
          v44[0] = wa_bold;
          v44[1] = labelColor;
          v12 = MEMORY[0x277CBEAC0];
          v13 = v44;
          v14 = v43;
          break;
        case 3:
          v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          wa_bold = [v20 wa_bold];

          labelColor = [MEMORY[0x277D75348] labelColor];
          v21 = *MEMORY[0x277D740C0];
          v41[0] = *MEMORY[0x277D740A8];
          v41[1] = v21;
          v42[0] = wa_bold;
          v42[1] = labelColor;
          v12 = MEMORY[0x277CBEAC0];
          v13 = v42;
          v14 = v41;
          break;
        case 4:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          wa_bold = [v8 wa_bold];

          labelColor = [MEMORY[0x277D75348] labelColor];
          v11 = *MEMORY[0x277D740C0];
          v39[0] = *MEMORY[0x277D740A8];
          v39[1] = v11;
          v40[0] = wa_bold;
          v40[1] = labelColor;
          v12 = MEMORY[0x277CBEAC0];
          v13 = v40;
          v14 = v39;
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  v27 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:2];
  v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v27];

LABEL_26:

  return v4;
}

- (id)styledAQILocalizedIndexText:(id)text mode:(id)mode
{
  var1 = mode.var1;
  var0 = mode.var0;
  v44[2] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (var1 == 1)
  {
    if (var0 <= 1)
    {
      if (var0)
      {
        if (var0 != 1)
        {
          goto LABEL_26;
        }

        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v16 = *MEMORY[0x277D740C0];
        v31[0] = *MEMORY[0x277D740A8];
        v31[1] = v16;
        v32[0] = v8;
        v32[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v32;
        v13 = v31;
      }

      else
      {
        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v22 = *MEMORY[0x277D740C0];
        v33[0] = *MEMORY[0x277D740A8];
        v33[1] = v22;
        v34[0] = v8;
        v34[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v34;
        v13 = v33;
      }
    }

    else
    {
      switch(var0)
      {
        case 2:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
          labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
          v19 = *MEMORY[0x277D740C0];
          v29[0] = *MEMORY[0x277D740A8];
          v29[1] = v19;
          v30[0] = v8;
          v30[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v30;
          v13 = v29;
          break;
        case 3:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v20 = *MEMORY[0x277D740C0];
          v27[0] = *MEMORY[0x277D740A8];
          v27[1] = v20;
          v28[0] = v8;
          v28[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v28;
          v13 = v27;
          break;
        case 4:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v14 = *MEMORY[0x277D740C0];
          v25[0] = *MEMORY[0x277D740A8];
          v25[1] = v14;
          v26[0] = v8;
          v26[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v26;
          v13 = v25;
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  else
  {
    if (var1)
    {
      goto LABEL_26;
    }

    if (var0 <= 1)
    {
      if (var0)
      {
        if (var0 != 1)
        {
          goto LABEL_26;
        }

        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v15 = *MEMORY[0x277D740C0];
        v41[0] = *MEMORY[0x277D740A8];
        v41[1] = v15;
        v42[0] = v8;
        v42[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v42;
        v13 = v41;
      }

      else
      {
        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v21 = *MEMORY[0x277D740C0];
        v43[0] = *MEMORY[0x277D740A8];
        v43[1] = v21;
        v44[0] = v8;
        v44[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v44;
        v13 = v43;
      }
    }

    else
    {
      switch(var0)
      {
        case 2:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
          labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
          v17 = *MEMORY[0x277D740C0];
          v39[0] = *MEMORY[0x277D740A8];
          v39[1] = v17;
          v40[0] = v8;
          v40[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v40;
          v13 = v39;
          break;
        case 3:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v18 = *MEMORY[0x277D740C0];
          v37[0] = *MEMORY[0x277D740A8];
          v37[1] = v18;
          v38[0] = v8;
          v38[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v38;
          v13 = v37;
          break;
        case 4:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v10 = *MEMORY[0x277D740C0];
          v35[0] = *MEMORY[0x277D740A8];
          v35[1] = v10;
          v36[0] = v8;
          v36[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v36;
          v13 = v35;
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  v23 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:2];
  v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v23];

LABEL_26:

  return v4;
}

- (id)styledAQICategoryText:(id)text mode:(id)mode
{
  var1 = mode.var1;
  var0 = mode.var0;
  v44[2] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (var1 == 1)
  {
    if (var0 <= 1)
    {
      if (var0)
      {
        if (var0 != 1)
        {
          goto LABEL_26;
        }

        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v16 = *MEMORY[0x277D740C0];
        v31[0] = *MEMORY[0x277D740A8];
        v31[1] = v16;
        v32[0] = v8;
        v32[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v32;
        v13 = v31;
      }

      else
      {
        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v22 = *MEMORY[0x277D740C0];
        v33[0] = *MEMORY[0x277D740A8];
        v33[1] = v22;
        v34[0] = v8;
        v34[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v34;
        v13 = v33;
      }
    }

    else
    {
      switch(var0)
      {
        case 2:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
          labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
          v19 = *MEMORY[0x277D740C0];
          v29[0] = *MEMORY[0x277D740A8];
          v29[1] = v19;
          v30[0] = v8;
          v30[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v30;
          v13 = v29;
          break;
        case 3:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v20 = *MEMORY[0x277D740C0];
          v27[0] = *MEMORY[0x277D740A8];
          v27[1] = v20;
          v28[0] = v8;
          v28[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v28;
          v13 = v27;
          break;
        case 4:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v14 = *MEMORY[0x277D740C0];
          v25[0] = *MEMORY[0x277D740A8];
          v25[1] = v14;
          v26[0] = v8;
          v26[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v26;
          v13 = v25;
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  else
  {
    if (var1)
    {
      goto LABEL_26;
    }

    if (var0 <= 1)
    {
      if (var0)
      {
        if (var0 != 1)
        {
          goto LABEL_26;
        }

        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v15 = *MEMORY[0x277D740C0];
        v41[0] = *MEMORY[0x277D740A8];
        v41[1] = v15;
        v42[0] = v8;
        v42[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v42;
        v13 = v41;
      }

      else
      {
        v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
        labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
        v21 = *MEMORY[0x277D740C0];
        v43[0] = *MEMORY[0x277D740A8];
        v43[1] = v21;
        v44[0] = v8;
        v44[1] = labelColor;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v44;
        v13 = v43;
      }
    }

    else
    {
      switch(var0)
      {
        case 2:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
          labelColor = [WAAQIViewStyler textColorWithLightLabel:0];
          v17 = *MEMORY[0x277D740C0];
          v39[0] = *MEMORY[0x277D740A8];
          v39[1] = v17;
          v40[0] = v8;
          v40[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v40;
          v13 = v39;
          break;
        case 3:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v18 = *MEMORY[0x277D740C0];
          v37[0] = *MEMORY[0x277D740A8];
          v37[1] = v18;
          v38[0] = v8;
          v38[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v38;
          v13 = v37;
          break;
        case 4:
          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
          labelColor = [MEMORY[0x277D75348] labelColor];
          v10 = *MEMORY[0x277D740C0];
          v35[0] = *MEMORY[0x277D740A8];
          v35[1] = v10;
          v36[0] = v8;
          v36[1] = labelColor;
          v11 = MEMORY[0x277CBEAC0];
          v12 = v36;
          v13 = v35;
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  v23 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:2];
  v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v23];

LABEL_26:

  return v4;
}

- (id)styledDashWithLabelColor:(BOOL)color
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  if (color)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [WAAQIViewStyler textColorWithLightLabel:0];
  }
  v5 = ;
  v6 = *MEMORY[0x277D740C0];
  v10[0] = *MEMORY[0x277D740A8];
  v10[1] = v6;
  v11[0] = v4;
  v11[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"—" attributes:v7];

  return v8;
}

- (id)styledAQIMetadataSourceText:(id)text
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D74300];
  v4 = *MEMORY[0x277D76938];
  textCopy = text;
  v6 = [v3 preferredFontForTextStyle:v4];
  v7 = [WAAQIViewStyler textColorWithLightLabel:1];
  v8 = *MEMORY[0x277D740C0];
  v12[0] = *MEMORY[0x277D740A8];
  v12[1] = v8;
  v13[0] = v6;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v9];

  return v10;
}

- (id)styledAQIMetadataGradeText:(id)text
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D74300];
  v4 = *MEMORY[0x277D76A08];
  textCopy = text;
  v6 = [v3 preferredFontForTextStyle:v4];
  v7 = [WAAQIViewStyler textColorWithLightLabel:0];
  v8 = objc_alloc_init(MEMORY[0x277D74240]);
  [v8 setLineSpacing:0.0];
  v9 = *MEMORY[0x277D740C0];
  v13[0] = *MEMORY[0x277D740A8];
  v13[1] = v9;
  v14[0] = v6;
  v14[1] = v7;
  v13[2] = *MEMORY[0x277D74118];
  v14[2] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v10];

  return v11;
}

- (id)styledAQIMetadataRecommendationText:(id)text
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D74300];
  v4 = *MEMORY[0x277D76918];
  textCopy = text;
  v6 = [v3 preferredFontForTextStyle:v4];
  v7 = objc_alloc_init(MEMORY[0x277D74240]);
  [v7 setLineSpacing:0.0];
  v8 = [WAAQIViewStyler textColorWithLightLabel:0];
  v9 = *MEMORY[0x277D740C0];
  v13[0] = *MEMORY[0x277D740A8];
  v13[1] = v9;
  v14[0] = v6;
  v14[1] = v8;
  v13[2] = *MEMORY[0x277D74118];
  v14[2] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v10];

  return v11;
}

- (id)styledAQIMetadataCitationText:(id)text attribution:(id)attribution shouldInsertGlyph:(BOOL)glyph
{
  glyphCopy = glyph;
  v22[3] = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v9 = MEMORY[0x277D74300];
  v10 = *MEMORY[0x277D76938];
  textCopy = text;
  v12 = [v9 preferredFontForTextStyle:v10];
  v13 = [WAAQIViewStyler textColorWithLightLabel:1];
  v14 = objc_alloc_init(MEMORY[0x277D74240]);
  [v14 setLineSpacing:0.0];
  v15 = *MEMORY[0x277D740C0];
  v21[0] = *MEMORY[0x277D740A8];
  v21[1] = v15;
  v22[0] = v12;
  v22[1] = v13;
  v21[2] = *MEMORY[0x277D74118];
  v22[2] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v16];

  if (attributionCopy && glyphCopy)
  {
    v18 = [(WAAQIViewStyler *)self stringWithLogoImageFromText:v17 attribution:attributionCopy attr:v16];
  }

  else
  {
    v18 = v17;
  }

  v19 = v18;

  return v19;
}

- (id)stringWithLogoImageFromText:(id)text attribution:(id)attribution attr:(id)attr
{
  v6 = MEMORY[0x277D755D0];
  v7 = *MEMORY[0x277D76938];
  attrCopy = attr;
  textCopy = text;
  v10 = [v6 configurationWithTextStyle:v7 scale:1];
  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v10];
  v12 = [MEMORY[0x277D74270] textAttachmentWithImage:v11];
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:textCopy];

  v14 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v12];
  v15 = [v14 mutableCopy];

  [v15 addAttributes:attrCopy range:{0, objc_msgSend(v15, "length")}];
  [v13 appendAttributedString:v15];

  return v13;
}

@end