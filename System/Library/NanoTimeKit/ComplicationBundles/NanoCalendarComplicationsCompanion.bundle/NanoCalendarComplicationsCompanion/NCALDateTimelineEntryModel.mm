@interface NCALDateTimelineEntryModel
- (id)_graphicRectangularDateBodyTextWithDate:(id)date displayLunarDate:(BOOL)lunarDate;
- (id)_graphicRectangularDateHeaderTextWithDate:(id)date useLunarDate:(BOOL)lunarDate;
- (id)_newBezelTemplate;
- (id)_newCircularTemplateMedium:(BOOL)medium;
- (id)_newExtraLargeLunarTemplate;
- (id)_newExtraLargeTemplate;
- (id)_newGraphicRectangularTemplateDisplayingLunarDate:(BOOL)date;
- (id)_newLargeUtilitarianTemplate;
- (id)_newModularLargeLunarTemplate;
- (id)_newModularLargeTemplate;
- (id)_newModularSmallLunarTemplate;
- (id)_newModularSmallTemplate;
- (id)_newSignatureCircularTemplate;
- (id)_newSignatureExtraLargeCircularTemplate;
- (id)_newSimpleTextTemplate;
- (id)_newSmallFlatUtilitarianTemplate;
- (id)_simpleTextShortDateProvider;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NCALDateTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  lunar = [(NCALDateTimelineEntryModel *)self lunar];
  if (lunar)
  {
    v6 = OverlayCalendarLocaleID();
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  if (family > 6)
  {
    if (family > 9)
    {
      switch(family)
      {
        case 10:
          lunar = [(NCALDateTimelineEntryModel *)self _newSignatureCircularTemplate];
          break;
        case 11:
          lunar = [(NCALDateTimelineEntryModel *)self _newGraphicRectangularTemplateDisplayingLunarDate:v7];
          break;
        case 12:
          lunar = [(NCALDateTimelineEntryModel *)self _newSignatureExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_37;
      }
    }

    else if (family == 7)
    {
      if (v7)
      {
        lunar = [(NCALDateTimelineEntryModel *)self _newExtraLargeLunarTemplate];
      }

      else
      {
        lunar = [(NCALDateTimelineEntryModel *)self _newExtraLargeTemplate];
      }
    }

    else if (family == 8)
    {
      lunar = [(NCALDateTimelineEntryModel *)self _newSignatureCornerTemplate];
    }

    else
    {
      lunar = [(NCALDateTimelineEntryModel *)self _newBezelTemplate];
    }

    goto LABEL_36;
  }

  if (family > 2)
  {
    if (family == 3)
    {
      lunar = [(NCALDateTimelineEntryModel *)self _newLargeUtilitarianTemplate];
      goto LABEL_36;
    }

    if (family == 4)
    {
      lunar = [(NCALDateTimelineEntryModel *)self _newCircularTemplateMedium:0];
      goto LABEL_36;
    }

    if (family != 6)
    {
      goto LABEL_37;
    }

LABEL_17:
    lunar = [(NCALDateTimelineEntryModel *)self _newSmallFlatUtilitarianTemplate];
LABEL_36:
    v8 = lunar;
    goto LABEL_37;
  }

  switch(family)
  {
    case 0:
      if (v7)
      {
        lunar = [(NCALDateTimelineEntryModel *)self _newModularSmallLunarTemplate];
      }

      else
      {
        lunar = [(NCALDateTimelineEntryModel *)self _newModularSmallTemplate];
      }

      goto LABEL_36;
    case 1:
      if (v7)
      {
        lunar = [(NCALDateTimelineEntryModel *)self _newModularLargeLunarTemplate];
      }

      else
      {
        lunar = [(NCALDateTimelineEntryModel *)self _newModularLargeTemplate];
      }

      goto LABEL_36;
    case 2:
      goto LABEL_17;
  }

LABEL_37:
  if (CLKComplicationFamilyCircularMedium == family)
  {
    _newSimpleTextTemplate = [(NCALDateTimelineEntryModel *)self _newCircularTemplateMedium:1];
  }

  else
  {
    if (CLKComplicationFamilySimpleText != family)
    {
      goto LABEL_42;
    }

    _newSimpleTextTemplate = [(NCALDateTimelineEntryModel *)self _newSimpleTextTemplate];
  }

  v10 = _newSimpleTextTemplate;

  v8 = v10;
LABEL_42:
  v11 = ncs_log_complication(lunar);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    familyCopy = family;
    v15 = 1024;
    v16 = v8 != 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Has template for family %ld? -> %d", &v13, 0x12u);
  }

  return v8;
}

- (id)_newModularSmallTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:512];

  [v4 setShortUnits:1];
  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v7 = [CLKComplicationTemplateModularSmallDate templateWithWeekdayTextProvider:v4 dayTextProvider:v6];
  [v7 setHighlightMode:2];
  v8 = +[UIColor systemRedColor];
  [v7 setTintColor:v8];

  return v7;
}

- (id)_newModularSmallLunarTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:8];

  [v4 setShortUnits:1];
  v5 = OverlayCalendarLocaleID();
  [v4 setAlternateCalendarLocaleID:v5];

  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v7 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v8 = OverlayCalendarLocaleID();
  [v7 setAlternateCalendarLocaleID:v8];

  v9 = [CLKComplicationTemplateModularSmallStackText templateWithLine1TextProvider:v4 line2TextProvider:v7];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  [v9 setHighlightMode:1];
  return v9;
}

- (id)_newModularLargeTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v3 = [CLKDateTextProvider textProviderWithDate:entryDate units:512];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:24];
  [v4 setShortUnits:1];
  [v4 setAllowsNarrowUnits:1];
  v5 = [CLKComplicationTemplateModularLargeTallBody templateWithHeaderTextProvider:v3 bodyTextProvider:v4];
  v6 = +[UIColor systemRedColor];
  [v5 setTintColor:v6];

  return v5;
}

- (id)_newModularLargeLunarTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:12];

  v5 = OverlayCalendarLocaleID();
  [v4 setAlternateCalendarLocaleID:v5];

  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v7 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  [v7 setShortUnits:1];
  v8 = OverlayCalendarLocaleID();
  [v7 setAlternateCalendarLocaleID:v8];

  v9 = [CLKComplicationTemplateModularLargeTallBody templateWithHeaderTextProvider:v4 bodyTextProvider:v7];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  return v9;
}

- (id)_newSmallFlatUtilitarianTemplate
{
  _simpleTextShortDateProvider = [(NCALDateTimelineEntryModel *)self _simpleTextShortDateProvider];
  v3 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:_simpleTextShortDateProvider];

  return v3;
}

- (id)_simpleTextShortDateProvider
{
  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v3 = OverlayCalendarLocaleID();

    if (v3)
    {
      v4 = 16;
    }

    else
    {
      v4 = 528;
    }
  }

  else
  {
    v4 = 528;
  }

  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate units:v4];

  [v6 setUppercase:1];
  [v6 setShortUnits:1];
  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  return v6;
}

- (id)_newSimpleTextTemplate
{
  _simpleTextShortDateProvider = [(NCALDateTimelineEntryModel *)self _simpleTextShortDateProvider];
  v3 = [CLKComplicationTemplateSimpleText templateWithTextProvider:_simpleTextShortDateProvider];

  return v3;
}

- (id)_newLargeUtilitarianTemplate
{
  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v3 = OverlayCalendarLocaleID();

    if (v3)
    {
      v4 = 28;
    }

    else
    {
      v4 = 536;
    }
  }

  else
  {
    v4 = 536;
  }

  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate units:v4];

  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  v8 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v6];

  return v8;
}

- (id)_newCircularTemplateMedium:(BOOL)medium
{
  mediumCopy = medium;
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate units:16];

  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  v8 = CLKComplicationTemplateCircularMediumSimpleText_ptr;
  if (!mediumCopy)
  {
    v8 = CLKComplicationTemplateCircularSmallSimpleText_ptr;
  }

  v9 = [*v8 templateWithTextProvider:v6];

  return v9;
}

- (id)_newExtraLargeTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:512];

  [v4 setShortUnits:1];
  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v7 = [CLKComplicationTemplateExtraLargeDate templateWithWeekdayTextProvider:v4 dayTextProvider:v6];
  [v7 setHighlightMode:2];
  v8 = +[UIColor systemRedColor];
  [v7 setTintColor:v8];

  return v7;
}

- (id)_newExtraLargeLunarTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:8];

  [v4 setShortUnits:1];
  v5 = OverlayCalendarLocaleID();
  [v4 setAlternateCalendarLocaleID:v5];

  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v7 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v8 = OverlayCalendarLocaleID();
  [v7 setAlternateCalendarLocaleID:v8];

  v9 = [CLKComplicationTemplateExtraLargeStackText templateWithLine1TextProvider:v4 line2TextProvider:v7];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  [v9 setHighlightMode:1];
  return v9;
}

- (id)_newBezelTemplate
{
  _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newSignatureCircularTemplate];
  v3 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:_newSignatureCircularTemplate];

  return v3;
}

- (id)_newSignatureCircularTemplate
{
  [(NCALDateTimelineEntryModel *)self lunar];
  v2 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v3 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v2];
  v6 = NTKRichComplicationViewUsePlatterKey;
  v7 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 setMetadata:v4];

  return v3;
}

- (id)_newSignatureExtraLargeCircularTemplate
{
  [(NCALDateTimelineEntryModel *)self lunar];
  v2 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v3 = [CLKComplicationTemplateGraphicExtraLargeCircularImage templateWithImageProvider:v2];
  v6 = NTKRichComplicationViewUsePlatterKey;
  v7 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 setMetadata:v4];

  return v3;
}

- (id)_graphicRectangularDateHeaderTextWithDate:(id)date useLunarDate:(BOOL)lunarDate
{
  if (lunarDate)
  {
    v5 = 12;
  }

  else
  {
    v5 = 512;
  }

  v6 = [CLKDateTextProvider textProviderWithDate:date units:v5];
  v7 = v6;
  if (lunarDate)
  {
    v8 = OverlayCalendarLocaleID();
    [v7 setAlternateCalendarLocaleID:v8];
  }

  else
  {
    [v6 setAlternateCalendarLocaleID:0];
  }

  v9 = +[UIColor systemRedColor];
  [v7 setTintColor:v9];

  return v7;
}

- (id)_graphicRectangularDateBodyTextWithDate:(id)date displayLunarDate:(BOOL)lunarDate
{
  lunarDateCopy = lunarDate;
  if (lunarDate)
  {
    v5 = 16;
  }

  else
  {
    v5 = 24;
  }

  v6 = [CLKDateTextProvider textProviderWithDate:date units:v5];
  [v6 setShortUnits:1];
  [v6 setAllowsNarrowUnits:!lunarDateCopy];
  if (lunarDateCopy)
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  else
  {
    [v6 setAlternateCalendarLocaleID:0];
  }

  return v6;
}

- (id)_newGraphicRectangularTemplateDisplayingLunarDate:(BOOL)date
{
  dateCopy = date;
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [(NCALDateTimelineEntryModel *)self _graphicRectangularDateHeaderTextWithDate:entryDate useLunarDate:dateCopy];
  v7 = [(NCALDateTimelineEntryModel *)self _graphicRectangularDateBodyTextWithDate:entryDate displayLunarDate:dateCopy];
  v8 = [CLKComplicationTemplateGraphicRectangularLargeText templateWithHeaderTextProvider:v6 bodyTextProvider:v7];

  return v8;
}

@end