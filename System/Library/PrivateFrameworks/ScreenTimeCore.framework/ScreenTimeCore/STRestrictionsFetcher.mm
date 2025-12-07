@interface STRestrictionsFetcher
+ (id)_fetchRestrictionsForUserDSID:(id)d inManagedObjectContext:(id)context allowImageCreation:(int64_t)creation withError:(id *)error;
+ (int64_t)_invertedRestrictionState:(int64_t)state;
+ (int64_t)_restrictionStateForPayloadNumber:(id)number;
+ (unint64_t)_webFilterStateForWebContentDeclaration:(id)declaration;
+ (void)_fetchImageCreationStateForUserDSID:(id)d organizationSettingsRestrictionUtility:(id)utility completionHandler:(id)handler;
+ (void)fetchRestrictionsForUserDSID:(id)d persistenceController:(id)controller completionHandler:(id)handler;
+ (void)fetchRestrictionsForUserDSID:(id)d persistenceController:(id)controller organizationSettingsRestrictionUtility:(id)utility completionHandler:(id)handler;
@end

@implementation STRestrictionsFetcher

+ (void)fetchRestrictionsForUserDSID:(id)d persistenceController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  dCopy = d;
  v11 = [STOrganizationSettingsRestrictionUtility alloc];
  v12 = objc_opt_new();
  v13 = [(STOrganizationSettingsRestrictionUtility *)v11 initWithPersistenceController:controllerCopy restrictionPayloadUtility:v12];

  [self fetchRestrictionsForUserDSID:dCopy persistenceController:controllerCopy organizationSettingsRestrictionUtility:v13 completionHandler:handlerCopy];
}

+ (void)fetchRestrictionsForUserDSID:(id)d persistenceController:(id)controller organizationSettingsRestrictionUtility:(id)utility completionHandler:(id)handler
{
  dCopy = d;
  controllerCopy = controller;
  handlerCopy = handler;
  utilityCopy = utility;
  v14 = +[STLog screenTimeOrganizationController];
  v15 = os_signpost_id_generate(v14);

  v16 = +[STLog screenTimeOrganizationController];
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B831F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Fetch Restrictions Image Creation", "", buf, 2u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke;
  v21[3] = &unk_1E7CE7EF8;
  v24 = handlerCopy;
  v25 = v15;
  selfCopy = self;
  v22 = controllerCopy;
  v23 = dCopy;
  v18 = dCopy;
  v19 = controllerCopy;
  v20 = handlerCopy;
  [self _fetchImageCreationStateForUserDSID:v18 organizationSettingsRestrictionUtility:utilityCopy completionHandler:v21];
}

void __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[STLog screenTimeOrganizationController];
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B831F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "Fetch Restrictions Image Creation", "", buf, 2u);
  }

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = +[STLog screenTimeOrganizationController];
    v10 = os_signpost_id_generate(v9);

    v11 = +[STLog screenTimeOrganizationController];
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B831F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Fetch Restrictions Other", "", buf, 2u);
    }

    *buf = 0;
    v29 = buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__17;
    v32 = __Block_byref_object_dispose__17;
    v33 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__17;
    v26[4] = __Block_byref_object_dispose__17;
    v27 = 0;
    v13 = [*(a1 + 32) newBackgroundContext];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke_3;
    v19[3] = &unk_1E7CE7ED0;
    v14 = *(a1 + 64);
    v22 = v26;
    v24 = v14;
    v20 = *(a1 + 40);
    v15 = v13;
    v25 = a2;
    v21 = v15;
    v23 = buf;
    [v15 performBlockAndWait:v19];
    v16 = +[STLog screenTimeOrganizationController];
    v17 = v16;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B831F000, v17, OS_SIGNPOST_INTERVAL_END, v10, "Fetch Restrictions Other", "", v18, 2u);
    }

    (*(*(a1 + 48) + 16))();
    _Block_object_dispose(v26, 8);

    _Block_object_dispose(buf, 8);
  }
}

void __133__STRestrictionsFetcher_fetchRestrictionsForUserDSID_persistenceController_organizationSettingsRestrictionUtility_completionHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = a1 + 8;
  v4 = a1[8];
  v5 = v6[1];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v4 _fetchRestrictionsForUserDSID:v2 inManagedObjectContext:v3 allowImageCreation:v5 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (void)_fetchImageCreationStateForUserDSID:(id)d organizationSettingsRestrictionUtility:(id)utility completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (d)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __118__STRestrictionsFetcher__fetchImageCreationStateForUserDSID_organizationSettingsRestrictionUtility_completionHandler___block_invoke;
    v10[3] = &unk_1E7CE7F20;
    v11 = handlerCopy;
    [utility isImageGenerationAllowedForUserDSID:d completionHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:512 userInfo:0];
    (v8)[2](v8, 0, v9);
  }
}

uint64_t __118__STRestrictionsFetcher__fetchImageCreationStateForUserDSID_organizationSettingsRestrictionUtility_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3 + 16))(v3, 0);
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return (*(v3 + 16))(v3, v5);
}

+ (id)_fetchRestrictionsForUserDSID:(id)d inManagedObjectContext:(id)context allowImageCreation:(int64_t)creation withError:(id *)error
{
  v147 = *MEMORY[0x1E69E9840];
  v140 = 0;
  v9 = [STCoreUser fetchUserWithDSID:d inContext:context error:&v140];
  v10 = v140;
  v11 = v10;
  if (v9)
  {
    selfCopy = self;
    v139 = v10;
    v12 = v9;
    v13 = +[STLog screenTimeOrganizationController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [STRestrictionsFetcher _fetchRestrictionsForUserDSID:v12 inManagedObjectContext:v13 allowImageCreation:? withError:?];
    }

    dsid = [v12 dsid];
    managingOrganization = [v12 managingOrganization];
    v16 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"restrictions" fromOrganization:managingOrganization];

    v17 = [v16 execute:&v139];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v24 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [STRestrictionsFetcher _fetchRestrictionsForUserDSID:v24 inManagedObjectContext:? allowImageCreation:? withError:?];
      }

      v139 = STSafeErrorFromCoreDataError(v139);
    }

    v20 = v139;
    if (!v18)
    {
      v39 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v146 = v20;
        _os_log_impl(&dword_1B831F000, v39, OS_LOG_TYPE_DEFAULT, "Failed to fetch restrictions blueprints with error: %{public}@", buf, 0xCu);
      }

      v22 = 0;
      if (error && v20)
      {
        v40 = v20;
        v22 = 0;
        *error = v20;
      }

      goto LABEL_40;
    }

    firstObject = [v18 firstObject];
    v26 = firstObject;
    if (firstObject)
    {
      if ([firstObject enabled])
      {
        v27 = [[STMutableRestrictions alloc] initWithIsEnabled:1];
        [(STMutableRestrictions *)v27 setAllowImageCreation:creation];
        configurations = [v26 configurations];
        v29 = [configurations count];

        if (v29)
        {
          v135 = v20;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          configurations2 = [v26 configurations];
          v31 = [configurations2 countByEnumeratingWithState:&v141 objects:buf count:16];
          v136 = v26;
          v137 = v27;
          if (v31)
          {
            v32 = v31;
            v33 = *v142;
            while (2)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v142 != v33)
                {
                  objc_enumerationMutation(configurations2);
                }

                v35 = *(*(&v141 + 1) + 8 * i);
                type = [v35 type];
                v37 = [type isEqualToString:@"application.store"];

                if (v37)
                {
                  v38 = v35;
                  goto LABEL_45;
                }
              }

              v32 = [configurations2 countByEnumeratingWithState:&v141 objects:buf count:16];
              if (v32)
              {
                continue;
              }

              break;
            }

            v38 = 0;
LABEL_45:
            v26 = v136;
            v27 = v137;
          }

          else
          {
            v38 = 0;
          }

          v134 = v38;
          cemConfiguration = [v38 cemConfiguration];
          payloadAllowAppInstallation = [cemConfiguration payloadAllowAppInstallation];
          v48 = selfCopy;
          -[STMutableRestrictions setAllowInstallingApps:](v27, "setAllowInstallingApps:", [selfCopy _restrictionStateForPayloadNumber:payloadAllowAppInstallation]);

          payloadAllowAppRemoval = [cemConfiguration payloadAllowAppRemoval];
          -[STMutableRestrictions setAllowDeletingApps:](v27, "setAllowDeletingApps:", [selfCopy _restrictionStateForPayloadNumber:payloadAllowAppRemoval]);

          v133 = cemConfiguration;
          payloadAllowInAppPurchases = [cemConfiguration payloadAllowInAppPurchases];
          -[STMutableRestrictions setAllowInAppPurchases:](v27, "setAllowInAppPurchases:", [selfCopy _restrictionStateForPayloadNumber:payloadAllowInAppPurchases]);

          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          configurations3 = [v26 configurations];
          v52 = [configurations3 countByEnumeratingWithState:&v141 objects:buf count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v142;
            while (2)
            {
              for (j = 0; j != v53; ++j)
              {
                if (*v142 != v54)
                {
                  objc_enumerationMutation(configurations3);
                }

                v56 = *(*(&v141 + 1) + 8 * j);
                type2 = [v56 type];
                v58 = [type2 isEqualToString:@"system.music"];

                if (v58)
                {
                  v59 = v56;
                  goto LABEL_60;
                }
              }

              v53 = [configurations3 countByEnumeratingWithState:&v141 objects:buf count:16];
              if (v53)
              {
                continue;
              }

              break;
            }

            v59 = 0;
LABEL_60:
            v26 = v136;
            v27 = v137;
            v48 = selfCopy;
          }

          else
          {
            v59 = 0;
          }

          v132 = v59;
          cemConfiguration2 = [v59 cemConfiguration];
          payloadAllowMusicVideos = [cemConfiguration2 payloadAllowMusicVideos];
          -[STMutableRestrictions setAllowMusicVideos:](v27, "setAllowMusicVideos:", [v48 _restrictionStateForPayloadNumber:payloadAllowMusicVideos]);

          v131 = cemConfiguration2;
          payloadAllowMusicArtistActivity = [cemConfiguration2 payloadAllowMusicArtistActivity];
          -[STMutableRestrictions setAllowMusicProfiles:](v27, "setAllowMusicProfiles:", [v48 _restrictionStateForPayloadNumber:payloadAllowMusicArtistActivity]);

          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          configurations4 = [v26 configurations];
          v64 = [configurations4 countByEnumeratingWithState:&v141 objects:buf count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v142;
            while (2)
            {
              for (k = 0; k != v65; ++k)
              {
                if (*v142 != v66)
                {
                  objc_enumerationMutation(configurations4);
                }

                v68 = *(*(&v141 + 1) + 8 * k);
                type3 = [v68 type];
                v70 = [type3 isEqualToString:@"system.ratings"];

                if (v70)
                {
                  v71 = v68;
                  goto LABEL_72;
                }
              }

              v65 = [configurations4 countByEnumeratingWithState:&v141 objects:buf count:16];
              if (v65)
              {
                continue;
              }

              break;
            }

            v71 = 0;
LABEL_72:
            v26 = v136;
            v27 = v137;
            v48 = selfCopy;
          }

          else
          {
            v71 = 0;
          }

          v130 = v71;
          cemConfiguration3 = [v71 cemConfiguration];
          payloadRatingTVShows = [cemConfiguration3 payloadRatingTVShows];
          [(STMutableRestrictions *)v27 setTvShowsRating:?];
          payloadRatingMovies = [cemConfiguration3 payloadRatingMovies];
          [(STMutableRestrictions *)v27 setMoviesRating:?];
          payloadRatingApps = [cemConfiguration3 payloadRatingApps];
          [(STMutableRestrictions *)v27 setAppsRating:?];
          v129 = cemConfiguration3;
          payloadAllowExplicitContent = [cemConfiguration3 payloadAllowExplicitContent];
          -[STMutableRestrictions setAllowExplicitMediaContent:](v27, "setAllowExplicitMediaContent:", [v48 _restrictionStateForPayloadNumber:payloadAllowExplicitContent]);

          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          configurations5 = [v26 configurations];
          v75 = [configurations5 countByEnumeratingWithState:&v141 objects:buf count:16];
          if (v75)
          {
            v76 = v75;
            v77 = *v142;
            while (2)
            {
              for (m = 0; m != v76; ++m)
              {
                if (*v142 != v77)
                {
                  objc_enumerationMutation(configurations5);
                }

                v79 = *(*(&v141 + 1) + 8 * m);
                type4 = [v79 type];
                v81 = [type4 isEqualToString:@"media.settings"];

                if (v81)
                {
                  v82 = v79;
                  goto LABEL_84;
                }
              }

              v76 = [configurations5 countByEnumeratingWithState:&v141 objects:buf count:16];
              if (v76)
              {
                continue;
              }

              break;
            }

            v82 = 0;
LABEL_84:
            v26 = v136;
            v27 = v137;
            v48 = selfCopy;
          }

          else
          {
            v82 = 0;
          }

          v125 = v82;
          cemConfiguration4 = [v82 cemConfiguration];
          payloadAllowBookstoreErotica = [cemConfiguration4 payloadAllowBookstoreErotica];
          -[STMutableRestrictions setAllowExplicitBooks:](v27, "setAllowExplicitBooks:", [v48 _restrictionStateForPayloadNumber:payloadAllowBookstoreErotica]);

          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          configurations6 = [v26 configurations];
          v85 = [configurations6 countByEnumeratingWithState:&v141 objects:buf count:16];
          if (v85)
          {
            v86 = v85;
            v87 = *v142;
            while (2)
            {
              for (n = 0; n != v86; ++n)
              {
                if (*v142 != v87)
                {
                  objc_enumerationMutation(configurations6);
                }

                v89 = *(*(&v141 + 1) + 8 * n);
                type5 = [v89 type];
                v91 = [type5 isEqualToString:@"system.webcontentfilter.basic"];

                if (v91)
                {
                  v92 = v89;
                  goto LABEL_96;
                }
              }

              v86 = [configurations6 countByEnumeratingWithState:&v141 objects:buf count:16];
              if (v86)
              {
                continue;
              }

              break;
            }

            v92 = 0;
LABEL_96:
            v26 = v136;
            v27 = v137;
            v48 = selfCopy;
          }

          else
          {
            v92 = 0;
          }

          v123 = v92;
          cemConfiguration5 = [v92 cemConfiguration];
          -[STMutableRestrictions setWebFilterState:](v27, "setWebFilterState:", [v48 _webFilterStateForWebContentDeclaration:?]);
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          configurations7 = [v26 configurations];
          v94 = [configurations7 countByEnumeratingWithState:&v141 objects:buf count:16];
          if (v94)
          {
            v95 = v94;
            v96 = *v142;
            while (2)
            {
              for (ii = 0; ii != v95; ++ii)
              {
                if (*v142 != v96)
                {
                  objc_enumerationMutation(configurations7);
                }

                v98 = *(*(&v141 + 1) + 8 * ii);
                type6 = [v98 type];
                v100 = [type6 isEqualToString:@"system.gamecenter"];

                if (v100)
                {
                  v101 = v98;
                  goto LABEL_108;
                }
              }

              v95 = [configurations7 countByEnumeratingWithState:&v141 objects:buf count:16];
              if (v95)
              {
                continue;
              }

              break;
            }

            v101 = 0;
LABEL_108:
            v26 = v136;
            v27 = v137;
            v48 = selfCopy;
          }

          else
          {
            v101 = 0;
          }

          v121 = v101;
          cemConfiguration6 = [v101 cemConfiguration];
          payloadAllowGameCenterProfileModification = [cemConfiguration6 payloadAllowGameCenterProfileModification];
          -[STMutableRestrictions setAllowAvatarAndNicknameChanges:](v27, "setAllowAvatarAndNicknameChanges:", [v48 _restrictionStateForPayloadNumber:payloadAllowGameCenterProfileModification]);

          payloadAllowGameCenterPrivateMessaging = [cemConfiguration6 payloadAllowGameCenterPrivateMessaging];
          -[STMutableRestrictions setAllowPrivateMessaging:](v27, "setAllowPrivateMessaging:", [v48 _restrictionStateForPayloadNumber:payloadAllowGameCenterPrivateMessaging]);

          payloadAllowGameCenterProfilePrivacyModification = [cemConfiguration6 payloadAllowGameCenterProfilePrivacyModification];
          -[STMutableRestrictions setAllowProfilePrivacyChanges:](v27, "setAllowProfilePrivacyChanges:", [v48 _restrictionStateForPayloadNumber:payloadAllowGameCenterProfilePrivacyModification]);

          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          configurations8 = [v26 configurations];
          v107 = [configurations8 countByEnumeratingWithState:&v141 objects:buf count:16];
          if (v107)
          {
            v108 = v107;
            v120 = cemConfiguration6;
            v109 = *v142;
            while (2)
            {
              for (jj = 0; jj != v108; ++jj)
              {
                if (*v142 != v109)
                {
                  objc_enumerationMutation(configurations8);
                }

                v111 = *(*(&v141 + 1) + 8 * jj);
                type7 = [v111 type];
                v113 = [type7 isEqualToString:@"system.siri"];

                if (v113)
                {
                  v114 = v111;
                  goto LABEL_120;
                }
              }

              v108 = [configurations8 countByEnumeratingWithState:&v141 objects:buf count:16];
              if (v108)
              {
                continue;
              }

              break;
            }

            v114 = 0;
LABEL_120:
            v26 = v136;
            v48 = selfCopy;
            cemConfiguration6 = v120;
          }

          else
          {
            v114 = 0;
          }

          cemConfiguration7 = [v114 cemConfiguration];
          payloadAllowAssistantUserGeneratedContent = [cemConfiguration7 payloadAllowAssistantUserGeneratedContent];
          v27 = v137;
          -[STMutableRestrictions setAllowWebContentSearchInSiri:](v137, "setAllowWebContentSearchInSiri:", [v48 _restrictionStateForPayloadNumber:payloadAllowAssistantUserGeneratedContent]);

          payloadForceAssistantProfanityFilter = [cemConfiguration7 payloadForceAssistantProfanityFilter];
          -[STMutableRestrictions setAllowExplicitLanguageInSiri:](v137, "setAllowExplicitLanguageInSiri:", [v48 _invertedRestrictionState:{objc_msgSend(v48, "_restrictionStateForPayloadNumber:", payloadForceAssistantProfanityFilter)}]);

          payloadAllowExternalIntelligenceIntegrations = [cemConfiguration7 payloadAllowExternalIntelligenceIntegrations];
          -[STMutableRestrictions setAllowExternalIntelligenceIntegrations:](v137, "setAllowExternalIntelligenceIntegrations:", [v48 _restrictionStateForPayloadNumber:payloadAllowExternalIntelligenceIntegrations]);

          payloadAllowWritingTools = [cemConfiguration7 payloadAllowWritingTools];
          -[STMutableRestrictions setAllowWritingTools:](v137, "setAllowWritingTools:", [v48 _restrictionStateForPayloadNumber:payloadAllowWritingTools]);

          v22 = [(STMutableRestrictions *)v137 copy];
          v20 = v135;
          goto LABEL_39;
        }

        v45 = +[STLog screenTimeOrganizationController];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v45, OS_LOG_TYPE_DEFAULT, "Restrictions blueprint has no configurations.", buf, 2u);
        }

        v43 = v27;
LABEL_38:
        v22 = [(STMutableRestrictions *)v43 copy];
LABEL_39:

LABEL_40:
        goto LABEL_41;
      }

      v41 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "Restrictions blueprint is disabled.";
        goto LABEL_36;
      }
    }

    else
    {
      v41 = +[STLog screenTimeOrganizationController];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "No blueprints found. Interpreting as restrictions disabled.";
LABEL_36:
        _os_log_impl(&dword_1B831F000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
      }
    }

    v43 = [[STMutableRestrictions alloc] initWithIsEnabled:0];
    v27 = v43;
    goto LABEL_38;
  }

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:11 userInfo:0];

  v21 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [STRestrictionsFetcher _fetchRestrictionsForUserDSID:v20 inManagedObjectContext:v21 allowImageCreation:? withError:?];
  }

  v22 = 0;
  if (error && v20)
  {
    v23 = v20;
    v22 = 0;
    *error = v20;
  }

LABEL_41:

  return v22;
}

+ (int64_t)_restrictionStateForPayloadNumber:(id)number
{
  if (!number)
  {
    return 0;
  }

  if ([number BOOLValue])
  {
    return 1;
  }

  return 2;
}

+ (unint64_t)_webFilterStateForWebContentDeclaration:(id)declaration
{
  declarationCopy = declaration;
  payloadRestrictWeb = [declarationCopy payloadRestrictWeb];
  bOOLValue = [payloadRestrictWeb BOOLValue];

  if (bOOLValue)
  {
    payloadWhiteListEnabled = [declarationCopy payloadWhiteListEnabled];
    bOOLValue2 = [payloadWhiteListEnabled BOOLValue];

    if (bOOLValue2)
    {
      v8 = 2;
    }

    else
    {
      payloadFilterBlackList = [declarationCopy payloadFilterBlackList];
      if ([payloadFilterBlackList count])
      {
        v8 = 3;
      }

      else
      {
        payloadFilterWhiteList = [declarationCopy payloadFilterWhiteList];
        if ([payloadFilterWhiteList count])
        {
          v8 = 3;
        }

        else
        {
          v8 = 1;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int64_t)_invertedRestrictionState:(int64_t)state
{
  v3 = 1;
  if (state != 2)
  {
    v3 = 2;
  }

  if (state)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (void)_fetchRestrictionsForUserDSID:(void *)a1 inManagedObjectContext:(NSObject *)a2 allowImageCreation:withError:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 managingOrganization];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_debug_impl(&dword_1B831F000, a2, OS_LOG_TYPE_DEBUG, "Fetching restrictions blueprint from organization: %@", &v4, 0xCu);
}

+ (void)_fetchRestrictionsForUserDSID:(uint64_t *)a1 inManagedObjectContext:(NSObject *)a2 allowImageCreation:withError:.cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch blueprints: %{public}@", &v3, 0xCu);
}

+ (void)_fetchRestrictionsForUserDSID:(uint64_t)a1 inManagedObjectContext:(NSObject *)a2 allowImageCreation:withError:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "failed to fetch user: %{public}@", &v2, 0xCu);
}

@end