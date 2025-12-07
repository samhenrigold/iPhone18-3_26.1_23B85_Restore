@interface WFTrigger
+ (id)displayGlyph;
+ (id)displayGlyphTintColor;
+ (id)inputTypeDescriptionForClass:(Class)class;
+ (id)localizedDisplayExplanation;
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)offIcon;
+ (id)offLabel;
+ (id)onIcon;
+ (id)onLabel;
+ (id)triggerWithSerializedData:(id)data;
- (BOOL)hasValidConfiguration;
- (WFTrigger)init;
- (double)displayGlyphCornerRadius;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayGlyph;
- (id)displayGlyphHierarchicalColors;
- (id)displayGlyphName;
- (id)displayGlyphTintColor;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedDisplayExplanation;
- (id)localizedDisplayName;
- (id)localizedPastTenseDescription;
- (id)offIcon;
- (id)onIcon;
- (id)serializedData;
- (id)uniqueIdentifier;
@end

@implementation WFTrigger

- (id)localizedPastTenseDescription
{
  v14 = *MEMORY[0x1E69E9840];
  isAllowedToRunAutomatically = [objc_opt_class() isAllowedToRunAutomatically];
  v4 = getWFTriggersLogObject();
  v5 = v4;
  if (isAllowedToRunAutomatically)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315394;
      v11 = "[WFTrigger localizedPastTenseDescription]";
      v12 = 2114;
      v13 = objc_opt_class();
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Subclasses MUST override -localizedPastTenseDescription (but %{public}@ didn't)", &v10, 0x16u);
    }

    localizedDescriptionWithConfigurationSummary = [(WFTrigger *)self localizedDescriptionWithConfigurationSummary];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFTrigger localizedPastTenseDescription]";
      v12 = 2112;
      v13 = objc_opt_class();
      v8 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Shouldn't have used -localizedPastTenseDescription for %@, because it should always ask before running", &v10, 0x16u);
    }

    localizedDescriptionWithConfigurationSummary = &stru_1F4A1C408;
  }

  return localizedDescriptionWithConfigurationSummary;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "[WFTrigger localizedDescriptionWithConfigurationSummary]";
    v10 = 2114;
    v11 = objc_opt_class();
    v3 = v11;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclasses MUST override -localizedDescriptionWithConfigurationSummary (but %{public}@ didn't)", &v8, 0x16u);
  }

  v4 = objc_opt_class();
  defaultContext = [MEMORY[0x1E69E0BE0] defaultContext];
  v6 = [v4 localizedDisplayNameWithContext:defaultContext];

  return v6;
}

- (BOOL)hasValidConfiguration
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315394;
    v6 = "[WFTrigger hasValidConfiguration]";
    v7 = 2114;
    v8 = objc_opt_class();
    v3 = v8;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclasses MUST override -hasValidConfiguration (but %{public}@ didn't)", &v5, 0x16u);
  }

  return 0;
}

- (id)displayGlyphTintColor
{
  v2 = objc_opt_class();

  return [v2 displayGlyphTintColor];
}

- (id)offIcon
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136315394;
    v7 = "[WFTrigger offIcon]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclass MUST override, but %{public}@ didn't", &v6, 0x16u);
  }

  return 0;
}

- (id)onIcon
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136315394;
    v7 = "[WFTrigger onIcon]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclass MUST override, but %{public}@ didn't", &v6, 0x16u);
  }

  return 0;
}

- (double)displayGlyphCornerRadius
{
  v2 = objc_opt_class();

  [v2 displayGlyphCornerRadius];
  return result;
}

- (id)displayGlyph
{
  v2 = objc_opt_class();

  return [v2 displayGlyph];
}

- (id)displayGlyphHierarchicalColors
{
  v2 = objc_opt_class();

  return [v2 displayGlyphHierarchicalColors];
}

- (id)displayGlyphName
{
  v2 = objc_opt_class();

  return [v2 displayGlyphName];
}

- (id)localizedDisplayExplanation
{
  v2 = objc_opt_class();

  return [v2 localizedDisplayExplanation];
}

- (id)localizedDisplayName
{
  v2 = objc_opt_class();
  defaultContext = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [v2 localizedDisplayNameWithContext:defaultContext];

  return v4;
}

- (id)uniqueIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (id)serializedData
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "[WFTrigger serializedData]";
      v10 = 2112;
      selfCopy = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s failed to serialize trigger (%@): %{public}@", buf, 0x20u);
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (WFTrigger)init
{
  v6.receiver = self;
  v6.super_class = WFTrigger;
  v2 = [(WFTrigger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)inputTypeDescriptionForClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromClass(class);
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTrigger.m" lineNumber:256 description:{@"Class is not of type WFContentItem instead %@", v11}];
  }

  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()]|| [(objc_class *)class isSubclassOfClass:objc_opt_class()]|| [(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    localizedPluralTypeDescription = [(objc_class *)class localizedPluralTypeDescription];
  }

  else
  {
    localizedPluralTypeDescription = [(objc_class *)class localizedTypeDescription];
  }

  v7 = localizedPluralTypeDescription;
  localizedLowercaseString = [localizedPluralTypeDescription localizedLowercaseString];

  return localizedLowercaseString;
}

+ (id)displayGlyphTintColor
{
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:4];

  return v2;
}

+ (id)offLabel
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136315394;
    v7 = "+[WFTrigger offLabel]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclass MUST override, but %{public}@ didn't", &v6, 0x16u);
  }

  return 0;
}

+ (id)onLabel
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136315394;
    v7 = "+[WFTrigger onLabel]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclass MUST override, but %{public}@ didn't", &v6, 0x16u);
  }

  return 0;
}

+ (id)offIcon
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136315394;
    v7 = "+[WFTrigger offIcon]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclass MUST override, but %{public}@ didn't", &v6, 0x16u);
  }

  return 0;
}

+ (id)onIcon
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 136315394;
    v7 = "+[WFTrigger onIcon]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclass MUST override, but %{public}@ didn't", &v6, 0x16u);
  }

  return 0;
}

+ (id)displayGlyph
{
  displayGlyphHierarchicalColors = [self displayGlyphHierarchicalColors];

  v4 = MEMORY[0x1E69E0B58];
  displayGlyphName = [self displayGlyphName];
  if (displayGlyphHierarchicalColors)
  {
    displayGlyphHierarchicalColors2 = [self displayGlyphHierarchicalColors];
    v7 = [v4 triggerDisplaySymbolNamed:displayGlyphName hierarchicalColors:displayGlyphHierarchicalColors2];
  }

  else
  {
    v7 = [v4 triggerDisplaySymbolNamed:displayGlyphName renderingMode:2];
  }

  return v7;
}

+ (id)localizedDisplayExplanation
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315394;
    v6 = "+[WFTrigger localizedDisplayExplanation]";
    v7 = 2114;
    v8 = objc_opt_class();
    v3 = v8;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_FAULT, "%s Subclasses MUST override +localizedDisplayExplanation (but %{public}@ didn't)", &v5, 0x16u);
  }

  return &stru_1F4A1C408;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getWFTriggersLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315394;
    v7 = "+[WFTrigger localizedDisplayNameWithContext:]";
    v8 = 2114;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_FAULT, "%s Subclasses MUST override +localizedDisplayName (but %{public}@ didn't)", &v6, 0x16u);
  }

  return &stru_1F4A1C408;
}

+ (id)triggerWithSerializedData:(id)data
{
  v27[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc_init(WFTriggerMigrator);
  v20 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v20];
  v6 = v20;
  [v5 setClass:objc_opt_class() forClassName:@"LSApplicationProxy"];
  [v5 setDelegate:v4];
  if (!v5)
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      *buf = 136315394;
      v22 = "+[WFTrigger triggerWithSerializedData:]";
      v23 = 2112;
      v24 = localizedDescription;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to create NSKeyedUnarchiver due to error: %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v7 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v5 decodeObjectOfClasses:v9 forKey:*MEMORY[0x1E696A508]];

  if (!v10)
  {
    v17 = getWFTriggersLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [dataCopy length];
      *buf = 136315650;
      v22 = "+[WFTrigger triggerWithSerializedData:]";
      v23 = 2048;
      v24 = v18;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Failed to unarchive WFTrigger from data (length=%lu) error: %{public}@", buf, 0x20u);
    }

    v11 = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_12;
  }

  if ([v10 isMemberOfClass:objc_opt_class()])
  {
    v11 = v10;
    v12 = objc_opt_new();
    region = [v11 region];
    [v12 setRegion:region];

    startTime = [v11 startTime];
    [v12 setStartTime:startTime];

    endTime = [v11 endTime];

    [v12 setEndTime:endTime];
  }

  else
  {
    v11 = v10;
    v12 = v11;
  }

LABEL_12:

  return v12;
}

@end