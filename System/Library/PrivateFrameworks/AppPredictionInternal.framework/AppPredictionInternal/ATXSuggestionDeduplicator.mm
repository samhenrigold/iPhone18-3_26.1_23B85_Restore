@interface ATXSuggestionDeduplicator
- (ATXSuggestionDeduplicator)init;
- (BOOL)_bundleIdsAreRemoteAndNativeEquivalents:(id)equivalents otherBundleId:(id)id;
- (BOOL)_isContactsWidgetIntent:(id)intent overlappingContactsWithOtherContactsWidgetIntent:(id)widgetIntent;
- (BOOL)_isWidget:(id)widget showingContentOfAction:(id)action;
- (BOOL)_isWidget:(id)widget showingContentOfInfoSuggestion:(id)suggestion;
- (BOOL)executableSpecsAreDuplicates:(id)duplicates otherExecutableSpec:(id)spec;
- (BOOL)isWidget:(id)widget showingIdenticalContentOfSuggestion:(id)suggestion;
- (BOOL)suggestionIsDuplicate:(id)duplicate appsOnHomeScreenPageAtIndex:(unint64_t)index;
- (BOOL)suggestionIsDuplicate:(id)duplicate existingSuggestions:(id)suggestions shouldCompareAcrossTypes:(BOOL)types;
- (BOOL)suggestionIsDuplicate:(id)duplicate otherApps:(id)apps;
- (BOOL)suggestionIsDuplicateAppOrWidget:(id)widget homeScreenPageConfig:(id)config excludingStackConfigId:(id)id;
- (BOOL)suggestionsAreDuplicateActionAndLinkAction:(id)action otherSuggestion:(id)suggestion;
- (BOOL)suggestionsAreDuplicateAppAndAction:(id)action otherSuggestion:(id)suggestion;
- (BOOL)suggestionsAreDuplicateAppAndLinkAction:(id)action otherSuggestion:(id)suggestion;
- (BOOL)suggestionsAreDuplicateWidgetAndAction:(id)action otherSuggestion:(id)suggestion;
- (BOOL)widgetExtensionIdIsDuplicate:(id)duplicate homeScreenPageConfig:(id)config excludingStackConfigId:(id)id;
- (BOOL)widgetExtensionIdIsPinned:(id)pinned homeScreenPageConfig:(id)config excludingStackConfigId:(id)id;
- (BOOL)widgetSuggestionIsDuplicate:(id)duplicate homeScreenPageConfig:(id)config excludingStackConfigId:(id)id;
- (BOOL)widgetSuggestionIsPinned:(id)pinned homeScreenPage:(id)page excludingStackConfigId:(id)id;
- (id)_initWithVisibleAppsByPage:(id)page;
- (id)duplicateWidgetForWidgetSuggestion:(id)suggestion otherWidgets:(id)widgets;
- (id)executableClassStringsToUnarchiveDuringComparison;
- (id)pinnedWidgetIdentifiablesWithExtensionId:(id)id homeScreenPageConfig:(id)config excludingStackConfigId:(id)configId shouldStopAfterFindingFirstOne:(BOOL)one;
- (id)stacksToConsiderForLeftOfHomeForStackId:(id)id stacksOnPage:(id)page;
- (id)stacksWithDuplicateWidgetExtensionId:(id)id homeScreenPageConfig:(id)config excludingStackConfigId:(id)configId;
- (id)stacksWithDuplicateWidgetSuggestion:(id)suggestion homeScreenPageConfig:(id)config excludingStackConfigId:(id)id;
@end

@implementation ATXSuggestionDeduplicator

- (ATXSuggestionDeduplicator)init
{
  v3 = +[_ATXAppIconState sharedInstance];
  nonFolderAppSetOnPages = [v3 nonFolderAppSetOnPages];
  v5 = [(ATXSuggestionDeduplicator *)self _initWithVisibleAppsByPage:nonFolderAppSetOnPages];

  return v5;
}

- (id)_initWithVisibleAppsByPage:(id)page
{
  pageCopy = page;
  v9.receiver = self;
  v9.super_class = ATXSuggestionDeduplicator;
  v6 = [(ATXSuggestionDeduplicator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visibleAppsByPage, page);
  }

  return v7;
}

- (BOOL)suggestionIsDuplicate:(id)duplicate existingSuggestions:(id)suggestions shouldCompareAcrossTypes:(BOOL)types
{
  typesCopy = types;
  v35 = *MEMORY[0x277D85DE8];
  duplicateCopy = duplicate;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = suggestions;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = *v31;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        executableSpecification = [v10 executableSpecification];
        executableType = [executableSpecification executableType];
        executableSpecification2 = [duplicateCopy executableSpecification];
        executableType2 = [executableSpecification2 executableType];

        if (executableType == executableType2)
        {
          executableSpecification3 = [v10 executableSpecification];
          executableClassString = [executableSpecification3 executableClassString];
          executableSpecification4 = [duplicateCopy executableSpecification];
          executableClassString2 = [executableSpecification4 executableClassString];
          v20 = [executableClassString isEqualToString:executableClassString2];

          if (v20)
          {
            executableSpecification5 = [duplicateCopy executableSpecification];
            executableSpecification6 = [v10 executableSpecification];
            v23 = [(ATXSuggestionDeduplicator *)self executableSpecsAreDuplicates:executableSpecification5 otherExecutableSpec:executableSpecification6];

            if (v23)
            {
              goto LABEL_18;
            }
          }
        }

        else if (typesCopy && ([(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateAppAndAction:duplicateCopy otherSuggestion:v10]|| [(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateAppAndLinkAction:duplicateCopy otherSuggestion:v10]|| [(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateWidgetAndAction:duplicateCopy otherSuggestion:v10]|| [(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateActionAndLinkAction:duplicateCopy otherSuggestion:v10]))
        {
LABEL_18:
          objc_autoreleasePoolPop(v11);
          v24 = 1;
          goto LABEL_19;
        }

        objc_autoreleasePoolPop(v11);
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_19:

  return v24;
}

- (BOOL)suggestionsAreDuplicateAppAndAction:(id)action otherSuggestion:(id)suggestion
{
  actionCopy = action;
  suggestionCopy = suggestion;
  executableSpecification = [actionCopy executableSpecification];
  if ([executableSpecification executableType] == 2)
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableType = [executableSpecification2 executableType];

    v10 = actionCopy;
    v11 = suggestionCopy;
    if (executableType == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  executableSpecification3 = [actionCopy executableSpecification];
  if ([executableSpecification3 executableType] == 1)
  {
    executableSpecification4 = [suggestionCopy executableSpecification];
    executableType2 = [executableSpecification4 executableType];

    v10 = suggestionCopy;
    v11 = actionCopy;
    if (executableType2 != 2)
    {
      v25 = 0;
      goto LABEL_20;
    }

LABEL_7:
    executableSpecification3 = v10;
    v15 = v11;
    v12ExecutableSpecification = [executableSpecification3 executableSpecification];
    executableClassString = [v12ExecutableSpecification executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [executableClassString isEqualToString:v19];

    if (v20)
    {
      v12ExecutableSpecification2 = [executableSpecification3 executableSpecification];
      executableObject = [v12ExecutableSpecification2 executableObject];

      bundleId = [executableObject bundleId];
      v24 = ATXBundleIdReplacementForBundleId();
    }

    else
    {
      v24 = 0;
    }

    executableSpecification5 = [v15 executableSpecification];
    executableClassString2 = [executableSpecification5 executableClassString];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [executableClassString2 isEqualToString:v29];

    if (v30)
    {
      executableSpecification6 = [v15 executableSpecification];
      executableObject2 = [executableSpecification6 executableObject];

      v33 = ATXBundleIdReplacementForBundleId();

      if (v24 && v33 && ([v24 isEqualToString:v33] & 1) != 0)
      {
        v25 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v33 = 0;
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:

LABEL_20:
  return v25;
}

- (BOOL)suggestionsAreDuplicateAppAndLinkAction:(id)action otherSuggestion:(id)suggestion
{
  actionCopy = action;
  suggestionCopy = suggestion;
  executableSpecification = [actionCopy executableSpecification];
  if ([executableSpecification executableType] == 10)
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableType = [executableSpecification2 executableType];

    v10 = actionCopy;
    v11 = suggestionCopy;
    if (executableType == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  executableSpecification3 = [actionCopy executableSpecification];
  if ([executableSpecification3 executableType] == 1)
  {
    executableSpecification4 = [suggestionCopy executableSpecification];
    executableType2 = [executableSpecification4 executableType];

    v10 = suggestionCopy;
    v11 = actionCopy;
    if (executableType2 != 10)
    {
      v25 = 0;
      goto LABEL_20;
    }

LABEL_7:
    executableSpecification3 = v10;
    v15 = v11;
    v12ExecutableSpecification = [executableSpecification3 executableSpecification];
    executableClassString = [v12ExecutableSpecification executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [executableClassString isEqualToString:v19];

    if (v20)
    {
      v12ExecutableSpecification2 = [executableSpecification3 executableSpecification];
      executableObject = [v12ExecutableSpecification2 executableObject];

      bundleId = [executableObject bundleId];
      v24 = ATXBundleIdReplacementForBundleId();
    }

    else
    {
      v24 = 0;
    }

    executableSpecification5 = [v15 executableSpecification];
    executableClassString2 = [executableSpecification5 executableClassString];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [executableClassString2 isEqualToString:v29];

    if (v30)
    {
      executableSpecification6 = [v15 executableSpecification];
      executableObject2 = [executableSpecification6 executableObject];

      v33 = ATXBundleIdReplacementForBundleId();

      if (v24 && v33 && ([v24 isEqualToString:v33] & 1) != 0)
      {
        v25 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v33 = 0;
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:

LABEL_20:
  return v25;
}

- (BOOL)suggestionsAreDuplicateActionAndLinkAction:(id)action otherSuggestion:(id)suggestion
{
  actionCopy = action;
  suggestionCopy = suggestion;
  executableSpecification = [actionCopy executableSpecification];
  if ([executableSpecification executableType] == 2)
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableType = [executableSpecification2 executableType];

    v10 = actionCopy;
    v11 = suggestionCopy;
    if (executableType == 10)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  executableSpecification3 = [actionCopy executableSpecification];
  if ([executableSpecification3 executableType] == 10)
  {
    executableSpecification4 = [suggestionCopy executableSpecification];
    executableType2 = [executableSpecification4 executableType];

    v10 = suggestionCopy;
    v11 = actionCopy;
    if (executableType2 != 2)
    {
      v25 = 0;
      goto LABEL_20;
    }

LABEL_7:
    executableSpecification3 = v10;
    v15 = v11;
    v12ExecutableSpecification = [executableSpecification3 executableSpecification];
    executableClassString = [v12ExecutableSpecification executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [executableClassString isEqualToString:v19];

    if (v20)
    {
      v12ExecutableSpecification2 = [executableSpecification3 executableSpecification];
      executableObject = [v12ExecutableSpecification2 executableObject];

      bundleId = [executableObject bundleId];
      v24 = ATXBundleIdReplacementForBundleId();
    }

    else
    {
      v24 = 0;
    }

    executableSpecification5 = [v15 executableSpecification];
    executableClassString2 = [executableSpecification5 executableClassString];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [executableClassString2 isEqualToString:v29];

    if (v30)
    {
      executableSpecification6 = [v15 executableSpecification];
      executableObject2 = [executableSpecification6 executableObject];

      bundleId2 = [executableObject2 bundleId];
      v34 = ATXBundleIdReplacementForBundleId();

      if (v24 && v34 && ([v24 isEqualToString:v34] & 1) != 0)
      {
        v25 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v34 = 0;
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:

LABEL_20:
  return v25;
}

- (BOOL)suggestionsAreDuplicateWidgetAndAction:(id)action otherSuggestion:(id)suggestion
{
  actionCopy = action;
  suggestionCopy = suggestion;
  executableSpecification = [actionCopy executableSpecification];
  if ([executableSpecification executableType] == 2)
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableType = [executableSpecification2 executableType];

    v10 = actionCopy;
    v11 = suggestionCopy;
    if (executableType == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  executableSpecification3 = [actionCopy executableSpecification];
  if ([executableSpecification3 executableType] != 3)
  {
    v32 = 0;
LABEL_18:

    goto LABEL_19;
  }

  executableSpecification4 = [suggestionCopy executableSpecification];
  executableType2 = [executableSpecification4 executableType];

  v10 = suggestionCopy;
  v11 = actionCopy;
  if (executableType2 == 2)
  {
LABEL_7:
    executableSpecification3 = v10;
    v15 = v11;
    v12ExecutableSpecification = [executableSpecification3 executableSpecification];
    executableClassString = [v12ExecutableSpecification executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [executableClassString isEqualToString:v19];

    if (v20 && ([executableSpecification3 executableSpecification], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "executableObject"), v22 = objc_claimAutoreleasedReturnValue(), v21, objc_msgSend(v22, "intent"), v23 = objc_claimAutoreleasedReturnValue(), v22, v23))
    {
      executableSpecification5 = [v15 executableSpecification];
      executableClassString2 = [executableSpecification5 executableClassString];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [executableClassString2 isEqualToString:v27];

      if (v28 && ([v15 executableSpecification], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "executableObject"), v30 = objc_claimAutoreleasedReturnValue(), v29, objc_msgSend(v30, "intent"), v31 = objc_claimAutoreleasedReturnValue(), v30, v31))
      {
        v32 = [ATXActionToWidgetConverter isWidgetIntent:v31 validConversionFromActionIntent:v23];
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_18;
  }

  v32 = 0;
LABEL_19:

  return v32;
}

- (BOOL)_bundleIdsAreRemoteAndNativeEquivalents:(id)equivalents otherBundleId:(id)id
{
  equivalentsCopy = equivalents;
  idCopy = id;
  if (ATXIsRemoteAppBundleId() && (v7 = ATXIsRemoteAppBundleId(), v8 = equivalentsCopy, v9 = idCopy, !v7) || ATXIsRemoteAppBundleId() && (v10 = ATXIsRemoteAppBundleId(), v8 = idCopy, v9 = equivalentsCopy, (v10 & 1) == 0))
  {
    v12 = v8;
    v13 = v9;
    v14 = ATXBundleIdForRemoteBundleId();
    mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
    v16 = [mEMORY[0x277CF9650] bundleIDForPlatform:*MEMORY[0x277CF9648] fromBundleID:v14 platform:*MEMORY[0x277CF9640]];

    v11 = v16 && ([v16 isEqualToString:v13] & 1) != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)executableSpecsAreDuplicates:(id)duplicates otherExecutableSpec:(id)spec
{
  duplicatesCopy = duplicates;
  specCopy = spec;
  executableType = [duplicatesCopy executableType];
  if (executableType == [specCopy executableType] && objc_msgSend(duplicatesCopy, "executableType") && objc_msgSend(duplicatesCopy, "executableType") != 11 && (objc_msgSend(duplicatesCopy, "executableClassString"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(specCopy, "executableClassString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11))
  {
    executableClassStringsToUnarchiveDuringComparison = [(ATXSuggestionDeduplicator *)self executableClassStringsToUnarchiveDuringComparison];
    executableClassString = [duplicatesCopy executableClassString];
    v14 = [executableClassStringsToUnarchiveDuringComparison containsObject:executableClassString];

    if ((v14 & 1) == 0)
    {
      executableIdentifier = [duplicatesCopy executableIdentifier];
      executableIdentifier2 = [specCopy executableIdentifier];
      LOBYTE(widgetKind3) = [executableIdentifier isEqualToString:executableIdentifier2];
LABEL_58:

      goto LABEL_12;
    }

    executableClassString2 = [duplicatesCopy executableClassString];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [executableClassString2 isEqualToString:v17];

    if (v18)
    {
      executableIdentifier = [duplicatesCopy executableObject];
      executableObject = [specCopy executableObject];
      executableIdentifier2 = executableObject;
      if (executableIdentifier && executableObject)
      {
        goto LABEL_9;
      }

      v37 = __atxlog_handle_default(executableObject);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionDeduplicator *)v37 executableSpecsAreDuplicates:v38 otherExecutableSpec:v39, v40, v41, v42, v43, v44];
      }

LABEL_24:

LABEL_25:
      LOBYTE(widgetKind3) = 1;
      goto LABEL_58;
    }

    executableClassString3 = [duplicatesCopy executableClassString];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [executableClassString3 isEqualToString:v30];

    if (v31)
    {
      executableObject2 = [duplicatesCopy executableObject];
      executableObject3 = [specCopy executableObject];
      v34 = executableObject3;
      if (executableObject2 && executableObject3)
      {
        if (![(ATXSuggestionDeduplicator *)self _bundleIdsAreRemoteAndNativeEquivalents:executableObject2 otherBundleId:executableObject3])
        {
          if ([duplicatesCopy executableType] == 1 && objc_msgSend(specCopy, "executableType") == 1)
          {
            v35 = ATXBundleIdReplacementForBundleId();

            v36 = ATXBundleIdReplacementForBundleId();

            v34 = v36;
            executableObject2 = v35;
          }

          LOBYTE(widgetKind3) = [executableObject2 isEqual:v34];
          goto LABEL_40;
        }
      }

      else
      {
        v56 = __atxlog_handle_default(executableObject3);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          [(ATXSuggestionDeduplicator *)v56 executableSpecsAreDuplicates:v57 otherExecutableSpec:v58, v59, v60, v61, v62, v63];
        }
      }

      LOBYTE(widgetKind3) = 1;
LABEL_40:

      goto LABEL_12;
    }

    executableClassString4 = [duplicatesCopy executableClassString];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [executableClassString4 isEqualToString:v47];

    if (v48)
    {
      executableIdentifier = [duplicatesCopy executableObject];
      executableIdentifier2 = [specCopy executableObject];
      appBundleIdentifier = [executableIdentifier appBundleIdentifier];
      appBundleIdentifier2 = [executableIdentifier2 appBundleIdentifier];
      v51 = [appBundleIdentifier isEqualToString:appBundleIdentifier2];

      if (!v51)
      {
        goto LABEL_57;
      }

      widgetBundleIdentifier = [executableIdentifier widgetBundleIdentifier];
      widgetBundleIdentifier2 = [executableIdentifier2 widgetBundleIdentifier];
      v54 = [widgetBundleIdentifier isEqualToString:widgetBundleIdentifier2];

      if (!v54)
      {
        goto LABEL_57;
      }

      if (([executableIdentifier isFallback] & 1) == 0 && (objc_msgSend(executableIdentifier2, "isFallback") & 1) == 0)
      {
        intent = [executableIdentifier intent];
        if (intent)
        {

          goto LABEL_51;
        }

        intent2 = [executableIdentifier2 intent];

        if (intent2)
        {
LABEL_51:
          intent3 = [executableIdentifier intent];
          intent4 = [executableIdentifier2 intent];
          v83 = [intent3 atx_isEqualToIntent:intent4];

          if (!v83)
          {
            goto LABEL_57;
          }
        }
      }

      widgetKind = [executableIdentifier widgetKind];
      if (widgetKind)
      {
      }

      else
      {
        widgetKind2 = [executableIdentifier2 widgetKind];

        if (!widgetKind2)
        {
          goto LABEL_25;
        }
      }

      widgetKind3 = [executableIdentifier2 widgetKind];

      if (!widgetKind3)
      {
        goto LABEL_58;
      }

      widgetKind4 = [executableIdentifier widgetKind];
      v87 = widgetKindForDeduping(widgetKind4);
      widgetKind5 = [executableIdentifier2 widgetKind];
      v89 = widgetKindForDeduping(widgetKind5);
      v90 = [v87 isEqualToString:v89];

      if (v90)
      {
        goto LABEL_25;
      }

LABEL_57:
      LOBYTE(widgetKind3) = 0;
      goto LABEL_58;
    }

    executableClassString5 = [duplicatesCopy executableClassString];
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [executableClassString5 isEqualToString:v66];

    if (v67)
    {
      executableIdentifier = [duplicatesCopy executableObject];
      executableIdentifier2 = [specCopy executableObject];
      v68 = [executableIdentifier isEqual:executableIdentifier2];
      LOBYTE(widgetKind3) = v68;
      if (!v68)
      {
        goto LABEL_58;
      }

      v23 = __atxlog_handle_blending(v68);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSuggestionDeduplicator *)executableIdentifier executableSpecsAreDuplicates:executableIdentifier2 otherExecutableSpec:v23];
      }

      goto LABEL_35;
    }

    executableClassString6 = [duplicatesCopy executableClassString];
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    LODWORD(widgetKind3) = [executableClassString6 isEqualToString:v71];

    if (widgetKind3)
    {
      executableIdentifier = [duplicatesCopy executableObject];
      executableObject4 = [specCopy executableObject];
      executableIdentifier2 = executableObject4;
      if (executableIdentifier && executableObject4)
      {
LABEL_9:
        bundleId = [executableIdentifier bundleId];
        v23 = ATXBundleIdReplacementForBundleId();

        bundleId2 = [executableIdentifier2 bundleId];
        v25 = ATXBundleIdReplacementForBundleId();

        if (([v23 isEqualToString:v25]& 1) != 0)
        {
          LOBYTE(widgetKind3) = 1;
        }

        else
        {
          LOBYTE(widgetKind3) = [executableIdentifier isEqual:executableIdentifier2];
        }

LABEL_35:
        goto LABEL_58;
      }

      v37 = __atxlog_handle_default(executableObject4);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionDeduplicator *)v37 executableSpecsAreDuplicates:v73 otherExecutableSpec:v74, v75, v76, v77, v78, v79];
      }

      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(widgetKind3) = 0;
  }

LABEL_12:

  return widgetKind3;
}

- (id)executableClassStringsToUnarchiveDuringComparison
{
  if (executableClassStringsToUnarchiveDuringComparison__pasOnceToken13 != -1)
  {
    [ATXSuggestionDeduplicator executableClassStringsToUnarchiveDuringComparison];
  }

  v3 = executableClassStringsToUnarchiveDuringComparison__pasExprOnceResult;

  return v3;
}

void __78__ATXSuggestionDeduplicator_executableClassStringsToUnarchiveDuringComparison__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v2 initWithObjects:{v4, v6, v8, v10, v12, 0}];

  objc_autoreleasePoolPop(v1);
  v14 = executableClassStringsToUnarchiveDuringComparison__pasExprOnceResult;
  executableClassStringsToUnarchiveDuringComparison__pasExprOnceResult = v13;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)isWidget:(id)widget showingIdenticalContentOfSuggestion:(id)suggestion
{
  widgetCopy = widget;
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 3)
  {
    atxInfoSuggestionExecutableObject = [suggestionCopy atxInfoSuggestionExecutableObject];
    v11 = [(ATXSuggestionDeduplicator *)self _isWidget:widgetCopy showingContentOfInfoSuggestion:atxInfoSuggestionExecutableObject];
  }

  else
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableType2 = [executableSpecification2 executableType];

    if (executableType2 != 2)
    {
      v14 = 0;
      goto LABEL_7;
    }

    atxInfoSuggestionExecutableObject = [suggestionCopy atxActionExecutableObject];
    v11 = [(ATXSuggestionDeduplicator *)self _isWidget:widgetCopy showingContentOfAction:atxInfoSuggestionExecutableObject];
  }

  v14 = v11;

LABEL_7:
  return v14;
}

- (BOOL)_isWidget:(id)widget showingContentOfInfoSuggestion:(id)suggestion
{
  widgetCopy = widget;
  suggestionCopy = suggestion;
  if (!suggestionCopy)
  {
    goto LABEL_22;
  }

  extensionBundleId = [widgetCopy extensionBundleId];
  widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
  v10 = [extensionBundleId isEqualToString:widgetBundleIdentifier];

  if (!v10)
  {
    goto LABEL_22;
  }

  extensionBundleId2 = [widgetCopy extensionBundleId];
  if (![extensionBundleId2 isEqualToString:@"com.apple.PeopleViewService.PeopleWidget-iOS"] || (objc_msgSend(widgetCopy, "intent"), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_8:
    widgetKind = [widgetCopy widgetKind];
    v19 = widgetKindForDeduping(widgetKind);
    widgetKind2 = [suggestionCopy widgetKind];
    v21 = widgetKindForDeduping(widgetKind2);
    v22 = [v19 isEqualToString:v21];

    if (v22)
    {
      if ([suggestionCopy isFallback])
      {
LABEL_16:
        v17 = 1;
        goto LABEL_23;
      }

      widgetBundleIdentifier2 = [suggestionCopy widgetBundleIdentifier];
      if ([widgetBundleIdentifier2 isEqualToString:@"com.apple.mobilecal.CalendarWidgetExtension"])
      {
LABEL_15:

        goto LABEL_16;
      }

      criterion = [suggestionCopy criterion];
      if ([criterion isEqualToString:@"ATXWeatherWakeUp"])
      {
LABEL_14:

        goto LABEL_15;
      }

      widgetBundleIdentifier3 = [suggestionCopy widgetBundleIdentifier];
      if ([widgetBundleIdentifier3 isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
      {

        goto LABEL_14;
      }

      widgetBundleIdentifier4 = [suggestionCopy widgetBundleIdentifier];
      v27 = [widgetBundleIdentifier4 isEqualToString:@"com.apple.Fitness.FitnessWidget"];

      if (v27)
      {
        goto LABEL_16;
      }

      intent = [suggestionCopy intent];
      if (intent)
      {
      }

      else
      {
        intent2 = [widgetCopy intent];

        if (!intent2)
        {
          goto LABEL_16;
        }
      }

      intent3 = [suggestionCopy intent];
      intent4 = [widgetCopy intent];
      v32 = [intent3 atx_isEqualToIntent:intent4];

      if (v32)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  intent5 = [suggestionCopy intent];

  if (!intent5)
  {
    goto LABEL_8;
  }

  intent6 = [widgetCopy intent];
  intent7 = [suggestionCopy intent];
  v17 = [(ATXSuggestionDeduplicator *)self _isContactsWidgetIntent:intent6 overlappingContactsWithOtherContactsWidgetIntent:intent7];

LABEL_23:
  return v17;
}

- (BOOL)_isContactsWidgetIntent:(id)intent overlappingContactsWithOtherContactsWidgetIntent:(id)widgetIntent
{
  widgetIntentCopy = widgetIntent;
  v6 = [ATXSuggestionPreprocessor contactIdsAssociatedWithContactsWidgetIntent:intent];
  v7 = [ATXSuggestionPreprocessor contactIdsAssociatedWithContactsWidgetIntent:widgetIntentCopy];

  LOBYTE(widgetIntentCopy) = [v6 intersectsSet:v7];
  return widgetIntentCopy;
}

- (BOOL)_isWidget:(id)widget showingContentOfAction:(id)action
{
  widgetCopy = widget;
  actionCopy = action;
  intent = [widgetCopy intent];
  if (intent)
  {
    intent2 = [actionCopy intent];

    if (intent2)
    {
      intent3 = [widgetCopy intent];
      intent4 = [actionCopy intent];
      LOBYTE(intent) = [ATXActionToWidgetConverter isWidgetIntent:intent3 validConversionFromActionIntent:intent4];
    }

    else
    {
      LOBYTE(intent) = 0;
    }
  }

  return intent;
}

- (BOOL)suggestionIsDuplicateAppOrWidget:(id)widget homeScreenPageConfig:(id)config excludingStackConfigId:(id)id
{
  widgetCopy = widget;
  configCopy = config;
  v10 = -[ATXSuggestionDeduplicator widgetSuggestionIsDuplicate:homeScreenPageConfig:excludingStackConfigId:](self, "widgetSuggestionIsDuplicate:homeScreenPageConfig:excludingStackConfigId:", widgetCopy, configCopy, id) || -[ATXSuggestionDeduplicator suggestionIsDuplicate:appsOnHomeScreenPageAtIndex:](self, "suggestionIsDuplicate:appsOnHomeScreenPageAtIndex:", widgetCopy, [configCopy pageIndex]);

  return v10;
}

- (BOOL)widgetSuggestionIsDuplicate:(id)duplicate homeScreenPageConfig:(id)config excludingStackConfigId:(id)id
{
  v5 = [(ATXSuggestionDeduplicator *)self stacksWithDuplicateWidgetSuggestion:duplicate homeScreenPageConfig:config excludingStackConfigId:id];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)widgetSuggestionIsPinned:(id)pinned homeScreenPage:(id)page excludingStackConfigId:(id)id
{
  v27 = *MEMORY[0x277D85DE8];
  pinnedCopy = pinned;
  pageCopy = page;
  idCopy = id;
  executableSpecification = [pinnedCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 3)
  {
    [(ATXSuggestionDeduplicator *)self stacksWithDuplicateWidgetSuggestion:pinnedCopy homeScreenPageConfig:pageCopy excludingStackConfigId:idCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v25 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          widgets = [v17 widgets];
          v20 = [widgets count];

          objc_autoreleasePoolPop(v18);
          if (v20 == 1)
          {
            LOBYTE(v14) = 1;
            goto LABEL_13;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)stacksWithDuplicateWidgetSuggestion:(id)suggestion homeScreenPageConfig:(id)config excludingStackConfigId:(id)id
{
  v35 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  configCopy = config;
  idCopy = id;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 3)
  {
    v29 = objc_opt_new();
    stacks = [configCopy stacks];
    pageIndex = [configCopy pageIndex];
    v28 = configCopy;
    if (pageIndex == *MEMORY[0x277CEBAE8])
    {
      v15 = [(ATXSuggestionDeduplicator *)self stacksToConsiderForLeftOfHomeForStackId:idCopy stacksOnPage:stacks];

      stacks = v15;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = stacks;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          if (idCopy)
          {
            identifier = [*(*(&v30 + 1) + 8 * i) identifier];
            v23 = [identifier isEqualToString:idCopy];

            if (v23)
            {
              continue;
            }
          }

          widgets = [v21 widgets];
          v25 = [(ATXSuggestionDeduplicator *)self duplicateWidgetForWidgetSuggestion:suggestionCopy otherWidgets:widgets];

          if (v25)
          {
            [v29 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v26 = [v29 copy];
    configCopy = v28;
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  return v26;
}

- (id)stacksToConsiderForLeftOfHomeForStackId:(id)id stacksOnPage:(id)page
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  pageCopy = page;
  v7 = pageCopy;
  if (idCopy)
  {
    v8 = objc_opt_new();
    v24 = objc_opt_new();
    mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
    lohStacksToConsiderAboveAndBelowForDeduplication = [mEMORY[0x277D41B98] lohStacksToConsiderAboveAndBelowForDeduplication];

    mEMORY[0x277D41B98]2 = [MEMORY[0x277D41B98] sharedInstance];
    lohStacksToConsiderAboveAndBelowForDeduplication2 = [mEMORY[0x277D41B98]2 lohStacksToConsiderAboveAndBelowForDeduplication];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v12;
    v14 = 0;
    v15 = *v26;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        identifier = [v17 identifier];
        v19 = [identifier isEqualToString:idCopy];

        if (v19)
        {
          goto LABEL_10;
        }

        if (v14)
        {
          [v24 addObject:v17];
          if ([v24 count] == lohStacksToConsiderAboveAndBelowForDeduplication2)
          {
            goto LABEL_16;
          }

LABEL_10:
          v14 = 1;
          continue;
        }

        [v8 addObject:v17];
        if ([v8 count] > lohStacksToConsiderAboveAndBelowForDeduplication)
        {
          [v8 removeObjectAtIndex:0];
        }

        v14 = 0;
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v13)
      {
LABEL_16:

        [v8 addObjectsFromArray:v24];
        v7 = v21;
        goto LABEL_18;
      }
    }
  }

  v8 = pageCopy;
LABEL_18:

  return v8;
}

- (BOOL)widgetExtensionIdIsDuplicate:(id)duplicate homeScreenPageConfig:(id)config excludingStackConfigId:(id)id
{
  v38 = *MEMORY[0x277D85DE8];
  duplicateCopy = duplicate;
  idCopy = id;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  stacks = [config stacks];
  v10 = [stacks countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    v26 = *v33;
    do
    {
      v13 = 0;
      v27 = v11;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(stacks);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        if (!idCopy || ([*(*(&v32 + 1) + 8 * v13) identifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", idCopy), v15, (v16 & 1) == 0))
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          widgets = [v14 widgets];
          v18 = [widgets countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v29;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v29 != v20)
                {
                  objc_enumerationMutation(widgets);
                }

                extensionBundleId = [*(*(&v28 + 1) + 8 * i) extensionBundleId];
                v23 = [extensionBundleId isEqualToString:duplicateCopy];

                if (v23)
                {

                  v24 = 1;
                  goto LABEL_22;
                }
              }

              v19 = [widgets countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v12 = v26;
          v11 = v27;
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [stacks countByEnumeratingWithState:&v32 objects:v37 count:16];
      v24 = 0;
    }

    while (v11);
  }

  else
  {
    v24 = 0;
  }

LABEL_22:

  return v24;
}

- (BOOL)widgetExtensionIdIsPinned:(id)pinned homeScreenPageConfig:(id)config excludingStackConfigId:(id)id
{
  v5 = [(ATXSuggestionDeduplicator *)self pinnedWidgetIdentifiablesWithExtensionId:pinned homeScreenPageConfig:config excludingStackConfigId:id shouldStopAfterFindingFirstOne:1];
  v6 = [v5 count] != 0;

  return v6;
}

- (id)pinnedWidgetIdentifiablesWithExtensionId:(id)id homeScreenPageConfig:(id)config excludingStackConfigId:(id)configId shouldStopAfterFindingFirstOne:(BOOL)one
{
  oneCopy = one;
  v34 = *MEMORY[0x277D85DE8];
  idCopy = id;
  configCopy = config;
  configIdCopy = configId;
  v13 = objc_opt_new();
  v27 = configCopy;
  v28 = idCopy;
  v26 = configIdCopy;
  [(ATXSuggestionDeduplicator *)self stacksWithDuplicateWidgetExtensionId:idCopy homeScreenPageConfig:configCopy excludingStackConfigId:configIdCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v32 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        widgets = [v19 widgets];
        v22 = [widgets count];

        if (v22 == 1)
        {
          widgets2 = [v19 widgets];
          firstObject = [widgets2 firstObject];
          [v13 addObject:firstObject];

          if (oneCopy)
          {
            objc_autoreleasePoolPop(v20);
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v13;
}

- (id)stacksWithDuplicateWidgetExtensionId:(id)id homeScreenPageConfig:(id)config excludingStackConfigId:(id)configId
{
  v38 = *MEMORY[0x277D85DE8];
  idCopy = id;
  configCopy = config;
  configIdCopy = configId;
  v23 = configCopy;
  v24 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [configCopy stacks];
  v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v27)
  {
    v26 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if (configIdCopy)
        {
          identifier = [*(*(&v32 + 1) + 8 * i) identifier];
          v13 = [identifier isEqualToString:configIdCopy];

          if (v13)
          {
            continue;
          }
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        widgets = [v11 widgets];
        v15 = [widgets countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(widgets);
              }

              extensionBundleId = [*(*(&v28 + 1) + 8 * j) extensionBundleId];
              v20 = [extensionBundleId isEqualToString:idCopy];

              if (v20)
              {
                [v24 addObject:v11];
                goto LABEL_18;
              }
            }

            v16 = [widgets countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v27);
  }

  v21 = [v24 copy];

  return v21;
}

- (BOOL)suggestionIsDuplicate:(id)duplicate appsOnHomeScreenPageAtIndex:(unint64_t)index
{
  duplicateCopy = duplicate;
  v7 = objc_autoreleasePoolPush();
  visibleAppsByPage = self->_visibleAppsByPage;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v10 = [(NSDictionary *)visibleAppsByPage objectForKeyedSubscript:v9];

  if ([v10 count])
  {
    v11 = [(ATXSuggestionDeduplicator *)self suggestionIsDuplicate:duplicateCopy otherApps:v10];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

- (BOOL)suggestionIsDuplicate:(id)duplicate otherApps:(id)apps
{
  duplicateCopy = duplicate;
  appsCopy = apps;
  executableSpecification = [duplicateCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 1)
  {
    executableSpecification2 = [duplicateCopy executableSpecification];
    executableObject = [executableSpecification2 executableObject];

    v11 = executableObject && ([appsCopy containsObject:executableObject] & 1) != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)duplicateWidgetForWidgetSuggestion:(id)suggestion otherWidgets:(id)widgets
{
  v30 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  widgetsCopy = widgets;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 3 && ([suggestionCopy executableSpecification], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "executableClassString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_class(), NSStringFromClass(v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToString:", v13), v13, v11, v10, v14))
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableObject = [executableSpecification2 executableObject];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = widgetsCopy;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          if ([(ATXSuggestionDeduplicator *)self _isWidget:v22 showingContentOfInfoSuggestion:executableObject, v25])
          {
            v23 = v22;
            goto LABEL_14;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0;
LABEL_14:
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)executableSpecsAreDuplicates:(os_log_t)log otherExecutableSpec:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Deduplicator found duplicate people suggestions. Suggestion 1: %@; Suggestion 2: %@", &v3, 0x16u);
}

@end