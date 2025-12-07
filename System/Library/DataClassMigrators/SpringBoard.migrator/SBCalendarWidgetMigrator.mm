@interface SBCalendarWidgetMigrator
- (SBCalendarWidgetMigrator)init;
- (SBCalendarWidgetMigrator)initWithIconModelStore:(id)store;
- (id)_maybeMigratedListFromList:(id)list;
- (id)_performMigration:(id)migration;
- (void)migrateIfNecessary;
@end

@implementation SBCalendarWidgetMigrator

- (SBCalendarWidgetMigrator)init
{
  stringByExpandingTildeInPath = [@"~/Library/SpringBoard/IconState.plist" stringByExpandingTildeInPath];
  v4 = [NSURL fileURLWithPath:stringByExpandingTildeInPath];

  stringByExpandingTildeInPath2 = [@"~/Library/SpringBoard/DesiredIconState.plist" stringByExpandingTildeInPath];
  v6 = [NSURL fileURLWithPath:stringByExpandingTildeInPath2];

  v7 = [[SBIconModelPropertyListFileStore alloc] initWithIconStateURL:v4 desiredIconStateURL:v6];
  v8 = [(SBCalendarWidgetMigrator *)self initWithIconModelStore:v7];

  return v8;
}

- (SBCalendarWidgetMigrator)initWithIconModelStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SBCalendarWidgetMigrator;
  v6 = [(SBCalendarWidgetMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (void)migrateIfNecessary
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Migration needed for calendar widgets.", buf, 2u);
  }

  store = self->_store;
  v27 = 0;
  v5 = [(SBIconModelStore *)store loadCurrentIconState:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = v6;
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_DCCC(v7);
    }

    v9 = v5;
LABEL_7:

    goto LABEL_8;
  }

  if (!v5)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] No current icon state found to migrate.", buf, 2u);
    }

    v7 = 0;
    goto LABEL_7;
  }

  v9 = [(SBCalendarWidgetMigrator *)self _performMigration:v5];

  if (v9)
  {
    v15 = self->_store;
    v26 = 0;
    v16 = [(SBIconModelStore *)v15 saveCurrentIconState:v9 error:&v26];
    v7 = v26;
    v17 = SBLogCommon();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Migrated calendar widgets in icon state.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_DD50(v7);
    }

    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:
  v10 = self->_store;
  v25 = 0;
  v11 = [(SBIconModelStore *)v10 loadDesiredIconState:&v25];
  v12 = v25;
  if (v12)
  {
    v13 = v12;
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_DDD4(v13);
    }
  }

  else if (v11)
  {
    v19 = [(SBCalendarWidgetMigrator *)self _performMigration:v11];

    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = self->_store;
    v24 = 0;
    v21 = [(SBIconModelStore *)v20 saveDesiredIconState:v19 error:&v24];
    v13 = v24;
    v22 = SBLogCommon();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Migrated calendar widgets in desired icon state.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_DE58(v13);
    }
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] No desired icon state found to migrate.", buf, 2u);
    }
  }

LABEL_13:
}

- (id)_performMigration:(id)migration
{
  migrationCopy = migration;
  v5 = [migrationCopy mutableCopy];
  v6 = kSBIconStateIconLists;
  v7 = [migrationCopy objectForKeyedSubscript:kSBIconStateIconLists];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v6;
    v29 = v7;
    v30 = v5;
    v31 = migrationCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          if (!v11)
          {
            v11 = objc_alloc_init(NSMutableArray);
          }

          v17 = [(SBCalendarWidgetMigrator *)self _maybeMigratedListFromList:v15, v28];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          v12 |= v17 != 0;
          [v11 addObject:v19];

          objc_autoreleasePoolPop(v16);
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v5 = v30;
    [v30 setObject:v11 forKeyedSubscript:v28];
    migrationCopy = v31;
    v7 = v29;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v20 = kSBIconStateTodayPageList;
  v21 = [migrationCopy objectForKeyedSubscript:{kSBIconStateTodayPageList, v28}];
  if (v21)
  {
    v22 = [(SBCalendarWidgetMigrator *)self _maybeMigratedListFromList:v21];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    v12 |= v22 != 0;
    [v5 setObject:v24 forKeyedSubscript:v20];
  }

  if (v12)
  {
    v25 = v5;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v25;
}

- (id)_maybeMigratedListFromList:(id)list
{
  listCopy = list;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v59 = 0;
    goto LABEL_77;
  }

  v4 = objc_alloc_init(NSMutableArray);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (!v6)
  {

    v58 = 0;
    goto LABEL_76;
  }

  v7 = v6;
  v61 = listCopy;
  v71 = 0;
  v8 = *v83;
  v75 = kSBIconStateCustomIconElementTypeWidget;
  v76 = kSBIconStateCustomIconElementTypeKey;
  v66 = kSBIconStateIconTypeCustom;
  v67 = kSBIconStateIconTypeKey;
  v9 = kSBIconStateGridSizeClassIdentifier;
  v10 = &SBLogCommon_ptr;
  v64 = v4;
  v65 = kSBIconStateCustomIconElementKey;
  v69 = kSBIconStateGridSizeClassIdentifier;
  v62 = *v83;
  v63 = v5;
  v74 = kSBIconStateWidgetKindKey;
  do
  {
    v11 = 0;
    v68 = v7;
    do
    {
      if (*v83 != v8)
      {
        v12 = v11;
        objc_enumerationMutation(v5);
        v11 = v12;
      }

      v70 = v11;
      v13 = *(*(&v82 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v4 addObject:v13];
        goto LABEL_68;
      }

      v14 = v13;
      v15 = [v14 objectForKey:v76];
      v16 = [v15 isEqualToString:v75];

      v73 = v14;
      if (!v16)
      {
        v20 = [v14 objectForKey:v67];
        if ([v20 isEqualToString:v66] && (objc_msgSend(v14, "objectForKey:", v9), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = v21;
          v23 = [v14 objectForKey:v65];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v9 = v69;
          if (isKindOfClass)
          {
            v25 = v14;
            v72 = [v14 objectForKey:v69];
            v26 = [v14 objectForKey:v65];
            v27 = objc_alloc_init(NSMutableArray);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v28 = v26;
            v29 = [v28 countByEnumeratingWithState:&v77 objects:v86 count:16];
            if (!v29)
            {
              goto LABEL_44;
            }

            v30 = v29;
            v31 = *v78;
            while (1)
            {
              for (i = 0; i != v30; i = i + 1)
              {
                if (*v78 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v77 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [v27 addObject:v33];
                  continue;
                }

                v34 = v10;
                v35 = v33;
                v36 = [v35 objectForKey:v76];
                v37 = [v36 isEqualToString:v75];

                if (!v37)
                {
                  goto LABEL_39;
                }

                v38 = [v35 objectForKey:v74];
                v39 = [v38 isEqualToString:@"com.apple.CalendarWidget.CalendarWidget"];

                if (v39)
                {
                  if (([v72 isEqualToString:@"small"] & 1) != 0 || objc_msgSend(v72, "isEqualToString:", @"medium"))
                  {
                    v40 = [v35 mutableCopy];
                    [v40 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v74];
                    [v27 addObject:v40];
                    v41 = SBLogCommon();
                    v25 = v73;
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_38;
                  }

                  v25 = v73;
                  if ([v72 isEqualToString:@"large"])
                  {
                    v40 = [v35 mutableCopy];
                    [v40 setObject:@"com.apple.CalendarWidget.CalendarListWidget" forKeyedSubscript:v74];
                    [v27 addObject:v40];
                    v41 = SBLogCommon();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_38;
                  }

LABEL_39:
                  [v27 addObject:{v35, v61}];
                  goto LABEL_40;
                }

                v42 = [v35 objectForKey:v74];
                v43 = [v42 isEqualToString:@"com.apple.CalendarWidget.CalendarSpatialWidget"];

                if (v43)
                {
                  v25 = v73;
                  if (([v72 isEqualToString:@"large"] & 1) == 0 && !objc_msgSend(v72, "isEqualToString:", @"extraLarge"))
                  {
                    goto LABEL_39;
                  }

                  v40 = [v35 mutableCopy];
                  [v40 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v74];
                  [v27 addObject:v40];
                  v41 = SBLogCommon();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_37:
                    *buf = 0;
                    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Found calendar widget stack element to migrate...", buf, 2u);
                  }

LABEL_38:

                  v71 = 1;
LABEL_40:
                  v10 = v34;
                  goto LABEL_41;
                }

                [v27 addObject:v35];
                v10 = v34;
                v25 = v73;
LABEL_41:
              }

              v30 = [v28 countByEnumeratingWithState:&v77 objects:v86 count:16];
              if (!v30)
              {
LABEL_44:

                if ([v27 count])
                {
                  v44 = [v25 mutableCopy];
                  [v44 setObject:v27 forKeyedSubscript:v65];
                  v4 = v64;
                  [v64 addObject:v44];
                }

                else
                {
                  v4 = v64;
                  [v64 addObject:v25];
                }

                v9 = v69;

                v8 = v62;
                v5 = v63;
                v7 = v68;
                goto LABEL_66;
              }
            }
          }
        }

        else
        {
        }

        [v4 addObject:{v14, v61}];
        v7 = v68;
        goto LABEL_67;
      }

      v17 = [v14 objectForKey:v74];
      v18 = [v17 isEqualToString:@"com.apple.CalendarWidget.CalendarWidget"];

      if (v18)
      {
        v19 = [v14 objectForKey:v9];
        if ([v19 isEqualToString:@"small"])
        {

LABEL_52:
          v50 = [v14 mutableCopy];
          [v50 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v74];
          [v4 addObject:v50];
          v51 = SBLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
LABEL_56:
            *buf = 0;
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Found calendar widget to migrate...", buf, 2u);
          }

LABEL_57:

          v71 = 1;
          v9 = v69;
          goto LABEL_66;
        }

        v48 = [v14 objectForKey:v9];
        v49 = [v48 isEqualToString:@"medium"];

        if (v49)
        {
          goto LABEL_52;
        }

        v9 = v69;
        v54 = [v14 objectForKey:v69];
        v55 = [v54 isEqualToString:@"large"];

        if (v55)
        {
          v56 = [v14 mutableCopy];
          [v56 setObject:@"com.apple.CalendarWidget.CalendarListWidget" forKeyedSubscript:v74];
          [v4 addObject:v56];
          v57 = SBLogCommon();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Found calendar widget to migrate...", buf, 2u);
          }

          v71 = 1;
LABEL_66:
          v14 = v73;
          goto LABEL_67;
        }
      }

      else
      {
        v45 = [v14 objectForKey:v74];
        v46 = [v45 isEqualToString:@"com.apple.CalendarWidget.CalendarSpatialWidget"];

        if (v46)
        {
          v47 = [v14 objectForKey:v9];
          if ([v47 isEqualToString:@"large"])
          {

LABEL_55:
            v50 = [v14 mutableCopy];
            [v50 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v74];
            [v4 addObject:v50];
            v51 = SBLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_56;
            }

            goto LABEL_57;
          }

          v52 = [v14 objectForKey:v9];
          v53 = [v52 isEqualToString:@"extraLarge"];

          if (v53)
          {
            goto LABEL_55;
          }

          [v4 addObject:v14];
          v9 = v69;
          goto LABEL_67;
        }
      }

      [v4 addObject:{v14, v61}];
LABEL_67:

LABEL_68:
      v11 = v70 + 1;
    }

    while ((v70 + 1) != v7);
    v7 = [v5 countByEnumeratingWithState:&v82 objects:v87 count:16];
  }

  while (v7);

  if (v71)
  {
    v58 = v4;
  }

  else
  {
    v58 = 0;
  }

  listCopy = v61;
LABEL_76:
  v59 = v58;

LABEL_77:

  return v59;
}

@end