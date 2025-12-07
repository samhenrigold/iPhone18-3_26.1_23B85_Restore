@interface CHSConfiguredWidgetDescriptor
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (CHSConfiguredWidgetContainerDescriptor)container;
- (CHSConfiguredWidgetDescriptor)init;
- (CHSConfiguredWidgetDescriptor)initWithCoder:(id)coder;
- (CHSConfiguredWidgetDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics isSuggestion:(BOOL)suggestion isSystemConfigured:(BOOL)configured;
- (id)_initWithDescriptor:(id)descriptor;
- (id)_initWithUniqueIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics displayProperties:(id)properties fallbackToDefaultDisplayIfNecessary:(BOOL)necessary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)extensionBundleIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (unint64_t)supportedRenderingModes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSConfiguredWidgetDescriptor

- (id)extensionBundleIdentifier
{
  extensionIdentity = [(CHSWidget *)self->_widget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];

  return extensionBundleIdentifier;
}

- (CHSConfiguredWidgetContainerDescriptor)container
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_container);

  return WeakRetained;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSConfiguredWidgetDescriptor.m" lineNumber:47 description:@"use designated initializer"];

  return 0;
}

- (CHSConfiguredWidgetDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSConfiguredWidgetDescriptor.m" lineNumber:52 description:@"use designated initializer"];

  return 0;
}

- (id)_initWithUniqueIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics displayProperties:(id)properties fallbackToDefaultDisplayIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v42[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  widgetCopy = widget;
  metricsCopy = metrics;
  propertiesCopy = properties;
  v36.receiver = self;
  v36.super_class = CHSConfiguredWidgetDescriptor;
  v16 = [(CHSConfiguredWidgetDescriptor *)&v36 init];
  if (v16)
  {
    v17 = [widgetCopy copy];
    widget = v16->_widget;
    v16->_widget = v17;

    v19 = [identifierCopy copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v19;

    v21 = [metricsCopy copy];
    metrics = v16->_metrics;
    v16->_metrics = v21;

    *&v16->_suggestion = 0;
    v23 = +[CHSWidgetRefreshStrategyFactory defaultStrategy];
    refreshStrategy = v16->_refreshStrategy;
    v16->_refreshStrategy = v23;

    v16->_supportedColorSchemes = 3;
    v25 = [[CHSWidgetRenderScheme alloc] initWithRenderingMode:0 backgroundViewPolicy:0];
    v42[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    supportedRenderSchemes = v16->_supportedRenderSchemes;
    v16->_supportedRenderSchemes = v26;

    if (propertiesCopy)
    {
      v28 = propertiesCopy;
      displayProperties = v16->_displayProperties;
      v16->_displayProperties = v28;
    }

    else if (necessaryCopy)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2050000000;
      v30 = getFBDisplayManagerClass_softClass;
      v41 = getFBDisplayManagerClass_softClass;
      if (!getFBDisplayManagerClass_softClass)
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __getFBDisplayManagerClass_block_invoke;
        v37[3] = &unk_1E74534C8;
        v37[4] = &v38;
        __getFBDisplayManagerClass_block_invoke(v37);
        v30 = v39[3];
      }

      v31 = v30;
      _Block_object_dispose(&v38, 8);
      v32 = [CHSWidgetDisplayProperties alloc];
      displayProperties = [v30 mainConfiguration];
      v33 = [(CHSWidgetDisplayProperties *)v32 initWithDisplayConfiguration:displayProperties];
      v34 = v16->_displayProperties;
      v16->_displayProperties = v33;
    }

    else
    {
      displayProperties = v16->_displayProperties;
      v16->_displayProperties = 0;
    }

    *&v16->_supportsLowLuminance = 0;
    v16->_supportedProximities = 1;
    v16->_idealizedDateComponents = 0;
  }

  return v16;
}

- (CHSConfiguredWidgetDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics isSuggestion:(BOOL)suggestion isSystemConfigured:(BOOL)configured
{
  result = [(CHSConfiguredWidgetDescriptor *)self initWithUniqueIdentifier:identifier widget:widget metrics:metrics];
  if (result)
  {
    result->_suggestion = suggestion;
    result->_systemConfigured = configured;
  }

  return result;
}

- (id)_initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(CHSConfiguredWidgetDescriptor *)self _initWithUniqueIdentifier:*(descriptorCopy + 10) widget:*(descriptorCopy + 11) metrics:*(descriptorCopy + 12) displayProperties:*(descriptorCopy + 6) fallbackToDefaultDisplayIfNecessary:0];
  v6 = v5;
  if (v5)
  {
    v5[16] = *(descriptorCopy + 16);
    v5[17] = *(descriptorCopy + 17);
    *(v5 + 3) = *(descriptorCopy + 3);
    v7 = [*(descriptorCopy + 4) copy];
    v8 = *(v6 + 4);
    *(v6 + 4) = v7;

    *(v6 + 40) = *(descriptorCopy + 40);
    *(v6 + 41) = *(descriptorCopy + 41);
    objc_storeStrong(v6 + 7, *(descriptorCopy + 7));
    *(v6 + 8) = *(descriptorCopy + 8);
    *(v6 + 9) = *(descriptorCopy + 9);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x1E698E6A0] builderWithObject:v6 ofExpectedClass:objc_opt_class()];
    uniqueIdentifier = self->_uniqueIdentifier;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke;
    v77[3] = &unk_1E7452FD8;
    v11 = v8;
    v78 = v11;
    v12 = [v9 appendString:uniqueIdentifier counterpart:v77];
    widget = self->_widget;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_2;
    v75[3] = &unk_1E7453078;
    v14 = v11;
    v76 = v14;
    v15 = [v9 appendObject:widget counterpart:v75];
    metrics = self->_metrics;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_3;
    v73[3] = &unk_1E7453078;
    v17 = v14;
    v74 = v17;
    v18 = [v9 appendObject:metrics counterpart:v73];
    suggestion = self->_suggestion;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_4;
    v71[3] = &unk_1E7452FB0;
    v20 = v17;
    v72 = v20;
    v21 = [v9 appendBool:suggestion counterpart:v71];
    systemConfigured = self->_systemConfigured;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_5;
    v69[3] = &unk_1E7452FB0;
    v23 = v20;
    v70 = v23;
    v24 = [v9 appendBool:systemConfigured counterpart:v69];
    supportedColorSchemes = self->_supportedColorSchemes;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_6;
    v67[3] = &unk_1E7453318;
    v26 = v23;
    v68 = v26;
    v27 = [v9 appendUnsignedInteger:supportedColorSchemes counterpart:v67];
    supportedRenderSchemes = self->_supportedRenderSchemes;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_7;
    v65[3] = &unk_1E7453078;
    v29 = v26;
    v66 = v29;
    v30 = [v9 appendObject:supportedRenderSchemes counterpart:v65];
    supportsLowLuminance = self->_supportsLowLuminance;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_8;
    v63[3] = &unk_1E7452FB0;
    v32 = v29;
    v64 = v32;
    v33 = [v9 appendBool:supportsLowLuminance counterpart:v63];
    showsWidgetLabel = self->_showsWidgetLabel;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_9;
    v61[3] = &unk_1E7452FB0;
    v35 = v32;
    v62 = v35;
    v36 = [v9 appendBool:showsWidgetLabel counterpart:v61];
    displayProperties = self->_displayProperties;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_10;
    v59[3] = &unk_1E7453078;
    v38 = v35;
    v60 = v38;
    v39 = [v9 appendObject:displayProperties counterpart:v59];
    refreshStrategy = self->_refreshStrategy;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_11;
    v57[3] = &unk_1E7453078;
    v41 = v38;
    v58 = v41;
    v42 = [v9 appendObject:refreshStrategy counterpart:v57];
    supportedProximities = self->_supportedProximities;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_12;
    v55[3] = &unk_1E7453318;
    v44 = v41;
    v56 = v44;
    v45 = [v9 appendUnsignedInteger:supportedProximities counterpart:v55];
    idealizedDateComponents = self->_idealizedDateComponents;
    v50 = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_13;
    v53 = &unk_1E7453078;
    v54 = v44;
    v47 = [v9 appendObject:idealizedDateComponents counterpart:&v50];
    v48 = [v9 isEqual];
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendString:self->_uniqueIdentifier];
  v5 = [builder appendObject:self->_widget];
  v6 = [builder appendObject:self->_metrics];
  v7 = [builder appendBool:self->_suggestion];
  v8 = [builder appendBool:self->_systemConfigured];
  v9 = [builder appendUnsignedInteger:self->_supportedColorSchemes];
  v10 = [builder appendObject:self->_supportedRenderSchemes];
  v11 = [builder appendBool:self->_supportsLowLuminance];
  v12 = [builder appendBool:self->_showsWidgetLabel];
  v13 = [builder appendObject:self->_displayProperties];
  v14 = [builder appendObject:self->_refreshStrategy];
  v15 = [builder appendUnsignedInteger:self->_supportedProximities];
  v16 = [builder appendObject:self->_idealizedDateComponents];
  v17 = [builder hash];

  return v17;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CHSConfiguredWidgetDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSConfiguredWidgetDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(CHSConfiguredWidgetDescriptor *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CHSConfiguredWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

id __71__CHSConfiguredWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 80) withName:@"uniqueIdentifier"];
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 88) withName:@"widget"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 96) withName:@"metrics"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"isSuggestion"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 17) withName:@"isSystemConfigured"];
  v6 = *(a1 + 32);
  v7 = NSStringFromCHSWidgetColorSchemes(*(*(a1 + 40) + 24));
  [v6 appendString:v7 withName:@"supportedColorSchemes"];

  v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"supportedRenderSchemes"];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 40) withName:@"supportsLowLuminance"];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 41) withName:@"showsWidgetLabel"];
  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"displayProperties"];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"refreshStrategy"];
  v13 = *(a1 + 32);
  v14 = NSStringFromCHSWidgetProximities(*(*(a1 + 40) + 64));
  [v13 appendString:v14 withName:@"supportedProximities"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"idealizedDateComponents" skipIfNil:1];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableConfiguredWidgetDescriptor alloc];

  return [(CHSConfiguredWidgetDescriptor *)v4 _initWithDescriptor:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_widget forKey:@"widget"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_metrics forKey:@"metrics"];
  [coderCopy encodeBool:self->_suggestion forKey:@"isSuggestion"];
  [coderCopy encodeBool:self->_systemConfigured forKey:@"isSystemConfigured"];
  [coderCopy encodeInt32:LODWORD(self->_supportedColorSchemes) forKey:@"supportedColorSchemes"];
  [coderCopy encodeObject:self->_supportedRenderSchemes forKey:@"supportedRenderSchemes2"];
  [coderCopy encodeBool:self->_supportsLowLuminance forKey:@"supportsLowLuminance"];
  [coderCopy encodeBool:self->_showsWidgetLabel forKey:@"showsWidgetLabel"];
  [coderCopy encodeObject:self->_displayProperties forKey:@"displayProperties"];
  [coderCopy encodeObject:self->_refreshStrategy forKey:@"refreshStrategy"];
  [coderCopy encodeInt32:LODWORD(self->_supportedProximities) forKey:@"supportedProximities"];
  [coderCopy encodeObject:self->_idealizedDateComponents forKey:@"idealizedDateComponents"];
}

- (CHSConfiguredWidgetDescriptor)initWithCoder:(id)coder
{
  v49 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  selfCopy = self;
  v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];
  v5 = [coderCopy decodeBoolForKey:@"isSystemConfigured"];
  v6 = [coderCopy decodeBoolForKey:@"isSuggestion"];
  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayProperties"];
  v7 = [coderCopy containsValueForKey:@"supportedColorSchemes"];
  if (v7)
  {
    v8 = [coderCopy decodeInt32ForKey:@"supportedColorSchemes"];
    IsValid = CHSWidgetColorSchemesIsValid();
  }

  else
  {
    v10 = CHSLogChronoServices(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v48 = v44;
      _os_log_impl(&dword_195EB2000, v10, OS_LOG_TYPE_DEFAULT, "Cannot find color schemes encoded; using all as a fallback for %{public}@", buf, 0xCu);
    }

    IsValid = 1;
    v8 = 0xFFFFFFFFLL;
  }

  if ([coderCopy containsValueForKey:@"supportedRenderSchemes2"])
  {
    v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedRenderSchemes2"];
    goto LABEL_21;
  }

  if ([coderCopy containsValueForKey:@"supportedRenderSchemes"])
  {
    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedRenderSchemes"];
    array = [MEMORY[0x1E695DF70] array];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __47__CHSConfiguredWidgetDescriptor_initWithCoder___block_invoke;
    v45[3] = &unk_1E74541E8;
    v14 = array;
    v46 = v14;
    [v12 enumerateObjectsUsingBlock:v45];
    v15 = v14;

    _compatibilityRenderSchemesFromDeprecatedRenderingModes = v46;
    v11 = v15;
LABEL_19:

    goto LABEL_21;
  }

  if ([coderCopy containsValueForKey:@"supportedRenderingModes"])
  {
    v17 = [coderCopy decodeInt32ForKey:@"supportedRenderingModes"];
    if (CHSWidgetRenderingModesIsValid(v17))
    {
      v18 = v17 & 6;
      if ((v17 & 1) == 0)
      {
        v11 = MEMORY[0x1E695E0F0];
LABEL_17:
        if (!v18)
        {
          goto LABEL_21;
        }

        v15 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:v18 backgroundViewPolicy:1];
        _compatibilityRenderSchemesFromDeprecatedRenderingModes = [(CHSWidgetRenderScheme *)v15 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
        v21 = [v11 arrayByAddingObjectsFromArray:_compatibilityRenderSchemesFromDeprecatedRenderingModes];

        v11 = v21;
        goto LABEL_19;
      }

LABEL_16:
      v19 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:1 backgroundViewPolicy:0];
      _compatibilityRenderSchemesFromDeprecatedRenderingModes2 = [(CHSWidgetRenderScheme *)v19 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
      v11 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:_compatibilityRenderSchemesFromDeprecatedRenderingModes2];

      goto LABEL_17;
    }
  }

  else if ([coderCopy decodeBoolForKey:@"supportsTinting"])
  {
    v18 = 6;
    goto LABEL_16;
  }

  v11 = MEMORY[0x1E695E0F0];
LABEL_21:
  v39 = v11;
  v22 = [v11 count];
  v23 = +[CHSWidgetRefreshStrategyFactory defaultStrategy];
  if ([coderCopy containsValueForKey:@"refreshStrategy"])
  {
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshStrategy"];

    v23 = v24;
  }

  v25 = [coderCopy decodeBoolForKey:@"supportsLowLuminance"];
  v38 = [coderCopy decodeBoolForKey:@"showsWidgetLabel"];
  v26 = v25;
  v27 = v5;
  if ([coderCopy containsValueForKey:@"supportedProximities"])
  {
    v28 = [coderCopy decodeInt32ForKey:@"supportedProximities"];
  }

  else
  {
    v28 = 3;
  }

  v37 = v28;
  if ([coderCopy containsValueForKey:@"idealizedDateComponents"])
  {
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idealizedDateComponents"];
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
  if (v44 && v43 && v42 && ((IsValid ^ 1) & 1) == 0 && v22)
  {
    v31 = [(CHSConfiguredWidgetDescriptor *)selfCopy _initWithUniqueIdentifier:v43 widget:v44 metrics:v42 displayProperties:v40 fallbackToDefaultDisplayIfNecessary:0];
    v32 = v31;
    if (v31)
    {
      *(v31 + 16) = v6;
      *(v31 + 17) = v27;
      *(v31 + 24) = v8;
      v33 = [v39 copy];
      v34 = *(v32 + 32);
      *(v32 + 32) = v33;

      *(v32 + 40) = v26;
      *(v32 + 41) = v38;
      objc_storeStrong((v32 + 56), v23);
      *(v32 + 64) = v37;
      *(v32 + 72) = v29;
    }

    v35 = v32;
    v30 = v35;
  }

  else
  {
    v35 = selfCopy;
  }

  return v30;
}

void __47__CHSConfiguredWidgetDescriptor_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }
}

- (unint64_t)supportedRenderingModes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  supportedRenderSchemes = self->_supportedRenderSchemes;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CHSConfiguredWidgetDescriptor_supportedRenderingModes__block_invoke;
  v5[3] = &unk_1E7454210;
  v5[4] = &v6;
  [(NSArray *)supportedRenderSchemes enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

unint64_t __56__CHSConfiguredWidgetDescriptor_supportedRenderingModes__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 renderingMode];
  if (result <= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) |= qword_195FAAD40[result];
  }

  return result;
}

@end