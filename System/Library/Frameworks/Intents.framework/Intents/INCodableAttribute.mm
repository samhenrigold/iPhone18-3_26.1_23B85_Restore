@interface INCodableAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableAttribute)initWithCoder:(id)coder;
- (INCodableDescription)_codableDescription;
- (NSString)localizedDisplayName;
- (SEL)getter;
- (SEL)setter;
- (id)__INCodableDescriptionArraySizeSizeClassKey;
- (id)__INCodableDescriptionArraySizeSizeKey;
- (id)__INCodableDescriptionArraySizesKey;
- (id)__INCodableDescriptionConfigurableKey;
- (id)__INCodableDescriptionDefaultKey;
- (id)__INCodableDescriptionDisplayNameIDKey;
- (id)__INCodableDescriptionDisplayNameKey;
- (id)__INCodableDescriptionDisplayPriorityKey;
- (id)__INCodableDescriptionEntityKeypathKey;
- (id)__INCodableDescriptionEnumTypeKey;
- (id)__INCodableDescriptionFixedSizeArrayKey;
- (id)__INCodableDescriptionMetadataKey;
- (id)__INCodableDescriptionNameKey;
- (id)__INCodableDescriptionPromptDialogsKey;
- (id)__INCodableDescriptionRelationshipKey;
- (id)__INCodableDescriptionSupportsDynamicEnumerationKey;
- (id)__INCodableDescriptionSupportsMultipleValuesKey;
- (id)__INCodableDescriptionSupportsResolutionKey;
- (id)__INCodableDescriptionSupportsSearchKey;
- (id)__INCodableDescriptionTagKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INCodableDescriptionUnsupportedReasonsKey;
- (id)__INCodableDescriptionWindowSizeKey;
- (id)__INIntentResponseCodableDescriptionArraySizeSizeClassKey;
- (id)__INIntentResponseCodableDescriptionArraySizeSizeKey;
- (id)__INIntentResponseCodableDescriptionArraySizesKey;
- (id)__INIntentResponseCodableDescriptionConfigurableKey;
- (id)__INIntentResponseCodableDescriptionDefaultKey;
- (id)__INIntentResponseCodableDescriptionDisplayNameIDKey;
- (id)__INIntentResponseCodableDescriptionDisplayNameKey;
- (id)__INIntentResponseCodableDescriptionDisplayPriorityKey;
- (id)__INIntentResponseCodableDescriptionEntityKeypathKey;
- (id)__INIntentResponseCodableDescriptionEnumTypeKey;
- (id)__INIntentResponseCodableDescriptionFixedSizeArrayKey;
- (id)__INIntentResponseCodableDescriptionMetadataKey;
- (id)__INIntentResponseCodableDescriptionNameKey;
- (id)__INIntentResponseCodableDescriptionPromptDialogsKey;
- (id)__INIntentResponseCodableDescriptionRelationshipKey;
- (id)__INIntentResponseCodableDescriptionSupportsDynamicEnumerationKey;
- (id)__INIntentResponseCodableDescriptionSupportsMultipleValuesKey;
- (id)__INIntentResponseCodableDescriptionSupportsResolutionKey;
- (id)__INIntentResponseCodableDescriptionSupportsSearchKey;
- (id)__INIntentResponseCodableDescriptionTagKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionUnsupportedReasonsKey;
- (id)__INIntentResponseCodableDescriptionWindowSizeKey;
- (id)__INTypeCodableDescriptionArraySizeSizeClassKey;
- (id)__INTypeCodableDescriptionArraySizeSizeKey;
- (id)__INTypeCodableDescriptionArraySizesKey;
- (id)__INTypeCodableDescriptionConfigurableKey;
- (id)__INTypeCodableDescriptionDefaultKey;
- (id)__INTypeCodableDescriptionDisplayNameIDKey;
- (id)__INTypeCodableDescriptionDisplayNameKey;
- (id)__INTypeCodableDescriptionDisplayPriorityKey;
- (id)__INTypeCodableDescriptionEntityKeypathKey;
- (id)__INTypeCodableDescriptionEnumTypeKey;
- (id)__INTypeCodableDescriptionFixedSizeArrayKey;
- (id)__INTypeCodableDescriptionMetadataKey;
- (id)__INTypeCodableDescriptionNameKey;
- (id)__INTypeCodableDescriptionPromptDialogsKey;
- (id)__INTypeCodableDescriptionRelationshipKey;
- (id)__INTypeCodableDescriptionSupportsDynamicEnumerationKey;
- (id)__INTypeCodableDescriptionSupportsMultipleValuesKey;
- (id)__INTypeCodableDescriptionSupportsResolutionKey;
- (id)__INTypeCodableDescriptionSupportsSearchKey;
- (id)__INTypeCodableDescriptionTagKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionUnsupportedReasonsKey;
- (id)__INTypeCodableDescriptionWindowSizeKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedDisplayNameWithLocalizer:(id)localizer;
- (id)promptDialogWithType:(unint64_t)type;
- (id)unsupportedReasonWithIndex:(unint64_t)index;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (int64_t)arraySizeForSizeClass:(id)class;
- (unint64_t)hash;
- (unint64_t)indexForUnsupportedReason:(id)reason;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableAttribute

- (unint64_t)hash
{
  propertyName = [(INCodableAttribute *)self propertyName];
  v4 = [propertyName hash];
  displayPriorityRank = [(INCodableAttribute *)self displayPriorityRank];
  v6 = [displayPriorityRank hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableAttribute modifier](self, "modifier")}];
  v8 = [v7 hash];
  v11.receiver = self;
  v11.super_class = INCodableAttribute;
  v9 = v6 ^ [(INCodableAttribute *)&v11 hash];

  return v9 ^ v8;
}

- (INCodableDescription)_codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_internalCodableDescription);

  return WeakRetained;
}

- (id)__INCodableDescriptionNameKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeNameKey = [objc_opt_class() __INCodableAttributeNameKey];

  return __INCodableAttributeNameKey;
}

- (id)__INCodableDescriptionDisplayNameKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayNameKey = [objc_opt_class() __INCodableAttributeDisplayNameKey];

  return __INCodableAttributeDisplayNameKey;
}

- (id)__INCodableDescriptionDisplayNameIDKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayNameIDKey = [objc_opt_class() __INCodableAttributeDisplayNameIDKey];

  return __INCodableAttributeDisplayNameIDKey;
}

- (id)__INCodableDescriptionDisplayPriorityKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayPriorityKey = [objc_opt_class() __INCodableAttributeDisplayPriorityKey];

  return __INCodableAttributeDisplayPriorityKey;
}

- (id)__INCodableDescriptionDefaultKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDefaultKey = [objc_opt_class() __INCodableAttributeDefaultKey];

  return __INCodableAttributeDefaultKey;
}

- (id)__INCodableDescriptionSupportsResolutionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsResolutionKey = [objc_opt_class() __INCodableAttributeSupportsResolutionKey];

  return __INCodableAttributeSupportsResolutionKey;
}

- (id)__INCodableDescriptionSupportsDynamicEnumerationKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsDynamicEnumerationKey = [objc_opt_class() __INCodableAttributeSupportsDynamicEnumerationKey];

  return __INCodableAttributeSupportsDynamicEnumerationKey;
}

- (id)__INCodableDescriptionSupportsSearchKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsSearchKey = [objc_opt_class() __INCodableAttributeSupportsSearchKey];

  return __INCodableAttributeSupportsSearchKey;
}

- (id)__INCodableDescriptionConfigurableKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeConfigurableKey = [objc_opt_class() __INCodableAttributeConfigurableKey];

  return __INCodableAttributeConfigurableKey;
}

- (id)__INCodableDescriptionWindowSizeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeWindowSizeKey = [objc_opt_class() __INCodableAttributeWindowSizeKey];

  return __INCodableAttributeWindowSizeKey;
}

- (id)__INCodableDescriptionSupportsMultipleValuesKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsMultipleValuesKey = [objc_opt_class() __INCodableAttributeSupportsMultipleValuesKey];

  return __INCodableAttributeSupportsMultipleValuesKey;
}

- (id)__INCodableDescriptionFixedSizeArrayKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeFixedSizeArrayKey = [objc_opt_class() __INCodableAttributeFixedSizeArrayKey];

  return __INCodableAttributeFixedSizeArrayKey;
}

- (id)__INCodableDescriptionPromptDialogsKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributePromptDialogsKey = [objc_opt_class() __INCodableAttributePromptDialogsKey];

  return __INCodableAttributePromptDialogsKey;
}

- (id)__INCodableDescriptionArraySizesKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizesKey = [objc_opt_class() __INCodableAttributeArraySizesKey];

  return __INCodableAttributeArraySizesKey;
}

- (id)__INCodableDescriptionUnsupportedReasonsKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonsKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonsKey];

  return __INCodableAttributeUnsupportedReasonsKey;
}

- (id)__INCodableDescriptionMetadataKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeMetadataKey = [objc_opt_class() __INCodableAttributeMetadataKey];

  return __INCodableAttributeMetadataKey;
}

- (id)__INCodableDescriptionEnumTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeEnumTypeKey = [objc_opt_class() __INCodableAttributeEnumTypeKey];

  return __INCodableAttributeEnumTypeKey;
}

- (id)__INCodableDescriptionRelationshipKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeRelationshipKey = [objc_opt_class() __INCodableAttributeRelationshipKey];

  return __INCodableAttributeRelationshipKey;
}

- (id)__INCodableDescriptionEntityKeypathKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeEntityKeypathKey = [objc_opt_class() __INCodableAttributeEntityKeypathKey];

  return __INCodableAttributeEntityKeypathKey;
}

- (id)__INCodableDescriptionTagKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeTagKey = [objc_opt_class() __INCodableAttributeTagKey];

  return __INCodableAttributeTagKey;
}

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeTypeKey = [objc_opt_class() __INCodableAttributeTypeKey];

  return __INCodableAttributeTypeKey;
}

- (INCodableAttribute)initWithCoder:(id)coder
{
  v50 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = INCodableAttribute;
  v5 = [(INCodableAttribute *)&v48 init];
  if (v5)
  {
    -[INCodableAttribute setModifier:](v5, "setModifier:", [coderCopy decodeIntegerForKey:@"modifier"]);
    -[INCodableAttribute setFixedSizeArray:](v5, "setFixedSizeArray:", [coderCopy decodeBoolForKey:@"fixedSizeArray"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyName"];
    [(INCodableAttribute *)v5 setPropertyName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayPriorityRank"];
    [(INCodableAttribute *)v5 setDisplayPriorityRank:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"displayName"];
    [(INCodableAttribute *)v5 setDisplayName:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameID"];
    [(INCodableAttribute *)v5 setDisplayNameID:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    [(INCodableAttribute *)v5 setMetadata:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relationship"];
    [(INCodableAttribute *)v5 setRelationship:v14];

    -[INCodableAttribute setSupportsResolution:](v5, "setSupportsResolution:", [coderCopy decodeBoolForKey:@"supportsResolution"]);
    -[INCodableAttribute setConfigurable:](v5, "setConfigurable:", [coderCopy decodeBoolForKey:@"configurable"]);
    -[INCodableAttribute setSupportsDynamicEnumeration:](v5, "setSupportsDynamicEnumeration:", [coderCopy decodeBoolForKey:@"supportsDynamicEnumeration"]);
    -[INCodableAttribute setSupportsSearch:](v5, "setSupportsSearch:", [coderCopy decodeBoolForKey:@"supportsSearch"]);
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"promptDialogs"];
    [(INCodableAttribute *)v5 _setPromptDialogs:v18];

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"unsupportedReasons"];
    [(INCodableAttribute *)v5 _setUnsupportedReasons:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_codableDescription"];
    [(INCodableAttribute *)v5 _setCodableDescription:v23];

    v43 = coderCopy;
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_typeString"];
    [(INCodableAttribute *)v5 _setTypeString:v24];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    promptDialogs = [(INCodableAttribute *)v5 promptDialogs];
    v26 = [promptDialogs countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      do
      {
        v29 = 0;
        do
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(promptDialogs);
          }

          v30 = *(*(&v44 + 1) + 8 * v29);
          promptDialogsByType = v5->_promptDialogsByType;
          if (!promptDialogsByType)
          {
            v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v33 = v5->_promptDialogsByType;
            v5->_promptDialogsByType = v32;

            promptDialogsByType = v5->_promptDialogsByType;
          }

          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v30, "type")}];
          [(NSMutableDictionary *)promptDialogsByType setObject:v30 forKeyedSubscript:v34];

          ++v29;
        }

        while (v27 != v29);
        v27 = [promptDialogs countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v27);
    }

    coderCopy = v43;
    v35 = [v43 decodeObjectOfClass:objc_opt_class() forKey:@"entityKeypath"];
    [(INCodableAttribute *)v5 setEntityKeypath:v35];

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v36 setWithObjects:{v37, v38, objc_opt_class(), 0}];
    v40 = [v43 decodeObjectOfClasses:v39 forKey:@"_arraySizesBySizeClass"];
    arraySizesBySizeClass = v5->_arraySizesBySizeClass;
    v5->_arraySizesBySizeClass = v40;

    -[INCodableAttribute setWindowSize:](v5, "setWindowSize:", [v43 decodeIntegerForKey:@"windowSize"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modifier = self->_modifier;
  coderCopy = coder;
  [coderCopy encodeInteger:modifier forKey:@"modifier"];
  [coderCopy encodeObject:self->_propertyName forKey:@"propertyName"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_displayNameID forKey:@"displayNameID"];
  [coderCopy encodeObject:self->_displayPriorityRank forKey:@"displayPriorityRank"];
  [coderCopy encodeBool:self->_supportsResolution forKey:@"supportsResolution"];
  [coderCopy encodeBool:self->_supportsDynamicEnumeration forKey:@"supportsDynamicEnumeration"];
  [coderCopy encodeBool:self->_supportsSearch forKey:@"supportsSearch"];
  [coderCopy encodeBool:self->_configurable forKey:@"configurable"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_relationship forKey:@"relationship"];
  [coderCopy encodeObject:self->_promptDialogs forKey:@"promptDialogs"];
  [coderCopy encodeObject:self->_unsupportedReasons forKey:@"unsupportedReasons"];
  [coderCopy encodeObject:self->_typeString forKey:@"_typeString"];
  WeakRetained = objc_loadWeakRetained(&self->_internalCodableDescription);
  [coderCopy encodeConditionalObject:WeakRetained forKey:@"_codableDescription"];

  [coderCopy encodeObject:self->_entityKeypath forKey:@"entityKeypath"];
  [coderCopy encodeBool:self->_fixedSizeArray forKey:@"fixedSizeArray"];
  [coderCopy encodeObject:self->_arraySizesBySizeClass forKey:@"_arraySizesBySizeClass"];
  [coderCopy encodeInteger:self->_windowSize forKey:@"windowSize"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary intents_setIntegerIfNonZero:self->_modifier forKey:@"modifier"];
  [dictionary intents_setPlistSafeObject:self->_propertyName forKey:@"propertyName"];
  languageCode = [parametersCopy languageCode];
  if ([(INCodableAttribute *)self isConfigurable]&& languageCode && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [INStringLocalizer localizerForLanguage:languageCode];
    v9 = [(INCodableAttribute *)self localizedDisplayNameWithLocalizer:v10];
  }

  else
  {
    v9 = [(NSString *)self->_displayName intents_encodeForPlistRepresentationWithParameters:parametersCopy];
  }

  [dictionary intents_setPlistSafeObject:v9 forKey:@"displayName"];

  [dictionary intents_setPlistSafeObject:languageCode forKey:@"languageCode"];
  [dictionary intents_setPlistSafeObject:self->_displayNameID forKey:@"displayNameID"];
  [dictionary intents_setPlistSafeObject:self->_displayPriorityRank forKey:@"displayPriorityRank"];
  [dictionary intents_setBoolIfTrue:self->_supportsResolution forKey:@"supportsResolution"];
  [dictionary intents_setBoolIfTrue:self->_supportsDynamicEnumeration forKey:@"supportsDynamicEnumeration"];
  [dictionary intents_setBoolIfTrue:self->_supportsSearch forKey:@"supportsSearch"];
  [dictionary intents_setBoolIfTrue:self->_configurable forKey:@"configurable"];
  relationship = self->_relationship;
  v21 = 0;
  [dictionary intents_setWidgetPlistRepresentable:relationship forKey:@"relationship" error:&v21];
  v12 = v21;
  if (v12 || (metadata = self->_metadata, v20 = 0, [dictionary intents_setWidgetPlistRepresentable:metadata forKey:@"metadata" parameters:parametersCopy error:&v20], (v12 = v20) != 0) || (promptDialogs = self->_promptDialogs, v19 = 0, objc_msgSend(dictionary, "intents_setArrayOfWidgetPlistRepresentable:forKey:error:", promptDialogs, @"promptDialogs", &v19), (v12 = v19) != 0) || (unsupportedReasons = self->_unsupportedReasons, v18 = 0, objc_msgSend(dictionary, "intents_setArrayOfWidgetPlistRepresentable:forKey:error:", unsupportedReasons, @"unsupportedReasons", &v18), (v12 = v18) != 0))
  {
    if (error)
    {
      v12 = v12;
      v16 = 0;
      *error = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    [dictionary intents_setPlistSafeObject:self->_typeString forKey:@"_typeString"];
    [dictionary intents_setPlistSafeObject:self->_entityKeypath forKey:@"entityKeypath"];
    [dictionary intents_setBoolIfTrue:self->_fixedSizeArray forKey:@"fixedSizeArray"];
    [dictionary intents_setPlistSafeObject:self->_arraySizesBySizeClass forKey:@"_arraySizesBySizeClass"];
    [dictionary intents_setIntegerIfNonZero:self->_windowSize forKey:@"windowSize"];
    v16 = dictionary;
    v12 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setModifier:{-[INCodableAttribute modifier](self, "modifier")}];
  propertyName = [(INCodableAttribute *)self propertyName];
  [v4 setPropertyName:propertyName];

  displayPriorityRank = [(INCodableAttribute *)self displayPriorityRank];
  [v4 setDisplayPriorityRank:displayPriorityRank];

  displayName = [(INCodableAttribute *)self displayName];
  [v4 setDisplayName:displayName];

  displayNameID = [(INCodableAttribute *)self displayNameID];
  [v4 setDisplayNameID:displayNameID];

  metadata = [(INCodableAttribute *)self metadata];
  [v4 setMetadata:metadata];

  relationship = [(INCodableAttribute *)self relationship];
  [v4 setRelationship:relationship];

  [v4 setSupportsResolution:{-[INCodableAttribute supportsResolution](self, "supportsResolution")}];
  [v4 setSupportsDynamicEnumeration:{-[INCodableAttribute supportsDynamicEnumeration](self, "supportsDynamicEnumeration")}];
  [v4 setSupportsSearch:{-[INCodableAttribute supportsSearch](self, "supportsSearch")}];
  [v4 setConfigurable:{-[INCodableAttribute isConfigurable](self, "isConfigurable")}];
  promptDialogs = [(INCodableAttribute *)self promptDialogs];
  [v4 _setPromptDialogs:promptDialogs];

  unsupportedReasons = [(INCodableAttribute *)self unsupportedReasons];
  [v4 _setUnsupportedReasons:unsupportedReasons];

  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  [v4 _setCodableDescription:_codableDescription];

  _typeString = [(INCodableAttribute *)self _typeString];
  [v4 _setTypeString:_typeString];

  objc_storeStrong(v4 + 1, self->_promptDialogsByType);
  [v4 setFixedSizeArray:{-[INCodableAttribute isFixedSizeArray](self, "isFixedSizeArray")}];
  objc_storeStrong(v4 + 2, self->_arraySizesBySizeClass);
  [v4 setWindowSize:{-[INCodableAttribute windowSize](self, "windowSize")}];
  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v97 = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(INCodableAttribute *)self promptDialogWithType:0];
  v7 = [v6 dictionaryRepresentationWithLocalizer:localizerCopy];
  [v5 if_addObjectIfNonNil:v7];

  v8 = [(INCodableAttribute *)self promptDialogWithType:1];
  v9 = [v8 dictionaryRepresentationWithLocalizer:localizerCopy];
  [v5 if_addObjectIfNonNil:v9];

  v10 = [(INCodableAttribute *)self promptDialogWithType:2];
  v11 = [v10 dictionaryRepresentationWithLocalizer:localizerCopy];
  [v5 if_addObjectIfNonNil:v11];

  v12 = [(INCodableAttribute *)self promptDialogWithType:3];
  v13 = [v12 dictionaryRepresentationWithLocalizer:localizerCopy];
  [v5 if_addObjectIfNonNil:v13];

  v14 = [(INCodableAttribute *)self promptDialogWithType:4];
  v15 = [v14 dictionaryRepresentationWithLocalizer:localizerCopy];
  [v5 if_addObjectIfNonNil:v15];

  v16 = [(INCodableAttribute *)self promptDialogWithType:5];
  v17 = [v16 dictionaryRepresentationWithLocalizer:localizerCopy];
  [v5 if_addObjectIfNonNil:v17];

  v18 = MEMORY[0x1E695DF70];
  unsupportedReasons = [(INCodableAttribute *)self unsupportedReasons];
  v20 = [v18 arrayWithCapacity:{objc_msgSend(unsupportedReasons, "count")}];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  unsupportedReasons2 = [(INCodableAttribute *)self unsupportedReasons];
  v22 = [unsupportedReasons2 countByEnumeratingWithState:&v90 objects:v96 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v91;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v91 != v24)
        {
          objc_enumerationMutation(unsupportedReasons2);
        }

        v26 = [*(*(&v90 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:localizerCopy];
        [v20 addObject:v26];
      }

      v23 = [unsupportedReasons2 countByEnumeratingWithState:&v90 objects:v96 count:16];
    }

    while (v23);
  }

  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableDescriptionNameKey = [(INCodableAttribute *)self __INCodableDescriptionNameKey];
  v94[0] = __INCodableDescriptionNameKey;
  propertyName = [(INCodableAttribute *)self propertyName];
  v29 = propertyName;
  if (!propertyName)
  {
    propertyName = [MEMORY[0x1E695DFB0] null];
  }

  v62 = propertyName;
  v95[0] = propertyName;
  __INCodableDescriptionDisplayNameKey = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameKey];
  v94[1] = __INCodableDescriptionDisplayNameKey;
  null = [(INCodableAttribute *)self localizedDisplayNameWithLocalizer:localizerCopy];
  v31 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null;
  v95[1] = null;
  __INCodableDescriptionDisplayNameIDKey = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameIDKey];
  v94[2] = __INCodableDescriptionDisplayNameIDKey;
  displayNameID = [(INCodableAttribute *)self displayNameID];
  v33 = displayNameID;
  if (!displayNameID)
  {
    displayNameID = [MEMORY[0x1E695DFB0] null];
  }

  v86 = v29;
  v60 = displayNameID;
  v95[2] = displayNameID;
  __INCodableDescriptionDisplayPriorityKey = [(INCodableAttribute *)self __INCodableDescriptionDisplayPriorityKey];
  v94[3] = __INCodableDescriptionDisplayPriorityKey;
  displayPriorityRank = [(INCodableAttribute *)self displayPriorityRank];
  v35 = displayPriorityRank;
  if (!displayPriorityRank)
  {
    displayPriorityRank = [MEMORY[0x1E695DFB0] null];
  }

  v59 = displayPriorityRank;
  v95[3] = displayPriorityRank;
  __INCodableDescriptionDefaultKey = [(INCodableAttribute *)self __INCodableDescriptionDefaultKey];
  v94[4] = __INCodableDescriptionDefaultKey;
  null2 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute isDefaultAttribute](self, "isDefaultAttribute")}];
  v78 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v95[4] = null2;
  __INCodableDescriptionSupportsMultipleValuesKey = [(INCodableAttribute *)self __INCodableDescriptionSupportsMultipleValuesKey];
  v94[5] = __INCodableDescriptionSupportsMultipleValuesKey;
  modifier = [(INCodableAttribute *)self modifier];
  v84 = v31;
  if (modifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    null3 = MEMORY[0x1E695E118];
  }

  v63 = null3;
  v95[5] = null3;
  __INCodableDescriptionSupportsResolutionKey = [(INCodableAttribute *)self __INCodableDescriptionSupportsResolutionKey];
  v94[6] = __INCodableDescriptionSupportsResolutionKey;
  objc_opt_class();
  v58 = null2;
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute supportsResolution](self, "supportsResolution")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v38 = ;
  v95[6] = v38;
  __INCodableDescriptionConfigurableKey = [(INCodableAttribute *)self __INCodableDescriptionConfigurableKey];
  v94[7] = __INCodableDescriptionConfigurableKey;
  objc_opt_class();
  v74 = v38;
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute isConfigurable](self, "isConfigurable")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v39 = ;
  v95[7] = v39;
  __INCodableDescriptionSupportsDynamicEnumerationKey = [(INCodableAttribute *)self __INCodableDescriptionSupportsDynamicEnumerationKey];
  v94[8] = __INCodableDescriptionSupportsDynamicEnumerationKey;
  objc_opt_class();
  v72 = v39;
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute supportsDynamicEnumeration](self, "supportsDynamicEnumeration")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v70 = ;
  v95[8] = v70;
  __INCodableDescriptionPromptDialogsKey = [(INCodableAttribute *)self __INCodableDescriptionPromptDialogsKey];
  v94[9] = __INCodableDescriptionPromptDialogsKey;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v41 = MEMORY[0x1E695E0F0];
  if (isKindOfClass)
  {
    v42 = v5;
  }

  else
  {
    v42 = MEMORY[0x1E695E0F0];
  }

  v95[9] = v42;
  __INCodableDescriptionUnsupportedReasonsKey = [(INCodableAttribute *)self __INCodableDescriptionUnsupportedReasonsKey];
  v94[10] = __INCodableDescriptionUnsupportedReasonsKey;
  objc_opt_class();
  v88 = _codableDescription;
  if (objc_opt_isKindOfClass())
  {
    v43 = v20;
  }

  else
  {
    v43 = v41;
  }

  v95[10] = v43;
  __INCodableDescriptionMetadataKey = [(INCodableAttribute *)self __INCodableDescriptionMetadataKey];
  v94[11] = __INCodableDescriptionMetadataKey;
  metadata = [(INCodableAttribute *)self metadata];
  null4 = [metadata dictionaryRepresentationWithLocalizer:localizerCopy];
  v45 = null4;
  if (!null4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v35;
  v82 = v33;
  v89 = v5;
  v57 = null4;
  v95[11] = null4;
  __INCodableDescriptionRelationshipKey = [(INCodableAttribute *)self __INCodableDescriptionRelationshipKey];
  v94[12] = __INCodableDescriptionRelationshipKey;
  relationship = [(INCodableAttribute *)self relationship];
  null5 = [relationship dictionaryRepresentationWithLocalizer:localizerCopy];
  v47 = null5;
  if (!null5)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v95[12] = null5;
  __INCodableDescriptionEntityKeypathKey = [(INCodableAttribute *)self __INCodableDescriptionEntityKeypathKey];
  v94[13] = __INCodableDescriptionEntityKeypathKey;
  entityKeypath = [(INCodableAttribute *)self entityKeypath];
  null6 = entityKeypath;
  if (!entityKeypath)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v95[13] = null6;
  __INCodableDescriptionWindowSizeKey = [(INCodableAttribute *)self __INCodableDescriptionWindowSizeKey];
  v94[14] = __INCodableDescriptionWindowSizeKey;
  v52 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableAttribute windowSize](self, "windowSize")}];
  v95[14] = v52;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:15];

  if (!entityKeypath)
  {
  }

  if (!v47)
  {
  }

  if (!v45)
  {
  }

  if (modifier)
  {
  }

  if (!v78)
  {
  }

  if (!v80)
  {
  }

  if (!v82)
  {
  }

  if (!v84)
  {
  }

  if (!v86)
  {
  }

  if_dictionaryWithNonEmptyValues = [v53 if_dictionaryWithNonEmptyValues];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttribute *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  v96 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  __INCodableDescriptionNameKey = [(INCodableAttribute *)self __INCodableDescriptionNameKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionNameKey];
  if_stringByLowercasingFirstCharacter = [v6 if_stringByLowercasingFirstCharacter];
  v8 = [if_stringByLowercasingFirstCharacter copy];
  propertyName = self->_propertyName;
  self->_propertyName = v8;

  __INCodableDescriptionDisplayNameKey = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameKey];
  v11 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDisplayNameKey];
  displayName = self->_displayName;
  self->_displayName = v11;

  __INCodableDescriptionDisplayNameIDKey = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameIDKey];
  v14 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDisplayNameIDKey];
  displayNameID = self->_displayNameID;
  self->_displayNameID = v14;

  __INCodableDescriptionDisplayPriorityKey = [(INCodableAttribute *)self __INCodableDescriptionDisplayPriorityKey];
  v17 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDisplayPriorityKey];
  displayPriorityRank = self->_displayPriorityRank;
  self->_displayPriorityRank = v17;

  __INCodableDescriptionDefaultKey = [(INCodableAttribute *)self __INCodableDescriptionDefaultKey];
  v20 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultKey];
  self->_defaultAttribute = [v20 BOOLValue];

  __INCodableDescriptionSupportsResolutionKey = [(INCodableAttribute *)self __INCodableDescriptionSupportsResolutionKey];
  v22 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionSupportsResolutionKey];
  self->_supportsResolution = [v22 BOOLValue];

  __INCodableDescriptionSupportsDynamicEnumerationKey = [(INCodableAttribute *)self __INCodableDescriptionSupportsDynamicEnumerationKey];
  v24 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionSupportsDynamicEnumerationKey];
  self->_supportsDynamicEnumeration = [v24 BOOLValue];

  __INCodableDescriptionSupportsSearchKey = [(INCodableAttribute *)self __INCodableDescriptionSupportsSearchKey];
  v26 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionSupportsSearchKey];
  self->_supportsSearch = [v26 BOOLValue];

  __INCodableDescriptionConfigurableKey = [(INCodableAttribute *)self __INCodableDescriptionConfigurableKey];
  v28 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionConfigurableKey];
  self->_configurable = [v28 BOOLValue];

  __INCodableDescriptionWindowSizeKey = [(INCodableAttribute *)self __INCodableDescriptionWindowSizeKey];
  v30 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionWindowSizeKey];

  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if ([v32 integerValue] < 1)
  {
    integerValue = 6;
  }

  else
  {
    integerValue = [v32 integerValue];
  }

  self->_windowSize = integerValue;
  __INCodableDescriptionSupportsMultipleValuesKey = [(INCodableAttribute *)self __INCodableDescriptionSupportsMultipleValuesKey];
  v35 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionSupportsMultipleValuesKey];
  bOOLValue = [v35 BOOLValue];

  self->_modifier = bOOLValue ^ 1u;
  __INCodableDescriptionFixedSizeArrayKey = [(INCodableAttribute *)self __INCodableDescriptionFixedSizeArrayKey];
  v38 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFixedSizeArrayKey];
  self->_fixedSizeArray = [v38 BOOLValue];

  __INCodableDescriptionPromptDialogsKey = [(INCodableAttribute *)self __INCodableDescriptionPromptDialogsKey];
  v40 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionPromptDialogsKey];

  if (v40)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __43__INCodableAttribute_updateWithDictionary___block_invoke;
  v94[3] = &unk_1E7280EE8;
  v94[4] = self;
  v87 = v42;
  v43 = [v42 if_map:v94];
  objc_storeStrong(&self->_promptDialogs, v43);
  __INCodableDescriptionArraySizesKey = [(INCodableAttribute *)self __INCodableDescriptionArraySizesKey];
  v45 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionArraySizesKey];

  if (v45)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;

  v86 = v47;
  if ([v47 count])
  {
    v84 = v43;
    v85 = dictionaryCopy;
    obj = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v47, "count")}];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v90 objects:v95 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v91;
      do
      {
        v52 = 0;
        do
        {
          if (*v91 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v90 + 1) + 8 * v52);
          v54 = [(INCodableAttribute *)self __INCodableDescriptionArraySizeSizeClassKey:v84];
          v55 = [v53 objectForKeyedSubscript:v54];

          if (INCodableAttributeAvailableArraySizeClasses_onceToken != -1)
          {
            dispatch_once(&INCodableAttributeAvailableArraySizeClasses_onceToken, &__block_literal_global_47521);
          }

          if ([INCodableAttributeAvailableArraySizeClasses_codableAvailableArraySizeClasses containsObject:v55])
          {
            __INCodableDescriptionArraySizeSizeKey = [(INCodableAttribute *)self __INCodableDescriptionArraySizeSizeKey];
            v57 = [v53 objectForKeyedSubscript:__INCodableDescriptionArraySizeSizeKey];
            [obj if_setObjectIfNonNil:v57 forKey:v55];
          }

          ++v52;
        }

        while (v50 != v52);
        v50 = [v48 countByEnumeratingWithState:&v90 objects:v95 count:16];
      }

      while (v50);
    }

    v43 = v84;
    dictionaryCopy = v85;
    v58 = obj;
  }

  else
  {
    v58 = MEMORY[0x1E695E0F8];
  }

  objc_storeStrong(&self->_arraySizesBySizeClass, v58);
  __INCodableDescriptionUnsupportedReasonsKey = [(INCodableAttribute *)self __INCodableDescriptionUnsupportedReasonsKey];
  v60 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionUnsupportedReasonsKey];

  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;

  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __43__INCodableAttribute_updateWithDictionary___block_invoke_2;
  v89[3] = &unk_1E7280EE8;
  v89[4] = self;
  v63 = [v62 if_map:v89];

  unsupportedReasons = self->_unsupportedReasons;
  self->_unsupportedReasons = v63;

  __INCodableDescriptionMetadataKey = [(INCodableAttribute *)self __INCodableDescriptionMetadataKey];
  v66 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMetadataKey];

  __INCodableDescriptionTypeKey = [(INCodableAttribute *)self __INCodableDescriptionTypeKey];
  v68 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTypeKey];
  typeString = self->_typeString;
  self->_typeString = v68;

  __INCodableDescriptionEnumTypeKey = [(INCodableAttribute *)self __INCodableDescriptionEnumTypeKey];
  v71 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionEnumTypeKey];
  if (v71)
  {
    v72 = @"Enum";
    v73 = @"Enum";
  }

  else
  {
    v72 = INCodableAttributeMetadataTypeNameWithTypeName(self->_typeString);
  }

  v74 = INCodableAttributeMetadataClassWithMetadataTypeName(v72);
  if (v74)
  {
    v75 = [[v74 alloc] initWithName:v72 codableAttribute:self];
  }

  else
  {
    v75 = 0;
  }

  [(INCodableAttributeMetadata *)v75 updateWithDictionary:v66, v84, v85];
  metadata = self->_metadata;
  self->_metadata = v75;

  v77 = [[INCodableAttributeRelationship alloc] initWithCodableAttribute:self];
  __INCodableDescriptionRelationshipKey = [(INCodableAttribute *)self __INCodableDescriptionRelationshipKey];
  v79 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionRelationshipKey];
  [(INCodableAttributeRelationship *)v77 updateWithDictionary:v79];

  relationship = self->_relationship;
  self->_relationship = v77;

  __INCodableDescriptionEntityKeypathKey = [(INCodableAttribute *)self __INCodableDescriptionEntityKeypathKey];
  v82 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionEntityKeypathKey];
  entityKeypath = self->_entityKeypath;
  self->_entityKeypath = v82;
}

INCodableAttributePromptDialog *__43__INCodableAttribute_updateWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(INCodableAttributePromptDialog);
  [(INCodableAttributeDialog *)v4 _setCodableAttribute:*(a1 + 32)];
  [(INCodableAttributePromptDialog *)v4 updateWithDictionary:v3];

  v5 = *(*(a1 + 32) + 8);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    v5 = *(*(a1 + 32) + 8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[INCodableAttributePromptDialog type](v4, "type")}];
  [v5 setObject:v4 forKeyedSubscript:v9];

  return v4;
}

INCodableAttributeUnsupportedReason *__43__INCodableAttribute_updateWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(INCodableAttributeUnsupportedReason);
  [(INCodableAttributeDialog *)v4 _setCodableAttribute:*(a1 + 32)];
  [(INCodableAttributeUnsupportedReason *)v4 updateWithDictionary:v3];

  return v4;
}

- (id)promptDialogWithType:(unint64_t)type
{
  promptDialogsByType = self->_promptDialogsByType;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)promptDialogsByType objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = type - 2;
    if (type == 2 && (-[NSMutableDictionary objectForKeyedSubscript:](self->_promptDialogsByType, "objectForKeyedSubscript:", &unk_1F02D7FD8), v9 = objc_claimAutoreleasedReturnValue(), [v9 formatString], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_alloc_init(INCodableAttributePromptDialog);
      [(INCodableAttributeDialog *)v7 _setCodableAttribute:self];
      [(INCodableAttributePromptDialog *)v7 setType:type];
      [(INCodableAttributeDialog *)v7 setDefaultDialog:1];
      if (type - 1 > 5)
      {
        v12 = @"Primary";
      }

      else
      {
        v12 = off_1E7285DD8[type - 1];
      }

      v13 = v12;
      v14 = objc_msgSend_stringByAppendingString_(v13);

      [(INCodableAttributeDialog *)v7 setFormatStringID:v14];
      if (v8 > 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_1E7285DB8[v8];
      }

      v16 = v15;
      [(INCodableAttributeDialog *)v7 setFormatString:v16];
    }
  }

  return v7;
}

- (id)localizedDisplayNameWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  displayNameID = [(INCodableAttribute *)self displayNameID];
  displayName = [(INCodableAttribute *)self displayName];
  _customLocalizationTable = [_codableDescription _customLocalizationTable];
  if (_customLocalizationTable)
  {
    v9 = INLocalizedStringFromCodable(displayNameID, displayName, _customLocalizationTable, localizerCopy, 0);
  }

  else
  {
    _localizationTable = [_codableDescription _localizationTable];
    v9 = INLocalizedStringFromCodable(displayNameID, displayName, _localizationTable, localizerCopy, 0);
  }

  return v9;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttribute *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCodableAttribute;
  v6 = [(INCodableAttribute *)&v11 description];
  dictionaryRepresentation = [(INCodableAttribute *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (int64_t)arraySizeForSizeClass:(id)class
{
  classCopy = class;
  v5 = [(NSDictionary *)self->_arraySizesBySizeClass objectForKeyedSubscript:classCopy];
  if ([(INCodableAttribute *)self isFixedSizeArray])
  {
    if (v5)
    {
      if ([v5 integerValue] >= 1)
      {
        integerValue = [v5 integerValue];
LABEL_12:
        v7 = integerValue;
        goto LABEL_19;
      }

LABEL_18:
      v7 = 1;
      goto LABEL_19;
    }

    v8 = [classCopy isEqualToString:@"ExtraLarge"];
    v9 = @"Large";
    if ((v8 & 1) == 0)
    {
      v10 = [classCopy isEqualToString:@"Large"];
      v9 = @"Medium";
      if ((v10 & 1) == 0)
      {
        if ([classCopy isEqualToString:@"Medium"] & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", @"AccessoryCorner"))
        {
          v9 = @"Small";
        }

        else if ([classCopy isEqualToString:@"AccessoryCircular"])
        {
          v9 = @"AccessoryCorner";
        }

        else
        {
          if (([classCopy isEqualToString:@"AccessoryRectangular"] & 1) == 0 && !objc_msgSend(classCopy, "isEqualToString:", @"AccessoryInline"))
          {
            goto LABEL_18;
          }

          v9 = @"AccessoryCircular";
        }
      }
    }

    integerValue = [(INCodableAttribute *)self arraySizeForSizeClass:v9];
    goto LABEL_12;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:

  return v7;
}

- (unint64_t)indexForUnsupportedReason:(id)reason
{
  v21 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  unsupportedReasons = [(INCodableAttribute *)self unsupportedReasons];
  v6 = [unsupportedReasons countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 1;
LABEL_3:
    v10 = 0;
    v11 = v9;
    v9 += v7;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(unsupportedReasons);
      }

      code = [*(*(&v16 + 1) + 8 * v10) code];
      code2 = [reasonCopy code];
      v14 = [code isEqualToString:code2];

      if (v14)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [unsupportedReasons countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)unsupportedReasonWithIndex:(unint64_t)index
{
  v4 = index - 1;
  unsupportedReasons = [(INCodableAttribute *)self unsupportedReasons];
  v6 = [unsupportedReasons count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    unsupportedReasons2 = [(INCodableAttribute *)self unsupportedReasons];
    v8 = [unsupportedReasons2 objectAtIndex:v4];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    propertyName = [(INCodableAttribute *)self propertyName];
    if (propertyName)
    {
      propertyName2 = [(INCodableAttribute *)self propertyName];
      v7 = equalCopy;
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v11 = v8;

      propertyName3 = [v11 propertyName];

      v10 = [propertyName2 isEqual:propertyName3];
    }

    else
    {
      v10 = 0;
    }

    displayPriorityRank = [(INCodableAttribute *)self displayPriorityRank];
    if (displayPriorityRank || ([equalCopy displayPriorityRank], (propertyName2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      displayPriorityRank2 = [(INCodableAttribute *)self displayPriorityRank];
      displayPriorityRank3 = [equalCopy displayPriorityRank];
      v16 = [displayPriorityRank2 isEqual:displayPriorityRank3];

      if (displayPriorityRank)
      {
LABEL_17:

        modifier = [(INCodableAttribute *)self modifier];
        v9 = (modifier == [equalCopy modifier]) & v10 & v16;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 1;
    }

    goto LABEL_17;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (SEL)setter
{
  propertyName = [(INCodableAttribute *)self propertyName];
  v3 = objc_opt_class();
  v4 = INSetterFromString(propertyName, v3);

  return v4;
}

- (SEL)getter
{
  propertyName = [(INCodableAttribute *)self propertyName];
  v3 = NSSelectorFromString(propertyName);

  return v3;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v7 = objc_alloc_init(self);
  [v7 setModifier:{objc_msgSend(representationCopy, "intents_intForKey:", @"modifier"}];
  [v7 setFixedSizeArray:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"fixedSizeArray"}];
  v8 = [representationCopy intents_stringForKey:@"propertyName"];
  [v7 setPropertyName:v8];

  v9 = [representationCopy intents_numberForKey:@"displayPriorityRank"];
  [v7 setDisplayPriorityRank:v9];

  v10 = [representationCopy intents_stringForKey:@"displayName"];
  [v7 setDisplayName:v10];

  v11 = [representationCopy intents_stringForKey:@"displayNameID"];
  [v7 setDisplayNameID:v11];

  v12 = [representationCopy intents_stringForKey:@"_typeString"];
  [v7 _setTypeString:v12];

  v13 = [representationCopy intents_stringForKey:@"languageCode"];
  [v7 setLanguageCode:v13];

  v14 = [representationCopy intents_safeObjectForKey:@"metadata" ofType:objc_opt_class()];
  v15 = [representationCopy objectForKeyedSubscript:@"enumType"];
  if (v15)
  {
    v16 = @"Enum";
    v17 = @"Enum";
  }

  else
  {
    _typeString = [v7 _typeString];
    v16 = INCodableAttributeMetadataTypeNameWithTypeName(_typeString);
  }

  v69 = 0;
  v19 = [INCodableAttributeMetadataClassWithMetadataTypeName(v16) makeFromWidgetPlistableRepresentation:v14 error:&v69];
  v20 = v69;
  if (v20)
  {
    v21 = v20;
    if (error)
    {
      v22 = v20;
      v23 = 0;
      *error = v21;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    [v19 setCodableAttribute:v7];
    [v7 setMetadata:v19];
    v68 = 0;
    v24 = [INCodableAttributeRelationship intents_widgetPlistRepresentableInDict:representationCopy key:@"relationship" error:&v68];
    v25 = v68;
    if (v25)
    {
      v21 = v25;
      if (error)
      {
        v26 = v25;
        v23 = 0;
        *error = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      [v24 setCodableAttribute:v7];
      [v7 setRelationship:v24];
      [v7 setSupportsResolution:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"supportsResolution"}];
      [v7 setConfigurable:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"configurable"}];
      [v7 setSupportsDynamicEnumeration:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"supportsDynamicEnumeration"}];
      [v7 setSupportsSearch:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"supportsSearch"}];
      v67 = 0;
      v27 = [INCodableAttributePromptDialog intents_arrayOfWidgetPlistRepresentableInDict:representationCopy key:@"promptDialogs" error:&v67 resultTransformer:0];
      v28 = v67;
      if (v28)
      {
        v21 = v28;
        if (error)
        {
          v29 = v28;
          v23 = 0;
          *error = v21;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        [v7 _setPromptDialogs:v27];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __66__INCodableAttribute_makeFromWidgetPlistableRepresentation_error___block_invoke;
        v65[3] = &unk_1E7280F10;
        v30 = v7;
        v31 = v27;
        v32 = v30;
        v66 = v30;
        v57 = v31;
        [v31 enumerateObjectsUsingBlock:v65];
        v64 = 0;
        v33 = [INCodableAttributeUnsupportedReason intents_arrayOfWidgetPlistRepresentableInDict:representationCopy key:@"unsupportedReasons" error:&v64 resultTransformer:0];
        v34 = v64;
        v21 = v34;
        v56 = v33;
        if (v34)
        {
          if (error)
          {
            v35 = v34;
            v23 = 0;
            *error = v21;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v51 = v24;
          v52 = v19;
          v53 = v16;
          v54 = v14;
          v55 = representationCopy;
          [v32 _setUnsupportedReasons:v33];
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __66__INCodableAttribute_makeFromWidgetPlistableRepresentation_error___block_invoke_2;
          v62[3] = &unk_1E7280F38;
          v36 = v32;
          v63 = v36;
          [v33 enumerateObjectsUsingBlock:v62];
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          promptDialogs = [v36 promptDialogs];
          v38 = [promptDialogs countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v59;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v59 != v40)
                {
                  objc_enumerationMutation(promptDialogs);
                }

                v42 = *(*(&v58 + 1) + 8 * i);
                v43 = v36[1];
                if (!v43)
                {
                  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v45 = v36[1];
                  v36[1] = v44;

                  v43 = v36[1];
                }

                v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v42, "type")}];
                [v43 setObject:v42 forKeyedSubscript:v46];
              }

              v39 = [promptDialogs countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v39);
          }

          representationCopy = v55;
          v47 = [v55 intents_stringForKey:@"entityKeypath"];
          [v36 setEntityKeypath:v47];

          v48 = [v55 intents_safeObjectForKey:@"_arraySizesBySizeClass" ofType:objc_opt_class()];
          v49 = v36[2];
          v36[2] = v48;

          [v36 setWindowSize:{objc_msgSend(v55, "intents_intForKey:", @"windowSize"}];
          v23 = v36;

          v14 = v54;
          v19 = v52;
          v16 = v53;
          v21 = 0;
          v24 = v51;
        }

        v27 = v57;
      }
    }
  }

  return v23;
}

- (id)__INTypeCodableDescriptionWindowSizeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeWindowSizeKey = [objc_opt_class() __INCodableAttributeWindowSizeKey];

  return __INCodableAttributeWindowSizeKey;
}

- (id)__INTypeCodableDescriptionUnsupportedReasonsKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonsKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonsKey];

  return __INCodableAttributeUnsupportedReasonsKey;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeTypeKey = [objc_opt_class() __INCodableAttributeTypeKey];

  return __INCodableAttributeTypeKey;
}

- (id)__INTypeCodableDescriptionTagKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeTagKey = [objc_opt_class() __INCodableAttributeTagKey];

  return __INCodableAttributeTagKey;
}

- (id)__INTypeCodableDescriptionSupportsSearchKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsSearchKey = [objc_opt_class() __INCodableAttributeSupportsSearchKey];

  return __INCodableAttributeSupportsSearchKey;
}

- (id)__INTypeCodableDescriptionSupportsResolutionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsResolutionKey = [objc_opt_class() __INCodableAttributeSupportsResolutionKey];

  return __INCodableAttributeSupportsResolutionKey;
}

- (id)__INTypeCodableDescriptionSupportsMultipleValuesKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsMultipleValuesKey = [objc_opt_class() __INCodableAttributeSupportsMultipleValuesKey];

  return __INCodableAttributeSupportsMultipleValuesKey;
}

- (id)__INTypeCodableDescriptionSupportsDynamicEnumerationKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsDynamicEnumerationKey = [objc_opt_class() __INCodableAttributeSupportsDynamicEnumerationKey];

  return __INCodableAttributeSupportsDynamicEnumerationKey;
}

- (id)__INTypeCodableDescriptionRelationshipKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeRelationshipKey = [objc_opt_class() __INCodableAttributeRelationshipKey];

  return __INCodableAttributeRelationshipKey;
}

- (id)__INTypeCodableDescriptionPromptDialogsKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributePromptDialogsKey = [objc_opt_class() __INCodableAttributePromptDialogsKey];

  return __INCodableAttributePromptDialogsKey;
}

- (id)__INTypeCodableDescriptionNameKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeNameKey = [objc_opt_class() __INCodableAttributeNameKey];

  return __INCodableAttributeNameKey;
}

- (id)__INTypeCodableDescriptionMetadataKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeMetadataKey = [objc_opt_class() __INCodableAttributeMetadataKey];

  return __INCodableAttributeMetadataKey;
}

- (id)__INTypeCodableDescriptionFixedSizeArrayKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeFixedSizeArrayKey = [objc_opt_class() __INCodableAttributeFixedSizeArrayKey];

  return __INCodableAttributeFixedSizeArrayKey;
}

- (id)__INTypeCodableDescriptionEnumTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeEnumTypeKey = [objc_opt_class() __INCodableAttributeEnumTypeKey];

  return __INCodableAttributeEnumTypeKey;
}

- (id)__INTypeCodableDescriptionEntityKeypathKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeEntityKeypathKey = [objc_opt_class() __INCodableAttributeEntityKeypathKey];

  return __INCodableAttributeEntityKeypathKey;
}

- (id)__INTypeCodableDescriptionDisplayPriorityKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayPriorityKey = [objc_opt_class() __INCodableAttributeDisplayPriorityKey];

  return __INCodableAttributeDisplayPriorityKey;
}

- (id)__INTypeCodableDescriptionDisplayNameIDKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayNameIDKey = [objc_opt_class() __INCodableAttributeDisplayNameIDKey];

  return __INCodableAttributeDisplayNameIDKey;
}

- (id)__INTypeCodableDescriptionDisplayNameKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayNameKey = [objc_opt_class() __INCodableAttributeDisplayNameKey];

  return __INCodableAttributeDisplayNameKey;
}

- (id)__INTypeCodableDescriptionDefaultKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDefaultKey = [objc_opt_class() __INCodableAttributeDefaultKey];

  return __INCodableAttributeDefaultKey;
}

- (id)__INTypeCodableDescriptionConfigurableKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeConfigurableKey = [objc_opt_class() __INCodableAttributeConfigurableKey];

  return __INCodableAttributeConfigurableKey;
}

- (id)__INTypeCodableDescriptionArraySizesKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizesKey = [objc_opt_class() __INCodableAttributeArraySizesKey];

  return __INCodableAttributeArraySizesKey;
}

- (id)__INTypeCodableDescriptionArraySizeSizeClassKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizeSizeClassKey = [objc_opt_class() __INCodableAttributeArraySizeSizeClassKey];

  return __INCodableAttributeArraySizeSizeClassKey;
}

- (id)__INTypeCodableDescriptionArraySizeSizeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizeSizeKey = [objc_opt_class() __INCodableAttributeArraySizeSizeKey];

  return __INCodableAttributeArraySizeSizeKey;
}

- (id)__INIntentResponseCodableDescriptionWindowSizeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeWindowSizeKey = [objc_opt_class() __INCodableAttributeWindowSizeKey];

  return __INCodableAttributeWindowSizeKey;
}

- (id)__INIntentResponseCodableDescriptionUnsupportedReasonsKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonsKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonsKey];

  return __INCodableAttributeUnsupportedReasonsKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeTypeKey = [objc_opt_class() __INCodableAttributeTypeKey];

  return __INCodableAttributeTypeKey;
}

- (id)__INIntentResponseCodableDescriptionTagKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeTagKey = [objc_opt_class() __INCodableAttributeTagKey];

  return __INCodableAttributeTagKey;
}

- (id)__INIntentResponseCodableDescriptionSupportsSearchKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsSearchKey = [objc_opt_class() __INCodableAttributeSupportsSearchKey];

  return __INCodableAttributeSupportsSearchKey;
}

- (id)__INIntentResponseCodableDescriptionSupportsResolutionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsResolutionKey = [objc_opt_class() __INCodableAttributeSupportsResolutionKey];

  return __INCodableAttributeSupportsResolutionKey;
}

- (id)__INIntentResponseCodableDescriptionSupportsMultipleValuesKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsMultipleValuesKey = [objc_opt_class() __INCodableAttributeSupportsMultipleValuesKey];

  return __INCodableAttributeSupportsMultipleValuesKey;
}

- (id)__INIntentResponseCodableDescriptionSupportsDynamicEnumerationKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeSupportsDynamicEnumerationKey = [objc_opt_class() __INCodableAttributeSupportsDynamicEnumerationKey];

  return __INCodableAttributeSupportsDynamicEnumerationKey;
}

- (id)__INIntentResponseCodableDescriptionRelationshipKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeRelationshipKey = [objc_opt_class() __INCodableAttributeRelationshipKey];

  return __INCodableAttributeRelationshipKey;
}

- (id)__INIntentResponseCodableDescriptionPromptDialogsKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributePromptDialogsKey = [objc_opt_class() __INCodableAttributePromptDialogsKey];

  return __INCodableAttributePromptDialogsKey;
}

- (id)__INIntentResponseCodableDescriptionNameKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeNameKey = [objc_opt_class() __INCodableAttributeNameKey];

  return __INCodableAttributeNameKey;
}

- (id)__INIntentResponseCodableDescriptionMetadataKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeMetadataKey = [objc_opt_class() __INCodableAttributeMetadataKey];

  return __INCodableAttributeMetadataKey;
}

- (id)__INIntentResponseCodableDescriptionFixedSizeArrayKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeFixedSizeArrayKey = [objc_opt_class() __INCodableAttributeFixedSizeArrayKey];

  return __INCodableAttributeFixedSizeArrayKey;
}

- (id)__INIntentResponseCodableDescriptionEnumTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeEnumTypeKey = [objc_opt_class() __INCodableAttributeEnumTypeKey];

  return __INCodableAttributeEnumTypeKey;
}

- (id)__INIntentResponseCodableDescriptionEntityKeypathKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeEntityKeypathKey = [objc_opt_class() __INCodableAttributeEntityKeypathKey];

  return __INCodableAttributeEntityKeypathKey;
}

- (id)__INIntentResponseCodableDescriptionDisplayPriorityKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayPriorityKey = [objc_opt_class() __INCodableAttributeDisplayPriorityKey];

  return __INCodableAttributeDisplayPriorityKey;
}

- (id)__INIntentResponseCodableDescriptionDisplayNameIDKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayNameIDKey = [objc_opt_class() __INCodableAttributeDisplayNameIDKey];

  return __INCodableAttributeDisplayNameIDKey;
}

- (id)__INIntentResponseCodableDescriptionDisplayNameKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDisplayNameKey = [objc_opt_class() __INCodableAttributeDisplayNameKey];

  return __INCodableAttributeDisplayNameKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeDefaultKey = [objc_opt_class() __INCodableAttributeDefaultKey];

  return __INCodableAttributeDefaultKey;
}

- (id)__INIntentResponseCodableDescriptionConfigurableKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeConfigurableKey = [objc_opt_class() __INCodableAttributeConfigurableKey];

  return __INCodableAttributeConfigurableKey;
}

- (id)__INIntentResponseCodableDescriptionArraySizesKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizesKey = [objc_opt_class() __INCodableAttributeArraySizesKey];

  return __INCodableAttributeArraySizesKey;
}

- (id)__INIntentResponseCodableDescriptionArraySizeSizeClassKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizeSizeClassKey = [objc_opt_class() __INCodableAttributeArraySizeSizeClassKey];

  return __INCodableAttributeArraySizeSizeClassKey;
}

- (id)__INIntentResponseCodableDescriptionArraySizeSizeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizeSizeKey = [objc_opt_class() __INCodableAttributeArraySizeSizeKey];

  return __INCodableAttributeArraySizeSizeKey;
}

- (id)__INCodableDescriptionArraySizeSizeClassKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizeSizeClassKey = [objc_opt_class() __INCodableAttributeArraySizeSizeClassKey];

  return __INCodableAttributeArraySizeSizeClassKey;
}

- (id)__INCodableDescriptionArraySizeSizeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableAttributeArraySizeSizeKey = [objc_opt_class() __INCodableAttributeArraySizeSizeKey];

  return __INCodableAttributeArraySizeSizeKey;
}

@end