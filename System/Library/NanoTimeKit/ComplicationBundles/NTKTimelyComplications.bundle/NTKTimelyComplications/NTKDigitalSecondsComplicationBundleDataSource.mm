@interface NTKDigitalSecondsComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (id)localizedComplicationName;
- (id)_graphicTemplateWithOverrideDate:(id)date;
- (id)sampleTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKDigitalSecondsComplicationBundleDataSource

+ (id)localizedComplicationName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"COMPLICATION_TITLE" value:&stru_105F8 table:@"DigitalSeconds"];

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  v5 = [device supportsPDRCapability:2031260689];
  v7 = family == 10 || family == 12;
  return v5 && v7;
}

- (id)sampleTemplate
{
  v3 = NTKIdealizedDate();
  v4 = [(NTKDigitalSecondsComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v3];

  return v4;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = CLKForcedTime();

  if (v5)
  {
    v6 = NTKIdealizedDate();
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v7 = [(NTKDigitalSecondsComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v6];
  v8 = +[NSDate date];
  v9 = [CLKComplicationTimelineEntry entryWithDate:v8 complicationTemplate:v7];

  handlerCopy[2](handlerCopy, v9);
}

- (id)_graphicTemplateWithOverrideDate:(id)date
{
  dateCopy = date;
  family = [(NTKDigitalSecondsComplicationBundleDataSource *)self family];
  v6 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = @"NTKDigitalSecondsGraphicCircularViewOverrideDateKey";
    v12 = dateCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v6 setMetadata:v7];
  }

  v8 = CLKComplicationTemplateGraphicExtraLargeCircularImage_ptr;
  if (family != &dword_C)
  {
    v8 = CLKComplicationTemplateGraphicCircularImage_ptr;
  }

  v9 = [objc_alloc(*v8) initWithImageProvider:v6];

  return v9;
}

@end