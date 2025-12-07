@interface CLKComplicationTemplateGraphicBezelCircularText
+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate;
+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider;
- (BOOL)needsSerializableCopy;
- (CLKComplicationTemplateGraphicBezelCircularText)initWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider;
- (id)_validEmbeddedTemplateClassNamesForKey:(id)key;
- (id)serializableCopyWithImageProviders:(id)providers;
@end

@implementation CLKComplicationTemplateGraphicBezelCircularText

- (CLKComplicationTemplateGraphicBezelCircularText)initWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider
{
  v6 = circularTemplate;
  v7 = textProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicBezelCircularText;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicBezelCircularText *)initPrivate setCircularTemplate:v6];
    [(CLKComplicationTemplateGraphicBezelCircularText *)v9 setTextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate
{
  v4 = circularTemplate;
  v5 = [[self alloc] initWithCircularTemplate:v4];

  return v5;
}

+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider
{
  v6 = textProvider;
  v7 = circularTemplate;
  v8 = [[self alloc] initWithCircularTemplate:v7 textProvider:v6];

  return v8;
}

- (id)_validEmbeddedTemplateClassNamesForKey:(id)key
{
  if (_validEmbeddedTemplateClassNamesForKey__onceToken != -1)
  {
    [CLKComplicationTemplateGraphicBezelCircularText _validEmbeddedTemplateClassNamesForKey:];
  }

  v4 = _validEmbeddedTemplateClassNamesForKey____classNames;

  return v4;
}

void __90__CLKComplicationTemplateGraphicBezelCircularText__validEmbeddedTemplateClassNamesForKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v38[16] = *MEMORY[0x277D85DE8];
  v33 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v37 = NSStringFromClass(v2);
  v38[0] = v37;
  v3 = objc_opt_class();
  v36 = NSStringFromClass(v3);
  v38[1] = v36;
  v4 = objc_opt_class();
  v35 = NSStringFromClass(v4);
  v38[2] = v35;
  v5 = objc_opt_class();
  v34 = NSStringFromClass(v5);
  v38[3] = v34;
  v6 = objc_opt_class();
  v32 = NSStringFromClass(v6);
  v38[4] = v32;
  v7 = objc_opt_class();
  v31 = NSStringFromClass(v7);
  v38[5] = v31;
  v8 = objc_opt_class();
  v30 = NSStringFromClass(v8);
  v38[6] = v30;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v38[7] = v10;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v38[8] = v12;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v38[9] = v14;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v38[10] = v16;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v38[11] = v18;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v38[12] = v20;
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v38[13] = v22;
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v38[14] = v24;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v38[15] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:16];
  v28 = [v33 setWithArray:v27];
  v29 = _validEmbeddedTemplateClassNamesForKey____classNames;
  _validEmbeddedTemplateClassNamesForKey____classNames = v28;
}

- (BOOL)needsSerializableCopy
{
  circularTemplate = [(CLKComplicationTemplateGraphicBezelCircularText *)self circularTemplate];
  needsSerializableCopy = [circularTemplate needsSerializableCopy];

  return needsSerializableCopy;
}

- (id)serializableCopyWithImageProviders:(id)providers
{
  providersCopy = providers;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__CLKComplicationTemplateGraphicBezelCircularText_serializableCopyWithImageProviders___block_invoke;
  v11[3] = &unk_278A1EF38;
  v11[4] = &v12;
  [providersCopy enumerateKeysAndObjectsUsingBlock:v11];
  circularTemplate = [(CLKComplicationTemplateGraphicBezelCircularText *)self circularTemplate];
  v6 = [circularTemplate serializableCopyWithImageProviders:v13[5]];

  v7 = [CLKComplicationTemplateGraphicBezelCircularText alloc];
  textProvider = [(CLKComplicationTemplateGraphicBezelCircularText *)self textProvider];
  v9 = [(CLKComplicationTemplateGraphicBezelCircularText *)v7 initWithCircularTemplate:v6 textProvider:textProvider];

  [(CLKComplicationTemplate *)v9 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __86__CLKComplicationTemplateGraphicBezelCircularText_serializableCopyWithImageProviders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 componentsSeparatedByString:@"."];
  if ([v5 count] >= 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 isEqualToString:@"circularTemplate"];

    if (v7)
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = [v5 objectAtIndexedSubscript:1];
      [v8 setObject:v10 forKeyedSubscript:v9];
    }
  }
}

@end