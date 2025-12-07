@interface WFAppInFocusTrigger
+ (id)localizedDisplayNameWithContext:(id)context;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFAppInFocusTrigger)init;
- (WFAppInFocusTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppInFocusTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9AFA8 serializedParameterArray:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WFAppInFocusTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:zone];
  selectedBundleIdentifiers = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  v6 = [selectedBundleIdentifiers copy];
  [v4 setSelectedBundleIdentifiers:v6];

  return v4;
}

- (WFAppInFocusTrigger)initWithCoder:(id)coder
{
  v36[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = WFAppInFocusTrigger;
  v5 = [(WFTrigger *)&v34 initWithCoder:coderCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = MEMORY[0x1E695E0F0];
  [(WFAppInFocusTrigger *)v5 setSelectedBundleIdentifiers:MEMORY[0x1E695E0F0]];
  if ([coderCopy containsValueForKey:@"appIdentifiers"])
  {
    v8 = MEMORY[0x1E695DFD8];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"appIdentifiers"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    [(WFAppInFocusTrigger *)v6 setSelectedBundleIdentifiers:v13];

LABEL_12:
    goto LABEL_13;
  }

  if ([coderCopy containsValueForKey:@"apps"])
  {
    v14 = MEMORY[0x1E695DFD8];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"apps"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v7;
    }

    v20 = v19;

    v9 = [v20 if_compactMap:&__block_literal_global_11389];

    [(WFAppInFocusTrigger *)v6 setSelectedBundleIdentifiers:v9];
    goto LABEL_12;
  }

LABEL_13:
  if ([coderCopy containsValueForKey:@"onFocus"])
  {
    -[WFAppInFocusTrigger setOnFocus:](v6, "setOnFocus:", [coderCopy decodeBoolForKey:@"onFocus"]);
    v21 = [coderCopy decodeBoolForKey:@"onBackground"];
  }

  else
  {
    [(WFAppInFocusTrigger *)v6 setOnFocus:1];
    v21 = 0;
  }

  [(WFAppInFocusTrigger *)v6 setOnBackground:v21];
  selectedBundleIdentifiers = [(WFAppInFocusTrigger *)v6 selectedBundleIdentifiers];
  v23 = [selectedBundleIdentifiers if_objectsPassingTest:&__block_literal_global_283];

  v24 = objc_opt_new();
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __37__WFAppInFocusTrigger_initWithCoder___block_invoke_3;
  v32 = &unk_1E83800A8;
  v33 = v24;
  v25 = v24;
  [v23 enumerateObjectsUsingBlock:&v29];
  allObjects = [v25 allObjects];
  [(WFAppInFocusTrigger *)v6 setSelectedBundleIdentifiers:allObjects];

  v27 = v6;
LABEL_17:

  return v6;
}

void __37__WFAppInFocusTrigger_initWithCoder___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
  v4 = [v3 applicationState];
  v5 = [v4 isInstalled];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAppInFocusTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"appIdentifiers"];

  [coderCopy encodeBool:-[WFAppInFocusTrigger onFocus](self forKey:{"onFocus"), @"onFocus"}];
  [coderCopy encodeBool:-[WFAppInFocusTrigger onBackground](self forKey:{"onBackground"), @"onBackground"}];
}

- (id)localizedPastTenseDescription
{
  v25 = *MEMORY[0x1E69E9840];
  selectedBundleIdentifiers = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  v4 = [selectedBundleIdentifiers count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    selectedBundleIdentifiers2 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v7 = [selectedBundleIdentifiers2 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    localizedName = [v8 localizedName];
    if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"Opened or closed “%@”";
    }

    else if ([(WFAppInFocusTrigger *)self onFocus])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"Opened “%@”";
    }

    else
    {
      if (![(WFAppInFocusTrigger *)self onBackground])
      {
        v19 = getWFTriggersLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v22 = "[WFAppInFocusTrigger localizedPastTenseDescription]";
          v23 = 2114;
          selfCopy2 = self;
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
        }

        v15 = &stru_1F4A1C408;
        goto LABEL_15;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"Closed “%@”";
    }

    v14 = WFLocalizedString(v11);
    v15 = [v10 localizedStringWithFormat:v14, localizedName];

LABEL_15:
    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"Opened or closed any of %lu apps";
LABEL_18:
    v16 = WFLocalizedString(v13);
    selectedBundleIdentifiers3 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v15 = [v12 localizedStringWithFormat:v16, objc_msgSend(selectedBundleIdentifiers3, "count")];

    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"Opened any of %lu apps";
    goto LABEL_18;
  }

  if ([(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"Closed any of %lu apps";
    goto LABEL_18;
  }

  v20 = getWFTriggersLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v22 = "[WFAppInFocusTrigger localizedPastTenseDescription]";
    v23 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v15 = &stru_1F4A1C408;
LABEL_19:

  return v15;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v25 = *MEMORY[0x1E69E9840];
  selectedBundleIdentifiers = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  v4 = [selectedBundleIdentifiers count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    selectedBundleIdentifiers2 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v7 = [selectedBundleIdentifiers2 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    localizedName = [v8 localizedName];
    if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When “%@” is opened or closed";
    }

    else if ([(WFAppInFocusTrigger *)self onFocus])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When “%@” is opened";
    }

    else
    {
      if (![(WFAppInFocusTrigger *)self onBackground])
      {
        v19 = getWFTriggersLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v22 = "[WFAppInFocusTrigger localizedDescriptionWithConfigurationSummary]";
          v23 = 2114;
          selfCopy2 = self;
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
        }

        v15 = &stru_1F4A1C408;
        goto LABEL_15;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When “%@” is closed";
    }

    v14 = WFLocalizedString(v11);
    v15 = [v10 localizedStringWithFormat:v14, localizedName];

LABEL_15:
    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus]&& [(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When any of %lu apps are opened or closed";
LABEL_18:
    v16 = WFLocalizedPluralString(v13);
    selectedBundleIdentifiers3 = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
    v15 = [v12 localizedStringWithFormat:v16, objc_msgSend(selectedBundleIdentifiers3, "count")];

    goto LABEL_19;
  }

  if ([(WFAppInFocusTrigger *)self onFocus])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When any of %lu apps are opened";
    goto LABEL_18;
  }

  if ([(WFAppInFocusTrigger *)self onBackground])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When any of %lu apps are closed";
    goto LABEL_18;
  }

  v20 = getWFTriggersLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v22 = "[WFAppInFocusTrigger localizedDescriptionWithConfigurationSummary]";
    v23 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

  v15 = &stru_1F4A1C408;
LABEL_19:

  return v15;
}

- (BOOL)hasValidConfiguration
{
  selectedBundleIdentifiers = [(WFAppInFocusTrigger *)self selectedBundleIdentifiers];
  if ([selectedBundleIdentifiers count])
  {
    onBackground = [(WFAppInFocusTrigger *)self onFocus]|| [(WFAppInFocusTrigger *)self onBackground];
  }

  else
  {
    onBackground = 0;
  }

  return onBackground;
}

- (WFAppInFocusTrigger)init
{
  v7.receiver = self;
  v7.super_class = WFAppInFocusTrigger;
  v2 = [(WFTrigger *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    selectedBundleIdentifiers = v2->_selectedBundleIdentifiers;
    v2->_selectedBundleIdentifiers = v3;

    v2->_onFocus = 1;
    v5 = v2;
  }

  return v2;
}

+ (id)tintColor
{
  v2 = MEMORY[0x1E69E09E0];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 colorNamed:@"AppTriggerIconColor" inBundle:v3];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"App", @"App");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end