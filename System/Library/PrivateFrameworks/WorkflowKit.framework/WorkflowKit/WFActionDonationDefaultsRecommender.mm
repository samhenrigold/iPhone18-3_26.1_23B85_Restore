@interface WFActionDonationDefaultsRecommender
+ (id)defaultRecommendations;
@end

@implementation WFActionDonationDefaultsRecommender

+ (id)defaultRecommendations
{
  v133 = *MEMORY[0x1E69E9840];
  v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *MEMORY[0x1E69E0EA0];
  v4 = [defaultWorkspace applicationIsInstalled:*MEMORY[0x1E69E0EA0]];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.mail.mailbox"];
    [v5 setEligibleForSearch:1];
    [v5 setEligibleForPrediction:1];
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"mailActivityType", @"specialMailboxType", 0}];
    [v5 setRequiredUserInfoKeys:v6];

    [v5 setUserInfo:&unk_1F4A99ED8];
    v7 = WFLocalizedString(@"Show VIP Mailbox");
    [v5 setTitle:v7];

    v8 = objc_alloc(MEMORY[0x1E69E0930]);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    date = [MEMORY[0x1E695DF00] date];
    v12 = [v8 initWithUserActivity:v5 identifier:uUIDString sourceAppIdentifier:v3 date:date];

    [v104 addObject:v12];
  }

  defaultWorkspace2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v14 = *MEMORY[0x1E69E0F98];
  v15 = [defaultWorkspace2 applicationIsInstalled:*MEMORY[0x1E69E0F98]];

  if (v15)
  {
    v16 = INIntentFromAppBundleIdAndName(v14, @"RecordVoiceMemoIntent");
    v17 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v16 response:0];
    v18 = objc_alloc(MEMORY[0x1E69E0920]);
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v21 = [v18 initWithIdentifier:uUIDString2 sourceAppIdentifier:v14 interaction:v17];

    [v104 addObject:v21];
    v22 = INIntentFromAppBundleIdAndName(v14, @"PlaybackVoiceMemoIntent");
    v23 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v22 response:0];
    v24 = objc_alloc(MEMORY[0x1E69E0920]);
    uUID3 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString3 = [uUID3 UUIDString];
    v27 = [v24 initWithIdentifier:uUIDString3 sourceAppIdentifier:v14 interaction:v23];

    [v104 addObject:v27];
  }

  defaultWorkspace3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v111 = *MEMORY[0x1E69E0EA8];
  v29 = [defaultWorkspace3 applicationIsInstalled:?];

  if (v29)
  {
    if (WFCNContactIsAuthorizedToAccessContact())
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v102 = objc_alloc_init(getCNContactStoreClass());
      *&v116 = 0;
      *(&v116 + 1) = &v116;
      *&v117 = 0x2020000000;
      v31 = getCNContactPostalAddressesKeySymbolLoc_ptr;
      *(&v117 + 1) = getCNContactPostalAddressesKeySymbolLoc_ptr;
      if (!getCNContactPostalAddressesKeySymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCNContactPostalAddressesKeySymbolLoc_block_invoke;
        v122 = &unk_1E837FAC0;
        v123 = &v116;
        v32 = ContactsLibrary_54002();
        v33 = dlsym(v32, "CNContactPostalAddressesKey");
        *(*(v123 + 1) + 24) = v33;
        getCNContactPostalAddressesKeySymbolLoc_ptr = *(*(v123 + 1) + 24);
        v31 = *(*(&v116 + 1) + 24);
      }

      _Block_object_dispose(&v116, 8);
      if (!v31)
      {
        goto LABEL_67;
      }

      v110 = v30;
      v120 = *v31;
      v34 = MEMORY[0x1E695DEC8];
      v35 = v120;
      v36 = [v34 arrayWithObjects:&v120 count:1];
      v115 = 0;
      v100 = [v102 _crossPlatformUnifiedMeContactWithKeysToFetch:v36 error:&v115];
      v105 = v115;

      if (v105)
      {
        v37 = getWFActionDonationsLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "GetDirectionsUserActivityDonations";
          *&buf[12] = 2112;
          *&buf[14] = v105;
          _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_ERROR, "%s Error getting me contact: %@", buf, 0x16u);
        }

        v38 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        obj = [v100 postalAddresses];
        v40 = [obj countByEnumeratingWithState:&v116 objects:buf count:16];
        if (v40)
        {
          v113 = *v117;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v117 != v113)
              {
                objc_enumerationMutation(obj);
              }

              value = [*(*(&v116 + 1) + 8 * i) value];
              street = [value street];
              if ([street length])
              {
                v44 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.Maps"];
                [v44 setEligibleForSearch:1];
                [v44 setEligibleForPrediction:1];
                v45 = [MEMORY[0x1E695DFD8] setWithObjects:{@"MapsActionLaunchURLKey", @"MapsActionDestinationStringKey", @"MapsActionKey", 0}];
                [v44 setRequiredUserInfoKeys:v45];

                v129 = 0;
                v130 = &v129;
                v131 = 0x2050000000;
                v46 = getGEOMapURLBuilderClass_softClass;
                v132 = getGEOMapURLBuilderClass_softClass;
                if (!getGEOMapURLBuilderClass_softClass)
                {
                  v124 = MEMORY[0x1E69E9820];
                  v125 = 3221225472;
                  v126 = __getGEOMapURLBuilderClass_block_invoke;
                  v127 = &unk_1E837FAC0;
                  v128 = &v129;
                  __getGEOMapURLBuilderClass_block_invoke(&v124);
                  v46 = v130[3];
                }

                v47 = v46;
                _Block_object_dispose(&v129, 8);
                v48 = [(__CFString *)v46 URLForSearch:street];
                v129 = @"MapsActionLaunchURLKey";
                v130 = @"MapsActionDestinationStringKey";
                v124 = v48;
                v125 = street;
                v131 = @"MapsActionKey";
                v126 = @"MapsDirectionsActionKey";
                v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v129 count:3];
                [v44 setUserInfo:v49];

                v50 = MEMORY[0x1E696AEC0];
                v51 = WFLocalizedString(@"Get directions to %@");
                v52 = [v50 localizedStringWithFormat:v51, street];
                [v44 setTitle:v52];

                v53 = objc_alloc(MEMORY[0x1E69E0930]);
                uUID4 = [MEMORY[0x1E696AFB0] UUID];
                uUIDString4 = [uUID4 UUIDString];
                date2 = [MEMORY[0x1E695DF00] date];
                v57 = [v53 initWithUserActivity:v44 identifier:uUIDString4 sourceAppIdentifier:v111 date:date2];
              }

              else
              {
                v57 = 0;
              }

              if (v57)
              {
                [v110 addObject:v57];
              }
            }

            v40 = [obj countByEnumeratingWithState:&v116 objects:buf count:16];
          }

          while (v40);
        }

        v38 = v110;
      }

      v39 = v110;
    }

    else
    {
      v39 = getWFActionDonationsLogObject();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "GetDirectionsUserActivityDonations";
        _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_DEFAULT, "%s Can’t get me-contact; no access to contacts", buf, 0xCu);
      }

      v38 = MEMORY[0x1E695E0F0];
    }

    [v104 addObjectsFromArray:v38];
  }

  defaultWorkspace4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v106 = *MEMORY[0x1E69E0E70];
  v59 = [defaultWorkspace4 applicationIsInstalled:?];

  if (v59)
  {
    v112 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (WFCNContactIsAuthorizedToAccessContact())
    {
      v103 = objc_alloc_init(getCNContactStoreClass());
      *&v116 = 0;
      *(&v116 + 1) = &v116;
      *&v117 = 0x2050000000;
      v60 = getCNFavoritesClass_softClass;
      *(&v117 + 1) = getCNFavoritesClass_softClass;
      if (!getCNFavoritesClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCNFavoritesClass_block_invoke;
        v122 = &unk_1E837FAC0;
        v123 = &v116;
        __getCNFavoritesClass_block_invoke(buf);
        v60 = *(*(&v116 + 1) + 24);
      }

      v61 = v60;
      _Block_object_dispose(&v116, 8);
      v101 = [[v60 alloc] initWithContactStore:v103];
      entries = [v101 entries];
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      obja = entries;
      v63 = [obja countByEnumeratingWithState:&v116 objects:buf count:16];
      if (v63)
      {
        v114 = *v117;
        v107 = *MEMORY[0x1E69E0EC0];
        do
        {
          for (j = 0; j != v63; ++j)
          {
            if (*v117 != v114)
            {
              objc_enumerationMutation(obja);
            }

            v65 = *(*(&v116 + 1) + 8 * j);
            contactProperty = [v65 contactProperty];
            contact = [contactProperty contact];

            v68 = [objc_alloc(MEMORY[0x1E696E940]) initWithContact:contact];
            actionType = [v65 actionType];
            v129 = 0;
            v130 = &v129;
            v131 = 0x2020000000;
            v70 = getCNActionTypeAudioCallSymbolLoc_ptr;
            v132 = getCNActionTypeAudioCallSymbolLoc_ptr;
            if (!getCNActionTypeAudioCallSymbolLoc_ptr)
            {
              v124 = MEMORY[0x1E69E9820];
              v125 = 3221225472;
              v126 = __getCNActionTypeAudioCallSymbolLoc_block_invoke;
              v127 = &unk_1E837FAC0;
              v128 = &v129;
              v71 = ContactsLibrary_54002();
              v72 = dlsym(v71, "CNActionTypeAudioCall");
              v128[1]->length = v72;
              getCNActionTypeAudioCallSymbolLoc_ptr = v128[1]->length;
              v70 = v130[3];
            }

            _Block_object_dispose(&v129, 8);
            if (!v70)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNActionTypeAudioCall(void)"];
              [currentHandler handleFailureInFunction:v95 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:27 description:{@"%s", dlerror()}];

              goto LABEL_66;
            }

            isEqualToString = objc_msgSend_isEqualToString_(actionType);

            if (isEqualToString)
            {
              v74 = v107;
              v75 = 1;
LABEL_53:
              v81 = MEMORY[0x1E696EA60];
              v82 = v74;
              v83 = [v81 alloc];
              v120 = v68;
              v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
              v85 = [v83 initWithAudioRoute:0 destinationType:1 contacts:v84 recordTypeForRedialing:1 callCapability:v75];

              [v85 _setLaunchId:@"com.apple.InCallService"];
              [v85 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
              v86 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v85 response:0];
              v87 = objc_alloc(MEMORY[0x1E69E0920]);
              uUID5 = [MEMORY[0x1E696AFB0] UUID];
              uUIDString5 = [uUID5 UUIDString];
              v90 = [v87 initWithIdentifier:uUIDString5 sourceAppIdentifier:v82 interaction:v86];

              [v112 addObject:v90];
              goto LABEL_54;
            }

            actionType2 = [v65 actionType];
            v129 = 0;
            v130 = &v129;
            v131 = 0x2020000000;
            v77 = getCNActionTypeVideoCallSymbolLoc_ptr;
            v132 = getCNActionTypeVideoCallSymbolLoc_ptr;
            if (!getCNActionTypeVideoCallSymbolLoc_ptr)
            {
              v124 = MEMORY[0x1E69E9820];
              v125 = 3221225472;
              v126 = __getCNActionTypeVideoCallSymbolLoc_block_invoke;
              v127 = &unk_1E837FAC0;
              v128 = &v129;
              v78 = ContactsLibrary_54002();
              v79 = dlsym(v78, "CNActionTypeVideoCall");
              v128[1]->length = v79;
              getCNActionTypeVideoCallSymbolLoc_ptr = v128[1]->length;
              v77 = v130[3];
            }

            _Block_object_dispose(&v129, 8);
            if (!v77)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              v97 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNActionTypeVideoCall(void)"];
              [currentHandler2 handleFailureInFunction:v97 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:28 description:{@"%s", dlerror()}];

              while (1)
              {
LABEL_66:
                __break(1u);
LABEL_67:
                currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
                v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactPostalAddressesKey(void)"];
                [currentHandler3 handleFailureInFunction:v99 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:29 description:{@"%s", dlerror()}];
              }
            }

            v80 = objc_msgSend_isEqualToString_(actionType2);

            if (v80)
            {
              v74 = v106;
              v75 = 2;
              goto LABEL_53;
            }

LABEL_54:
          }

          v63 = [obja countByEnumeratingWithState:&v116 objects:buf count:16];
        }

        while (v63);
      }

      v91 = v112;
      v92 = obja;
    }

    else
    {
      v92 = getWFActionDonationsLogObject();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "StartVideoCallOrAudioCallToFavoriteContactsDonations";
        _os_log_impl(&dword_1CA256000, v92, OS_LOG_TYPE_DEFAULT, "%s Can’t get favorite contacts; no access to contacts", buf, 0xCu);
      }

      v91 = MEMORY[0x1E695E0F0];
    }

    [v104 addObjectsFromArray:v91];
  }

  return v104;
}

@end