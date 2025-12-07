id WFGetFeatureFlagTestingTable()
{
  if (WFGetFeatureFlagTestingTable_onceToken != -1)
  {
    dispatch_once(&WFGetFeatureFlagTestingTable_onceToken, &__block_literal_global_357);
  }

  v1 = _WFFeatureFlagTestingTable;

  return v1;
}

id WFShortcutsCloudKitContainer()
{
  v0 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  if ([v0 BOOLForKey:@"WFCloudKitDevEnvironment"])
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = objc_alloc(MEMORY[0x1E695B8A0]);
  v3 = [v2 initWithContainerIdentifier:*MEMORY[0x1E6997148] environment:v1];
  v4 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v3];
  WFSetShortcutsAppAttributionOnContainer(v4);

  return v4;
}

void WFSetShortcutsAppAttributionOnContainer(void *a1)
{
  v1 = *MEMORY[0x1E69E0FB0];
  v2 = a1;
  v3 = [v2 options];
  [v3 setApplicationBundleIdentifierOverrideForTCC:v1];

  v4 = [v2 options];
  [v4 setApplicationBundleIdentifierOverrideForContainerAccess:v1];

  v5 = [v2 options];
  [v5 setApplicationBundleIdentifierOverrideForNetworkAttribution:v1];

  v6 = [v2 options];

  [v6 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v1];
}

id WFLinkActionIdentifierFromShortcutsActionIdentifier(void *a1)
{
  v1 = a1;
  v2 = WFLinkActionIdentifierOverrides();
  v3 = [v2 allKeysForObject:v1];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = v4;

    v1 = v5;
  }

  v6 = [v1 componentsSeparatedByString:@"."];
  if ([v6 count] >= 2)
  {
    if ([v6 count] >= 3 && (objc_msgSend(v6, "objectAtIndex:", objc_msgSend(v6, "count") - 2), v8 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v8), v8, isEqualToString))
    {
      v10 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 2}];
      v11 = [v10 componentsJoinedByString:@"."];

      v12 = [v6 subarrayWithRange:{objc_msgSend(v6, "count") - 2, 2}];
      v13 = [v12 componentsJoinedByString:@"."];
    }

    else
    {
      v14 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];
      v11 = [v14 componentsJoinedByString:@"."];

      v13 = [v6 lastObject];
    }

    v7 = [objc_alloc(MEMORY[0x1E69AC860]) initWithActionIdentifier:v13 bundleIdentifier:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WFLinkActionIdentifierOverrides()
{
  v3[17] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.Notes.OpenNoteLinkAction";
  v2[1] = @"com.apple.Notes.AppendToNoteLinkAction";
  v3[0] = @"is.workflow.actions.shownote";
  v3[1] = @"is.workflow.actions.appendnote";
  v2[2] = @"com.apple.Notes.CreateNoteLinkAction";
  v2[3] = @"com.apple.mobilenotes.OpenNoteLinkAction";
  v3[2] = @"com.apple.mobilenotes.SharingExtension";
  v3[3] = @"is.workflow.actions.shownote";
  v2[4] = @"com.apple.mobilenotes.AppendToNoteLinkAction";
  v2[5] = @"com.apple.mobilenotes.CreateNoteLinkAction";
  v3[4] = @"is.workflow.actions.appendnote";
  v3[5] = @"com.apple.mobilenotes.SharingExtension";
  v2[6] = @"com.apple.mobilenotes.NoteEntity";
  v2[7] = @"com.apple.shortcuts.SetVoiceDataModeAction";
  v3[6] = @"is.workflow.actions.filter.notes";
  v3[7] = @"is.workflow.actions.cellular.rat.set";
  v2[8] = @"com.apple.clock.INCreateTimerIntent";
  v2[9] = @"com.apple.clock.CreateAlarmIntent";
  v3[8] = @"is.workflow.actions.timer.start";
  v3[9] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent";
  v2[10] = @"com.apple.clock.ToggleAlarmIntent";
  v2[11] = @"com.apple.mobiletimer.INCreateTimerIntent";
  v3[10] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent";
  v3[11] = @"is.workflow.actions.timer.start";
  v2[12] = @"com.apple.mobiletimer.CreateAlarmIntent";
  v2[13] = @"com.apple.mobiletimer.AlarmEntity";
  v3[12] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent";
  v3[13] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTGetAlarmsIntent";
  v2[14] = @"com.apple.mobiletimer.ToggleAlarmIntent";
  v2[15] = @"com.apple.camera.OpenCaptureModeIntent";
  v3[14] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent";
  v3[15] = @"com.apple.ShortcutsActions.OpenCameraAction";
  v2[16] = @"com.apple.reminders.OpenNewReminderAppIntent";
  v3[16] = @"is.workflow.actions.addquickreminder";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:17];

  return v0;
}

id sub_1CA25A3A8(void *a1)
{
  v1 = a1;
  sub_1CA25A3EC();
  v3 = v2;

  return v3;
}

void sub_1CA25A3EC()
{
  sub_1CA25A430(&protocol descriptor for ShortcutsFindFilterEntity);
  if (v1)
  {
    (*(v0 + 8))();
  }
}

void sub_1CA25A430(uint64_t a1)
{
  v3 = v1;
  v4 = [v1 effectiveBundleIdentifiers];
  v5 = [v4 array];

  v6 = sub_1CA94C658();
  v7 = sub_1CA25A6F8(v6);

  if (v7)
  {
    v8 = sub_1CA25B410(v7);
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1CCAA22D0](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      if (![v10 type])
      {
        break;
      }
    }

    v12 = [v11 bundleIdentifier];
    if (!v12)
    {
      sub_1CA94C3A8();
      v12 = sub_1CA94C368();
    }

    v13 = sub_1CA94C3A8();
    v15 = v14;
    if (v13 == sub_1CA94C3A8() && v15 == v16)
    {
    }

    else
    {
      v18 = sub_1CA94D7F8();

      if ((v18 & 1) == 0)
      {
LABEL_25:

        return;
      }
    }

    v19 = sub_1CA26BB28(v3);
    if (v19)
    {
      v20 = v19;
      sub_1CA25B3D0(0, &unk_1EDB9F718, 0x1E69ACDD0);
      v21 = sub_1CA272094(v20);
      v22 = [v21 availableForCurrentPlatformVersion];

      if ((v22 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v23 = [v3 mangledTypeNameForBundleIdentifier_];

    sub_1CA94C3A8();
    v24 = sub_1CA94D418();

    if (v24)
    {
      dynamic_cast_existential_1_conditional(v24, v24, a1);
    }
  }
}

uint64_t WFInitializeProcess(char a1, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __WFInitializeProcess_block_invoke;
  v4[3] = &unk_1E837AD98;
  v5 = a1;
  v4[4] = &v7;
  v6 = a2;
  if (WFInitializeProcess_onceToken != -1)
  {
    dispatch_once(&WFInitializeProcess_onceToken, v4);
  }

  v2 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __WFInitializeProcess_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 40) != 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_18;
  }

  v3 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = 0;
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v19];

  if (!v6)
  {
    v18 = 0;
    v8 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v18];
    v7 = v18;
    if ((v8 & 1) == 0)
    {
      v9 = getWFGeneralLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v21 = "WFCreateShortcutsDataVaultIfNecessary";
        v22 = 2114;
        v23 = v7;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Cannot create Shortcuts data vault: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  if ((v19 & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "WFCreateShortcutsDataVaultIfNecessary";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s A file exists where Shortcuts directory should be", buf, 0xCu);
    }

LABEL_11:
  }

  v10 = [WFDatabase alloc];
  v18 = 0;
  v11 = [(WFDatabase *)v10 initWithPersistenceMode:0 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v14 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "WFInitializeDatabase";
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Failed to initialize database: %{public}@", buf, 0x16u);
    }

    v11 = [[WFDatabase alloc] initWithPersistenceMode:1 error:0];
    v13 = 2;
  }

  [WFDatabase setDefaultDatabase:v11];
  v15 = v11;

  v16 = v11;
  *(*(*(a1 + 32) + 8) + 24) = v13;

LABEL_18:
  v17 = *(a1 + 41);
  WFInitializeDisallowedDirectories();
  [MEMORY[0x1E6996F68] setUpDirectories];
  if ((v17 & 1) == 0)
  {
    [MEMORY[0x1E6996F68] clearTemporaryFiles];
  }

  objc_autoreleasePoolPop(v2);
}

void __WFWorkflowKitManagedObjectModel_block_invoke(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = MEMORY[0x1E695D638];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 mergedModelFromBundles:v4];
  v6 = WFWorkflowKitManagedObjectModel_model;
  WFWorkflowKitManagedObjectModel_model = v5;
}

void __WFGetFeatureFlagTestingTable_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _WFFeatureFlagTestingTable;
  _WFFeatureFlagTestingTable = v0;
}

uint64_t sub_1CA25B374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA25B3D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CA25B418(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1CA94D328();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id _WFTypeSpecificAnnotationsForType(void *a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 wf_enumValueType];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 enumerationIdentifier];
    v11 = [v5 enumerationWithIdentifier:v10 fromBundleIdentifier:v7];

    if (v11)
    {
      v37 = @"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata";
      v38[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  v13 = [v6 wf_entityValueType];
  if (v13)
  {
    v11 = v13;
    v14 = objc_opt_new();
    v15 = [v11 identifier];
    v16 = [v5 entityWithIdentifier:v15 fromBundleIdentifier:v7];

    if (v16)
    {
      [v14 setObject:v16 forKey:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];
      v17 = MEMORY[0x1E696AD18];
      v30 = v16;
      v18 = v16;
      v19 = v7;
      v20 = v5;
      [v17 strongToStrongObjectsMapTable];
      v21 = v31 = v14;
      __WFReferencedEntityMetadataFromMetadata(v18, v18, v19, v20, v21);

      v22 = [v21 objectEnumerator];
      v23 = [v22 allObjects];

      v14 = v31;
      if ([v23 count])
      {
        [v31 setObject:v23 forKey:@"LNValueTypeSpecificMetadataKeyLinkReferencedEntityMetadata"];
      }

      v16 = v30;
    }

    v24 = [v11 identifier];
    v25 = [v5 enumerationWithIdentifier:v24 fromBundleIdentifier:v7];

    if (v25)
    {
      [v14 setObject:v25 forKey:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata"];
    }

    v12 = [v14 copy];

    goto LABEL_15;
  }

  v26 = [v6 wf_unionValueType];
  if (v26)
  {
    v11 = v26;
    v35 = @"LNValueTypeSpecificMetadataKeyLinkUnionMetadata";
    v27 = [v26 memberValueTypes];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___WFTypeSpecificAnnotationsForType_block_invoke;
    v32[3] = &unk_1E8380610;
    v33 = v5;
    v34 = v7;
    v28 = [v27 if_map:v32];
    v36 = v28;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

LABEL_15:
    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

id WFShortcutsActionIdentifierForClassOverrideSearch(void *a1, void *a2)
{
  v2 = WFShortcutsActionIdentifierForIdentifierOverrideSearch(a1, a2);
  v3 = WFLinkActionIdentifierOverrides();
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v6;
}

id WFShortcutsActionIdentifierForIdentifierOverrideSearch(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringByAppendingString:@"."];
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

id WFResourceDefinitionsForRequiredCapabilities(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 isFeatureFlagCapability])
        {
          v9 = [v8 key];
          v10 = [v9 componentsSeparatedByString:@"/"];

          v11 = [v10 firstObject];
          v12 = [v10 lastObject];
          v13 = -[WFFeatureFlagResource initWithDomain:feature:value:]([_TtC11WorkflowKit21WFFeatureFlagResource alloc], "initWithDomain:feature:value:", v11, v12, [v8 value]);
          [v2 addObject:v13];
        }

        else
        {
          if (![v8 isMobileGestaltCapability])
          {
            continue;
          }

          v14 = [_TtC11WorkflowKit26WFDeviceCapabilityResource alloc];
          v10 = [v8 key];
          v11 = -[WFDeviceCapabilityResource initWithMobileGestaltKey:value:](v14, "initWithMobileGestaltKey:value:", v10, [v8 value]);
          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t sub_1CA25BBE8(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1CA94D508();
  v7 = a1 + 32;
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    sub_1CA25B374(v7, v9);
    sub_1CA25B3D0(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1CA94D4D8();
    sub_1CA94D518();
    sub_1CA94D528();
    sub_1CA94D4E8();
    v7 += 32;
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

void *WFShortcutsActionIdentifierFromLinkIdentifiers(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFShortcutsActionIdentifierForIdentifierOverrideSearch(v4, v3);
  v6 = WFLinkActionIdentifierOverrides();
  v7 = [v6 objectForKey:v5];

  v8 = [v4 stringByAppendingString:@"."];

  v9 = [v8 stringByAppendingString:v3];

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v10;
}

void sub_1CA25BDF8()
{
  sub_1CA25A430(&protocol descriptor for ShortcutsAction);
  if (v1)
  {
    (*(v0 + 8))();
  }
}

id sub_1CA25BE3C(void *a1)
{
  v1 = a1;
  sub_1CA25BDF8();
  v3 = v2;

  return v3;
}

uint64_t sub_1CA25C0A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA25C0D8(uint64_t a1)
{
  sub_1CA378AB8(319);
  if (v1 <= 0x3F)
  {
    sub_1CA25C404(319);
    if (v2 <= 0x3F)
    {
      sub_1CA25C174(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA25C174(uint64_t a1)
{
  if (!qword_1EC441B58)
  {
    sub_1CA94BF38();
    v1 = sub_1CA94C248();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441B58);
    }
  }
}

void sub_1CA25C1DC(uint64_t a1)
{
  if (!qword_1EC441BA8)
  {
    type metadata accessor for LibraryModel(255);
    sub_1CA25C5E8(&qword_1EC442AA8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);
    v1 = sub_1CA94C028();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441BA8);
    }
  }
}

void sub_1CA25C270(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1CA94B898();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CA25C2C0(uint64_t a1)
{
  if (!qword_1EC441C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443BE0, &qword_1CA982090);
    sub_1CA25C3BC(&qword_1EC441BA0, &qword_1EC443BE0, &qword_1CA982090, MEMORY[0x1E6995460]);
    sub_1CA25C3BC(&qword_1EC441B98, &qword_1EC443BE0, &qword_1CA982090, MEMORY[0x1E6995478]);
    v1 = sub_1CA94BD38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441C70);
    }
  }
}

uint64_t sub_1CA25C3BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA25C404(uint64_t a1)
{
  if (!qword_1EC441BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC443950, &unk_1CA982580);
    sub_1CA25C3BC(&qword_1EC441BD8, &unk_1EC443950, &unk_1CA982580, MEMORY[0x1E6995208]);
    sub_1CA25C3BC(&qword_1EC441BD0, &unk_1EC443950, &unk_1CA982580, MEMORY[0x1E6995210]);
    v1 = sub_1CA94BDD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441BE0);
    }
  }
}

unint64_t sub_1CA25C504()
{
  result = qword_1EC442C70;
  if (!qword_1EC442C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442C70);
  }

  return result;
}

uint64_t sub_1CA25C558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA25C5A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA25C5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1CA94C458();
}

id OUTLINED_FUNCTION_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_4_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_26()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_4_10()
{
}

id OUTLINED_FUNCTION_4_11(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return sub_1CA94AA58();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_4_23(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a2;

  sub_1CA2B8E70(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_60()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_4_27(unint64_t *a1)
{

  return sub_1CA25C3BC(a1, v1, v2, &unk_1CA989408);
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return sub_1CA94C298();
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t result)
{
  *(v1 + 208) = result;
  *(v1 + 152) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_31@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = (result + a2);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

id OUTLINED_FUNCTION_4_36(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_4_40(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D748();
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t a1)
{

  return sub_1CA94C658();
}

void OUTLINED_FUNCTION_4_48()
{

  sub_1CA2E7478();
}

uint64_t OUTLINED_FUNCTION_4_54()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_4_55(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1CA25CF98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0;
  *v10 = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CA2D9D20(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_35_7(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6310];

  return sub_1CA25C3BC(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return sub_1CA948B68();
}

double OUTLINED_FUNCTION_35_9(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 5;
  return result;
}

id OUTLINED_FUNCTION_35_11()
{

  return sub_1CA4FC70C(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_35_13(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_1CA94D918();
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA94D7F8();
}

double OUTLINED_FUNCTION_9_0()
{
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return sub_1CA948B68();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1CA94D848();
}

void OUTLINED_FUNCTION_3_11(uint64_t a1@<X8>)
{
  v1[12] = sub_1CA319F94;
  v1[13] = a1;
  v1[14] = v2;
}

void OUTLINED_FUNCTION_3_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_2_3()
{
  v1[12] = sub_1CA35F430;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2)
{
  v6 = v2[13];
  v7 = v2[14];
  *(v4 - 128) = v2[16];
  *(v4 - 120) = v6;
  v8 = v2[10];
  *(v4 - 112) = v2[11];
  *(v4 - 104) = v8;

  return __swift_storeEnumTagSinglePayload(v7, a2, 1, v3);
}

id OUTLINED_FUNCTION_9_1()
{

  return sub_1CA2F9F14(v0, v1, v2, v3, 0, 0, v4, v5);
}

id OUTLINED_FUNCTION_3_34(uint64_t a1)
{

  return [v1 (v2 + 320)];
}

uint64_t OUTLINED_FUNCTION_3_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CA94AA98();
}

uint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1CA25B374(a1, &a9);
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_3_43(void *a1)
{

  return [a1 init];
}

void OUTLINED_FUNCTION_3_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v32 - 128) = 0xD000000000000010;
  *(v32 - 120) = a27;
  *(v32 - 176) = a32;
}

uint64_t OUTLINED_FUNCTION_3_45()
{
  *(v0 + 88) = sub_1CA5A0FDC;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_3_47()
{

  sub_1CA2E5784();
}

uint64_t OUTLINED_FUNCTION_3_48()
{

  return sub_1CA2B8A88(v0);
}

uint64_t OUTLINED_FUNCTION_3_49@<X0>(uint64_t a2@<X8>)
{
  *(v4 - 232) = v2;
  *(v4 - 224) = a2;
  v6 = v3[88];
  *(v4 - 216) = v3[89];
  *(v4 - 208) = v6;
  v7 = v3[86];
  *(v4 - 200) = v3[87];
  *(v4 - 192) = v7;
  v8 = v3[80];
  *(v4 - 184) = v3[83];
  *(v4 - 176) = v8;
  v9 = v3[76];
  *(v4 - 168) = v3[77];
  *(v4 - 160) = v9;
  v10 = v3[73];
  *(v4 - 152) = v3[75];
  *(v4 - 144) = v10;
  v11 = v3[71];
  *(v4 - 136) = v3[72];
  *(v4 - 128) = v11;
  v12 = v3[69];
  *(v4 - 120) = v3[70];
  *(v4 - 112) = v12;
  v13 = v3[66];
  *(v4 - 104) = v3[68];
  *(v4 - 96) = v13;
}

uint64_t OUTLINED_FUNCTION_3_51()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1CA61126C;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_3_52()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

void OUTLINED_FUNCTION_3_56()
{

  sub_1CA2E5678();
}

id OUTLINED_FUNCTION_3_57()
{

  return [v0 (v3 + 3668)];
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return sub_1CA94C3A8();
}

unint64_t OUTLINED_FUNCTION_108_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1CA435BD4();
}

uint64_t OUTLINED_FUNCTION_38_2()
{
}

id OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1CA320AB4(va, v4);
}

uint64_t OUTLINED_FUNCTION_38_4()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1)
{

  return sub_1CA94C698();
}

void OUTLINED_FUNCTION_38_6(uint64_t a1@<X8>)
{
  *(v3 - 184) = a1;
  *(v3 - 176) = v1;
  v4 = *(v2 + 1272);
  *(v3 - 200) = *(v2 + 1224);
  *(v3 - 192) = v4;
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return sub_1CA42B9FC();
}

void OUTLINED_FUNCTION_51()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_38_12@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return sub_1CA25B410(v3);
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_10()
{
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1, uint64_t a2)
{
  v6 = v2[199];
  v7 = v2[130];
  v8 = v2[101];
  *(v3 - 112) = v2[95];
  *(v3 - 104) = v8;

  return MEMORY[0x1EEDEBE08](v7, a1, a2, v6);
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_8_29(uint64_t a1)
{

  return sub_1CA94D2A8();
}

void OUTLINED_FUNCTION_8_30()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_8_31(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_34()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  return v3 + 16;
}

BOOL OUTLINED_FUNCTION_8_35(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_20_10()
{
  v2 = v0[166];
  *(v1 - 184) = v0[160];
  *(v1 - 176) = v2;
  v3 = v0[159];
  *(v1 - 200) = v0[153];
  *(v1 - 192) = v3;
}

id OUTLINED_FUNCTION_20_11(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return [v10 a2];
}

void OUTLINED_FUNCTION_20_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_20_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_1CA948D98();
}

id OUTLINED_FUNCTION_20_22(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_20_23()
{

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_20_25(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D6F8();
}

uint64_t OUTLINED_FUNCTION_20_32()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_91_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_91_6(uint64_t a1)
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return sub_1CA948DA8();
}

uint64_t OUTLINED_FUNCTION_17_5(void x0_0, void x1_0, uint64_t a1, void a4, void a5, void a6, void a7, void a8, uint64_t a3)
{

  return sub_1CA94BFF8();
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D748();
}

uint64_t OUTLINED_FUNCTION_17_14()
{
}

uint64_t OUTLINED_FUNCTION_17_18@<X0>(uint64_t a1@<X8>)
{

  return sub_1CA5C3FA4(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_17_19(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_17_20()
{
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1)
{

  return sub_1CA94D588();
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1)
{

  return sub_1CA94C308();
}

void OUTLINED_FUNCTION_75_6(uint64_t a1)
{

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 72);
  v5 = *(v2 + 312);

  return __swift_storeEnumTagSinglePayload(v5, a2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 OUTLINED_FUNCTION_2_7()
{
  result = *(v0 - 176);
  *(v0 - 160) = *(v0 - 192);
  *(v0 - 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return sub_1CA948D98();
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{

  return swift_dynamicCast();
}

int8x16_t OUTLINED_FUNCTION_2_17(int8x16_t *a1)
{
  *(v1 + 40) = a1;
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_18(uint64_t a2, ...)
{

  return swift_dynamicCast();
}

_OWORD *OUTLINED_FUNCTION_2_21(uint64_t a1, uint64_t a2, ...)
{

  return sub_1CA2C0A20(&v5, &v4);
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  return a4 + 16;
}

uint64_t OUTLINED_FUNCTION_26_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_2_24@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  *(v1 - 184) = 0xE500000000000000;
  return v1 - 192;
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_30@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v2 + a1 + 8);
  v6 = *(v2 + a1 + 16);
  v7 = *(v2 + a1 + 24);
  v8 = (v1 + a1);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];

  return sub_1CA410BD0(v4, v5, v6, v7, v9, v10, v11, v12);
}

void OUTLINED_FUNCTION_2_33()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_2_46(uint64_t a1, uint64_t a2)
{

  return sub_1CA25B374(v2, a2);
}

uint64_t OUTLINED_FUNCTION_2_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return sub_1CA94D1B8();
}

uint64_t OUTLINED_FUNCTION_2_54(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 8 * v3 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_56(uint64_t a1)
{
  v4 = v1[91];
  *(v2 - 232) = v1[92];
  *(v2 - 224) = v4;
  v5 = v1[89];
  *(v2 - 216) = v1[90];
  *(v2 - 208) = v5;
  v6 = v1[87];
  *(v2 - 200) = v1[88];
  *(v2 - 192) = v6;
  v7 = v1[83];
  *(v2 - 184) = v1[86];
  *(v2 - 176) = v7;
  v8 = v1[77];
  *(v2 - 168) = v1[80];
  *(v2 - 160) = v8;
  v9 = v1[75];
  *(v2 - 152) = v1[76];
  *(v2 - 144) = v9;
  v10 = v1[72];
  *(v2 - 136) = v1[73];
  *(v2 - 128) = v10;
  v11 = v1[70];
  *(v2 - 120) = v1[71];
  *(v2 - 112) = v11;
  v12 = v1[68];
  *(v2 - 104) = v1[69];
  *(v2 - 96) = v12;
  *(v2 - 88) = v1[66];
}

void OUTLINED_FUNCTION_2_57()
{
  v1[12] = sub_1CA610AB0;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_2_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 56) = a12;
  *(v12 + 24) = sub_1CA62C544;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_2_60(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_61()
{

  sub_1CA2E5678();
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return sub_1CA948DA8();
}

uint64_t OUTLINED_FUNCTION_13_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1CA25C3BC(a1, a2, a3, &protocol conformance descriptor for ConcurrentCache<A, B>);
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_13_7@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1CA308D4C(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_13_13()
{
}

uint64_t OUTLINED_FUNCTION_13_15(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_13_16(uint64_t a1)
{

  return sub_1CA94D7F8();
}

__n128 OUTLINED_FUNCTION_13_23(__n128 *a1)
{
  result = *(v1 - 400);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_24(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_13_26()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_29(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D7F8();
}

id OUTLINED_FUNCTION_13_34()
{

  return sub_1CA2F9F14(v1, v3, v4, v5, 0, 0, v0, v2);
}

uint64_t OUTLINED_FUNCTION_100_1(unint64_t *a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA323C24(a1, a2);
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_100_3()
{

  return sub_1CA6A9170(1);
}

uint64_t sub_1CA25F81C(uint64_t a1)
{
  v2 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

void OUTLINED_FUNCTION_48()
{

  JUMPOUT(0x1CCAA22D0);
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_1CA94CFC8();
}

uint64_t OUTLINED_FUNCTION_48_3(uint64_t a1)
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_48_5()
{
  *(v3 - 136) = v1;
  *(v3 - 128) = v2;
  *(v3 - 88) = v0;

  return sub_1CA94D738();
}

void OUTLINED_FUNCTION_48_6(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
}

void OUTLINED_FUNCTION_48_8()
{
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_22()
{
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_1_33(uint64_t a1)
{
  v5 = v1[53];
  v4 = v1[54];
  *(v2 - 256) = v1[55];
  *(v2 - 248) = v4;
  v7 = v1[51];
  v6 = v1[52];
  *(v2 - 240) = v5;
  *(v2 - 232) = v6;
  v9 = v1[47];
  v8 = v1[48];
  *(v2 - 224) = v7;
  *(v2 - 216) = v8;
  v10 = v1[46];
  *(v2 - 208) = v9;
  *(v2 - 200) = v10;
  v11 = v1[41];
  *(v2 - 192) = v1[43];
  *(v2 - 184) = v11;
  v12 = v1[35];
  *(v2 - 176) = v1[38];
  *(v2 - 168) = v12;
  v14 = v1[28];
  v13 = v1[29];
  *(v2 - 160) = v1[32];
  *(v2 - 152) = v13;
  v16 = v1[26];
  v15 = v1[27];
  *(v2 - 144) = v14;
  *(v2 - 136) = v15;
  v17 = v1[25];
  *(v2 - 128) = v16;
  *(v2 - 120) = v17;
  v18 = v1[21];
  *(v2 - 112) = v1[22];
  *(v2 - 104) = v18;
  *(v2 - 96) = v1[18];
}

uint64_t OUTLINED_FUNCTION_1_34()
{
}

void OUTLINED_FUNCTION_1_35(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, vDSP_Length a6)
{

  vDSP_dotprD(a1, 1, (v6 + 32), 1, (v7 - 120), a6);
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return sub_1CA948D18();
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_39(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_1_44(unint64_t a1@<X8>)
{

  sub_1CA2E739C(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_1_49()
{
  v1[12] = sub_1CA4F4758;
  v1[13] = v0;
  v1[14] = v2;
}

id OUTLINED_FUNCTION_1_52()
{

  return [v0 (v3 + 3668)];
}

void OUTLINED_FUNCTION_1_56(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_14_2()
{
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  v1 = v0[30];
  v2 = v0[19];
  v0[35] = v0[18];
  v0[36] = v2;
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  v3 = v1[190];
  *(v2 - 152) = v1[189];
  *(v2 - 144) = v3;
  v4 = v1[188];
  *(v2 - 136) = v1[187];
  *(v2 - 128) = v4;
  result = v1[183];
  *(v2 - 112) = v1[173];
  *(v2 - 104) = v0;
  *(v2 - 120) = v1[167];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t result)
{
  *(v1 + 144) = v2;
  v3 = v1 + 144;
  *(v3 - 8) = result;
  *(v3 - 64) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_9_20()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_9_25()
{
  v1 = v0[10];
  result = v0[7];
  v0[37] = *v1;
  v0[38] = v1[1];
  return result;
}

id OUTLINED_FUNCTION_9_27(float a1)
{
  *v1 = a1;
  v5 = *(v3 + 1096);

  return [v2 v5];
}

id OUTLINED_FUNCTION_9_30(uint64_t a1)
{

  return [v1 (v2 + 2108)];
}

id OUTLINED_FUNCTION_9_35()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_9_36(uint64_t a1)
{
  *(v2 + 24) = a1;
  *v2 = v1;
  *(v2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_40(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_50_1()
{

  sub_1CA3230EC(v2, v3, v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1)
{
  v4 = *(v1 + 328);
  *(v2 - 96) = *(v1 + 336);
  *(v2 - 88) = v4;
}

uint64_t LibraryModel.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_52_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v4, v5, v6, v7);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_14_0();
  sub_1CA25C3BC(v8, v9, v10, v11);
  sub_1CA94BC78();
  v12 = type metadata accessor for LibraryModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_76();
  sub_1CA25C3BC(v13, &unk_1EC443950, &unk_1CA982580, v14);
  OUTLINED_FUNCTION_75();
  sub_1CA25C3BC(v15, &unk_1EC443950, &unk_1CA982580, v16);
  OUTLINED_FUNCTION_70();
  result = sub_1CA94BDC8();
  *(a1 + *(v12 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 296);
  v4 = *(v2 + 272);
  __swift_storeEnumTagSinglePayload(v3, a2, 1, v4);
  return __swift_getEnumTagSinglePayload(v3, 1, v4);
}

void OUTLINED_FUNCTION_10_11()
{
  v1[12] = sub_1CA3CD588;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_10_20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t, uint64_t, uint64_t *))
{

  sub_1CA50F12C(v4, 1953066581, 0xE400000000000000, a4);
}

double OUTLINED_FUNCTION_10_21@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_10_25(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_10_28()
{

  JUMPOUT(0x1CCAA1300);
}

int8x16_t OUTLINED_FUNCTION_10_31(int8x16_t *a1)
{
  v1[2].i64[0] = a1;
  result = vextq_s8(v1[1], v1[1], 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_37(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  *(v0 + 32) = 2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_7_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
  *(v1 - 120) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_15()
{
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{
  v4 = v1[89];
  *(v2 - 256) = v1[92];
  *(v2 - 248) = v4;
  v5 = v1[85];
  *(v2 - 240) = v1[88];
  *(v2 - 232) = v5;
  v6 = v1[83];
  *(v2 - 224) = v1[84];
  *(v2 - 216) = v6;
  v7 = v1[81];
  *(v2 - 208) = v1[82];
  *(v2 - 200) = v7;
  v8 = v1[77];
  *(v2 - 192) = v1[80];
  *(v2 - 184) = v8;
  *(v2 - 176) = v1[76];
  v9 = v1[74];
  *(v2 - 152) = v1[75];
  *(v2 - 144) = v9;
  v10 = v1[70];
  *(v2 - 136) = v1[73];
  *(v2 - 128) = v10;
  v11 = v1[63];
  v12 = v1[64];
  *(v2 - 120) = v1[67];
  *(v2 - 112) = v12;
  *(v2 - 104) = v11;
}

void OUTLINED_FUNCTION_7_18()
{
  v2 = *(v0 + 16) + 1;

  sub_1CA2E5ACC(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_1CA4D7250(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_7_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_28(uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_7_30()
{
  v2[12] = sub_1CA44E498;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_7_31()
{
}

void OUTLINED_FUNCTION_7_32()
{

  JUMPOUT(0x1CCAA1300);
}

void OUTLINED_FUNCTION_7_33(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_7_35(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6AE00](a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_7_37(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;
  *(v2 - 136) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return swift_unknownObjectRetain();
}

id OUTLINED_FUNCTION_7_42(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_7_44()
{
  v1 = v0[26];
  v2 = v0[19];
  v0[31] = v0[18];
  v0[32] = v2;
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_70_5()
{
}

void OUTLINED_FUNCTION_70_8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
}

uint64_t OUTLINED_FUNCTION_70_10()
{

  return swift_allocObject();
}

uint64_t sub_1CA2612D4()
{
  qword_1EC442B20 = 0xD000000000000017;
  *algn_1EC442B28 = 0x80000001CA9AAA90;
  qword_1EC442B30 = swift_getKeyPath();
  unk_1EC442B38 = 0xD000000000000013;
  qword_1EC442B40 = 0x80000001CA9AAAB0;
  result = swift_getKeyPath();
  qword_1EC442B48 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_212()
{
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t a1)
{
  v4 = v1[46];
  *(v2 - 256) = v1[47];
  *(v2 - 248) = v4;
  v5 = v1[41];
  *(v2 - 240) = v1[43];
  *(v2 - 232) = v5;
  v6 = v1[35];
  *(v2 - 224) = v1[38];
  *(v2 - 216) = v6;
  v8 = v1[28];
  v7 = v1[29];
  *(v2 - 208) = v1[32];
  *(v2 - 200) = v7;
  v10 = v1[26];
  v9 = v1[27];
  *(v2 - 192) = v8;
  *(v2 - 184) = v9;
  v11 = v1[25];
  *(v2 - 176) = v10;
  *(v2 - 168) = v11;
  v12 = v1[21];
  *(v2 - 160) = v1[22];
  *(v2 - 152) = v12;
  *(v2 - 144) = v1[18];
}

uint64_t OUTLINED_FUNCTION_25_12(uint64_t a1)
{

  return sub_1CA30F7DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_25_16(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_25_17()
{

  return sub_1CA94D678();
}

void OUTLINED_FUNCTION_25_19()
{
  v5 = *(v3 - 216);

  sub_1CA2DAD6C(v0, v1, v2, v5);
}

unint64_t OUTLINED_FUNCTION_26_5(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_9()
{
  v3 = *(v1 + 1120);
  *(v2 - 104) = (v0 - 1) & v0;
  return v3;
}

id OUTLINED_FUNCTION_26_11(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_26_14(uint64_t a1)
{
  v4 = v1[47];
  *(v2 - 256) = v1[48];
  *(v2 - 248) = v4;
  v5 = v1[43];
  *(v2 - 240) = v1[46];
  *(v2 - 232) = v5;
  v6 = v1[38];
  *(v2 - 224) = v1[41];
  *(v2 - 216) = v6;
  v7 = v1[32];
  *(v2 - 208) = v1[35];
  *(v2 - 200) = v7;
  v8 = v1[28];
  *(v2 - 192) = v1[29];
  *(v2 - 184) = v8;
  v9 = v1[26];
  *(v2 - 176) = v1[27];
  *(v2 - 168) = v9;
  v11 = v1[21];
  v10 = v1[22];
  *(v2 - 160) = v1[25];
  *(v2 - 152) = v10;
  v12 = v1[18];
  *(v2 - 144) = v11;
  *(v2 - 136) = v12;
}

id OUTLINED_FUNCTION_26_17(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_26_19()
{

  return sub_1CA94C698();
}

__n128 *OUTLINED_FUNCTION_26_22@<X0>(__n128 *result@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[4].n128_u64[0] = a2;
  return result;
}

WorkflowKit::LibraryModel::InnerLibraryNode::Enum_optional __swiftcall LibraryModel.InnerLibraryNode.Enum.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for LibraryModel.InnerLibraryNode.Enum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CA261B8C@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryModel.InnerLibraryNode.Enum.rawValue.getter();
  *a1 = result;
  return result;
}

id WFLinkActionBundleIdentifierOverrides(void *a1)
{
  v1 = WFLinkActionBundleIdentifierOverrides_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFLinkActionBundleIdentifierOverrides_onceToken, &__block_literal_global_726);
  }

  v3 = [WFLinkActionBundleIdentifierOverrides_linkActionBundleIdentifierOverrides objectForKeyedSubscript:v2];

  return v3;
}

void WFConfigureParameterRelationResources(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 resourceObjectsOfClass:{objc_opt_class(), 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 parameterKey];
        v12 = [v4 parameterForKey:v11];
        [v10 setupWithAction:v4 parameter:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_6756);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_27_1();
  if (*(v17 + 84) == v11)
  {
    v18 = v16;
    v19 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_27_1();
    if (*(v21 + 84) != v11)
    {
      *(v9 + *(v10 + 24)) = (v8 - 1);
      return;
    }

    v18 = v20;
    v19 = v9 + *(v10 + 20);
  }

  __swift_storeEnumTagSinglePayload(v19, v8, v8, v18);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1CA94B348();
}

uint64_t OUTLINED_FUNCTION_14_14@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t x8_0@<X8>, uint64_t a9)
{

  return sub_1CA3D4138(a1, a4, a5, a7, x8_0);
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_16(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

void OUTLINED_FUNCTION_14_20()
{

  JUMPOUT(0x1CCAA4BF0);
}

id OUTLINED_FUNCTION_14_23()
{
  v7 = *(v5 - 96);

  return sub_1CA2F9F14(v0, v7, v1, v2, 0, 0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_14_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_14_30(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1)
{

  return sub_1CA94CF18();
}

uint64_t OUTLINED_FUNCTION_14_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1CA94D218();
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1)
{
  v4 = v1[93];
  *(v2 - 256) = v1[94];
  *(v2 - 248) = v4;
  v5 = v1[89];
  *(v2 - 240) = v1[92];
  *(v2 - 232) = v5;
  v6 = v1[85];
  *(v2 - 224) = v1[88];
  *(v2 - 216) = v6;
  v7 = v1[83];
  *(v2 - 208) = v1[84];
  *(v2 - 200) = v7;
  v8 = v1[81];
  *(v2 - 192) = v1[82];
  *(v2 - 184) = v8;
  v9 = v1[77];
  *(v2 - 176) = v1[80];
  *(v2 - 168) = v9;
  v10 = v1[75];
  *(v2 - 160) = v1[76];
  *(v2 - 152) = v10;
  v11 = v1[73];
  *(v2 - 144) = v1[74];
  *(v2 - 136) = v11;
  v12 = v1[67];
  *(v2 - 128) = v1[70];
  *(v2 - 120) = v12;
  v13 = v1[63];
  *(v2 - 112) = v1[64];
  *(v2 - 104) = v13;
}

void OUTLINED_FUNCTION_72_2()
{
  *(v5 + 16) = v3;
  v6 = (v5 + 24 * v4);
  v6[4] = v1;
  v6[5] = v2;
  v6[6] = v0;
}

uint64_t OUTLINED_FUNCTION_72_3()
{
  result = v0[17];
  v2 = v0[14];
  v0[50] = *(v2 + 8);
  v0[51] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_27_1();
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    OUTLINED_FUNCTION_27_1();
    if (*(v17 + 84) != a2)
    {
      return OUTLINED_FUNCTION_26_0(*(a1 + *(a3 + 24)));
    }

    v14 = v16;
    v15 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v15, a2, v14);
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_1CA94C858();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_31_6(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1CA25C3BC(a1, v4, v5, a4);
}

void OUTLINED_FUNCTION_31_7(uint64_t a1)
{

  sub_1CA2B8E70(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_31_9()
{

  return sub_1CA948B68();
}

uint64_t OUTLINED_FUNCTION_31_12(uint64_t a1, uint64_t a2)
{

  return sub_1CA94AEB8();
}

uint64_t OUTLINED_FUNCTION_31_13()
{
}

uint64_t sub_1CA265084(uint64_t a1)
{
  v2 = sub_1CA378058();

  return MEMORY[0x1EEDF4580](a1, v2);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_15_5@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v5;
  v1[3] = v4;
  v1[4] = v6;
  v1[5] = v7;

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA94C3A8();
}

uint64_t OUTLINED_FUNCTION_15_15(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D6F8();
}

void OUTLINED_FUNCTION_15_19()
{

  sub_1CA583310();
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return sub_1CA94AEB8();
}

uint64_t OUTLINED_FUNCTION_15_26(uint64_t result)
{
  *(result + 48) = 0;
  *(result + 56) = 0xE000000000000000;
  return result;
}

uint64_t sub_1CA2653C8(uint64_t a1, uint64_t a2)
{
  sub_1CA378058();

  return sub_1CA94B8B8();
}

void sub_1CA2655AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFInitializeDisallowedDirectories()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E6996E20];
  v1 = *MEMORY[0x1E6997198];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:v1];

  [v0 addDisallowedDirectory:v3];
  v4 = MEMORY[0x1E6996E20];
  v5 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  [v4 addDisallowedDirectory:v5];

  v6 = [MEMORY[0x1E695DFF8] wf_realHomeDirectoryURL];
  v7 = MEMORY[0x1E6996E20];
  v8 = [v6 URLByAppendingPathComponent:@"Media" isDirectory:1];
  [v7 addDisallowedDirectory:v8];

  v9 = [v6 URLByAppendingPathComponent:@"Library/CoreDuet/" isDirectory:1];
  [MEMORY[0x1E6996E20] addDisallowedDirectory:v9];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [&unk_1F4A9B650 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(&unk_1F4A9B650);
        }

        v14 = MEMORY[0x1E6996E20];
        v15 = [v6 URLByAppendingPathComponent:*(*(&v26 + 1) + 8 * v13) isDirectory:1];
        [v14 addDisallowedDirectory:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [&unk_1F4A9B650 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [&unk_1F4A9B668 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(&unk_1F4A9B668);
        }

        v20 = MEMORY[0x1E6996E20];
        v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v22 + 1) + 8 * v19) isDirectory:1];
        [v20 addDisallowedDirectory:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [&unk_1F4A9B668 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

id getWFCloudKitLogObject()
{
  if (getWFCloudKitLogObject_onceToken != -1)
  {
    dispatch_once(&getWFCloudKitLogObject_onceToken, &__block_literal_global_40790);
  }

  v1 = getWFCloudKitLogObject_log;

  return v1;
}

void __getWFCloudKitLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "CloudKit");
  v1 = getWFCloudKitLogObject_log;
  getWFCloudKitLogObject_log = v0;
}

uint64_t sub_1CA2660D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA25C5A0(&qword_1EC442AC8, type metadata accessor for LibraryModel, &protocol conformance descriptor for LibraryModel);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

void sub_1CA266518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1CA266F2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_34_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5[3] = result;
  v5[4] = a2;
  *v5 = v2;
  *v4 = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_11()
{
  v2 = *(v0 + 256);

  return sub_1CA43D470(0, v2);
}

id OUTLINED_FUNCTION_34_13(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_34_14(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_34_15()
{

  return sub_1CA949C58();
}

uint64_t OUTLINED_FUNCTION_34_17()
{

  return sub_1CA94C368();
}

void sub_1CA267294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA267734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA267B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void *__TCCLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TCC.framework/TCC", 2);
  TCCLibrary_sLib = result;
  return result;
}

Class initHMHomeManager()
{
  if (HomeKitLibrary_sOnce_1603 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_1603, &__block_literal_global_338);
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager = result;
  getHMHomeManagerClass = HMHomeManagerFunction;
  return result;
}

void sub_1CA2683E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initTCCAccessPreflight(uint64_t a1, uint64_t a2)
{
  if (TCCLibrary_sOnce != -1)
  {
    dispatch_once(&TCCLibrary_sOnce, &__block_literal_global_31797);
  }

  v4 = dlsym(TCCLibrary_sLib, "TCCAccessPreflight");
  softLinkTCCAccessPreflight = v4;
  if (!v4)
  {
    return 2;
  }

  return (v4)(a1, a2);
}

Class initUIWebClip()
{
  if (UIKitLibrary_sOnce_58911 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_58911, &__block_literal_global_301);
  }

  result = objc_getClass("UIWebClip");
  classUIWebClip = result;
  getUIWebClipClass = UIWebClipFunction;
  return result;
}

id WFLocalizedStringResourceWithKey(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696B100];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v8 = WFCurrentBundle();
  v9 = [v8 bundleURL];
  v10 = [v6 initWithKey:v5 defaultValue:v4 table:0 locale:v7 bundleURL:v9];

  return v10;
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

void __WFReferencedEntityMetadataFromMetadata(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __WFReferencedEntityMetadataFromMetadata(LNEntityMetadata * _Nonnull __strong, LNEntityMetadata * _Nonnull __strong, NSString * _Nonnull __strong, WFAppIntentsMetadataProvider * _Nonnull __strong, NSMapTable<NSString *, LNEntityMetadata *> * _Nonnull __strong)"}];
    [v20 handleFailureInFunction:v21 file:@"WFLinkActionProvider.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"referencedEntityMetadata"}];
  }

  v14 = [v9 properties];
  v15 = [v14 if_compactMap:&__block_literal_global_717];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ____WFReferencedEntityMetadataFromMetadata_block_invoke_2;
  v22[3] = &unk_1E8380658;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  v26 = v13;
  v16 = v13;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  [v15 enumerateObjectsUsingBlock:v22];
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{

  return sub_1CA94D918();
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_1CA94D1C8();
}

uint64_t OUTLINED_FUNCTION_6_11()
{
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{
  *(v1 + 24) = a1;
  *v1 = v2;
  *(v1 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return MEMORY[0x1EEE4AD08](v2, v0, v1, v3);
}

unint64_t OUTLINED_FUNCTION_6_17@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 16) = a1;
  *(v3 - 8) = v1;
  *(v3 + 8) = v2;

  return sub_1CA27BAF0();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  *(v0 + 24) = sub_1CA43DE90;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_6_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1CA94BFF8();
}

void OUTLINED_FUNCTION_6_29()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1CCAA4BF0);
}

unint64_t OUTLINED_FUNCTION_6_32()
{
  v5 = *(v0 + 64);
  *(v5 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v6 = (*(v5 + 48) + 16 * v2);
  *v6 = v4;
  v6[1] = v3;
  return *(v5 + 56) + *(v1 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return sub_1CA69B4CC();
}

unint64_t OUTLINED_FUNCTION_6_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_1CA26B54C(v17, v18, va);
}

unint64_t OUTLINED_FUNCTION_6_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1CA27BAF0();
}

void OUTLINED_FUNCTION_6_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = *(a35 + 16) + 1;

  sub_1CA2E702C(0, v36, 1, a35);
}

uint64_t OUTLINED_FUNCTION_6_44()
{

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_6_48()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return sub_1CA94D5F8();
}

uint64_t WFDeviceCapabilityResource.init(mobileGestaltKey:value:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CA94B4D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a1;
  *(v8 + 1) = a2;
  v8[16] = a3;
  (*(v9 + 104))(v8, *MEMORY[0x1E69DB3D0]);
  v10 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  WFDeviceCapabilityResource.init(capability:)(v8);
  v12 = v11;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t type metadata accessor for WFDeviceCapabilityResource(uint64_t a1)
{
  result = qword_1EDB9F7F8;
  if (!qword_1EDB9F7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void WFDeviceCapabilityResource.init(capability:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkflowKit26WFDeviceCapabilityResource_capability;
  v4 = sub_1CA94B4D8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  (*(v7 + 16))(&v1[v3], a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443DB8, &unk_1CA983950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v20 = sub_1CA94C3A8();
  v21 = v9;
  v10 = MEMORY[0x1E69E6158];
  sub_1CA94D3A8();
  v11 = type metadata accessor for WFDeviceCapabilityResource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  v14 = sub_1CA94C3A8();
  v16 = v15;

  *(inited + 96) = v10;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  sub_1CA94C1E8();
  v17 = sub_1CA94C1A8();

  v19.receiver = v1;
  v19.super_class = v11;
  v18 = objc_msgSendSuper2(&v19, sel_initWithDefinition_, v17);

  if (v18)
  {
    (*(v6 + 8))(a1, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA26A4C8()
{
  v0 = sub_1CA9494E8();
  OUTLINED_FUNCTION_1_0();
  v73 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v72 = v4 - v3;
  sub_1CA9494F8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v77 = v9 - v8;
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v75 = v11;
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  v15 = sub_1CA9495A8();
  OUTLINED_FUNCTION_1_0();
  v78 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - v21;
  if (qword_1EC441758 != -1)
  {
    OUTLINED_FUNCTION_2_60(&qword_1EC441758);
  }

  v23 = sub_1CA949528();
  __swift_project_value_buffer(v23, qword_1EC441760);
  sub_1CA949598();
  sub_1CA949C58();
  (*(v78 + 16))(v20, v22, v15);
  v74 = v14;
  v24 = sub_1CA949F68();
  v25 = sub_1CA94CC38();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v71 = v22;
    v27 = v26;
    v28 = swift_slowAlloc();
    v69 = v0;
    v29 = v28;
    v79 = v28;
    *v27 = 136315138;
    sub_1CA26B4F4();
    v30 = sub_1CA94D798();
    v68 = v6;
    v31 = v15;
    v33 = v32;
    v34 = *(v78 + 8);
    v34(v20, v31);
    v35 = sub_1CA26B54C(v30, v33, &v79);
    v15 = v31;

    *(v27 + 4) = v35;
    _os_log_impl(&dword_1CA256000, v24, v25, "Current Apple Intelligence availability: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v0 = v69;
    OUTLINED_FUNCTION_26();
    v22 = v71;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v34 = *(v78 + 8);
    v34(v20, v15);
  }

  (*(v75 + 8))(v74, v76);
  v36 = v77;
  sub_1CA949538();
  v37 = OUTLINED_FUNCTION_5_49();
  v39 = v38(v37);
  if (v39 == *MEMORY[0x1E69A0EF8])
  {
    v40 = OUTLINED_FUNCTION_6_46();
    (v34)(v40);
    v41 = OUTLINED_FUNCTION_5_49();
    v42(v41);
    return 1;
  }

  v44 = v39;
  if (v39 != *MEMORY[0x1E69A0F00])
  {
    v62 = *MEMORY[0x1E69A11A0];
    v63 = OUTLINED_FUNCTION_6_46();
    (v34)(v63);
    if (v44 != v62)
    {
      v64 = OUTLINED_FUNCTION_5_49();
      v65(v64);
      return 0;
    }

    return 1;
  }

  v76 = v34;
  v71 = v22;
  v45 = v15;
  v46 = OUTLINED_FUNCTION_5_49();
  v47(v46);
  (*(v73 + 32))(v72, v36, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447960, &qword_1CA9906B8);
  v48 = sub_1CA9494C8();
  OUTLINED_FUNCTION_1_0();
  v50 = v49;
  v52 = *(v51 + 72);
  v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1CA981380;
  v55 = v54 + v53;
  v56 = *(v50 + 104);
  v56(v55, *MEMORY[0x1E69A1068], v48);
  v56(v55 + v52, *MEMORY[0x1E69A1058], v48);
  v56(v55 + 2 * v52, *MEMORY[0x1E69A10A8], v48);
  v56(v55 + 3 * v52, *MEMORY[0x1E69A1040], v48);
  v56(v55 + 4 * v52, *MEMORY[0x1E69A10C8], v48);
  v56(v55 + 5 * v52, *MEMORY[0x1E69A1010], v48);
  sub_1CA2E8EA8();
  v58 = v57;
  v59 = sub_1CA9494D8();
  v60 = sub_1CA6A911C(v58, v59);

  v61 = *(v60 + 2);

  if (v61)
  {
    v43 = 0;
  }

  else
  {
    v43 = [v70 isAppleIntelligenceOptedIn];
  }

  v66 = v71;
  (*(v73 + 8))(v72, v0);
  v76(v66, v45);
  return v43;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1CA26B4F4()
{
  result = qword_1EC441D90;
  if (!qword_1EC441D90)
  {
    sub_1CA9495A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441D90);
  }

  return result;
}

unint64_t sub_1CA26B54C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1CA94C218();
  v6 = sub_1CA26B774(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1CA25B374(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_1CA26B610(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CA26B65C(a1, a2);
  sub_1CA26BA1C(&unk_1F49F1970);
  return v3;
}

uint64_t sub_1CA26B65C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1CA94C4C8())
  {
    result = sub_1CA26B874(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1CA94D3F8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1CA94D4B8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1CA26B774(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CA26B610(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1CA94D4B8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1CA26B874(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443590, &qword_1CA9806A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t OUTLINED_FUNCTION_28_1(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_28_3()
{
}

id OUTLINED_FUNCTION_28_4(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

char *OUTLINED_FUNCTION_28_7(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v1 = v3;
  v1[1] = v2;
  return v1 + v4;
}

uint64_t sub_1CA26BA1C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1CA299ABC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CA26BB28(void *a1)
{
  v1 = [a1 availabilityAnnotations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNPlatformName(0);
  sub_1CA25B3D0(0, &qword_1EDB9FAC8, 0x1E69AC700);
  sub_1CA27203C();
  v3 = sub_1CA94C1C8();

  return v3;
}

void sub_1CA26BBBC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1CA26C2D4(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR___WFSwiftAppShortcutDataSource__collections;
  v20 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446350, &qword_1CA98C930);
  sub_1CA94A068();
  (*(v8 + 32))(&a4[v11], v10, v7);
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider] = a1;
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle] = a3;
  v12 = type metadata accessor for AppShortcutDataSource(0);
  v19.receiver = a4;
  v19.super_class = v12;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v19, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 defaultCenter];
  [v16 addObserver:v15 selector:sel_appShortcutsChanged name:*MEMORY[0x1E69ACB40] object:0];

  return v15;
}

uint64_t type metadata accessor for AppAssociatedShortcutsDataSource(uint64_t a1)
{
  result = qword_1EDB9F250;
  if (!qword_1EDB9F250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA26C4EC(uint64_t a1)
{
  if (!qword_1EDB9F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4441E8, &qword_1CA982AD0);
    v1 = sub_1CA94A0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB9F130);
    }
  }
}

void sub_1CA26C550(uint64_t a1)
{
  sub_1CA26C4EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CA26C5FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F740, off_1E836F5A8);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA26C64C(uint64_t a1)
{
  *(a1 + 8) = sub_1CA26C5FC(&qword_1EDB9F118);
  result = sub_1CA26C5FC(&unk_1EDB9F120);
  *(a1 + 16) = result;
  return result;
}

size_t OUTLINED_FUNCTION_5_7(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_1CA94C368();
}

uint64_t OUTLINED_FUNCTION_5_19()
{
  v2 = *(v0 + 48);

  return sub_1CA38125C(v2, type metadata accessor for LinkValueTransformContext);
}

void OUTLINED_FUNCTION_5_24()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D6F8();
}

uint64_t OUTLINED_FUNCTION_5_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_36(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_5_40()
{
  if (!v1 & v0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_1CA2E739C(v5, v3, 1, v2);
}

void OUTLINED_FUNCTION_5_42()
{
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;
  v3[5] = 0;
  v3[15] = v0;
}

void OUTLINED_FUNCTION_5_43()
{
  v1[12] = sub_1CA609888;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_5_50(uint64_t a1)
{

  return sub_1CA94D7F8();
}

uint64_t AppAssociatedShortcutsDataSource.init()()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_loader;
  v2 = [objc_opt_self() defaultDatabase];
  type metadata accessor for AppAssociatedShortcutsLoader();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v0 + v1) = v3;
  v4 = [v2 sortedVisibleAppAssociatedWorkflows];
  *(v0 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result) = v4;
  v5 = v4;

  v6 = sub_1CA26E9BC(v5);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4441E8, &qword_1CA982AD0);
  sub_1CA94A068();
  swift_endAccess();
  [*(v0 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result) registerObserver_];
  return v0;
}

void OUTLINED_FUNCTION_21_2()
{
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_4(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v1;

  return sub_1CA2C91E8(v2, a1 + v4);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_10()
{
  result = *(v0 + 1112);
  *(v0 + 1624) = **(v0 + 1136);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_11(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_21_14(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_1CA26B54C(v6, v5, va);
}

uint64_t OUTLINED_FUNCTION_21_18(uint64_t a3, uint64_t a4, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1CA94D1D8();
}

__n128 *OUTLINED_FUNCTION_21_22(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  *v3 = result;
  return result;
}

void OUTLINED_FUNCTION_21_25(uint64_t a1@<X8>)
{
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = a1;
}

uint64_t OUTLINED_FUNCTION_21_26()
{

  return sub_1CA94D3C8();
}

void sub_1CA26CFFC()
{
  OUTLINED_FUNCTION_17_2();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_29_3();
    if (v4)
    {
      OUTLINED_FUNCTION_75_0(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_92();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_31_3();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_28_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t OUTLINED_FUNCTION_0_7(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1CA26DAD0(a3);

  return sub_1CA275D84(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_38()
{
}

uint64_t OUTLINED_FUNCTION_0_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_1CA94C1A8();
}

uint64_t OUTLINED_FUNCTION_0_54(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_0_55()
{
}

uint64_t OUTLINED_FUNCTION_0_56(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_66()
{

  sub_1CA26DADC();
}

uint64_t OUTLINED_FUNCTION_0_67(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_68()
{
}

uint64_t OUTLINED_FUNCTION_0_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_1CA94D578();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_29_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA271BF8(a2, a3);
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_10()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_29_11(uint64_t a1@<X8>)
{
  *(a1 + 8 * (v4 >> 6) + 64) |= 1 << v4;
  v5 = (*(a1 + 48) + 16 * v4);
  *v5 = v3;
  v5[1] = v2;
  *(*(a1 + 56) + 8 * v4) = v1;
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_96(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

unint64_t OUTLINED_FUNCTION_29_14()
{

  return sub_1CA271BF8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_29_15(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_29_17(uint64_t a1@<X8>)
{
  v1[21] = v2;
  v1[22] = v3;
  v1[23] = a1;
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

id OUTLINED_FUNCTION_19_8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

uint64_t OUTLINED_FUNCTION_19_10()
{
  *(v1 - 88) = *(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_1CA948E58();
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_19_20()
{

  JUMPOUT(0x1CCAA22D0);
}

uint64_t OUTLINED_FUNCTION_19_25()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

void OUTLINED_FUNCTION_86_4()
{
}

uint64_t OUTLINED_FUNCTION_18_4()
{
  v4 = __clz(__rbit64(v3)) | (v2 << 6);
  v5 = (*(v0 + 48) + 16 * v4);
  result = v5[1];
  v7 = *(*(v0 + 56) + 8 * v4);
  *v1 = *v5;
  v1[1] = result;
  v1[2] = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_18()
{
}

uint64_t OUTLINED_FUNCTION_18_19()
{

  return sub_1CA94A988();
}

id OUTLINED_FUNCTION_18_23()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_18_27()
{
  v1[53] = v0;
  v2 = v1[20];
  v3 = v1[3];
  v4 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v1[54] = v4;
  __swift_project_boxed_opaque_existential_1((v3 + *(v4 + 28)), *(v3 + *(v4 + 28) + 24));
  return v2;
}

char *sub_1CA26E4B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

unint64_t sub_1CA26E4D4()
{
  result = qword_1EC441B20;
  if (!qword_1EC441B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_11@<X0>(uint64_t a2@<X8>)
{
  *(v4 - 256) = v2;
  *(v4 - 248) = a2;
  v6 = v3[93];
  *(v4 - 240) = v3[94];
  *(v4 - 232) = v6;
  v7 = v3[89];
  *(v4 - 224) = v3[92];
  *(v4 - 216) = v7;
  v8 = v3[85];
  *(v4 - 208) = v3[88];
  *(v4 - 200) = v8;
  v9 = v3[83];
  *(v4 - 192) = v3[84];
  *(v4 - 184) = v9;
  v10 = v3[81];
  *(v4 - 176) = v3[82];
  *(v4 - 168) = v10;
  v11 = v3[77];
  *(v4 - 160) = v3[80];
  *(v4 - 152) = v11;
  v12 = v3[75];
  *(v4 - 144) = v3[76];
  *(v4 - 136) = v12;
  v13 = v3[73];
  *(v4 - 128) = v3[74];
  *(v4 - 120) = v13;
  v14 = v3[67];
  *(v4 - 112) = v3[70];
  *(v4 - 104) = v14;
  v15 = v3[63];
  *(v4 - 96) = v3[64];
  *(v4 - 88) = v15;
}

id OUTLINED_FUNCTION_12_13()
{

  return sub_1CA3EB330(0);
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_23(unint64_t *a1)
{

  return sub_1CA55DADC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return sub_1CA94D408();
}

void OUTLINED_FUNCTION_12_26()
{

  JUMPOUT(0x1CCAA1300);
}

uint64_t OUTLINED_FUNCTION_12_27(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

void *OUTLINED_FUNCTION_12_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);

  return memcpy(va, v48, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_12_33()
{

  return sub_1CA94C3A8();
}

uint64_t OUTLINED_FUNCTION_12_34(uint64_t result)
{
  *(v2 + 24) = result;
  *v2 = v1;
  *(v2 + 32) = 2;
  return result;
}

void WFDatabaseResultCommonInit(void *a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = a1;
  v4 = dispatch_queue_create("com.apple.shortcuts.WFDatabaseResult-private", v2);
  v5 = v3[7];
  v3[7] = v4;

  v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v7 = v3[8];
  v3[8] = v6;
}

uint64_t sub_1CA26E9BC(void *a1)
{
  v1 = [a1 descriptors];
  sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
  v2 = sub_1CA94C658();

  v3 = sub_1CA272AF8(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8D44(0, v4, 0);
    v5 = v43;
    result = sub_1CA4FCA34(v3);
    v9 = result;
    v10 = 0;
    v11 = v3 + 64;
    v36 = v7;
    v37 = v4;
    v35 = v3 + 72;
    v38 = v3 + 64;
    v39 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v7)
      {
        goto LABEL_29;
      }

      v42 = v7;
      v40 = v8;
      v41 = v10;
      v13 = (*(v3 + 48) + 16 * v9);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v3 + 56) + 8 * v9);
      v17 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      if (v17 != -1)
      {
        OUTLINED_FUNCTION_1_11();
        swift_once();
      }

      result = sub_1CA2786EC(v14, v15);
      if (v18)
      {
        v19 = result;
        v20 = v18;
      }

      else
      {
        result = sub_1CA94C218();
        v19 = v14;
        v20 = v15;
      }

      v21 = v5;
      v44 = v5;
      v22 = *(v5 + 16);
      v23 = *(v21 + 24);
      v24 = v42;
      if (v22 >= v23 >> 1)
      {
        result = sub_1CA2B8D44((v23 > 1), v22 + 1, 1);
        v24 = v42;
        v21 = v44;
      }

      *(v21 + 16) = v22 + 1;
      v25 = (v21 + 48 * v22);
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v14;
      v25[7] = v15;
      v25[8] = 0;
      v25[9] = v16;
      v3 = v39;
      v26 = 1 << *(v39 + 32);
      if (v9 >= v26)
      {
        goto LABEL_30;
      }

      v11 = v38;
      v27 = *(v38 + 8 * v12);
      if ((v27 & (1 << v9)) == 0)
      {
        goto LABEL_31;
      }

      v5 = v21;
      if (*(v39 + 36) != v24)
      {
        goto LABEL_32;
      }

      v28 = v27 & (-2 << (v9 & 0x3F));
      if (v28)
      {
        v26 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v29 = v37;
      }

      else
      {
        v30 = v12 << 6;
        v31 = v12 + 1;
        v32 = (v35 + 8 * v12);
        v29 = v37;
        while (v31 < (v26 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1CA2974B8(v9, v24, v40 & 1);
            v26 = __clz(__rbit64(v33)) + v30;
            goto LABEL_24;
          }
        }

        result = sub_1CA2974B8(v9, v24, v40 & 1);
      }

LABEL_24:
      v8 = 0;
      v10 = v41 + 1;
      v9 = v26;
      v7 = v36;
      if (v41 + 1 == v29)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1CA26EDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1)
{

  return sub_1CA2BC070(a1, v1, _s17ControlFlowBranchVMa);
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_1CA94C648();
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a2 = a10;
  a2[1] = a11;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_30_10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1CA25C3BC(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_30_15()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_30_18@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_1CA94AED8();
}

uint64_t OUTLINED_FUNCTION_23_7(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_23_11()
{
}

uint64_t OUTLINED_FUNCTION_77_0()
{
}

uint64_t OUTLINED_FUNCTION_23_13()
{
  *(v1 + 288) = v0;
}

void *OUTLINED_FUNCTION_23_17()
{

  return __swift_coroFrameAllocStub(v0);
}

void *OUTLINED_FUNCTION_23_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, __int128 a49)
{

  return memcpy(&a49 + 7, v49, 0x48uLL);
}

BOOL OUTLINED_FUNCTION_178_0()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_49_2()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_49_3(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1CA949758();
}

uint64_t OUTLINED_FUNCTION_49_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA94D9A8();
}

uint64_t OUTLINED_FUNCTION_149_0()
{
}

uint64_t OUTLINED_FUNCTION_149_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_96_5()
{
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_8()
{
}

uint64_t OUTLINED_FUNCTION_255()
{
}

void OUTLINED_FUNCTION_33_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_33_14(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
}

uint64_t OUTLINED_FUNCTION_33_16(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1CA26F808(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA26F860(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_4@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_131()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_17()
{
  *(v5 + 16) = v1;
  v6 = (v5 + 24 * v4);
  v6[4] = v2;
  v6[5] = v3;
  v6[6] = v0;
}

void OUTLINED_FUNCTION_11_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_1CA43EFAC(v12, v13, v11, v10, a9, v9);
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_1CA9486C8();
}

unint64_t OUTLINED_FUNCTION_11_23(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_1CA26B54C(v6, v5, va);
}

BOOL OUTLINED_FUNCTION_65()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1CA94B458();
}

uint64_t OUTLINED_FUNCTION_11_27()
{
  *(v1 + 32) = v0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_11_29@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + (v2 | (8 * a1)));

  return v4;
}

uint64_t OUTLINED_FUNCTION_11_30(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

id OUTLINED_FUNCTION_11_33(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, char a13)
{

  return sub_1CA624334(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10, a11, a12, a13);
}

uint64_t OUTLINED_FUNCTION_11_37()
{

  return sub_1CA94C368();
}

void OUTLINED_FUNCTION_11_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1)
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_65_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_168_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 8, a4);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  *(v1 + 144) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  *(v1 - 120) = *(v1 - 288);
  *(v1 - 112) = v0;
  return v1 - 120;
}

void OUTLINED_FUNCTION_22_5()
{
  v1[12] = sub_1CA320A2C;
  v1[13] = v0;
  v1[14] = v2;
}

id OUTLINED_FUNCTION_22_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_22_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 1640) = *(a1 + 16);
  *(v2 + 1648) = (a1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_18()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_22_21(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_22_23()
{
}

uint64_t OUTLINED_FUNCTION_36_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  return sub_1CA2D9CD4(v5, v6, v4, a4);
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_138()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_36_14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va1, a41);
  va_start(__srca, a41);
  __src = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);

  return memcpy((a1 | 1), __srca, 0x4FuLL);
}

uint64_t OUTLINED_FUNCTION_56_0@<X0>(uint64_t a1@<X8>)
{
  *v2 = v3;
  v2[1] = v5;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v6;
  return v4;
}

uint64_t OUTLINED_FUNCTION_56_2(uint64_t a1)
{

  return sub_1CA949C58();
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1)
{

  return sub_1CA94C658();
}

uint64_t OUTLINED_FUNCTION_53_7()
{

  return sub_1CA94C3A8();
}

uint64_t OUTLINED_FUNCTION_53_13()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_124_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[42] = a1;
  v2[43] = a2;
  v2[39] = v3;

  return sub_1CA949858();
}

void sub_1CA27050C()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_79_0(v2, v5, &qword_1EC4439D8, &unk_1CA981AD0);
  v8 = OUTLINED_FUNCTION_70();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_6_9(v10);
    sub_1CA270D10(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

size_t sub_1CA2705E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_102_0(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_134();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      OUTLINED_FUNCTION_93_1((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 OUTLINED_FUNCTION_136_2(uint64_t a1)
{
  *(v1 - 136) = a1;
  *(v1 - 96) = a1;
  return *(v1 - 176);
}

void OUTLINED_FUNCTION_136_4(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_42_8@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t sub_1CA27080C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_52();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1CA270864(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA270A18(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t a1)
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_1CA270A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_74_4()
{
  v3 = v0[170];
  v4 = v0[164];
  *(v1 - 96) = v0[166];
  *(v1 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1)
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_46_5()
{
  *(v4 - 128) = v2;
  *(v4 - 120) = v1;
  *(v4 - 144) = v3;
  return v0;
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_46_9(uint64_t a1, __n128 *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6[2].n128_u64[0] = a5;
  v6[2].n128_u64[1] = a6;
  v6[1].n128_u64[0] = a3;
  v6[1].n128_u64[1] = a4;
  result = *a2;
  v6[3] = *a2;
  return result;
}

void *OUTLINED_FUNCTION_46_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va1, a48);
  va_start(__srca, a48);
  __src = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);
  v54 = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);
  v58 = va_arg(va1, void);
  v59 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x48uLL);
}

void sub_1CA270D24()
{
  OUTLINED_FUNCTION_74_3();
  if (v3 && (v4 = OUTLINED_FUNCTION_187(), __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), OUTLINED_FUNCTION_52(), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_13_17();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_187();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_13_17();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void OUTLINED_FUNCTION_95_2()
{
}

id OUTLINED_FUNCTION_95_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_95_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_67_4()
{
  *(v1 - 88) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1CA57ABD8(a1, 0x746E656D6F6DLL, 0xE600000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_98_3()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_98_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  return sub_1CA94A988();
}

uint64_t OUTLINED_FUNCTION_98_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1CA94D5F8();
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

void OUTLINED_FUNCTION_27_15()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return sub_1CA94C828();
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

__n128 OUTLINED_FUNCTION_27_20(uint64_t a1, __n128 *a2)
{
  v4 = a2[1].n128_u8[0];
  v5 = *(v2 + 24);
  *(v3 + 16) = *(v2 + 8);
  *(v3 + 32) = v5;
  v6 = *(v2 + 56);
  *(v3 + 48) = *(v2 + 40);
  *(v3 + 64) = v6;
  result = *a2;
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_5()
{
  *(v1 + 56) = v0;
  *(v1 + 24) = sub_1CA3178DC;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return sub_1CA94CFD8();
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1)
{
  v4 = v1[94];
  *(v2 - 256) = v1[97];
  *(v2 - 248) = v4;
  v5 = v1[92];
  *(v2 - 240) = v1[93];
  *(v2 - 232) = v5;
  v6 = v1[88];
  *(v2 - 224) = v1[89];
  *(v2 - 216) = v6;
  v7 = v1[84];
  *(v2 - 208) = v1[85];
  *(v2 - 200) = v7;
  v8 = v1[82];
  *(v2 - 192) = v1[83];
  *(v2 - 184) = v8;
  v9 = v1[80];
  *(v2 - 176) = v1[81];
  *(v2 - 168) = v9;
  v10 = v1[76];
  *(v2 - 160) = v1[77];
  *(v2 - 152) = v10;
  v11 = v1[74];
  *(v2 - 144) = v1[75];
  *(v2 - 136) = v11;
  v12 = v1[70];
  *(v2 - 128) = v1[73];
  *(v2 - 120) = v12;
  v13 = v1[63];
  v14 = v1[64];
  *(v2 - 112) = v1[67];
  *(v2 - 104) = v14;
  *(v2 - 96) = v13;
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_1CA94C178();
}

uint64_t OUTLINED_FUNCTION_24_15(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t result)
{
  *(result + 16) = 0x6974617275444657;
  *(result + 24) = 0xEA00000000006E6FLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_20()
{
}

id OUTLINED_FUNCTION_24_21(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

BOOL OUTLINED_FUNCTION_97_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_97_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_97_2()
{
}

uint64_t OUTLINED_FUNCTION_97_3()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1CA271524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_44_1();
  sub_1CA271560();
  *v7 = v8;
}

void sub_1CA271560()
{
  OUTLINED_FUNCTION_65_0();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_75_0(v3, v4, v5, v6, v7, v8);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 16);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v10)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_54_5()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_54_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_40_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_1CA3CA384;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_40_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 OUTLINED_FUNCTION_40_8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a22, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __n128 a23, __int128 a24)
{
  a1[1] = a20;
  a1[2] = a21;
  result = a23;
  a1[3] = a23;
  a1[4] = a24;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_10()
{

  return sub_1CA94C6E8();
}

unint64_t sub_1CA271BF8(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();
  v2 = OUTLINED_FUNCTION_69();

  return sub_1CA271C6C(v2, v3, v4);
}

unint64_t sub_1CA271C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1CA94D7F8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t OUTLINED_FUNCTION_83_2(uint64_t a1)
{

  return sub_1CA94D588();
}

unint64_t sub_1CA27203C()
{
  result = qword_1EDB9FAF0;
  if (!qword_1EDB9FAF0)
  {
    type metadata accessor for LNPlatformName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9FAF0);
  }

  return result;
}

id sub_1CA272094(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for LNPlatformName(0);
  sub_1CA25B3D0(0, &qword_1EDB9FAC8, 0x1E69AC700);
  sub_1CA27203C();
  v2 = sub_1CA94C1A8();

  v3 = [v1 initWithAvailabilityAnnotations_];

  return v3;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

uint64_t WFDatabaseObjectTypeForEntityName(void *a1)
{
  v1 = a1;
  v2 = +[WFCoreDataWorkflow entity];
  v3 = [v2 name];
  isEqualToString = objc_msgSend_isEqualToString_(v1);

  if (isEqualToString)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[WFCoreDataTrigger entity];
    v7 = [v6 name];
    v8 = objc_msgSend_isEqualToString_(v1);

    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v9 = +[WFCoreDataCollection entity];
      v10 = [v9 name];
      v11 = objc_msgSend_isEqualToString_(v1);

      if (v11)
      {
        v5 = 2;
      }

      else
      {
        v12 = +[WFCoreDataCloudKitSyncToken entity];
        v13 = [v12 name];
        v14 = objc_msgSend_isEqualToString_(v1);

        if (v14)
        {
          v5 = 3;
        }

        else
        {
          v15 = +[WFCoreDataTriggerEvent entity];
          v16 = [v15 name];
          v17 = objc_msgSend_isEqualToString_(v1);

          if (v17)
          {
            v5 = 4;
          }

          else
          {
            v18 = +[WFCoreDataRunEvent entity];
            v19 = [v18 name];
            v20 = objc_msgSend_isEqualToString_(v1);

            if (v20)
            {
              v5 = 5;
            }

            else
            {
              v21 = +[VCVoiceShortcutSuggestionListManagedObject entity];
              v22 = [v21 name];
              v23 = objc_msgSend_isEqualToString_(v1);

              if (v23)
              {
                v5 = 6;
              }

              else
              {
                v24 = +[WFCoreDataShortcutBookmark entity];
                v25 = [v24 name];
                v26 = objc_msgSend_isEqualToString_(v1);

                if (v26)
                {
                  v5 = 7;
                }

                else
                {
                  v27 = +[WFCoreDataSmartPromptPermission entity];
                  v28 = [v27 name];
                  v29 = objc_msgSend_isEqualToString_(v1);

                  if (v29)
                  {
                    v5 = 8;
                  }

                  else
                  {
                    v30 = +[WFCoreDataAutoShortcutsPreferences entity];
                    v31 = [v30 name];
                    v32 = objc_msgSend_isEqualToString_(v1);

                    if (v32)
                    {
                      v5 = 9;
                    }

                    else
                    {
                      v33 = +[WFCoreDataLibrary entity];
                      v34 = [v33 name];
                      v35 = objc_msgSend_isEqualToString_(v1);

                      if (v35)
                      {
                        v5 = 10;
                      }

                      else
                      {
                        v36 = +[WFCoreDataTrackedFilesystemNode entity];
                        v37 = [v36 name];
                        v38 = objc_msgSend_isEqualToString_(v1);

                        if (v38)
                        {
                          v5 = 11;
                        }

                        else
                        {
                          v5 = 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

void *sub_1CA27295C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1CA94D328();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1CA2E9398();
      sub_1CA280104(v2 + 4, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

char *sub_1CA2729F0(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_14(a3, result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

void OUTLINED_FUNCTION_69_4()
{
  v2 = v0[190];
  *(v1 - 128) = v0[189];
  *(v1 - 120) = v2;
  v3 = v0[188];
  *(v1 - 112) = v0[187];
  *(v1 - 104) = v3;
}

uint64_t OUTLINED_FUNCTION_69_8()
{
  *(v0 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_69_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 96) = *(v1 + 424);
  return *(v1 + 200);
}

uint64_t type metadata accessor for AutoShortcutsAppsDataSource(uint64_t a1)
{
  result = qword_1EDB9F338;
  if (!qword_1EDB9F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA272D7C(uint64_t a1)
{
  if (!qword_1EDB9F138[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446318, qword_1CA98AEA0);
    v1 = sub_1CA94A0B8();
    if (!v2)
    {
      atomic_store(v1, qword_1EDB9F138);
    }
  }
}

void sub_1CA272DE0(uint64_t a1)
{
  sub_1CA272D7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *AutoShortcutsAppsDataSource.init(organizedCollections:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4455D0, &qword_1CA987680);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446310, &qword_1CA98AE98);
  OUTLINED_FUNCTION_1_0();
  v38 = v7;
  v39 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446308, &unk_1CA98AE88);
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  v18 = OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource__autoShortcutApps;
  v40 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446318, qword_1CA98AEA0);
  sub_1CA94A068();
  (*(v14 + 32))(&v2[v18], v17, v12);
  v19 = OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource;
  v20 = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  v37 = type metadata accessor for AppShortcutDataSource(0);
  *&v2[v19] = sub_1CA26C2D4(v20, 1, 0, objc_allocWithZone(v37));
  v21 = OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_userShortcutDataSource;
  type metadata accessor for AppAssociatedShortcutsDataSource(0);
  swift_allocObject();
  *&v2[v21] = AppAssociatedShortcutsDataSource.init()();
  *&v2[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_cancellables] = MEMORY[0x1E69E7CD0];
  type metadata accessor for AutoShortcutsLoader();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_autoShortcutsLoader] = sub_1CA273794(v3);
  v22 = type metadata accessor for AutoShortcutsAppsDataSource(0);
  v42.receiver = v2;
  v42.super_class = v22;
  v23 = objc_msgSendSuper2(&v42, sel_init);
  sub_1CA2737DC(0x206C616974696E49, 0xEE0064616F6C6572, 1, 1);
  sub_1CA27C4E8(qword_1EC442038, type metadata accessor for AppAssociatedShortcutsDataSource, &protocol conformance descriptor for AppAssociatedShortcutsDataSource);

  v24 = sub_1CA949FE8();

  v40 = v24;
  sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  v25 = sub_1CA94CD48();
  v41 = v25;
  v36 = sub_1CA94CD28();
  v26 = v6;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v36);
  v35[3] = sub_1CA94A058();
  v35[2] = sub_1CA27C530();
  v27 = v11;
  sub_1CA94A0E8();
  sub_1CA532E30(v26, &qword_1EC4455D0, &qword_1CA987680);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35[1] = sub_1CA27C598();
  v28 = v38;
  sub_1CA94A108();
  OUTLINED_FUNCTION_87();

  v29 = *(v39 + 8);
  v39 += 8;
  v29(v27, v28);
  OUTLINED_FUNCTION_25_13();
  sub_1CA949F88();
  swift_endAccess();

  v30 = *&v23[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource];
  sub_1CA27C4E8(qword_1EC4426D0, type metadata accessor for AppShortcutDataSource, "ŅN$");
  v31 = v30;
  v32 = sub_1CA949FE8();

  v40 = v32;
  v33 = sub_1CA94CD48();
  v41 = v33;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v36);
  sub_1CA94A0E8();
  sub_1CA532E30(v26, &qword_1EC4455D0, &qword_1CA987680);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CA94A108();
  OUTLINED_FUNCTION_87();

  v29(v27, v28);
  OUTLINED_FUNCTION_25_13();
  sub_1CA949F88();
  swift_endAccess();

  return v23;
}

uint64_t sub_1CA273498()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t type metadata accessor for AppShortcutDataSource(uint64_t a1)
{
  result = qword_1EDB9F808;
  if (!qword_1EDB9F808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA27351C(uint64_t a1)
{
  if (!qword_1EDB9F7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC446350, &qword_1CA98C930);
    v1 = sub_1CA94A0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB9F7C8);
    }
  }
}

void sub_1CA273580(uint64_t a1)
{
  sub_1CA27351C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CA273628(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F6F8, 0x1E69E0AE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA27367C(uint64_t a1)
{
  *(a1 + 8) = sub_1CA273628(&unk_1EDB9F6E8, MEMORY[0x1E69E81B8]);
  result = sub_1CA273628(&unk_1EDB9F700, &protocol conformance descriptor for WFExecutableAppShortcut);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CA27372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA273794(char a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1CA2737DC(uint64_t a1, unint64_t a2, char a3, int a4)
{
  HIDWORD(v20) = a4;
  v21 = a1;
  v22 = a2;
  v5 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1CA949C58();
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CBF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1CA256000, v12, v13, "Reloading App Shortcuts", v14, 2u);
    OUTLINED_FUNCTION_26();
  }

  (*(v7 + 8))(v11, v5);
  if (a3)
  {
    v16 = v21;
    v15 = v22;
    sub_1CA273AD8(v21, v22);
    v17 = v16;
  }

  else
  {
    v17 = v21;
    v15 = v22;
  }

  result = sub_1CA273D40(v17, v15);
  if ((v20 & 0x100000000) != 0)
  {
    v19 = sub_1CA278F60();
    sub_1CA279010(v19);
  }

  return result;
}

uint64_t sub_1CA273AD8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949C58();
  sub_1CA94C218();
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC38();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v6;
    v15 = a1;
    v16 = v14;
    v17 = swift_slowAlloc();
    v22 = v3;
    v18 = v17;
    v23 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1CA26B54C(v15, a2, &v23);
    _os_log_impl(&dword_1CA256000, v12, v13, "Reloading app associated shortcuts with reason: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v3 = v22;
    MEMORY[0x1CCAA4BF0](v18, -1, -1);
    MEMORY[0x1CCAA4BF0](v16, -1, -1);

    (*(v8 + 8))(v11, v21);
  }

  else
  {

    (*(v8 + 8))(v11, v6);
  }

  v19 = sub_1CA26E9BC(*(v3 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result));
  return sub_1CA273CD0(v19);
}

uint64_t sub_1CA273CD0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CA94A0A8();
}

uint64_t sub_1CA273D40(uint64_t a1, unint64_t a2)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  sub_1CA949C58();
  sub_1CA94C218();
  v9 = sub_1CA949F68();
  v10 = sub_1CA94CC38();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_29_0();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = a1;
    v14 = v12;
    v53[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1CA26B54C(v13, a2, v53);
    _os_log_impl(&dword_1CA256000, v9, v10, "Reloading App Shortcuts with reason: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v7 + 8))(v2, v5);
  v15 = *(v50 + OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider);
  v16 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_4();
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v18 + 8))(v2, v16);
  v20 = sub_1CA94C368();

  v53[0] = 0;
  v21 = [v15 autoShortcutsForLocaleIdentifier:v20 error:v53];

  v22 = v53[0];
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
    v23 = sub_1CA94C1C8();
    v24 = v22;

    v25 = sub_1CA2742FC(v23);

    v26 = [objc_opt_self() standardUserDefaults];
    OUTLINED_FUNCTION_55();
    v27 = sub_1CA94C368();
    v28 = [v26 stringArrayForKey_];

    if (v28)
    {
      v29 = sub_1CA94C658();
    }

    else
    {
      v32 = sub_1CA94C218();
      v29 = sub_1CA438C80(v32);
    }

    v52 = v29;
    v33 = [objc_opt_self() hiddenAppBundleIdentifiers];
    v34 = sub_1CA94C8F8();

    sub_1CA94C218();
    v35 = sub_1CA274970(&v52, v34);
    v36 = *(v52 + 16);
    if (v36 < v35)
    {
      goto LABEL_29;
    }

    sub_1CA274E6C(v35, v36);

    v37 = 0;
    v48 = *(v52 + 16);
    v38 = MEMORY[0x1E69E7CC0];
    v49 = v52;
    v39 = (v52 + 40);
    while (v48 != v37)
    {
      if (v37 >= *(v49 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v40 = *v39;
      v53[0] = *(v39 - 1);
      v53[1] = v40;
      sub_1CA94C218();
      sub_1CA274F48(v53, v25, v50, &v51);

      v41 = v51;
      v42 = *(v51 + 16);
      v43 = *(v38 + 16);
      if (__OFADD__(v43, v42))
      {
        goto LABEL_25;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v43 + v42 > *(v38 + 24) >> 1)
      {
        sub_1CA278A8C();
        v38 = v44;
      }

      if (*(v41 + 16))
      {
        if ((*(v38 + 24) >> 1) - *(v38 + 16) < v42)
        {
          goto LABEL_27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
        swift_arrayInitWithCopy();

        if (v42)
        {
          v45 = *(v38 + 16);
          v46 = __OFADD__(v45, v42);
          v47 = v45 + v42;
          if (v46)
          {
            goto LABEL_28;
          }

          *(v38 + 16) = v47;
        }
      }

      else
      {

        if (v42)
        {
          goto LABEL_26;
        }
      }

      v39 += 2;
      ++v37;
    }

    return sub_1CA278E8C(v38);
  }

  else
  {
    v30 = v53[0];
    sub_1CA948AD8();

    return swift_willThrow();
  }
}

void *sub_1CA2742FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
  v2 = sub_1CA94C1E8();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_1CA94C218();
  v8 = 0;
LABEL_4:
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
LABEL_9:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      if (v14 >> 62)
      {
        v15 = sub_1CA94D328();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if (v15)
      {
        v41 = v12;
        v42 = v15;
        v38 = a1;
        v39 = v13;
        v37 = v7;
        v44 = v14 & 0xC000000000000001;
        v40 = v14 & 0xFFFFFFFFFFFFFF8;
        sub_1CA94C218();
        sub_1CA94C218();
        v16 = 0;
        v43 = v14;
        while (1)
        {
          if (v44)
          {
            v17 = MEMORY[0x1CCAA22D0](v16, v14);
          }

          else
          {
            if (v16 >= *(v40 + 16))
            {
              goto LABEL_43;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_40;
          }

          v47 = sub_1CA2746C8(v17);
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v41;
            sub_1CA94C218();
            v47 = v39;
          }

          v45 = v16 + 1;
          if (v2[2] && (v21 = sub_1CA271BF8(v47, v20), (v22 & 1) != 0))
          {
            v48 = *(v2[7] + 8 * v21);
            sub_1CA94C218();
          }

          else
          {
            v48 = MEMORY[0x1E69E7CC0];
          }

          v46 = v20;
          v23 = v18;
          MEMORY[0x1CCAA1490]();
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CA94C698();
          }

          v24 = v23;
          sub_1CA94C6E8();
          swift_isUniquelyReferenced_nonNull_native();
          v25 = sub_1CA271BF8(v47, v46);
          if (__OFADD__(v2[2], (v26 & 1) == 0))
          {
            goto LABEL_41;
          }

          v27 = v25;
          v28 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447180, &qword_1CA98EAE8);
          if (sub_1CA94D588())
          {
            v29 = v46;
            v30 = sub_1CA271BF8(v47, v46);
            if ((v28 & 1) != (v31 & 1))
            {
              goto LABEL_44;
            }

            v27 = v30;
            if ((v28 & 1) == 0)
            {
LABEL_31:
              v2[(v27 >> 6) + 8] |= 1 << v27;
              v32 = (v2[6] + 16 * v27);
              *v32 = v47;
              v32[1] = v29;
              *(v2[7] + 8 * v27) = v48;

              v33 = v2[2];
              v34 = __OFADD__(v33, 1);
              v35 = v33 + 1;
              if (v34)
              {
                goto LABEL_42;
              }

              v2[2] = v35;
              goto LABEL_35;
            }
          }

          else
          {
            v29 = v46;
            if ((v28 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          *(v2[7] + 8 * v27) = v48;

LABEL_35:
          ++v16;
          v14 = v43;
          if (v45 == v42)
          {

            a1 = v38;
            v7 = v37;
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA2746C8(void *a1)
{
  v1 = [a1 attributionBundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_1CA94C3A8();
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t a1)
{
  v5 = v1[51];
  v4 = v1[52];
  *(v2 - 256) = v1[53];
  *(v2 - 248) = v4;
  v7 = v1[47];
  v6 = v1[48];
  *(v2 - 240) = v5;
  *(v2 - 232) = v6;
  v8 = v1[46];
  *(v2 - 224) = v7;
  *(v2 - 216) = v8;
  v9 = v1[41];
  *(v2 - 208) = v1[43];
  *(v2 - 200) = v9;
  v10 = v1[35];
  *(v2 - 192) = v1[38];
  *(v2 - 184) = v10;
  v12 = v1[28];
  v11 = v1[29];
  *(v2 - 176) = v1[32];
  *(v2 - 168) = v11;
  v14 = v1[26];
  v13 = v1[27];
  *(v2 - 160) = v12;
  *(v2 - 152) = v13;
  v15 = v1[25];
  *(v2 - 144) = v14;
  *(v2 - 136) = v15;
  v16 = v1[21];
  *(v2 - 128) = v1[22];
  *(v2 - 120) = v16;
  *(v2 - 112) = v1[18];
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_10()
{
  v4 = v0[14];
  v3 = v0[15];
  *(v1 - 120) = v0[17];
  *(v1 - 112) = v3;
  v5 = v0[11];
  *(v1 - 104) = v4;
  *(v1 - 96) = v5;

  return sub_1CA94A9A8();
}

uint64_t OUTLINED_FUNCTION_39_11()
{

  return sub_1CA275D70(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_1CA274970(uint64_t *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  result = sub_1CA274C10(v6, a2);
  if (v2)
  {
LABEL_29:

    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);

    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        goto LABEL_29;
      }

      if (v9 >= v10)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

      v11 = v6 + 32;
      v12 = (v6 + 32 + 16 * v9);
      if (*(a2 + 16))
      {
        v35 = v6 + 32;
        v36 = v6;
        v14 = *v12;
        v13 = v12[1];
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C458();
        v15 = sub_1CA94D968();
        v16 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v18 = (*(a2 + 48) + 16 * v17);
          if (*v18 != v14 || v18[1] != v13)
          {
            v20 = sub_1CA94D7F8();
            v15 = v17 + 1;
            if ((v20 & 1) == 0)
            {
              continue;
            }
          }

          v6 = v36;
          goto LABEL_26;
        }

        v6 = v36;
        v11 = v35;
      }

      if (v3 != v9)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v21 = *(v6 + 16);
        if (v3 >= v21)
        {
          goto LABEL_35;
        }

        if (v9 >= v21)
        {
          goto LABEL_36;
        }

        v22 = (v11 + 16 * v3);
        v24 = *v22;
        v23 = v22[1];
        v25 = v6;
        v27 = *v12;
        v26 = v12[1];
        sub_1CA94C218();
        sub_1CA94C218();
        v28 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA42B234();
          v28 = v34;
        }

        v29 = v28;
        v30 = v28 + 32;
        v31 = (v30 + 16 * v3);
        *v31 = v27;
        v31[1] = v26;
        v6 = v29;

        if (v9 >= *(v6 + 16))
        {
          goto LABEL_37;
        }

        v32 = (v30 + 16 * v9);
        *v32 = v24;
        v32[1] = v23;

        *a1 = v6;
      }

      v33 = __OFADD__(v3++, 1);
      if (v33)
      {
        goto LABEL_33;
      }

LABEL_26:
      v33 = __OFADD__(v9++, 1);
      if (v33)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA274C10(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  sub_1CA94C218();
  v6 = 0;
  v18 = a1 + 32;
  while (1)
  {
    if (v6 == v4)
    {

      v16 = 0;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      break;
    }

LABEL_13:
    ++v6;
  }

  v7 = (v5 + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  sub_1CA94D918();
  sub_1CA94C218();
  sub_1CA94C458();
  v10 = sub_1CA94D968();
  v11 = ~(-1 << *(a2 + 32));
  do
  {
    v12 = v10 & v11;
    if (((*(a2 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {

      v5 = v18;
      goto LABEL_13;
    }

    v13 = (*(a2 + 48) + 16 * v12);
    if (*v13 == v9 && v13[1] == v8)
    {
      break;
    }

    v15 = sub_1CA94D7F8();
    v10 = v12 + 1;
  }

  while ((v15 & 1) == 0);

  v16 = v6;
LABEL_15:

  return v16;
}

uint64_t sub_1CA274D94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA274E6C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1CA274DD0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1CA26E4B4((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1CA274F48(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t i@<X8>)
{
  v134 = a3;
  if (!*(a2 + 16))
  {
    goto LABEL_111;
  }

  v6 = result[1];
  v128 = *result;
  v130 = v6;
  v7 = sub_1CA271BF8(v128, v6);
  if ((v8 & 1) == 0)
  {
    goto LABEL_111;
  }

  v9 = *(*(a2 + 56) + 8 * v7);
  v123 = sub_1CA25B410(v9);
  if (!v123)
  {
    goto LABEL_111;
  }

  *&v125 = v9;
  sub_1CA94C218();
  if (!VCIsInternalBuild() || (sub_1CA5F87E8() & 1) != 0)
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    sub_1CA94C218();
    v11 = sub_1CA275C94(v128, v130, 0);
    if (v135)
    {

      v135 = 0;
      goto LABEL_8;
    }

    v95 = v11;
    v135 = 0;
    if (v11)
    {
      v96 = [v11 wf:0 isAvailableInContext:?];

      if ((v96 & 1) == 0)
      {

LABEL_111:
        *i = MEMORY[0x1E69E7CC0];
        return;
      }
    }
  }

LABEL_8:
  v12 = v125;
  v13 = 0;
  v138 = MEMORY[0x1E69E7CC0];
  v124 = v125 & 0xC000000000000001;
  v120 = v125 + 32;
  v132 = MEMORY[0x1E69E7CC0];
  v133 = OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle;
  v122 = i;
  while (2)
  {
    v14 = v124;
    sub_1CA275D70(v13, v124 == 0, v12);
    if (v14)
    {
      v15 = MEMORY[0x1CCAA22D0](v13, v12);
    }

    else
    {
      v15 = *(v120 + 8 * v13);
    }

    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (v16)
    {
      goto LABEL_146;
    }

    *&v126 = v17;
    *(&v125 + 1) = v15;
    v18 = sub_1CA275DA8(v15);
    v139[0] = MEMORY[0x1E69E7CC0];
    v19 = sub_1CA25B410(v18);
    for (i = 0; v19 != i; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1CCAA22D0](i, v18);
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_119;
        }

        v20 = *(v18 + 8 * i + 32);
      }

      v21 = v20;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v22 = *(v134 + v133);
      if (v22)
      {
        if (v22 == 1)
        {
          if ([v20 isDeprecatedStyle])
          {

            continue;
          }
        }

        else if (v22 != 2)
        {
          v140 = *(v134 + v133);
          goto LABEL_149;
        }
      }

      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    v23 = v139[0];
    v140 = MEMORY[0x1E69E7CC0];
    i = sub_1CA25B410(v139[0]);
    v24 = v23 & 0xC000000000000001;

    v25 = 0;
    v136 = v23;
    while (i != v25)
    {
      if (v24)
      {
        v26 = MEMORY[0x1CCAA22D0](v25, v23);
      }

      else
      {
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_121;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_120;
      }

      v28 = [v26 phrase];
      v29 = [v28 parameterIdentifier];

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      MEMORY[0x1EEE9AC00](v30 - 8);
      v32 = &v119 - v31;
      if (v29)
      {
        sub_1CA948CF8();

        v33 = sub_1CA948D28();
        __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
        sub_1CA532E30(v32, &qword_1EC443BC8, &qword_1CA9834A0);
        sub_1CA94D4D8();
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      else
      {

        v34 = sub_1CA948D28();
        __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
        sub_1CA532E30(v32, &qword_1EC443BC8, &qword_1CA9834A0);
      }

      ++v25;
      v23 = v136;
    }

    v35 = v140;
    if (!sub_1CA25B410(v140))
    {

      sub_1CA278368(v23);

      goto LABEL_94;
    }

    v121 = v35;
    v36 = MEMORY[0x1E69E7CC0];
    v140 = MEMORY[0x1E69E7CC0];
    i = sub_1CA25B410(v23);
    v37 = 0;
    v131 = v36;
LABEL_40:
    v38 = v136;
    while (i != v37)
    {
      if (v24)
      {
        v39 = MEMORY[0x1CCAA22D0](v37, v38);
      }

      else
      {
        if (v37 >= *(v38 + 16))
        {
          goto LABEL_123;
        }

        v39 = *(v38 + 8 * v37 + 32);
      }

      v40 = v39;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_122;
      }

      v41 = [v39 namedQueryInfo];
      if (v41)
      {
        v42 = v41;
        v137 = v41;
        MEMORY[0x1EEE9AC00](v41);
        v118[2] = &v137;
        v43 = v131;
        sub_1CA94C218();
        v44 = v135;
        v45 = sub_1CA2BFDC4(sub_1CA5FBA48, v118, v43);
        v135 = v44;

        if ((v45 & 1) == 0)
        {
          MEMORY[0x1CCAA1490](v46);
          if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
          v131 = v140;

          ++v37;
          goto LABEL_40;
        }

        v38 = v136;
      }

      else
      {
        v42 = v40;
      }

      ++v37;
    }

    v12 = v131;
    *(&v127 + 1) = sub_1CA25B410(v131);
    if (!*(&v127 + 1))
    {
LABEL_88:
      if (sub_1CA25B410(v38))
      {
        v80 = *(v134 + v133);
        i = v122;
        if (v80 != 2)
        {
          if (v80 == 1)
          {

            sub_1CA278368(v38);

            goto LABEL_106;
          }

          if (v80)
          {
            goto LABEL_150;
          }
        }

        v81 = v38;

        v82 = qword_1EDB9F960;
        v83 = v130;
        sub_1CA94C218();
        if (v82 != -1)
        {
          swift_once();
        }

        v84 = v128;
        v85 = sub_1CA2786EC(v128, v83);
        if (v86)
        {
          v87 = v85;
          v88 = v86;
        }

        else
        {
          sub_1CA94C218();
          v87 = v84;
          v88 = v83;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA278A8C();
          v132 = v93;
        }

        v89 = *(v132 + 16);
        if (v89 >= *(v132 + 24) >> 1)
        {
          sub_1CA278A8C();
          v132 = v94;
        }

        v90 = v132;
        *(v132 + 16) = v89 + 1;
        v91 = (v90 + 48 * v89);
        v91[4] = v87;
        v91[5] = v88;
        v92 = v130;
        v91[6] = v128;
        v91[7] = v92;
        v91[8] = 0;
        v91[9] = v81;

LABEL_106:
        v12 = v125;
        v13 = v126;
        if (v126 == v123)
        {
          goto LABEL_114;
        }

        continue;
      }

LABEL_94:
      i = v122;
      goto LABEL_106;
    }

    break;
  }

  v47 = 0;
  *(&v126 + 1) = v12 + 32;
  *&v127 = v12 & 0xC000000000000001;
LABEL_57:
  v48 = v127;
  sub_1CA275D70(v47, v127 == 0, v12);
  if (v48)
  {
    v49 = MEMORY[0x1CCAA22D0](v47, v12);
  }

  else
  {
    v49 = *(*(&v126 + 1) + 8 * v47);
  }

  v136 = v49;
  v16 = __OFADD__(v47, 1);
  v14 = v47 + 1;
  if (v16)
  {
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    swift_once();
LABEL_116:
    v98 = v128;
    v99 = sub_1CA2786EC(v128, v14);
    if (v100)
    {
      v101 = v99;
      v102 = v100;
    }

    else
    {
      sub_1CA94C218();
      v101 = v98;
      v102 = v14;
    }

    v103 = *(v134 + v133);
    switch(v103)
    {
      case 0:
        goto LABEL_134;
      case 1:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA278A8C();
          v132 = v116;
        }

        v104 = v130;
        v105 = v132;
        v106 = *(v132 + 16);
        if (v106 >= *(v132 + 24) >> 1)
        {
          sub_1CA278A8C();
          v104 = v130;
          v105 = v117;
        }

        *(v105 + 16) = v106 + 1;
        v107 = (v105 + 48 * v106);
        v107[4] = v101;
        v107[5] = v102;
        v107[6] = v128;
        v107[7] = v104;
        v107[8] = 0;
        v107[9] = v12;
        i = v122;
        goto LABEL_139;
      case 2:
LABEL_134:

        v108 = v132;
        v109 = *(v132 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140 = v108;
        if (!isUniquelyReferenced_nonNull_native || v109 >= *(v108 + 24) >> 1)
        {
          sub_1CA278A8C();
          v132 = v115;
          v140 = v115;
        }

        v139[1] = v102;
        v139[2] = v128;
        v139[3] = v130;
        v139[4] = 0;
        v139[5] = v12;
        sub_1CA278CF8(0, 0, 1, v139, v111, v112, v113, v114, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v101);
        goto LABEL_138;
    }

    v139[0] = *(v134 + v133);
    while (1)
    {
LABEL_149:
      sub_1CA94D838();
      __break(1u);
LABEL_150:
      v137 = v80;
    }
  }

  v129 = v14;
  v137 = MEMORY[0x1E69E7CC0];
  v50 = sub_1CA25B410(v38);
  v51 = 0;
  v52 = v38 & 0xC000000000000001;
  v53 = v38 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v50 == v51)
    {
      v60 = v137;
      sub_1CA94C218();
      v61 = v135;
      sub_1CA5FAE3C(v139, v60);
      v12 = v62;
      v135 = v61;
      v63 = v139[0];
      v64 = sub_1CA25B410(v139[0]);
      v14 = v64 - v12;
      if (v64 < v12)
      {
        goto LABEL_141;
      }

      if (v12 < 0)
      {
        goto LABEL_142;
      }

      if (sub_1CA277E14(v63) < v64)
      {
        goto LABEL_143;
      }

      v16 = __OFSUB__(0, v14);
      v14 = -v14;
      if (v16)
      {
        goto LABEL_144;
      }

      v65 = sub_1CA25B410(v63);
      v16 = __OFADD__(v65, v14);
      v66 = v65 + v14;
      if (v16)
      {
        goto LABEL_145;
      }

      sub_1CA277E18(v66, 1);
      sub_1CA6B0248();
      v67 = v139[0];
      sub_1CA94C218();
      v68 = v136;
      v69 = [v68 name];
      v70 = sub_1CA94C3A8();
      v72 = v71;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v73 = v132;
      }

      else
      {
        sub_1CA278A8C();
        v73 = v78;
      }

      v74 = *(v73 + 16);
      if (v74 >= *(v73 + 24) >> 1)
      {
        sub_1CA278A8C();
        v132 = v79;
      }

      else
      {
        v132 = v73;
      }

      v12 = v131;
      v75 = v132;
      *(v132 + 16) = v74 + 1;
      v76 = (v75 + 48 * v74);
      v76[4] = v70;
      v76[5] = v72;
      v47 = v129;
      v77 = v130;
      v76[6] = v128;
      v76[7] = v77;
      v76[8] = v136;
      v76[9] = v60;
      v38 = v67;
      if (v47 == *(&v127 + 1))
      {
        goto LABEL_88;
      }

      goto LABEL_57;
    }

    if (v52)
    {
      v54 = MEMORY[0x1CCAA22D0](v51, v38);
    }

    else
    {
      if (v51 >= *(v53 + 16))
      {
        goto LABEL_113;
      }

      v54 = *(v38 + 8 * v51 + 32);
    }

    v55 = v54;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    v56 = [v54 namedQueryInfo];
    if (v56)
    {
      v57 = v56;
      i = v38;
      sub_1CA25B3D0(0, &qword_1EDB9F6D8, 0x1E69E0990);
      v58 = v136;
      v59 = sub_1CA94CFD8();

      if (v59)
      {
        sub_1CA94D4D8();
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      else
      {
      }

      v38 = i;
    }

    else
    {
    }

    ++v51;
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  v12 = v138;
  if (sub_1CA25B410(v138))
  {
    v97 = qword_1EDB9F960;
    v14 = v130;
    sub_1CA94C218();
    sub_1CA94C218();
    if (v97 == -1)
    {
      goto LABEL_116;
    }

    goto LABEL_147;
  }

LABEL_124:

LABEL_138:
  v105 = v132;
LABEL_139:
  *i = v105;
}

id sub_1CA275C94(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1CA94C368();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1CA275D84(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_1CA275DA8(_DWORD *a1)
{
  v125[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v106 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v106 - v15;
  if ([objc_opt_self() isAppShortcutDenyListed:a1 inEnvironment:1])
  {
    sub_1CA949C58();
    v17 = a1;
    v18 = sub_1CA949F68();
    v19 = sub_1CA94CBF8();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_29_0();
      swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_131();
      *a1 = 138412290;
      *(a1 + 1) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_1CA256000, v18, v19, "App Shortcut %@ deny listed, skipping", a1, 0xCu);
      sub_1CA532E30(v20, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v6 + 8))(v11, v4);
    return MEMORY[0x1E69E7CC0];
  }

  v111 = v2;
  v22 = [a1 orderedPhrases];
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
  v23 = sub_1CA94C658();

  v24 = sub_1CA25B410(v23);

  if (!v24)
  {
    sub_1CA949C58();
    v51 = a1;
    v52 = sub_1CA949F68();
    v53 = sub_1CA94CBF8();

    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_29_0();
      swift_slowAlloc();
      v54 = OUTLINED_FUNCTION_131();
      *a1 = 138412290;
      *(a1 + 1) = v51;
      *v54 = v51;
      v55 = v51;
      _os_log_impl(&dword_1CA256000, v52, v53, "App Shortcut %@ contains no phrases, skipping", a1, 0xCu);
      sub_1CA532E30(v54, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v6 + 8))(v14, v4);
    return MEMORY[0x1E69E7CC0];
  }

  v25 = WFAllGroupedPhrasesForAutoShortcut();
  if (!v25)
  {
    sub_1CA949C58();
    v86 = a1;
    v87 = sub_1CA949F68();
    v88 = sub_1CA94CC18();

    if (os_log_type_enabled(v87, v88))
    {
      OUTLINED_FUNCTION_29_0();
      swift_slowAlloc();
      v89 = OUTLINED_FUNCTION_131();
      *a1 = 138412290;
      *(a1 + 1) = v86;
      *v89 = v86;
      v90 = v86;
      _os_log_impl(&dword_1CA256000, v87, v88, "Unable to grab grouped phrases for %@", a1, 0xCu);
      sub_1CA532E30(v89, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v6 + 8))(v16, v4);
    return MEMORY[0x1E69E7CC0];
  }

  v26 = v25;
  v109 = a1;
  v110 = v1;
  v107 = v6;
  v108 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447178, &unk_1CA98EAD8);
  v27 = sub_1CA94C658();

  v28 = 0;
  v112 = 0;
  v29 = *(v27 + 16);
  v116 = v27;
  v121 = (v27 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v115 = v29;
  while (v28 != v29)
  {
    if (v28 >= *(v116 + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
    }

    v31 = v121[v28];
    if (v31 >> 62)
    {
      v32 = sub_1CA94D328();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v30 >> 62;
    if (v30 >> 62)
    {
      v34 = sub_1CA94D328();
    }

    else
    {
      v34 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v34 + v32;
    if (__OFADD__(v34, v32))
    {
      goto LABEL_80;
    }

    sub_1CA94C218();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v33)
      {
LABEL_20:
        sub_1CA94D328();
      }

LABEL_21:
      v30 = sub_1CA94D488();
      v36 = v30 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v33)
    {
      goto LABEL_20;
    }

    v36 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v35 > *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    ++v28;
    v37 = *(v36 + 16);
    v38 = (*(v36 + 24) >> 1) - v37;
    v39 = v36 + 8 * v37;
    v122 = v36;
    if (v31 >> 62)
    {
      v41 = sub_1CA94D328();
      if (!v41)
      {
        goto LABEL_36;
      }

      v42 = v41;
      v43 = sub_1CA94D328();
      if (v38 < v43)
      {
        goto LABEL_87;
      }

      if (v42 < 1)
      {
        goto LABEL_88;
      }

      v40 = v43;
      v119 = v32;
      v120 = v28;
      v117 = v30;
      sub_1CA276B44(&qword_1EDB9F798, &qword_1EC447178, &unk_1CA98EAD8);
      for (i = 0; i != v42; ++i)
      {
        v45 = sub_1CA276BDC(v125, i, v31);
        v47 = *v46;
        v45(v125, 0);
        *(v39 + 32 + 8 * i) = v47;
      }

      v30 = v117;
      v32 = v119;
      v28 = v120;
      v29 = v115;
LABEL_32:

      if (v40 < v32)
      {
        goto LABEL_81;
      }

      if (v40 > 0)
      {
        v48 = *(v122 + 16);
        v49 = __OFADD__(v48, v40);
        v50 = v48 + v40;
        if (v49)
        {
          goto LABEL_85;
        }

        *(v122 + 16) = v50;
      }
    }

    else
    {
      v40 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        if (v38 < v40)
        {
          goto LABEL_86;
        }

        swift_arrayInitWithCopy();
        goto LABEL_32;
      }

LABEL_36:

      if (v32 > 0)
      {
        goto LABEL_81;
      }
    }
  }

  v56 = sub_1CA25B410(v30);
  v57 = 0;
  v114 = v30 & 0xC000000000000001;
  v115 = v56;
  v113 = v30 & 0xFFFFFFFFFFFFFF8;
  v58 = MEMORY[0x1E69E7CC0];
  v117 = v30;
  while (v115 != v57)
  {
    if (v114)
    {
      v59 = MEMORY[0x1CCAA22D0](v57, v30);
    }

    else
    {
      if (v57 >= *(v113 + 16))
      {
        goto LABEL_83;
      }

      v59 = *(v30 + 8 * v57 + 32);
    }

    v60 = v59;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_82;
    }

    v122 = v58;
    v61 = sub_1CA948D28();
    v121 = &v106;
    OUTLINED_FUNCTION_1_0();
    v120 = v62;
    MEMORY[0x1EEE9AC00](v63);
    v119 = &v106 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v118 = &v106;
    v66 = *(*(v65 - 8) + 64);
    v67 = MEMORY[0x1EEE9AC00](v65 - 8);
    v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v67);
    v69 = v60;
    v70 = [v69 parameterIdentifier];
    if (MEMORY[0x1EEE9AC00](v70))
    {
      sub_1CA948CF8();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    __swift_storeEnumTagSinglePayload(&v106 - v68, v71, 1, v61);
    sub_1CA276D6C(&v106 - v68, &v106 - v68);
    sub_1CA276D6C(&v106 - v68, &v106 - v68);

    if (__swift_getEnumTagSinglePayload(&v106 - v68, 1, v61) == 1)
    {
      sub_1CA532E30(&v106 - v68, &qword_1EC443BC8, &qword_1CA9834A0);
      v30 = v117;
      v58 = v122;
    }

    else
    {
      v72 = *(v120 + 32);
      v72(v119, &v106 - v68, v61);
      v58 = v122;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v117;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA2E5E9C();
        v58 = v75;
      }

      v74 = *(v58 + 16);
      if (v74 >= *(v58 + 24) >> 1)
      {
        sub_1CA2E5E9C();
        v58 = v76;
      }

      *(v58 + 16) = v74 + 1;
      v72((v58 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v74), v119, v61);
    }

    ++v57;
  }

  if (*(v58 + 16))
  {
    v77 = v110;
    v78 = *&v110[OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider];
    sub_1CA948D28();
    v79 = sub_1CA94C648();

    v125[0] = 0;
    v80 = [v78 propertiesForIdentifiers:v79 error:v125];

    v81 = v125[0];
    v82 = v109;
    v83 = v116;
    if (v80)
    {
      sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
      sub_1CA277284();
      v84 = sub_1CA94C1C8();
      v85 = v81;

      goto LABEL_69;
    }

    v95 = v125[0];

    v96 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA949C58();
    v97 = v77;
    v98 = v96;
    v99 = sub_1CA949F68();
    v100 = sub_1CA94CC18();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v101 = 138412546;
      *(v101 + 4) = v97;
      *v102 = v97;
      *(v101 + 12) = 2112;
      v103 = v97;
      v104 = v96;
      v105 = _swift_stdlib_bridgeErrorToNSError();
      *(v101 + 14) = v105;
      v102[1] = v105;
      _os_log_impl(&dword_1CA256000, v99, v100, "Error grabbing App Shortcut parameters for %@: %@", v101, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AE0, &qword_1CA985B70);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    (*(v107 + 8))(v111, v108);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {

    sub_1CA948D28();
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA277284();
    v84 = sub_1CA94C1E8();
    v77 = v110;
    v82 = v109;
    v83 = v116;
LABEL_69:
    v92 = *(v83 + 16);
    if (!v92)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v125[0] = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v93 = 0;
    while (1)
    {
      if (v93 >= *(v83 + 16))
      {
        goto LABEL_84;
      }

      v123 = *(v83 + 8 * v93 + 32);
      sub_1CA94C218();
      v94 = v112;
      sub_1CA2772D0(&v123, v84, v82, v77, &v124);

      v112 = v94;
      if (v94)
      {
        break;
      }

      ++v93;
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      if (v92 == v93)
      {

        return v125[0];
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CA276B44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA276B98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA276BDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_7(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_47_0();
  }

  else
  {
    OUTLINED_FUNCTION_48();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_17();
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_206(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_45_5(uint64_t a1)
{

  return sub_1CA94CC68();
}

uint64_t OUTLINED_FUNCTION_45_8(uint64_t a1)
{
}

uint64_t sub_1CA276D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA277284()
{
  result = qword_1EDB9FA28;
  if (!qword_1EDB9FA28)
  {
    sub_1CA948D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9FA28);
  }

  return result;
}

uint64_t sub_1CA2772D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v122[4] = *MEMORY[0x1E69E9840];
  v12 = sub_1CA949F78();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v111 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v102 - v16;
  v17 = *a1;
  v121 = v17;
  if (!sub_1CA25B410(v17))
  {
    __break(1u);
    goto LABEL_46;
  }

  if (!sub_1CA25B410(v17))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_1CA275D70(0, (v17 & 0xC000000000000001) == 0, v17);
  if ((v17 & 0xC000000000000001) == 0)
  {
    v18 = *(v17 + 32);
    sub_1CA94C218();
    v19 = v18;
    goto LABEL_5;
  }

LABEL_47:
  sub_1CA94C218();
  v19 = MEMORY[0x1CCAA22D0](0, v17);
LABEL_5:
  v20 = v19;
  if (!sub_1CA25B410(v17))
  {
    goto LABEL_50;
  }

  if (sub_1CA277E14(v17) < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v21 = sub_1CA25B410(v17);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v115 = a4;
  v112 = v13;
  v113 = v12;
  sub_1CA277E18(v23, 1);
  sub_1CA278034();
  v24 = v121;
  v25 = sub_1CA948D28();
  v118 = *(v25 - 8);
  v119 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [v20 parameterIdentifier];
  if (!v28)
  {
    v55 = objc_allocWithZone(MEMORY[0x1E69E0AE0]);
    result = sub_1CA278090(a3, v20, v24, 0);
    *a5 = result;
    return result;
  }

  v29 = v28;
  v116 = v20;
  v117 = v24;
  sub_1CA948CF8();

  v30 = sub_1CA311AFC(v27, a2);
  if (!v30)
  {
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 value];
  if (!v32 || (v33 = v32, v34 = [v32 displayRepresentation], v33, !v34))
  {
    v34 = v31;
LABEL_18:

LABEL_19:
    v57 = objc_allocWithZone(MEMORY[0x1E69E0AE0]);
    v58 = a3;
    v59 = sub_1CA278090(v58, v116, v117, 0);
    result = (*(v118 + 8))(v27, v119);
    *a5 = v59;
    return result;
  }

  v109 = v6;
  v110 = [v34 image];
  if (!v110)
  {
    v110 = sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870);
    v35 = [a3 systemImageName];
    v36 = sub_1CA94C3A8();
    v38 = v37;

    v110 = sub_1CA5FA86C(v36, v38);
    if (!v110)
    {

      goto LABEL_18;
    }
  }

  v105 = &v102;
  v108 = a3;
  v106 = a5;
  v39 = sub_1CA948E58();
  v40 = v34;
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v41 + 8))(v43, v39);
  v44 = [v34 title];
  v45 = sub_1CA94C368();
  v46 = [v44 localizedStringForLocaleIdentifier_];

  v47 = sub_1CA94C3A8();
  v107 = v48;

  v104 = v40;
  v49 = [v40 subtitle];
  v103 = v47;
  if (v49)
  {
    v50 = v49;
    v51 = sub_1CA94C368();
    v52 = [v50 localizedStringForLocaleIdentifier_];

    v102 = sub_1CA94C3A8();
    v54 = v53;
  }

  else
  {
    v102 = 0;
    v54 = 0;
  }

  v60 = v110;
  v61 = v117;
  v62 = *(v115 + OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle);
  if (v62 >= 2)
  {
    if (v62 != 2)
    {
      v122[0] = *(v115 + OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle);
      result = sub_1CA94D838();
      __break(1u);
      return result;
    }

    v64 = v54;

    sub_1CA948CC8();
    v65 = sub_1CA94C368();

    v63 = [v60 spotlightIconWithParameterIdentifier_];

    v61 = v117;
    v54 = v64;
  }

  else
  {

    v63 = [v60 contextualActionIcon];
  }

  v66 = v108;
  if (!v63)
  {
    v76 = 0;

    sub_1CA949C58();
    v83 = v60;
    v84 = sub_1CA949F68();
    v85 = sub_1CA94CC18();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138412290;
      *(v86 + 4) = v83;
      *v87 = v83;
      v88 = v83;
      _os_log_impl(&dword_1CA256000, v84, v85, "App Shortcut has image representation but unable to extract data: %@", v86, 0xCu);
      sub_1CA532E30(v87, &qword_1EC444AE0, &qword_1CA985B70);
      MEMORY[0x1CCAA4BF0](v87, -1, -1);
      v89 = v86;
      v61 = v117;
      MEMORY[0x1CCAA4BF0](v89, -1, -1);
    }

    (*(v112 + 8))(v114, v113);
    v81 = 0;
    v66 = v108;
    goto LABEL_39;
  }

  v115 = v54;
  v67 = v63;
  v68 = [v31 value];
  if (v68 && (v69 = v68, v70 = [v68 value], v69, sub_1CA94D258(), swift_unknownObjectRelease(), sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0), (swift_dynamicCast() & 1) != 0))
  {
    v71 = v120;
    v72 = [objc_opt_self() defaultDatabase];
    v114 = v71;
    v73 = [v71 identifier];
    v74 = [v73 instanceIdentifier];

    if (!v74)
    {
      sub_1CA94C3A8();
      v74 = sub_1CA94C368();
    }

    v122[0] = 0;
    v75 = [v72 badgeTypeForEntityIdentifier:v74 error:{v122, v102, v103}];

    v76 = v63;
    if (!v75)
    {
      v93 = v122[0];
      v94 = sub_1CA948AD8();

      swift_willThrow();
      sub_1CA949C58();
      v95 = v94;
      v96 = sub_1CA949F68();
      v97 = sub_1CA94CC18();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138412290;
        v100 = v94;
        v101 = _swift_stdlib_bridgeErrorToNSError();
        *(v98 + 4) = v101;
        *v99 = v101;
        _os_log_impl(&dword_1CA256000, v96, v97, "Unable to get App Shortcut badge value: %@", v98, 0xCu);
        sub_1CA532E30(v99, &qword_1EC444AE0, &qword_1CA985B70);
        MEMORY[0x1CCAA4BF0](v99, -1, -1);
        MEMORY[0x1CCAA4BF0](v98, -1, -1);
      }

      else
      {
      }

      v61 = v117;
      v79 = v107;
      (*(v112 + 8))(v111, v113);
      v78 = 0;
      v66 = v108;
      goto LABEL_35;
    }

    v77 = v122[0];
    v78 = [v75 unsignedIntegerValue];

    v66 = v108;
  }

  else
  {
    v76 = v63;
    v78 = 0;
  }

  v61 = v117;
  v79 = v107;
LABEL_35:
  v80 = objc_allocWithZone(MEMORY[0x1E69E09B8]);
  v81 = sub_1CA5FAC18(v103, v79, v102, v115, v67, v78);
  v82 = v81;
  v60 = v110;
LABEL_39:
  v90 = objc_allocWithZone(MEMORY[0x1E69E0AE0]);
  v91 = v66;
  v92 = sub_1CA278090(v91, v116, v61, v81);

  result = (*(v118 + 8))(v27, v119);
  *v106 = v92;
  return result;
}

uint64_t sub_1CA277EA4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1CA94D328();
LABEL_9:
  result = sub_1CA94D488();
  *v2 = result;
  return result;
}

void sub_1CA277F44()
{
  OUTLINED_FUNCTION_37_0();
  v13 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v12;
  v0 = v9;
  v4 = v8;
  v14 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v3 = &v1[v7 + 4];
  sub_1CA25B3D0(0, v10, v11);
  swift_arrayDestroy();
  v15 = __OFSUB__(v0, v13);
  v13 = v0 - v13;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v6 = v14 >> 62;
  if (!(v14 >> 62))
  {
    v16 = v1[2];
    goto LABEL_6;
  }

LABEL_16:
  v16 = sub_1CA94D328();
LABEL_6:
  if (__OFSUB__(v16, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(&v5[v4], v16 - v4, v3 + 8 * v0);
  if (v6)
  {
    v17 = sub_1CA94D328();
  }

  else
  {
    v17 = v1[2];
  }

  if (__OFADD__(v17, v13))
  {
    goto LABEL_18;
  }

  v1[2] = v17 + v13;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_19:
  __break(1u);
}

char *sub_1CA27805C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

id sub_1CA278090(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
    v9 = sub_1CA94C648();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithAutoShortcut:a1 phrase:a2 alternatePhrases:v9 entityInfo:a4];

  return v10;
}

uint64_t sub_1CA278154(unint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v7 = sub_1CA25B418(a1);
  v8 = sub_1CA25B418(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  a2(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_3(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE78B28];

  return sub_1CA36DA78(a1, v2);
}

void OUTLINED_FUNCTION_71_5()
{
  v3 = v0[182];
  v4 = v0[175];
  *(v1 - 96) = v0[179];
  *(v1 - 88) = v4;
}

id sub_1CA2785E8()
{
  type metadata accessor for AppNameCache();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 16) = result;
  qword_1EDB9F968 = v0;
  return result;
}

uint64_t sub_1CA2786EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA949F78();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1CA94C368();
  v7 = *(v2 + 16);
  if ([v7 objectForKey_])
  {

    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    sub_1CA94C218();
    v10 = sub_1CA275C94(a1, a2, 0);
    v11 = [v10 localizedName];
    if (!v11)
    {
      sub_1CA94C3A8();
      v11 = sub_1CA94C368();
    }

    v8 = sub_1CA94C3A8();
    [v7 setObject:v11 forKey:v6];
  }

  return v8;
}

void sub_1CA278A8C()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA278E60(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
    OUTLINED_FUNCTION_24_2(v9);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{

  return sub_1CA94C358();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_1CA94D3E8();
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return sub_1CA94D7F8();
}

void OUTLINED_FUNCTION_57_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_4()
{
  result = *(v0 + 344);
  *(v1 - 96) = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_5(uint64_t a1)
{

  return sub_1CA2B8FA4(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_57_9()
{
  *(v1 - 104) = *(v0 + 344);

  return sub_1CA94A9F8();
}

id OUTLINED_FUNCTION_57_10()
{

  return sub_1CA538038(0);
}

uint64_t OUTLINED_FUNCTION_57_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39)
{
  *(v41 + 16) = v40;

  return sub_1CA27F268(&a39, v41 + 40 * v39 + 32);
}

void sub_1CA278CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_43_0();
  a28 = v30;
  a29 = v35;
  v36 = v32 - v31;
  if (__OFSUB__(v32, v31))
  {
    __break(1u);
    goto LABEL_13;
  }

  v37 = v34;
  v38 = v33;
  v39 = v32;
  v40 = v31;
  v41 = *v29;
  v42 = *v29 + 32;
  v43 = v42 + 48 * v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
  swift_arrayDestroy();
  v44 = __OFSUB__(v38, v36);
  v45 = v38 - v36;
  if (v44)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v45)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(*(v41 + 16), v39))
  {
    goto LABEL_14;
  }

  sub_1CA278E60(v42 + 48 * v39);
  v46 = *(v41 + 16);
  v44 = __OFADD__(v46, v45);
  v47 = v46 + v45;
  if (!v44)
  {
    *(v41 + 16) = v47;
LABEL_7:
    if (v38 > 0)
    {
      v48 = v37[1];
      a15 = *v37;
      a16 = v48;
      a17 = v37[2];
      v49 = (v41 + 48 * v40);
      v49[2] = a15;
      v49[3] = v48;
      v49[4] = a17;
      if ((v49 + 5) >= v43 + 48 * v38)
      {
LABEL_11:
        OUTLINED_FUNCTION_42_0();
        return;
      }

      sub_1CA2D9D20(v37, &a9, &qword_1EC4481C0, &qword_1CA992038);
      __break(1u);
    }

    sub_1CA27080C(v37, &qword_1EC4481C0, &qword_1CA992038);
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

char *sub_1CA278E64(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

uint64_t sub_1CA278E8C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1CA94A0A8();
}

uint64_t sub_1CA278F60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA278FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA278F60();
  *a1 = result;
  return result;
}

uint64_t sub_1CA279010(uint64_t a1)
{
  v1 = sub_1CA94C218();
  v2 = sub_1CA2796A4(v1);
  v3 = v2 + 8;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2[8];
  v7 = (v4 + 63) >> 6;
  v8 = v2;
  sub_1CA94C218();
  v9 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (v8[6] + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v8[7] + 8 * v12);
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA27A2EC(v14, v15, v16, &v115);

    countAndFlagsBits = v115.bundleIdentifier._countAndFlagsBits;
    object = v115.bundleIdentifier._object;
    rawValue = v115.autoShortcuts._rawValue;
    v19 = v115.sections._rawValue;
    v21 = v115.userShortcuts._rawValue;
    if (v115.bundleIdentifier._object)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA27B44C();
        v112 = v26;
      }

      v23 = *(v112 + 16);
      v22 = *(v112 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_64(v22);
        v107 = v28;
        v109 = v27;
        sub_1CA27B44C();
        v23 = v107;
        v24 = v109;
        v112 = v29;
      }

      *(v112 + 16) = v24;
      v25 = (v112 + 40 * v23);
      v25[4] = countAndFlagsBits;
      v25[5] = object;
      v25[6] = rawValue;
      v25[7] = v19;
      v25[8] = v21;
    }

    else
    {
      sub_1CA532DCC(v115.bundleIdentifier._countAndFlagsBits, 0);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v115.bundleIdentifier._countAndFlagsBits = v112;
      sub_1CA94C218();
      sub_1CA27B70C(&v115.bundleIdentifier._countAndFlagsBits, sub_1CA531270, sub_1CA27B894);

      v34 = v115.bundleIdentifier._countAndFlagsBits;
      v35 = *(v115.bundleIdentifier._countAndFlagsBits + 16);
      v36 = MEMORY[0x1E69E7CC0];
      v108 = v115.bundleIdentifier._countAndFlagsBits;
      if (v35)
      {
        v115.bundleIdentifier._countAndFlagsBits = MEMORY[0x1E69E7CC0];
        sub_1CA271524(0, v35, 0, v30, v31, v32, v33);
        v37 = v115.bundleIdentifier._countAndFlagsBits;
        v38 = (v34 + 40);
        do
        {
          v40 = *(v38 - 1);
          v39 = *v38;
          v115.bundleIdentifier._countAndFlagsBits = v37;
          v42 = *(v37 + 16);
          v41 = *(v37 + 24);
          sub_1CA94C218();
          if (v42 >= v41 >> 1)
          {
            sub_1CA271524(v41 > 1, v42 + 1, 1, v43, v44, v45, v46);
            v37 = v115.bundleIdentifier._countAndFlagsBits;
          }

          *(v37 + 16) = v42 + 1;
          v47 = v37 + 16 * v42;
          *(v47 + 32) = v40;
          *(v47 + 40) = v39;
          v38 += 5;
          --v35;
        }

        while (v35);
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      v106 = *(v110 + OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_userShortcutDataSource);
      v52 = sub_1CA27BB44();
      v53 = *(v52 + 16);
      if (v53)
      {
        v115.bundleIdentifier._countAndFlagsBits = v36;
        sub_1CA271524(0, v53, 0, v48, v49, v50, v51);
        v54 = v115.bundleIdentifier._countAndFlagsBits;
        v55 = (v52 + 56);
        do
        {
          v56 = *(v55 - 1);
          v57 = *v55;
          v115.bundleIdentifier._countAndFlagsBits = v54;
          v59 = *(v54 + 16);
          v58 = *(v54 + 24);
          sub_1CA94C218();
          if (v59 >= v58 >> 1)
          {
            sub_1CA271524(v58 > 1, v59 + 1, 1, v60, v61, v62, v63);
            v54 = v115.bundleIdentifier._countAndFlagsBits;
          }

          *(v54 + 16) = v59 + 1;
          v64 = v54 + 16 * v59;
          *(v64 + 32) = v56;
          *(v64 + 40) = v57;
          v55 += 6;
          --v53;
        }

        while (v53);
      }

      else
      {

        v54 = MEMORY[0x1E69E7CC0];
      }

      v65 = 0;
      v8 = *(v54 + 16);
      v66 = v54 + 32;
      v67 = MEMORY[0x1E69E7CC0];
LABEL_30:
      while (v65 != v8)
      {
        if (v65 >= *(v54 + 16))
        {
          goto LABEL_56;
        }

        v68 = (v66 + 16 * v65);
        v69 = *v68;
        v70 = v68[1];
        ++v65;
        v71 = *(v37 + 16) + 1;
        v72 = (v37 + 40);
        while (--v71)
        {
          v73 = v72 + 2;
          if (*(v72 - 1) != v69 || *v72 != v70)
          {
            v75 = sub_1CA94D7F8();
            v72 = v73;
            if ((v75 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        sub_1CA94C218();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115.bundleIdentifier._countAndFlagsBits = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA271524(0, *(v67 + 16) + 1, 1, v77, v78, v79, v80);
          v67 = v115.bundleIdentifier._countAndFlagsBits;
        }

        v82 = *(v67 + 16);
        v81 = *(v67 + 24);
        if (v82 >= v81 >> 1)
        {
          v84 = OUTLINED_FUNCTION_64(v81);
          sub_1CA271524(v84, v82 + 1, 1, v85, v86, v87, v88);
          v67 = v115.bundleIdentifier._countAndFlagsBits;
        }

        *(v67 + 16) = v82 + 1;
        v83 = v67 + 16 * v82;
        *(v83 + 32) = v69;
        *(v83 + 40) = v70;
        v66 = v54 + 32;
      }

      v89 = *(v67 + 16);
      if (v89)
      {
        v114 = MEMORY[0x1E69E7CC0];
        sub_1CA2B9070();
        v90 = v114;
        v91 = (v67 + 40);
        do
        {
          v92 = *(v91 - 1);
          v93 = *v91;
          sub_1CA94C218();
          v94._countAndFlagsBits = v92;
          v94._object = v93;
          AutoShortcutApp.init(bundleIdentifier:autoShortcuts:)(&v115, v94, MEMORY[0x1E69E7CC0]);
          v95 = v115.bundleIdentifier._countAndFlagsBits;
          v96 = *&v115.bundleIdentifier._object;
          v97 = *&v115.sections._rawValue;
          v99 = *(v114 + 16);
          v98 = *(v114 + 24);
          if (v99 >= v98 >> 1)
          {
            OUTLINED_FUNCTION_64(v98);
            v111 = v102;
            v113 = v101;
            sub_1CA2B9070();
            v97 = v111;
            v96 = v113;
          }

          *(v114 + 16) = v99 + 1;
          v100 = v114 + 40 * v99;
          *(v100 + 32) = v95;
          *(v100 + 40) = v96;
          *(v100 + 56) = v97;
          v91 += 2;
          --v89;
        }

        while (v89);
      }

      else
      {

        v90 = MEMORY[0x1E69E7CC0];
      }

      v115.bundleIdentifier._countAndFlagsBits = v108;
      sub_1CA27BBE8(v90);
      sub_1CA94C218();
      sub_1CA27B70C(&v115.bundleIdentifier._countAndFlagsBits, sub_1CA530828, sub_1CA27BC94);

      sub_1CA27BB44();
      v103 = OUTLINED_FUNCTION_87();
      v104 = sub_1CA27BF28(v103, v106);

      return sub_1CA27C47C(v104);
    }

    v6 = v3[v9];
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);

  __break(1u);
  return result;
}