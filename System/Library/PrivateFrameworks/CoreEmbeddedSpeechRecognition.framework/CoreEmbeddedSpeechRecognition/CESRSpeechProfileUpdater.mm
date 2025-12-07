@interface CESRSpeechProfileUpdater
+ (id)updaterForInstance:(id)instance atSpeechProfileSite:(id)site;
+ (unint64_t)updateModeForSet:(id)set speechProfileInstance:(id)instance isSetNew:(BOOL *)new;
+ (unint64_t)updateModeForSets:(id)sets speechProfileInstance:(id)instance speechProfileSite:(id)site isAnySetNew:(BOOL *)new;
- (BOOL)_errorRequiresCleanRebuild:(id)rebuild;
- (BOOL)detectCategoriesToRebuild:(id *)rebuild error:(id *)error;
- (BOOL)rebuildCategoryGroup:(id)group withSets:(id)sets version:(id)version error:(id *)error;
- (BOOL)removeProfile:(id *)profile;
- (CESRSpeechProfileUpdater)initWithInstance:(id)instance speechProfileSite:(id)site builder:(id)builder;
- (id)_versionForCategory:(id)category error:(id *)error;
- (id)categoriesToRebuildForAllSets:(id)sets;
- (void)_endSpeechProfileUpdateSignpost:(unint64_t)signpost updateResult:(unsigned __int8)result updateType:(unsigned __int8)type categoryCount:(unint64_t)count itemCount:(unint64_t)itemCount;
@end

@implementation CESRSpeechProfileUpdater

- (BOOL)removeProfile:(id *)profile
{
  speechProfileSiteURL = [(CESRSpeechProfileSite *)self->_speechProfileSite speechProfileSiteURL];
  locale = [(CESRSpeechProfileInstance *)self->_instance locale];
  userId = [(CESRSpeechProfileSite *)self->_speechProfileSite userId];
  LOBYTE(profile) = [CESRSpeechProfileBuilder deleteProfileAtDirectory:speechProfileSiteURL locale:locale userId:userId error:profile];

  return profile;
}

- (BOOL)_errorRequiresCleanRebuild:(id)rebuild
{
  rebuildCopy = rebuild;
  code = [rebuildCopy code];
  domain = [rebuildCopy domain];

  v6 = [domain isEqual:@"CESRProfileErrorDomain"];
  v8 = code == 6 || (code - 1) < 2;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_versionForCategory:(id)category error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  builder = self->_builder;
  v14 = 0;
  v8 = [(CESRSpeechProfileBuilder *)builder getVersionForCategory:categoryCopy error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "[CESRSpeechProfileUpdater _versionForCategory:error:]";
      v17 = 2112;
      v18 = categoryCopy;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s Checking version for category (%@) produced error: %@", buf, 0x20u);
      if (error)
      {
        goto LABEL_4;
      }
    }

    else if (error)
    {
LABEL_4:
      v11 = v9;
      v12 = 0;
      *error = v9;
      goto LABEL_8;
    }

    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  }

LABEL_8:

  return v12;
}

- (id)categoriesToRebuildForAllSets:(id)sets
{
  v32 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  changeRegistry = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
  v24 = 0;
  v6 = [changeRegistry cleanupWithAllSets:setsCopy error:&v24];
  v7 = v24;

  if (v6)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(setsCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = setsCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          buf[0] = 0;
          v15 = [CESRSpeechProfileUpdater updateModeForSet:v14 speechProfileInstance:self->_instance isSetNew:buf, v20];
          if ((buf[0] & 1) != 0 || v15)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v16 = [CESRSpeechProfileCategoryGroup groupForSets:v8];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      instance = self->_instance;
      *buf = 136315650;
      v27 = "[CESRSpeechProfileUpdater categoriesToRebuildForAllSets:]";
      v28 = 2112;
      v29 = instance;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_225EEB000, v17, OS_LOG_TYPE_INFO, "%s (%@) Registry cleanup failed: %@", buf, 0x20u);
    }

    v16 = +[CESRSpeechProfileCategoryGroup all];
  }

  return v16;
}

- (BOOL)detectCategoriesToRebuild:(id *)rebuild error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    instance = self->_instance;
    *buf = 136315394;
    v49 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
    v50 = 2112;
    v51 = instance;
    _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s (%@) Verifying profile", buf, 0x16u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = +[CESRSpeechProfileCategoryGroup all];
  speechCategories = [v8 speechCategories];

  obj = speechCategories;
  v10 = [speechCategories countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v10)
  {
    v11 = v10;
    errorCopy = error;
    v12 = 0;
    v13 = 0;
    v41 = *v45;
LABEL_5:
    v14 = 0;
    v15 = v13;
    while (1)
    {
      if (*v45 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v44 + 1) + 8 * v14);
      v43 = v15;
      errorCopy = [(CESRSpeechProfileUpdater *)self _versionForCategory:v16 error:&v43, errorCopy];
      v13 = v43;

      if (!errorCopy)
      {
        if ([(CESRSpeechProfileUpdater *)self _errorRequiresCleanRebuild:v13])
        {
          v29 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
          {
            v30 = self->_instance;
            *buf = 136315650;
            v49 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
            v50 = 2112;
            v51 = v30;
            v52 = 2112;
            v53 = v13;
            _os_log_impl(&dword_225EEB000, v29, OS_LOG_TYPE_INFO, "%s (%@) Verification error requires profile rebuild: %@", buf, 0x20u);
          }

          v42 = 0;
          v31 = [(CESRSpeechProfileUpdater *)self removeProfile:&v42];
          v32 = v42;
          if (!v31)
          {
            v33 = *MEMORY[0x277CEF0E8];
            if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
            {
              v37 = self->_instance;
              *buf = 136315650;
              v49 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
              v50 = 2112;
              v51 = v37;
              v52 = 2112;
              v53 = v32;
              _os_log_error_impl(&dword_225EEB000, v33, OS_LOG_TYPE_ERROR, "%s (%@) Failed to remove profile: %@", buf, 0x20u);
            }
          }
        }

        if (errorCopy && v13)
        {
          v34 = v13;
          *errorCopy = v13;
        }

        v35 = 0;
        goto LABEL_40;
      }

      v18 = [(CESRSpeechProfileInstance *)self->_instance lastCompletedVersionForSpeechCategory:v16];
      v19 = [(CESRSpeechProfileInstance *)self->_instance lastRegisteredVersionForSpeechCategory:v16];
      v20 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v28 = self->_instance;
        *buf = 136316418;
        v49 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
        v50 = 2112;
        v51 = v28;
        v52 = 2112;
        v53 = v16;
        v54 = 2112;
        v55 = errorCopy;
        v56 = 2112;
        v57 = v18;
        v58 = 2112;
        v59 = v19;
        _os_log_debug_impl(&dword_225EEB000, v20, OS_LOG_TYPE_DEBUG, "%s (%@) Checking category (%@) built version (%@) last completed update (%@) last registered update (%@)", buf, 0x3Eu);
      }

      if (([errorCopy isEqual:v18] & 1) == 0)
      {
        break;
      }

      longLongValue = [v19 longLongValue];
      if (longLongValue > [v18 longLongValue])
      {
        v22 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          v23 = self->_instance;
          *buf = 136316162;
          v49 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
          v50 = 2112;
          v51 = v23;
          v52 = 2112;
          v53 = v19;
          v54 = 2112;
          v55 = v18;
          v56 = 2112;
          v57 = v16;
          v24 = v22;
          v25 = "%s (%@) Found deferred update registered (%@) more recently than last completed (%@) for category (%@)";
          goto LABEL_17;
        }

        goto LABEL_18;
      }

LABEL_21:

      ++v14;
      v15 = v13;
      if (v11 == v14)
      {
        v11 = [obj countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_36;
      }
    }

    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v27 = self->_instance;
      *buf = 136316162;
      v49 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
      v50 = 2112;
      v51 = v27;
      v52 = 2112;
      v53 = v16;
      v54 = 2112;
      v55 = errorCopy;
      v56 = 2112;
      v57 = v18;
      v24 = v26;
      v25 = "%s (%@) Built category (%@) has version (%@) inconsistent with instance info file (%@)";
LABEL_17:
      _os_log_impl(&dword_225EEB000, v24, OS_LOG_TYPE_INFO, v25, buf, 0x34u);
    }

LABEL_18:
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    [v12 addObject:v16];
    goto LABEL_21;
  }

  v12 = 0;
  v13 = 0;
LABEL_36:

  if (rebuild && [v12 count])
  {
    *rebuild = [CESRSpeechProfileCategoryGroup groupForSpeechCategories:v12];
  }

  v35 = 1;
LABEL_40:

  return v35;
}

- (void)_endSpeechProfileUpdateSignpost:(unint64_t)signpost updateResult:(unsigned __int8)result updateType:(unsigned __int8)type categoryCount:(unint64_t)count itemCount:(unint64_t)itemCount
{
  itemCountCopy = itemCount;
  countCopy = count;
  typeCopy = type;
  resultCopy = result;
  v26 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CEF0E8];
  v13 = v12;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    if ((typeCopy - 1) > 2)
    {
      v14 = @"Undefined";
    }

    else
    {
      v14 = off_27857F000[(typeCopy - 1)];
    }

    v15 = v14;
    if ((resultCopy - 1) > 5)
    {
      v16 = @"Undefined";
    }

    else
    {
      v16 = off_27857F040[(resultCopy - 1)];
    }

    v17 = v16;
    v18 = 138544130;
    v19 = v15;
    v20 = 2114;
    v21 = v17;
    v22 = 1026;
    v23 = itemCountCopy;
    v24 = 1026;
    v25 = countCopy;
    _os_signpost_emit_with_name_impl(&dword_225EEB000, v13, OS_SIGNPOST_INTERVAL_END, signpost, "speechProfileUpdate", " updateType=%{public,signpost.telemetry:string1}@  updateResult=%{public,signpost.telemetry:string2}@  itemCount=%{public,signpost.telemetry:number1}d  speechCategoriesCount=%{public,signpost.telemetry:number2}d ", &v18, 0x22u);
  }
}

- (BOOL)rebuildCategoryGroup:(id)group withSets:(id)sets version:(id)version error:(id *)error
{
  v143 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  setsCopy = sets;
  versionCopy = version;
  v9 = MEMORY[0x277CEF0E8];
  v10 = os_signpost_id_generate(*MEMORY[0x277CEF0E8]);
  v11 = *v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_225EEB000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "speechProfileUpdate", " enableTelemetry=YES ", buf, 2u);
  }

  v92 = v10;

  v13 = +[CESRSpeechProfileCategoryGroup all];
  if ([groupCopy isEqual:v13])
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v91 = v14;

  speechCategories = [groupCopy speechCategories];
  v94 = [speechCategories count];

  if (v94)
  {
    v89 = [CESRSpeechItemRanker rankersForInstance:self->_instance speechProfileSite:self->_speechProfileSite categoryGroup:groupCopy sets:setsCopy];
    v103 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v94];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    speechCategories2 = [groupCopy speechCategories];
    v17 = [speechCategories2 countByEnumeratingWithState:&v129 objects:v142 count:16];
    if (v17)
    {
      v18 = *v130;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v130 != v18)
          {
            objc_enumerationMutation(speechCategories2);
          }

          [v103 setObject:versionCopy forKey:*(*(&v129 + 1) + 8 * i)];
        }

        v17 = [speechCategories2 countByEnumeratingWithState:&v129 objects:v142 count:16];
      }

      while (v17);
    }

    v20 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      instance = self->_instance;
      v22 = v20;
      speechCategoriesDescription = [groupCopy speechCategoriesDescription];
      *buf = 136315906;
      v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
      v138 = 2112;
      *v139 = instance;
      *&v139[8] = 2112;
      *&v139[10] = versionCopy;
      v140 = 2112;
      v141 = speechCategoriesDescription;
      _os_log_impl(&dword_225EEB000, v22, OS_LOG_TYPE_INFO, "%s (%@) Updating version: %@ for categories: %@", buf, 0x2Au);
    }

    builder = self->_builder;
    v128 = 0;
    v25 = [(CESRSpeechProfileBuilder *)builder beginWithCategoriesAndVersions:v103 bundleId:0 error:&v128];
    v26 = v128;
    v27 = v26;
    if (v25)
    {
      v101 = v26;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      obj = v89;
      v98 = [obj countByEnumeratingWithState:&v124 objects:v135 count:16];
      if (v98)
      {
        LODWORD(v100) = 0;
        v96 = *v125;
        while (2)
        {
          v28 = 0;
          v29 = v101;
          do
          {
            if (*v125 != v96)
            {
              v30 = v28;
              objc_enumerationMutation(obj);
              v28 = v30;
            }

            v99 = v28;
            v31 = *(*(&v124 + 1) + 8 * v28);
            v120 = 0;
            v121 = &v120;
            v122 = 0x2020000000;
            v123 = 0;
            v118[5] = &v120;
            v119 = v29;
            v118[0] = MEMORY[0x277D85DD0];
            v118[1] = 3221225472;
            v118[2] = __72__CESRSpeechProfileUpdater_rebuildCategoryGroup_withSets_version_error___block_invoke;
            v118[3] = &unk_27857F4D8;
            v118[4] = self;
            v102 = v31;
            v32 = [v31 enumerateRankedItemsWithError:&v119 usingBlock:v118];
            v101 = v119;

            if ((v32 & 1) == 0)
            {
              v63 = *v9;
              v64 = v101;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
              {
                v85 = self->_instance;
                *buf = 136315906;
                v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                v138 = 2112;
                *v139 = v85;
                *&v139[8] = 2112;
                *&v139[10] = v102;
                v140 = 2112;
                v141 = v101;
                _os_log_error_impl(&dword_225EEB000, v63, OS_LOG_TYPE_ERROR, "%s (%@) Failed to enumerate and add items from ranker: %@ error: %@", buf, 0x2Au);
              }

              if (error && v101)
              {
                v65 = v101;
                v64 = v101;
                *error = v101;
              }

              v66 = self->_builder;
              v117 = 0;
              v67 = [(CESRSpeechProfileBuilder *)v66 cancelCategoriesWithError:&v117];
              v27 = v117;
              if (!v67)
              {
                v68 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                {
                  v86 = self->_instance;
                  *buf = 136315906;
                  v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                  v138 = 2112;
                  *v139 = v86;
                  *&v139[8] = 2112;
                  *&v139[10] = v103;
                  v140 = 2112;
                  v141 = v27;
                  _os_log_error_impl(&dword_225EEB000, v68, OS_LOG_TYPE_ERROR, "%s (%@) Failed to cancel categories: %@ error: %@", buf, 0x2Au);
                }
              }

              changeRegistry = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
              [changeRegistry rollbackAllBookmarkUpdates];

              [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v92 updateResult:4 updateType:v91 categoryCount:v94 itemCount:0];
              _Block_object_dispose(&v120, 8);

              goto LABEL_69;
            }

            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            getAllCodepathIds = [v102 getAllCodepathIds];
            v34 = 0;
            v35 = [getAllCodepathIds countByEnumeratingWithState:&v113 objects:v134 count:16];
            if (v35)
            {
              v36 = *v114;
              do
              {
                for (j = 0; j != v35; ++j)
                {
                  if (*v114 != v36)
                  {
                    objc_enumerationMutation(getAllCodepathIds);
                  }

                  v38 = *(*(&v113 + 1) + 8 * j);
                  v39 = self->_builder;
                  v112 = v34;
                  v40 = [(CESRSpeechProfileBuilder *)v39 removeCodepathId:v38 error:&v112];
                  v41 = v112;

                  v34 = v41;
                  if (!v40)
                  {
                    v42 = *v9;
                    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                    {
                      v43 = self->_instance;
                      *buf = 136315906;
                      v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                      v138 = 2112;
                      *v139 = v43;
                      *&v139[8] = 2112;
                      *&v139[10] = v38;
                      v140 = 2112;
                      v141 = v41;
                      _os_log_error_impl(&dword_225EEB000, v42, OS_LOG_TYPE_ERROR, "%s (%@) Failed to remove codepathId=%@ from the profile: %@", buf, 0x2Au);
                    }
                  }
                }

                v35 = [getAllCodepathIds countByEnumeratingWithState:&v113 objects:v134 count:16];
              }

              while (v35);
            }

            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            getActivatedCodepathIds = [v102 getActivatedCodepathIds];
            v45 = [getActivatedCodepathIds countByEnumeratingWithState:&v108 objects:v133 count:16];
            if (v45)
            {
              v46 = *v109;
              do
              {
                for (k = 0; k != v45; ++k)
                {
                  if (*v109 != v46)
                  {
                    objc_enumerationMutation(getActivatedCodepathIds);
                  }

                  v48 = *(*(&v108 + 1) + 8 * k);
                  v49 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
                  {
                    v54 = self->_instance;
                    *buf = 136315650;
                    v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                    v138 = 2112;
                    *v139 = v54;
                    *&v139[8] = 2112;
                    *&v139[10] = v48;
                    _os_log_debug_impl(&dword_225EEB000, v49, OS_LOG_TYPE_DEBUG, "%s (%@) Adding codepathId=%@ to the profile for trigger logging", buf, 0x20u);
                  }

                  v50 = self->_builder;
                  v107 = v34;
                  v51 = [(CESRSpeechProfileBuilder *)v50 addCodepathId:v48 error:&v107];
                  v52 = v107;

                  v34 = v52;
                  if (!v51)
                  {
                    v53 = *v9;
                    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                    {
                      v55 = self->_instance;
                      *buf = 136315906;
                      v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                      v138 = 2112;
                      *v139 = v55;
                      *&v139[8] = 2112;
                      *&v139[10] = v48;
                      v140 = 2112;
                      v141 = v52;
                      _os_log_error_impl(&dword_225EEB000, v53, OS_LOG_TYPE_ERROR, "%s (%@) Failed to add codepathId=%@ to the profile: %@", buf, 0x2Au);
                    }
                  }
                }

                v45 = [getActivatedCodepathIds countByEnumeratingWithState:&v108 objects:v133 count:16];
              }

              while (v45);
            }

            v56 = *(v121 + 6);
            v57 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
              v138 = 1024;
              *v139 = v56;
              *&v139[4] = 2112;
              *&v139[6] = v102;
              _os_log_impl(&dword_225EEB000, v57, OS_LOG_TYPE_INFO, "%s Enumerated %u total items from ranker: %@", buf, 0x1Cu);
            }

            v100 = (v56 + v100);
            _Block_object_dispose(&v120, 8);
            v28 = v99 + 1;
            v29 = v101;
          }

          while (v99 + 1 != v98);
          v98 = [obj countByEnumeratingWithState:&v124 objects:v135 count:16];
          if (v98)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v100 = 0;
      }

      v71 = self->_builder;
      v106 = v101;
      v72 = [(CESRSpeechProfileBuilder *)v71 finishAndSaveProfile:1 error:&v106];
      v73 = v106;

      v74 = *v9;
      v75 = *v9;
      if (v72)
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v76 = self->_instance;
          v77 = v74;
          speechCategoriesDescription2 = [groupCopy speechCategoriesDescription];
          *buf = 136315906;
          v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
          v138 = 2112;
          *v139 = v76;
          *&v139[8] = 2112;
          *&v139[10] = versionCopy;
          v140 = 2112;
          v141 = speechCategoriesDescription2;
          _os_log_impl(&dword_225EEB000, v77, OS_LOG_TYPE_INFO, "%s (%@) Completed profile update version: %@ for categories: %@", buf, 0x2Au);
        }

        changeRegistry2 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
        v105 = v73;
        v80 = [changeRegistry2 commitAllBookmarkUpdates:&v105];
        v27 = v105;

        if ((v80 & 1) == 0)
        {
          v81 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            v88 = self->_instance;
            *buf = 136315650;
            v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
            v138 = 2112;
            *v139 = v88;
            *&v139[8] = 2112;
            *&v139[10] = v27;
            _os_log_error_impl(&dword_225EEB000, v81, OS_LOG_TYPE_ERROR, "%s (%@) Failed to commit bookmark updates: %@", buf, 0x20u);
          }
        }

        [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v92 updateResult:6 updateType:v91 categoryCount:v94 itemCount:v100];
        v60 = 1;
      }

      else
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v87 = self->_instance;
          *buf = 136315650;
          v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
          v138 = 2112;
          *v139 = v87;
          *&v139[8] = 2112;
          *&v139[10] = v73;
          _os_log_error_impl(&dword_225EEB000, v74, OS_LOG_TYPE_ERROR, "%s (%@) Failed to finish profile due to error: %@", buf, 0x20u);
        }

        if (error && v73)
        {
          v82 = v73;
          *error = v73;
        }

        changeRegistry3 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
        [changeRegistry3 rollbackAllBookmarkUpdates];

        [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v92 updateResult:1 updateType:v91 categoryCount:v94 itemCount:v100];
        v60 = 0;
        v27 = v73;
      }
    }

    else
    {
      v61 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v84 = self->_instance;
        *buf = 136315906;
        v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
        v138 = 2112;
        *v139 = v84;
        *&v139[8] = 2112;
        *&v139[10] = v103;
        v140 = 2112;
        v141 = v27;
        _os_log_error_impl(&dword_225EEB000, v61, OS_LOG_TYPE_ERROR, "%s (%@) Failed to begin building categories: %@ error: %@", buf, 0x2Au);
      }

      if (error && v27)
      {
        v62 = v27;
        *error = v27;
      }

      [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v92 updateResult:3 updateType:v91 categoryCount:v94 itemCount:0];
LABEL_69:
      v60 = 0;
    }
  }

  else
  {
    v58 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v59 = self->_instance;
      *buf = 136315650;
      v137 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
      v138 = 2112;
      *v139 = v59;
      *&v139[8] = 2112;
      *&v139[10] = groupCopy;
      _os_log_impl(&dword_225EEB000, v58, OS_LOG_TYPE_INFO, "%s (%@) Skipping update for group: %@", buf, 0x20u);
    }

    [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v10 updateResult:5 updateType:v91 categoryCount:0 itemCount:0];
    v60 = 1;
  }

  return v60;
}

- (CESRSpeechProfileUpdater)initWithInstance:(id)instance speechProfileSite:(id)site builder:(id)builder
{
  instanceCopy = instance;
  siteCopy = site;
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = CESRSpeechProfileUpdater;
  v12 = [(CESRSpeechProfileUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instance, instance);
    objc_storeStrong(&v13->_speechProfileSite, site);
    objc_storeStrong(&v13->_builder, builder);
  }

  return v13;
}

+ (unint64_t)updateModeForSet:(id)set speechProfileInstance:(id)instance isSetNew:(BOOL *)new
{
  v46 = *MEMORY[0x277D85DE8];
  setCopy = set;
  instanceCopy = instance;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__941;
  v36 = __Block_byref_object_dispose__942;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  changeRegistry = [instanceCopy changeRegistry];
  v10 = [changeRegistry bookmarkForSet:setCopy];

  if (!v10)
  {
    v18 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    *buf = 136315650;
    v39 = "+[CESRSpeechProfileUpdater updateModeForSet:speechProfileInstance:isSetNew:]";
    v40 = 2112;
    v41 = instanceCopy;
    v42 = 2112;
    v43 = setCopy;
    v15 = "%s (%@) No bookmark found for set: %@";
    v16 = v18;
    v17 = 32;
LABEL_7:
    _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
LABEL_8:
    if (new)
    {
      *new = 1;
    }

    goto LABEL_21;
  }

  v11 = [setCopy changePublisherWithUseCase:@"SpeechProfile"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke;
  v27[3] = &unk_27857F500;
  v27[4] = &v32;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke_2;
  v26[3] = &unk_27857F528;
  v26[4] = &v28;
  v12 = [v11 drivableSinkWithBookmark:v10 completion:v27 shouldContinue:v26];

  v13 = v33[5];
  v14 = *MEMORY[0x277CEF0E8];
  if (v13)
  {
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    *buf = 136315906;
    v39 = "+[CESRSpeechProfileUpdater updateModeForSet:speechProfileInstance:isSetNew:]";
    v40 = 2112;
    v41 = instanceCopy;
    v42 = 2112;
    v43 = setCopy;
    v44 = 2112;
    v45 = v13;
    v15 = "%s (%@) Failed to enumerate set: %@ error: %@";
    v16 = v14;
    v17 = 42;
    goto LABEL_7;
  }

  v19 = v14;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v29[3];
    if (v20)
    {
      v21 = @"Add";
      v22 = &stru_283946208;
      if ((v20 & 1) == 0)
      {
        v21 = &stru_283946208;
      }

      if ((v20 & 2) != 0)
      {
        v22 = @"Remove";
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@|%@]", v21, v22];
    }

    else
    {
      v23 = @"NO";
    }

    *buf = 136315906;
    v39 = "+[CESRSpeechProfileUpdater updateModeForSet:speechProfileInstance:isSetNew:]";
    v40 = 2112;
    v41 = instanceCopy;
    v42 = 2112;
    v43 = setCopy;
    v44 = 2112;
    v45 = v23;
    _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_INFO, "%s (%@) Set %@ has %@ updates since last enumeration", buf, 0x2Au);
    if (v20)
    {
    }
  }

LABEL_21:
  v24 = v29[3];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v24;
}

uint64_t __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

BOOL __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sharedItemChangeType];
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 2;
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) |= v4;
  }

  return (~*(*(*(a1 + 32) + 8) + 24) & 3) != 0;
}

+ (unint64_t)updateModeForSets:(id)sets speechProfileInstance:(id)instance speechProfileSite:(id)site isAnySetNew:(BOOL *)new
{
  v23 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  instanceCopy = instance;
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = setsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v18 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v13 |= [CESRSpeechProfileUpdater updateModeForSet:*(*(&v17 + 1) + 8 * v15) speechProfileInstance:instanceCopy isSetNew:&v21, v17];
      if (v21)
      {
        break;
      }

      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (new)
  {
    *new = v21;
  }

  return v13;
}

+ (id)updaterForInstance:(id)instance atSpeechProfileSite:(id)site
{
  siteCopy = site;
  instanceCopy = instance;
  v7 = [CESRSpeechProfileBuilder alloc];
  speechProfileSiteURL = [siteCopy speechProfileSiteURL];
  locale = [instanceCopy locale];
  userId = [siteCopy userId];
  personaId = [siteCopy personaId];
  v12 = -[CESRSpeechProfileBuilder initWithDirectory:locale:userId:personaId:dataProtectionClass:isInUserVault:](v7, "initWithDirectory:locale:userId:personaId:dataProtectionClass:isInUserVault:", speechProfileSiteURL, locale, userId, personaId, [siteCopy dataProtectionClass], objc_msgSend(siteCopy, "isInUserVault"));

  v13 = [objc_alloc(objc_opt_class()) initWithInstance:instanceCopy speechProfileSite:siteCopy builder:v12];

  return v13;
}

@end