@interface CKDBatchFetchUserPrivacySettingsOperation
+ (id)appPermissionGroupsFromContainerPrivacySettings:(id)settings;
- (id)activityCreate;
- (void)main;
@end

@implementation CKDBatchFetchUserPrivacySettingsOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/batch-get-user-privacy-settings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v3 = [CKDBatchFetchUserPrivacySettingsURLRequest alloc];
  v5 = objc_msgSend_initWithOperation_(v3, v4, self);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_22526059C;
  v15 = &unk_278548748;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  objc_msgSend_setCompletionBlock_(v5, v6, &v12);
  objc_msgSend_setRequest_(self, v7, v5, v12, v13, v14, v15);
  v10 = objc_msgSend_container(self, v8, v9);
  objc_msgSend_performRequest_(v10, v11, v5);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

+ (id)appPermissionGroupsFromContainerPrivacySettings:(id)settings
{
  v126 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v4 = objc_opt_new();
  v100 = objc_opt_new();
  v5 = v4;
  v91 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = settingsCopy;
  v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v117, v125, 16);
  if (v98)
  {
    v96 = *v118;
    do
    {
      for (i = 0; i != v98; ++i)
      {
        if (*v118 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v117 + 1) + 8 * i);
        v12 = objc_msgSend_containerID(v10, v7, v8);
        if (v12)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v91, v11, v10, v12);
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v15 = objc_msgSend_applicationBundleIDs(v10, v13, v14);
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v113, v124, 16);
          if (v17)
          {
            v19 = v17;
            v20 = *v114;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v114 != v20)
                {
                  objc_enumerationMutation(v15);
                }

                v22 = *(*(&v113 + 1) + 8 * j);
                v24 = objc_msgSend_objectForKeyedSubscript_(v5, v18, v22);
                if (!v24)
                {
                  v24 = objc_opt_new();
                  objc_msgSend_setObject_forKeyedSubscript_(v5, v25, v24, v22);
                }

                objc_msgSend_addObject_(v24, v23, v12);
                v28 = objc_msgSend_objectForKeyedSubscript_(v100, v26, v12);
                if (!v28)
                {
                  v28 = objc_opt_new();
                  objc_msgSend_setObject_forKeyedSubscript_(v100, v29, v28, v12);
                }

                objc_msgSend_addObject_(v28, v27, v22);
              }

              v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v113, v124, 16);
            }

            while (v19);
          }
        }
      }

      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v117, v125, 16);
    }

    while (v98);
  }

  v88 = objc_opt_new();
  if (objc_msgSend_count(v5, v30, v31))
  {
    v92 = v5;
    do
    {
      v34 = objc_msgSend_allKeys(v5, v32, v33);
      v37 = objc_msgSend_lastObject(v34, v35, v36);

      v38 = objc_opt_new();
      v39 = objc_opt_new();
      v97 = objc_opt_new();
      objc_msgSend_addObject_(v38, v40, v37);
      v89 = v37;
      objc_msgSend_addObject_(v39, v41, v37);
      if (objc_msgSend_count(v38, v42, v43))
      {
        v45 = 0;
        do
        {
          v94 = v45;
          v93 = objc_msgSend_objectAtIndexedSubscript_(v38, v44, v45);
          v47 = objc_msgSend_objectForKeyedSubscript_(v5, v46, v93);
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v95 = v47;
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v109, v123, 16);
          if (v49)
          {
            v51 = v49;
            v99 = *v110;
            do
            {
              for (k = 0; k != v51; ++k)
              {
                if (*v110 != v99)
                {
                  objc_enumerationMutation(v95);
                }

                v53 = *(*(&v109 + 1) + 8 * k);
                v54 = objc_msgSend_objectForKeyedSubscript_(v100, v50, v53);
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v108 = 0u;
                v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v105, v122, 16);
                if (v56)
                {
                  v58 = v56;
                  v59 = *v106;
                  do
                  {
                    for (m = 0; m != v58; ++m)
                    {
                      if (*v106 != v59)
                      {
                        objc_enumerationMutation(v54);
                      }

                      v61 = *(*(&v105 + 1) + 8 * m);
                      if ((objc_msgSend_containsObject_(v39, v57, v61) & 1) == 0)
                      {
                        objc_msgSend_addObject_(v38, v57, v61);
                        objc_msgSend_addObject_(v39, v62, v61);
                      }
                    }

                    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v105, v122, 16);
                  }

                  while (v58);
                }

                objc_msgSend_addObject_(v97, v57, v53);
                objc_msgSend_removeObjectForKey_(v100, v63, v53);
              }

              v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v50, &v109, v123, 16);
            }

            while (v51);
          }

          v5 = v92;
          objc_msgSend_removeObjectForKey_(v92, v50, v93);

          v45 = v94 + 1;
        }

        while (v94 + 1 < objc_msgSend_count(v38, v64, v65));
      }

      v66 = objc_opt_new();
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v67 = v97;
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v101, v121, 16);
      if (v69)
      {
        v71 = v69;
        v72 = 0;
        v73 = *v102;
        do
        {
          for (n = 0; n != v71; ++n)
          {
            if (*v102 != v73)
            {
              objc_enumerationMutation(v67);
            }

            v75 = objc_msgSend_objectForKeyedSubscript_(v91, v70, *(*(&v101 + 1) + 8 * n));
            if (objc_msgSend_discoverable(v75, v76, v77) == 1)
            {
              v72 = 1;
            }
          }

          v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v70, &v101, v121, 16);
        }

        while (v71);
      }

      else
      {
        v72 = 0;
      }

      objc_msgSend_setEnabledPermissions_(v66, v78, v72);
      v81 = objc_msgSend_allObjects(v67, v79, v80);
      objc_msgSend_setContainerIDs_(v66, v82, v81);

      objc_msgSend_setApplicationBundleIDs_(v66, v83, v38);
      objc_msgSend_addObject_(v88, v84, v66);

      v5 = v92;
    }

    while (objc_msgSend_count(v92, v85, v86));
  }

  return v88;
}

@end