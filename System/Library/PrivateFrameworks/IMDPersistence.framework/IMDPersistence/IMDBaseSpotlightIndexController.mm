@interface IMDBaseSpotlightIndexController
- (IMDBaseSpotlightIndexControllerDelegate)delegate;
- (id)_createErrorFromSyncError:(id)error;
- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error;
- (id)fileURLForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options error:(id *)error;
- (id)fileURLsForSearchableIndex:(id)index itemIdentifiers:(id)identifiers typeIdentifier:(id)identifier options:(int64_t)options error:(id *)error;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask;
@end

@implementation IMDBaseSpotlightIndexController

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v63 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  handlerCopy = handler;
  v10 = objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v7, v8, v9);
  v14 = sub_1B7BAB53C();
  if (v14)
  {
    v15 = objc_msgSend_date(MEMORY[0x1E695DF00], v11, v12, v13);
    objc_msgSend_timeIntervalSinceDate_(v15, v16, v14, v17);
    v19 = fabs(v18);

    if (v19 < 10800.0)
    {

      v20 = 1;
      goto LABEL_15;
    }
  }

  if (v10)
  {
    v20 = 0;
LABEL_15:
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = sub_1B7BAB53C();
        v49 = v48;
        v50 = @"NO";
        if (v20)
        {
          v51 = @"YES";
        }

        else
        {
          v51 = @"NO";
        }

        *v58 = 138412802;
        if (v10)
        {
          v50 = @"YES";
        }

        *&v58[4] = v50;
        v59 = 2112;
        v60 = v51;
        v61 = 2112;
        v62 = v48;
        _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Spotlight requesting full reindex, scheduling deferred indexing. Index in progress %@ rerequestWithinInterval %@ lastRequestDate %@", v58, 0x20u);
      }
    }

    v52 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v44, v45, v46, *v58);
    objc_msgSend_deferredReindexScheduled(v52, v53, v54, v55);

    sub_1B7BAB424(2);
    objc_msgSend_setNeedsDeferredIndexing_(MEMORY[0x1E69A7FF8], v56, 1, v57);
    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v58 = 0;
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Spotlight requesting full reindex, fullfilling request", v58, 2u);
    }
  }

  v25 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v21, v22, v23);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v25, v26, v27, v28);

  if ((isSpotlightReindexRefactorEnabled & 1) == 0)
  {
    sub_1B7BAB424(1);
  }

  v33 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v30, v31, v32);
  v36 = objc_msgSend_contextWithReason_(IMDIndexingContext, v34, 6, v35);
  objc_msgSend_setNeedsMessageReindexingWithContext_completion_(v33, v37, v36, &unk_1F2FA0470);

  v41 = objc_msgSend_date(MEMORY[0x1E695DF00], v38, v39, v40);
  v42 = CPCopySharedResourcesPreferencesDomainForDomain();
  v43 = v42;
  if (v42)
  {
    CFPreferencesAppSynchronize(v42);
    CFPreferencesSetAppValue(@"IMDCoreSpotlightLastFullReindexRequestTime", v41, v43);
    CFRelease(v43);
  }

LABEL_25:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v31 = 134217984;
      v32 = objc_msgSend_count(identifiersCopy, v14, v15, v16);
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Got the callback for reindexSearchableItemsWithIdentifiers with %lu identifiers", &v31, 0xCu);
    }
  }

  v17 = objc_msgSend_count(identifiersCopy, v10, v11, v12) == 0;
  v18 = IMOSLoggingEnabled();
  if (v17)
  {
    if (v18)
    {
      v30 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Not reindexing, we were asked to index 0 items", &v31, 2u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    if (v18)
    {
      v19 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v23 = objc_msgSend_count(identifiersCopy, v20, v21, v22);
        v31 = 134217984;
        v32 = v23;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Spotlight requesting reindexing of %lu identifiers, fullfilling request", &v31, 0xCu);
      }
    }

    v24 = [IMDCoreSpotlightSelectiveReindexingJob alloc];
    v27 = objc_msgSend_initWithItemIdentifiers_(v24, v25, identifiersCopy, v26);
    objc_msgSend_runWithAcknowledgementHandler_(v27, v28, handlerCopy, v29);
  }
}

- (id)_createErrorFromSyncError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v8 = objc_msgSend_errorAnalyzer(self, v4, v5, v6);
    v30 = &unk_1F2FCA308;
    v10 = objc_msgSend_responseForError_attempt_retryInterval_(v8, v9, errorCopy, 0, &v30);
    v11 = v30;

    v12 = *MEMORY[0x1E696AA08];
    v31[0] = *MEMORY[0x1E69A6A68];
    v31[1] = v12;
    v32[0] = v11;
    v13 = MEMORY[0x1E696ABC0];
    v17 = objc_msgSend_domain(errorCopy, v14, v15, v16);
    v21 = objc_msgSend_code(errorCopy, v18, v19, v20);
    v23 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v22, v17, v21, 0);
    v32[1] = v23;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v32, v31, 2);

    v27 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v26, @"com.apple.messages.IndexRequestHandler", v10, v25);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[IMDBaseSpotlightIndexController _createErrorFromSyncError:]";
        _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "%s originalError was nil, returning nil", buf, 0xCu);
      }
    }

    v27 = 0;
  }

  return v27;
}

- (id)fileURLForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options error:(id *)error
{
  v142 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Spotlight requesting fileURL for item identifier %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v138 = 0x3032000000;
  v139 = sub_1B7AE1AD0;
  v140 = sub_1B7AE2570;
  v15 = identifierCopy;
  v141 = v15;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = sub_1B7AE1AD0;
  v125 = sub_1B7AE2570;
  v126 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = sub_1B7AE1AD0;
  v119 = sub_1B7AE2570;
  v120 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = sub_1B7AE1AD0;
  v113 = sub_1B7AE2570;
  v114 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_1B7AE1AD0;
  v107 = sub_1B7AE2570;
  v108 = 0;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(*(&buf + 1) + 40);
      *v130 = 138412290;
      v131 = v17;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Starting download of file transfer with GUID %@", v130, 0xCu);
    }
  }

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v22 = objc_msgSend_delegate(self, v19, v20, v21);
  v136 = *(*(&buf + 1) + 40);
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v23, &v136, 1);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = sub_1B7BAC5C8;
  v96[3] = &unk_1E7CBBF98;
  v99 = &v103;
  v100 = &v115;
  v101 = &v121;
  v102 = &v109;
  p_buf = &buf;
  v96[4] = self;
  v25 = v18;
  v97 = v25;
  objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v22, v26, v24, options, v96);

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *v130 = 0;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Beginning blocking index extension on file transfer download.", v130, 2u);
    }
  }

  v28 = dispatch_time(0, 180000000000);
  v29 = dispatch_group_wait(v25, v28);
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *v130 = 0;
      _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Finished blocking index extension on file transfer download.", v130, 2u);
    }
  }

  v34 = v116[5];
  if (v34 || !v29)
  {
    if (!v34)
    {
      v56 = v122[5];
      if (v56)
      {
        if ((objc_msgSend_isEqualToString_(*(*(&buf + 1) + 40), v30, v56, v32) & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v57 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v58 = *(*(&buf + 1) + 40);
              v59 = v122[5];
              *v130 = 138412546;
              v131 = v58;
              v132 = 2112;
              v133 = v59;
              _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_INFO, "Requested download of file transfer with GUID %@ failed, but was able to derive a suggested retry GUID %@", v130, 0x16u);
            }
          }

          v60 = dispatch_group_create();
          dispatch_group_enter(v60);
          v64 = objc_msgSend_delegate(self, v61, v62, v63);
          v129 = v122[5];
          v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v65, &v129, 1);
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = sub_1B7BAC8F0;
          v91[3] = &unk_1E7CBBFC0;
          v93 = &v121;
          v94 = &v103;
          v95 = &v115;
          v67 = v60;
          v92 = v67;
          objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v64, v68, v66, options, v91);

          if (IMOSLoggingEnabled())
          {
            v69 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              *v130 = 0;
              _os_log_impl(&dword_1B7AD5000, v69, OS_LOG_TYPE_INFO, "Beginning blocking index extension on secondary file transfer download.", v130, 2u);
            }
          }

          v70 = dispatch_time(0, 180000000000);
          dispatch_group_wait(v67, v70);
          if (IMOSLoggingEnabled())
          {
            v71 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *v130 = 0;
              _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_INFO, "Finished blocking index extension on secondary file transfer download.", v130, 2u);
            }
          }
        }
      }
    }

    v52 = v116[5];
    if (v52 || error && (v72 = v110[5]) != 0 && (*error = v72, (v52 = v116[5]) != 0))
    {
      if (!IMUTITypeIsSupportedByPhotos())
      {
        v74 = MEMORY[0x1E696ABC0];
        v127[0] = *MEMORY[0x1E696A578];
        v75 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v53, v54, v55);
        v77 = objc_msgSend_localizedStringForKey_value_table_(v75, v76, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
        v128[0] = v77;
        v127[1] = *MEMORY[0x1E696A588];
        v80 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v78, @"File transfer had an unsupported UTI %@", v79, v104[5], indexCopy);
        v128[1] = v80;
        v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v81, v128, v127, 2);
        v84 = objc_msgSend_errorWithDomain_code_userInfo_(v74, v83, *MEMORY[0x1E69A83D0], 256, v82);

        if (error)
        {
          v85 = v84;
          *error = v84;
        }

        if (IMOSLoggingEnabled())
        {
          v86 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v87 = *(*(&buf + 1) + 40);
            v88 = v104[5];
            *v130 = 138412546;
            v131 = v87;
            v132 = 2112;
            v133 = v88;
            _os_log_impl(&dword_1B7AD5000, v86, OS_LOG_TYPE_INFO, "File transfer with GUID %@ had unsupported UTI type %@", v130, 0x16u);
          }
        }

        goto LABEL_56;
      }

      v52 = v116[5];
    }

    v73 = v52;
    goto LABEL_57;
  }

  v35 = MEMORY[0x1E696ABC0];
  v134[0] = *MEMORY[0x1E696A578];
  v36 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v30, v31, v32);
  v38 = objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
  v135[0] = v38;
  v134[1] = *MEMORY[0x1E696A588];
  v42 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v39, v40, v41);
  v44 = objc_msgSend_localizedStringForKey_value_table_(v42, v43, @"Timed out while downloading file transfer.", &stru_1F2FA9728, 0);
  v135[1] = v44;
  v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v45, v135, v134, 2);
  v48 = objc_msgSend_errorWithDomain_code_userInfo_(v35, v47, *MEMORY[0x1E69A83D0], 257, v46);

  if (error)
  {
    v49 = v48;
    *error = v48;
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = *(*(&buf + 1) + 40);
      *v130 = 138412290;
      v131 = v51;
      _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_INFO, "Timed out while downloading file transfer with GUID %@", v130, 0xCu);
    }
  }

LABEL_56:
  v73 = 0;
LABEL_57:

  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v109, 8);

  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v121, 8);

  _Block_object_dispose(&buf, 8);

  return v73;
}

- (id)fileURLsForSearchableIndex:(id)index itemIdentifiers:(id)identifiers typeIdentifier:(id)identifier options:(int64_t)options error:(id *)error
{
  v222 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifiersCopy;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Spotlight requesting fileURL for item identifiers %@", &buf, 0xCu);
    }
  }

  if (objc_msgSend_count(identifiersCopy, v9, v10, v11))
  {
    v149 = identifiersCopy;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v218 = 0x3032000000;
    v219 = sub_1B7AE1AD0;
    v220 = sub_1B7AE2570;
    v221 = objc_opt_new();
    v200 = 0;
    v201 = &v200;
    v202 = 0x3032000000;
    v203 = sub_1B7AE1AD0;
    v204 = sub_1B7AE2570;
    v205 = objc_opt_new();
    v194 = 0;
    v195 = &v194;
    v196 = 0x3032000000;
    v197 = sub_1B7AE1AD0;
    v198 = sub_1B7AE2570;
    v199 = objc_opt_new();
    v188 = 0;
    v189 = &v188;
    v190 = 0x3032000000;
    v191 = sub_1B7AE1AD0;
    v192 = sub_1B7AE2570;
    v193 = objc_opt_new();
    v182 = 0;
    v183 = &v182;
    v184 = 0x3032000000;
    v185 = sub_1B7AE1AD0;
    v186 = sub_1B7AE2570;
    v187 = objc_opt_new();
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v213 = 138412290;
        v214 = v149;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Starting download of file transfer with GUIDs %@", v213, 0xCu);
      }
    }

    v17 = dispatch_group_create();
    for (i = 0; i < objc_msgSend_count(v149, v14, v15, v16); ++i)
    {
      dispatch_group_enter(v17);
    }

    v22 = objc_msgSend_delegate(self, v19, v20, v21);
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = sub_1B7BADCA8;
    v175[3] = &unk_1E7CBBFE8;
    v178 = &v200;
    p_buf = &buf;
    v177 = &v188;
    v175[4] = self;
    v180 = &v194;
    v181 = &v182;
    group = v17;
    v176 = group;
    objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v22, v23, v149, options, v175);

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v213 = 0;
        _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Beginning blocking index extension on file transfer download.", v213, 2u);
      }
    }

    v25 = dispatch_time(0, 180000000000);
    v26 = dispatch_group_wait(group, v25);
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *v213 = 0;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Finished blocking index extension on file transfer download.", v213, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = @"YES";
        if (!v26)
        {
          v32 = @"NO";
        }

        *v213 = 138412546;
        v214 = v32;
        v215 = 2112;
        v216 = v149;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Timed out: [%@] while downloading file transfer with GUIDs %@", v213, 0x16u);
      }
    }

    if (v26)
    {
      v33 = MEMORY[0x1E696ABC0];
      v211[0] = *MEMORY[0x1E696A578];
      v34 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v28, v29, v30);
      v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
      v212[0] = v36;
      v211[1] = *MEMORY[0x1E696A588];
      v40 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v37, v38, v39);
      v42 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, @"Timed out while downloading file transfer.", &stru_1F2FA9728, 0);
      v212[1] = v42;
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, v212, v211, 2);
      v46 = objc_msgSend_errorWithDomain_code_userInfo_(v33, v45, *MEMORY[0x1E69A83D0], 257, v44);

      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v47 = v149;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v171, v210, 16);
      if (v51)
      {
        v52 = *v172;
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (*v172 != v52)
            {
              objc_enumerationMutation(v47);
            }

            v54 = *(*(&v171 + 1) + 8 * j);
            if ((objc_msgSend_containsObject_(v183[5], v49, v54, v50) & 1) == 0)
            {
              v55 = objc_msgSend_objectForKeyedSubscript_(v201[5], v49, v54, v50);
              v56 = v55 == 0;

              if (v56)
              {
                if (IMOSLoggingEnabled())
                {
                  v58 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                  {
                    *v213 = 138412290;
                    v214 = v54;
                    _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, "Timed out while downloading file transfer with GUID %@", v213, 0xCu);
                  }
                }

                objc_msgSend_setObject_forKeyedSubscript_(v195[5], v57, v46, v54);
              }
            }
          }

          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v171, v210, 16);
        }

        while (v51);
      }

      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *v213 = 138412290;
          v214 = v46;
          _os_log_impl(&dword_1B7AD5000, v59, OS_LOG_TYPE_INFO, "Timed out while downloading file transfers, error %@", v213, 0xCu);
        }
      }

      if (error)
      {
        v60 = v46;
        *error = v46;
      }
    }

    v155 = objc_opt_new();
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v61 = v201[5];
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v167, v209, 16);
    if (v65)
    {
      v66 = *v168;
      do
      {
        for (k = 0; k != v65; ++k)
        {
          if (*v168 != v66)
          {
            objc_enumerationMutation(v61);
          }

          v68 = *(*(&v167 + 1) + 8 * k);
          v69 = objc_msgSend_objectForKeyedSubscript_(*(*(&buf + 1) + 40), v63, v68, v64);
          v72 = objc_msgSend_objectForKeyedSubscript_(v201[5], v70, v68, v71);
          if (v72)
          {
            v75 = 1;
          }

          else
          {
            v75 = v69 == 0;
          }

          if (v75)
          {
          }

          else
          {
            isEqualToString = objc_msgSend_isEqualToString_(v68, v73, v69, v74);
            if ((isEqualToString & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v79 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                {
                  *v213 = 138412546;
                  v214 = v68;
                  v215 = 2112;
                  v216 = v69;
                  _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_INFO, "Requested download of file transfer with GUID %@ failed, but was able to derive a suggested retry GUID %@", v213, 0x16u);
                }
              }

              objc_msgSend_addObject_(v155, v77, v69, v78);
            }
          }
        }

        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v63, &v167, v209, 16);
      }

      while (v65);
    }

    if (objc_msgSend_count(v155, v80, v81, v82))
    {
      v86 = dispatch_group_create();
      for (m = 0; m < objc_msgSend_count(v155, v83, v84, v85); ++m)
      {
        dispatch_group_enter(v86);
      }

      v91 = objc_msgSend_delegate(self, v88, v89, v90);
      v163[0] = MEMORY[0x1E69E9820];
      v163[1] = 3221225472;
      v163[2] = sub_1B7BAE018;
      v163[3] = &unk_1E7CBC010;
      v165 = &v188;
      v166 = &v200;
      v92 = v86;
      v164 = v92;
      objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v91, v93, v155, options, v163);

      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          *v213 = 0;
          _os_log_impl(&dword_1B7AD5000, v94, OS_LOG_TYPE_INFO, "Beginning blocking index extension on secondary file transfer download.", v213, 2u);
        }
      }

      v95 = dispatch_time(0, 180000000000);
      dispatch_group_wait(v92, v95);
      if (IMOSLoggingEnabled())
      {
        v96 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *v213 = 0;
          _os_log_impl(&dword_1B7AD5000, v96, OS_LOG_TYPE_INFO, "Finished blocking index extension on secondary file transfer download.", v213, 2u);
        }
      }
    }

    if (NSClassFromString(&cfstr_Csfileurlbatch.isa))
    {
      v158 = objc_opt_new();
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      obja = v149;
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v97, &v159, v208, 16);
      if (v100)
      {
        v101 = *v160;
        v150 = *MEMORY[0x1E69A83D0];
        v153 = *MEMORY[0x1E696A578];
        v151 = *MEMORY[0x1E696A588];
        do
        {
          for (n = 0; n != v100; ++n)
          {
            if (*v160 != v101)
            {
              objc_enumerationMutation(obja);
            }

            v103 = *(*(&v159 + 1) + 8 * n);
            v104 = objc_msgSend_objectForKeyedSubscript_(v201[5], v98, v103, v99);

            if (v104)
            {
              v107 = objc_msgSend_objectForKeyedSubscript_(v189[5], v105, v103, v106);
              IsSupportedByPhotos = IMUTITypeIsSupportedByPhotos();

              if ((IsSupportedByPhotos & 1) == 0)
              {
                v112 = MEMORY[0x1E696ABC0];
                v206[0] = v153;
                v113 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v109, v110, v111);
                v115 = objc_msgSend_localizedStringForKey_value_table_(v113, v114, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
                v207[0] = v115;
                v206[1] = v151;
                v116 = MEMORY[0x1E696AEC0];
                v119 = objc_msgSend_objectForKeyedSubscript_(v189[5], v117, v103, v118);
                v122 = objc_msgSend_stringWithFormat_(v116, v120, @"File transfer had an unsupported UTI %@", v121, v119);
                v207[1] = v122;
                v124 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v123, v207, v206, 2);
                v126 = objc_msgSend_errorWithDomain_code_userInfo_(v112, v125, v150, 256, v124);

                objc_msgSend_setObject_forKeyedSubscript_(v195[5], v127, v126, v103);
                if (IMOSLoggingEnabled())
                {
                  v128 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                  {
                    v131 = objc_msgSend_objectForKeyedSubscript_(v189[5], v129, v103, v130);
                    *v213 = 138412546;
                    v214 = v103;
                    v215 = 2112;
                    v216 = v131;
                    _os_log_impl(&dword_1B7AD5000, v128, OS_LOG_TYPE_INFO, "File transfer with GUID %@ had unsupported UTI type %@", v213, 0x16u);
                  }
                }
              }
            }

            v132 = objc_alloc(MEMORY[0x1E6964E18]);
            v135 = objc_msgSend_objectForKeyedSubscript_(v201[5], v133, v103, v134);
            v138 = objc_msgSend_objectForKeyedSubscript_(v195[5], v136, v103, v137);
            v140 = objc_msgSend_initWithFileURL_andError_(v132, v139, v135, v138);

            if (v140)
            {
              objc_msgSend_addObject_(v158, v141, v140, v142);
            }
          }

          v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v98, &v159, v208, 16);
        }

        while (v100);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v143 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
        {
          *v213 = 0;
          _os_log_impl(&dword_1B7AD5000, v143, OS_LOG_TYPE_INFO, "class CSFileURLBatchResult not found!", v213, 2u);
        }
      }

      v158 = 0;
    }

    _Block_object_dispose(&v182, 8);
    _Block_object_dispose(&v188, 8);

    _Block_object_dispose(&v194, 8);
    _Block_object_dispose(&v200, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v158 = MEMORY[0x1E695E0F0];
  }

  return v158;
}

- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = typeIdentifierCopy;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Spotlight requesting data for item %@ and type %@", &v24, 0x16u);
    }
  }

  v13 = identifierCopy;
  if (objc_msgSend_length(v13, v14, v15, v16))
  {
    v19 = objc_msgSend_dataProviderForIdentifier_(IMDSpotlightDataProvider, v17, typeIdentifierCopy, v18);
    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v22 = objc_msgSend_dataForGUID_error_(v19, v21, v13, error);
      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask
{
  v178 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (!objc_msgSend_count(updateCopy, v5, v6, v7))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "searchableItemsDidUpdate called with no updated items, returning early.", buf, 2u);
      }
    }

    goto LABEL_85;
  }

  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9, v10);
  isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v11, v12, v13, v14);

  if (!isPriorityMessagesEnabled)
  {
    if ((mask & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_85;
      }

      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        maskCopy2 = mask;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "searchableItemsDidUpdate called with reason other than summaries (%ld), returning early.", buf, 0xCu);
      }

      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((mask & 9) != 0)
  {
LABEL_13:
    v160 = objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v16, v17, v18);
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        maskCopy2 = objc_msgSend_count(updateCopy, v22, v23, v24);
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Received searchableItemsDidUpdate callback with %llu items", buf, 0xCu);
      }
    }

    v164 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v163 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    obj = updateCopy;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v169, v177, 16);
    if (!v29)
    {
LABEL_70:

      if (objc_msgSend_count(v163, v140, v141, v142))
      {
        if (IMOSLoggingEnabled())
        {
          v149 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v149, OS_LOG_TYPE_INFO, "Setting chats with time sensitive messages", buf, 2u);
          }
        }

        v150 = objc_msgSend_delegate(self, v146, v147, v148);
        objc_msgSend_updateChatsUsingMessageGUIDsWithPriority_(v150, v151, v163, v152);
      }

      if (v160 && objc_msgSend_count(v164, v143, v144, v145))
      {
        obja = objc_msgSend_delegate(self, v153, v154, v155);
        objc_msgSend_updateChatsUsingMessageGUIDsAndSummaries_(obja, v156, v164, v157);
      }

LABEL_84:

      goto LABEL_85;
    }

    v167 = mask & v160;
    v31 = *v170;
    v168 = (mask >> 3) & 1;
    *&v30 = 138412546;
    v159 = v30;
LABEL_19:
    v32 = 0;
    while (1)
    {
      if (*v170 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v169 + 1) + 8 * v32);
      v34 = objc_msgSend_uniqueIdentifier(v33, v26, v27, v28, v159);
      v38 = objc_msgSend_attributeSet(v33, v35, v36, v37);
      v42 = objc_msgSend_domainIdentifier(v38, v39, v40, v41);
      isEqualToString = objc_msgSend_isEqualToString_(v42, v43, @"attachmentDomain", v44);

      if (isEqualToString)
      {
        v49 = objc_msgSend_attributeSet(v33, v46, v47, v48);
        v53 = objc_msgSend_ownerIdentifier(v49, v50, v51, v52);

        v34 = v53;
      }

      if (!objc_msgSend_length(v34, v46, v47, v48))
      {
        if (IMOSLoggingEnabled())
        {
          v158 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            maskCopy2 = v33;
            _os_log_impl(&dword_1B7AD5000, v158, OS_LOG_TYPE_INFO, "uniqueIdentifier not set for item: %@", buf, 0xCu);
          }
        }

        goto LABEL_84;
      }

      v54 = objc_alloc(MEMORY[0x1E69A8148]);
      v57 = objc_msgSend_initWithEncodedMessagePartGUID_(v54, v55, v34, v56);
      v61 = objc_msgSend_messageGUID(v57, v58, v59, v60);

      if (v61)
      {
        v65 = objc_msgSend_messageGUID(v57, v62, v63, v64);

        v34 = v65;
      }

      v66 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v62, v63, v64);
      v70 = objc_msgSend_isPriorityMessagesEnabled(v66, v67, v68, v69);

      if ((v168 & v70) == 1)
      {
        break;
      }

LABEL_40:
      if (v167)
      {
        v97 = objc_msgSend_attributeSet(v33, v71, v72, v73);
        v101 = objc_msgSend_summarizationStatus(v97, v98, v99, v100) == 1;

        if (v101)
        {
          v105 = objc_msgSend_attributeSet(v33, v102, v103, v104);
          v109 = objc_msgSend_summarizationContentTopic(v105, v106, v107, v108);

          v113 = objc_msgSend_attributeSet(v33, v110, v111, v112);
          v117 = objc_msgSend_summarizationContentTopLine(v113, v114, v115, v116);

          v121 = objc_msgSend_attributeSet(v33, v118, v119, v120);
          v125 = objc_msgSend_summarizationContentSynopsis(v121, v122, v123, v124);

          if (!v117)
          {
            if (v125)
            {
              v126 = v125;
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_62;
              }

              v128 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                maskCopy2 = v34;
                _os_log_impl(&dword_1B7AD5000, v128, OS_LOG_TYPE_INFO, "Using synopsis as summary for item with GUID %@.", buf, 0xCu);
              }
            }

            else
            {
              if (!v109)
              {
                v126 = IMLogHandleForCategory();
                if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  maskCopy2 = v34;
                  _os_log_error_impl(&dword_1B7AD5000, v126, OS_LOG_TYPE_ERROR, "Unexpectedly received nil summary for item with identifier (%@) while summarization status was successful.", buf, 0xCu);
                }

                goto LABEL_63;
              }

              v126 = v109;
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_62;
              }

              v128 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                maskCopy2 = v34;
                _os_log_impl(&dword_1B7AD5000, v128, OS_LOG_TYPE_INFO, "Using topic as summary for item with GUID %@.", buf, 0xCu);
              }
            }

LABEL_61:

            goto LABEL_62;
          }

          v126 = v117;
          if (IMOSLoggingEnabled())
          {
            v128 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              maskCopy2 = v34;
              _os_log_impl(&dword_1B7AD5000, v128, OS_LOG_TYPE_INFO, "Using topLine as summary for item with GUID %@.", buf, 0xCu);
            }

            goto LABEL_61;
          }

LABEL_62:
          objc_msgSend_setObject_forKey_(v164, v127, v126, v34);
LABEL_63:
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v129 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
            {
              v133 = objc_msgSend_attributeSet(v33, v130, v131, v132);
              v137 = objc_msgSend_summarizationStatus(v133, v134, v135, v136);
              *buf = v159;
              maskCopy2 = v34;
              v175 = 1024;
              v176 = v137;
              _os_log_impl(&dword_1B7AD5000, v129, OS_LOG_TYPE_INFO, "Item with identifier %@ has unsuccessful summarization status (%d). Will delete old summary.", buf, 0x12u);
            }
          }

          v109 = objc_alloc_init(MEMORY[0x1E696AAB0]);
          objc_msgSend_setObject_forKey_(v164, v138, v109, v34);
        }
      }

      if (v29 == ++v32)
      {
        v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v169, v177, 16);
        v29 = v139;
        if (v139)
        {
          goto LABEL_19;
        }

        goto LABEL_70;
      }
    }

    v74 = objc_msgSend_attributeSet(v33, v71, v72, v73);
    v75 = objc_opt_respondsToSelector();

    v79 = objc_msgSend_attributeSet(v33, v76, v77, v78);
    v83 = v79;
    if (v75)
    {
      v84 = objc_msgSend_isTimeSensitive(v79, v80, v81, v82);
      v88 = objc_msgSend_BOOLValue(v84, v85, v86, v87);

      if (!v88)
      {
        goto LABEL_40;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_39;
      }

      v91 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        maskCopy2 = v33;
        _os_log_impl(&dword_1B7AD5000, v91, OS_LOG_TYPE_INFO, "Time sensitive (isTimeSensitive) message set for item: %@", buf, 0xCu);
      }
    }

    else
    {
      v92 = objc_msgSend_isPriority(v79, v80, v81, v82);
      v96 = objc_msgSend_BOOLValue(v92, v93, v94, v95);

      if (!v96)
      {
        goto LABEL_40;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_39;
      }

      v91 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        maskCopy2 = v33;
        _os_log_impl(&dword_1B7AD5000, v91, OS_LOG_TYPE_INFO, "Time sensitive (isPriority) message set for item: %@", buf, 0xCu);
      }
    }

LABEL_39:
    objc_msgSend_addObject_(v163, v89, v34, v90);
    goto LABEL_40;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      maskCopy2 = mask;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "searchableItemsDidUpdate called with reason other than summaries or time sensitivity (%ld), returning early.", buf, 0xCu);
    }

LABEL_7:
  }

LABEL_85:
}

- (IMDBaseSpotlightIndexControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end