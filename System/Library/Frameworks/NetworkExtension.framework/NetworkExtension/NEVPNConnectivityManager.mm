@interface NEVPNConnectivityManager
- (NEVPNConnectivityManager)initWithDelegate:(id)delegate;
- (NEVPNConnectivityManagerDelegate)delegate;
- (id)toggleVPNConnectivity:(BOOL)connectivity;
- (void)cancelSessions:(void *)sessions withCompletionHandler:;
- (void)dealloc;
- (void)refreshConfigurations;
- (void)refreshConnectivityState;
- (void)sessionStatusDidChange:(id)change;
@end

@implementation NEVPNConnectivityManager

- (NEVPNConnectivityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sessionStatusDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (changeCopy)
    {
      Property = objc_getProperty(changeCopy, v6, 8, 1);
    }

    else
    {
      Property = 0;
    }

    name = [Property name];
    if (changeCopy)
    {
      v10 = objc_getProperty(changeCopy, v8, 8, 1);
    }

    else
    {
      v10 = 0;
    }

    identifier = [v10 identifier];
    v13 = 138412546;
    v14 = name;
    v15 = 2112;
    v16 = identifier;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "Session status of %@ (%@) changed", &v13, 0x16u);
  }

  [(NEVPNConnectivityManager *)self refreshConnectivityState];
}

- (void)refreshConnectivityState
{
  v87 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy2 = self;
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v80[3] = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 2;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v75 = 1;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v3 = objc_getProperty(self, a2, 56, 1);
    v53 = [v3 copy];
    self = selfCopy2;

    v4 = [v53 count];
    if (v4)
    {
      if (v4 == 1)
      {
        firstObject = [v53 firstObject];
        v7 = firstObject;
        if (firstObject)
        {
          Property = objc_getProperty(firstObject, v6, 8, 1);
        }

        else
        {
          Property = 0;
        }

        v9 = Property;
        relay = [v9 relay];
        if (relay)
        {

          v4 = 2;
        }

        else
        {
          firstObject2 = [v53 firstObject];
          v13 = firstObject2;
          if (firstObject2)
          {
            v14 = objc_getProperty(firstObject2, v12, 8, 1);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [v15 VPN];
          isEnabled = [v16 isEnabled];

          if (isEnabled)
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }
      }

      else
      {
        v4 = 2;
      }
    }

    v77[3] = v4;
    group = dispatch_group_create();
    if (v77[3])
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v19 = v53;
      v21 = [v19 countByEnumeratingWithState:&v66 objects:v86 count:16];
      if (!v21)
      {
        goto LABEL_38;
      }

      v22 = *v67;
      while (1)
      {
        v23 = 0;
        do
        {
          if (*v67 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v66 + 1) + 8 * v23);
          if (v24)
          {
            v25 = objc_getProperty(*(*(&v66 + 1) + 8 * v23), v20, 8, 1);
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;
          appVPN = [v26 appVPN];
          if (appVPN)
          {

LABEL_27:
            v77[3] = 2;
            goto LABEL_28;
          }

          if (v24)
          {
            v30 = objc_getProperty(v24, v28, 8, 1);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          alwaysOnVPN = [v31 alwaysOnVPN];
          v33 = alwaysOnVPN == 0;

          if (!v33)
          {
            goto LABEL_27;
          }

LABEL_28:
          if (v24)
          {
            v34 = objc_getProperty(v24, v29, 8, 1);
          }

          else
          {
            v34 = 0;
          }

          v35 = v34;
          relay2 = [v35 relay];
          v37 = relay2 == 0;

          if (!v37)
          {
            *(v71 + 24) = 1;
          }

          ++v23;
        }

        while (v21 != v23);
        v38 = [v19 countByEnumeratingWithState:&v66 objects:v86 count:16];
        v21 = v38;
        if (!v38)
        {
LABEL_38:

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          obj = v19;
          v39 = [obj countByEnumeratingWithState:&v62 objects:v85 count:16];
          if (v39)
          {
            v40 = *v63;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v63 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*(&v62 + 1) + 8 * i);
                if (v42 && v42[2])
                {
                  v43 = ne_log_obj();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    v45 = objc_getProperty(v42, v44, 8, 1);
                    name = [v45 name];
                    v48 = objc_getProperty(v42, v47, 8, 1);
                    identifier = [v48 identifier];
                    *buf = 138412546;
                    v82 = name;
                    v83 = 2112;
                    v84 = identifier;
                    _os_log_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_DEFAULT, "Fetching status of %@ (%@)", buf, 0x16u);
                  }

                  dispatch_group_enter(group);
                  v51 = objc_getProperty(self, v50, 48, 1);
                  block[9] = MEMORY[0x1E69E9820];
                  block[10] = 3221225472;
                  block[11] = __52__NEVPNConnectivityManager_refreshConnectivityState__block_invoke;
                  block[12] = &unk_1E7F096A8;
                  v59 = v80;
                  v60 = v74;
                  v61 = &v76;
                  block[13] = v42;
                  block[14] = self;
                  v58 = group;
                  ne_session_get_status();
                }
              }

              v39 = [obj countByEnumeratingWithState:&v62 objects:v85 count:16];
            }

            while (v39);
          }

          selfCopy2 = self;
          break;
        }
      }
    }

    v52 = objc_getProperty(selfCopy2, v18, 48, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NEVPNConnectivityManager_refreshConnectivityState__block_invoke_45;
    block[3] = &unk_1E7F096D0;
    block[4] = selfCopy2;
    block[5] = &v76;
    block[6] = v80;
    block[7] = &v70;
    block[8] = v74;
    dispatch_group_notify(group, v52, block);

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(v74, 8);
    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(v80, 8);
  }
}

void __52__NEVPNConnectivityManager_refreshConnectivityState__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 8, 1);
    }

    v8 = [Property name];
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = objc_getProperty(v9, v7, 8, 1);
    }

    v10 = [v9 identifier];
    *buf = 138412802;
    v38 = v8;
    v39 = 2112;
    v40 = v10;
    v41 = 2080;
    v42 = ne_session_status_to_string();
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "VPN %@ (%@) is %s", buf, 0x20u);
  }

  objc_opt_self();
  if ((v2 - 1) > 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = qword_1BAA4F9B0[v2 - 1];
  }

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 24);
  if (v12 == v14 || v14 == 2)
  {
    if ((v12 - 1) > 1)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (v12 == 1)
  {
    *(v13 + 24) = 1;
LABEL_29:
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v19 = *(a1 + 32);
      if (v19)
      {
        v19 = objc_getProperty(v19, v11, 8, 1);
      }

      *(*(*(a1 + 64) + 8) + 24) = [v19 usesPolicyBasedRouting];
    }

    goto LABEL_33;
  }

  if (v12 != 3)
  {
    if (v12 != 2)
    {
      goto LABEL_33;
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = objc_getProperty(v16, v11, 8, 1);
    }

    v17 = [v16 relay];

    if (v17)
    {
      v18 = 5;
    }

    else
    {
      v18 = 2;
    }

    *(*(*(a1 + 56) + 8) + 24) = v18;
    goto LABEL_29;
  }

  if (v14 != 1)
  {
    *(v13 + 24) = 3;
  }

  if (*(*(*(a1 + 72) + 8) + 24) != 1)
  {
    goto LABEL_49;
  }

  v20 = *(a1 + 32);
  if (!v20)
  {
    goto LABEL_49;
  }

  if (!v20[2])
  {
    goto LABEL_49;
  }

  v21 = [objc_getProperty(v20 v11];
  if (!v21)
  {
    goto LABEL_49;
  }

LABEL_33:
  v23 = v21;
  v24 = *(a1 + 32);
  if (v24)
  {
    v24 = objc_getProperty(v24, v22, 8, 1);
  }

  v25 = [v24 VPN];
  v26 = [v25 isOnDemandEnabled];

  if (v26)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      if (v29)
      {
        v29 = objc_getProperty(v29, v28, 8, 1);
      }

      v31 = [v29 name];
      v32 = *(a1 + 32);
      if (v32)
      {
        v32 = objc_getProperty(v32, v30, 8, 1);
      }

      v33 = [v32 identifier];
      *buf = 138412546;
      v38 = v31;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "Fetching extended status of %@ (%@)", buf, 0x16u);
    }

    v35 = *(a1 + 40);
    if (v35)
    {
      objc_getProperty(v35, v34, 48, 1);
    }

    v36 = *(a1 + 48);
    ne_session_get_info();
  }

  else
  {
LABEL_49:
    dispatch_group_leave(*(a1 + 48));
  }
}

void __52__NEVPNConnectivityManager_refreshConnectivityState__block_invoke_45(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setVisibilityStyle:*(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) setConnectivityState:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 32) setHasRelayConfigurations:*(*(*(a1 + 56) + 8) + 24)];
  [*(a1 + 32) setUsesPolicyBasedRouting:0];
  if ((*(*(*(a1 + 48) + 8) + 24) - 1) <= 1)
  {
    [*(a1 + 32) setUsesPolicyBasedRouting:*(*(*(a1 + 64) + 8) + 24)];
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 connectivityState];
    if (v3)
    {
      if (v4 > 5)
      {
        v5 = @"NEVPNConnectivityStateInactive";
      }

      else
      {
        v5 = off_1E7F09710[v4];
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = [*(a1 + 32) visibilityStyle];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v7 = ", has relays";
    }

    else
    {
      v7 = "";
    }

    v8 = [*(a1 + 32) usesPolicyBasedRouting];
    v9 = "does not use";
    v13 = 138413058;
    v14 = v5;
    v15 = 2048;
    if (v8)
    {
      v9 = "uses";
    }

    v16 = v6;
    v17 = 2082;
    v18 = v7;
    v19 = 2080;
    v20 = v9;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "VPN connectivity state is now %@, visibility state is now %ld%{public}s, %s policy-based routing", &v13, 0x2Au);
  }

  v10 = [*(a1 + 32) delegate];
  v11 = ne_log_obj();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, "NEVPNConnectivityManager: invoking delegate", &v13, 2u);
    }

    [v10 connectivityManagerDidChange:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "NEVPNConnectivityManager: delegate is nil", &v13, 2u);
    }
  }
}

void __52__NEVPNConnectivityManager_refreshConnectivityState__block_invoke_39(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = MEMORY[0x1BFAFC5E0](v3);
    v7 = MEMORY[0x1E69E9E80];
    if (v6 == MEMORY[0x1E69E9E80])
    {
      v8 = xpc_dictionary_get_value(v5, "VPN");
      v9 = v8;
      if (v8 && MEMORY[0x1BFAFC5E0](v8) == v7)
      {
        int64 = xpc_dictionary_get_int64(v9, "OnDemandAction");
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          Property = *(a1 + 32);
          if (Property)
          {
            Property = objc_getProperty(Property, v12, 8, 1);
          }

          v15 = [Property name];
          v16 = *(a1 + 32);
          if (v16)
          {
            v16 = objc_getProperty(v16, v14, 8, 1);
          }

          v17 = [v16 identifier];
          v39 = 134218498;
          v40 = int64;
          v41 = 2112;
          v42 = v15;
          v43 = 2112;
          v44 = v17;
          _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Got on demand action of %ld for %@ (%@)", &v39, 0x20u);
        }

        if (int64 == 2)
        {
          *(*(*(a1 + 48) + 8) + 24) = 2;
        }
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      v18 = objc_getProperty(v18, v4, 8, 1);
    }

    v19 = [v18 VPN];
    v20 = [v19 protocol];
    v21 = [v20 type];

    if (v21 == 4)
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = objc_getProperty(v23, v22, 8, 1);
      }

      v24 = [v23 VPN];
      v25 = [v24 protocol];

      v26 = [v25 providerBundleIdentifier];
      v27 = [v25 pluginType];
      v28 = [NELaunchServices pluginProxyWithIdentifier:v26 type:v27 pluginClass:5 extensionPoint:0];

      v29 = [v25 providerBundleIdentifier];
      v30 = [v25 pluginType];
      v31 = [NELaunchServices pluginProxyWithIdentifier:v29 type:v30 pluginClass:2 extensionPoint:0];

      if (!(v28 | v31))
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          if (v34)
          {
            v34 = objc_getProperty(v34, v33, 8, 1);
          }

          v36 = [v34 name];
          v37 = *(a1 + 32);
          if (v37)
          {
            v37 = objc_getProperty(v37, v35, 8, 1);
          }

          v38 = [v37 identifier];
          v39 = 138412546;
          v40 = v36;
          v41 = 2112;
          v42 = v38;
          _os_log_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_DEFAULT, "Provider is not available for %@ (%@)", &v39, 0x16u);
        }

        *(*(*(a1 + 48) + 8) + 24) = 2;
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)toggleVPNConnectivity:(BOOL)connectivity
{
  v63 = *MEMORY[0x1E69E9840];
  if (!connectivity)
  {
    [(NEVPNConnectivityManager *)self setConnectivityState:3];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v29, 56, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = Property;
    v31 = [v6 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (!v31)
    {
LABEL_59:
      v28 = 0;
      goto LABEL_60;
    }

    v34 = v31;
    v35 = *v50;
    *&v33 = 138412290;
    v48 = v33;
LABEL_36:
    v36 = 0;
    while (1)
    {
      if (*v50 != v35)
      {
        objc_enumerationMutation(v6);
      }

      v37 = *(*(&v49 + 1) + 8 * v36);
      if (v37)
      {
        if ([objc_getProperty(*(*(&v49 + 1) + 8 * v36) v32])
        {
          v38 = objc_getProperty(v37, v32, 8, 1);
LABEL_42:
          v39 = [v38 VPN];

          if (v39)
          {
            if (v37 && v37[2])
            {
              ne_session_stop();
            }

            else
            {
              v40 = ne_log_obj();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                if (v37)
                {
                  v42 = objc_getProperty(v37, v41, 8, 1);
                }

                else
                {
                  v42 = 0;
                }

                name = [v42 name];
                *buf = v48;
                v61 = name;
                _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "No ne_session available for %@", buf, 0xCu);
              }
            }
          }
        }
      }

      else
      {
        isEnabled = [0 isEnabled];
        v38 = 0;
        if (isEnabled)
        {
          goto LABEL_42;
        }
      }

      if (v34 == ++v36)
      {
        v45 = [v6 countByEnumeratingWithState:&v49 objects:v57 count:16];
        v34 = v45;
        if (!v45)
        {
          goto LABEL_59;
        }

        goto LABEL_36;
      }
    }
  }

  [(NEVPNConnectivityManager *)self setConnectivityState:1];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  if (self)
  {
    v5 = objc_getProperty(self, v4, 56, 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v7)
  {
    v10 = v7;
    v11 = *v54;
    *&v9 = 138412290;
    v47 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        if (v13)
        {
          if (![objc_getProperty(*(*(&v53 + 1) + 8 * v12) v8])
          {
            goto LABEL_21;
          }

          v14 = objc_getProperty(v13, v8, 8, 1);
        }

        else
        {
          isEnabled2 = [0 isEnabled];
          v14 = 0;
          if ((isEnabled2 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v15 = [v14 VPN];

        if (v15)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (v13)
            {
              v18 = objc_getProperty(v13, v17, 8, 1);
            }

            else
            {
              v18 = 0;
            }

            name2 = [v18 name];
            *buf = v47;
            v61 = name2;
            _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "Starting %@", buf, 0xCu);
          }

          if (v13 && v13[2])
          {
            ne_session_start();
            goto LABEL_59;
          }

          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            if (v13)
            {
              v22 = objc_getProperty(v13, v21, 8, 1);
            }

            else
            {
              v22 = 0;
            }

            name3 = [v22 name];
            *buf = v47;
            v61 = name3;
            _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "No ne_session available for %@", buf, 0xCu);
          }
        }

LABEL_21:
        ++v12;
      }

      while (v10 != v12);
      v25 = [v6 countByEnumeratingWithState:&v53 objects:v62 count:16];
      v10 = v25;
    }

    while (v25);
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = *MEMORY[0x1E696A798];
  v58 = *MEMORY[0x1E696A578];
  v59 = @"No enabled VPN configurations are available";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v28 = [v26 initWithDomain:v27 code:2 userInfo:v6];
LABEL_60:

  return v28;
}

- (void)dealloc
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 56, 1);
    objc_setProperty_atomic(self, v4, 0, 56);
    [(NEVPNConnectivityManager *)self cancelSessions:v3 withCompletionHandler:0];
  }

  else
  {
    [(NEVPNConnectivityManager *)0 cancelSessions:0 withCompletionHandler:?];
    v3 = 0;
  }

  v5.receiver = self;
  v5.super_class = NEVPNConnectivityManager;
  [(NEVPNConnectivityManager *)&v5 dealloc];
}

- (void)cancelSessions:(void *)sessions withCompletionHandler:
{
  v5 = a2;
  sessionsCopy = sessions;
  if (self)
  {
    if ([v5 count])
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "Canceling sessions", buf, 2u);
      }

      v9 = objc_getProperty(self, v8, 48, 1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__NEVPNConnectivityManager_cancelSessions_withCompletionHandler___block_invoke;
      block[3] = &unk_1E7F0AAA0;
      v12 = v5;
      v13 = v9;
      v14 = sessionsCopy;
      v10 = v9;
      dispatch_async(v10, block);
    }

    else if (sessionsCopy)
    {
      sessionsCopy[2](sessionsCopy);
    }
  }
}

void __65__NEVPNConnectivityManager_cancelSessions_withCompletionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        dispatch_group_enter(v2);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __65__NEVPNConnectivityManager_cancelSessions_withCompletionHandler___block_invoke_2;
        v16[3] = &unk_1E7F0B0E8;
        v17 = v2;
        v9 = v16;
        if (v7)
        {
          Property = objc_getProperty(v7, v8, 40, 1);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __56__NEVPNConnectivitySession_cancelWithCompletionHandler___block_invoke;
          block[3] = &unk_1E7F0B588;
          block[4] = v7;
          v23 = v9;
          dispatch_async(Property, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v4);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__NEVPNConnectivityManager_cancelSessions_withCompletionHandler___block_invoke_3;
  v14[3] = &unk_1E7F0B600;
  v11 = *(v12 + 40);
  v15 = *(v12 + 48);
  dispatch_group_notify(v2, v11, v14);
}

uint64_t __65__NEVPNConnectivityManager_cancelSessions_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (NEVPNConnectivityManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = NEVPNConnectivityManager;
  v5 = [(NEVPNConnectivityManager *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    initForAllUsers = [[NEConfigurationManager alloc] initForAllUsers];
    configManager = v6->_configManager;
    v6->_configManager = initForAllUsers;

    *&v6->_visibilityStyle = xmmword_1BAA4E5A0;
    v6->_hasRelayConfigurations = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("Connectivity manager queue", v9);
    queue = v6->_queue;
    v6->_queue = v10;

    objc_initWeak(&location, v6);
    v12 = v6->_configManager;
    v13 = v6->_queue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__NEVPNConnectivityManager_initWithDelegate___block_invoke;
    v18[3] = &unk_1E7F0ABE0;
    objc_copyWeak(&v19, &location);
    [(NEConfigurationManager *)v12 setChangedQueue:v13 andHandler:v18];
    v14 = v6->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__NEVPNConnectivityManager_initWithDelegate___block_invoke_35;
    block[3] = &unk_1E7F0B0E8;
    v17 = v6;
    dispatch_async(v14, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __45__NEVPNConnectivityManager_initWithDelegate___block_invoke(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "NEVPNConnectivityManager: Configurations changed", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEVPNConnectivityManager *)WeakRetained refreshConfigurations];
}

- (void)refreshConfigurations
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 56, 1);
    objc_setProperty_atomic(self, v4, 0, 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__NEVPNConnectivityManager_refreshConfigurations__block_invoke;
    v5[3] = &unk_1E7F0B0E8;
    v5[4] = self;
    [(NEVPNConnectivityManager *)self cancelSessions:v3 withCompletionHandler:v5];
  }
}

void __49__NEVPNConnectivityManager_refreshConfigurations__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 40, 1);
  }

  v5 = Property;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 48, 1);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__NEVPNConnectivityManager_refreshConfigurations__block_invoke_2;
  v9[3] = &unk_1E7F0B0A0;
  v9[4] = v8;
  [v5 loadConfigurationsWithCompletionQueue:v7 handler:v9];
}

void __49__NEVPNConnectivityManager_refreshConfigurations__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Failed to load NetworkExtension configurations: %@", buf, 0xCu);
    }
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_17693];
    v35 = v36 = v5;
    v8 = [v5 filteredArrayUsingPredicate:?];
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = [v8 count];
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Loaded %lu VPN configurations", buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      do
      {
        v14 = 0;
        do
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * v14);
          v16 = [NEVPNConnectivitySession alloc];
          v18 = v16;
          v19 = *(a1 + 32);
          if (v19)
          {
            Property = objc_getProperty(*(a1 + 32), v17, 48, 1);
            v16 = v18;
            v21 = v15;
            v22 = v19;
          }

          else
          {
            v21 = v15;
            v22 = 0;
            Property = 0;
          }

          v23 = [(NEVPNConnectivitySession *)v16 initWithConfiguration:v21 delegate:v22 queue:Property];
          v24 = ne_log_obj();
          v25 = v24;
          if (v23)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [objc_getProperty(v23 v26];
              v29 = [objc_getProperty(v23 v28];
              *buf = 138412546;
              v43 = v27;
              v44 = 2112;
              v45 = v29;
              _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEFAULT, "Now tracking VPN configuration %@ (%@)", buf, 0x16u);
            }

            [v10 addObject:v23];
          }

          else
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v30 = [v15 name];
              v31 = [v15 identifier];
              *buf = 138412546;
              v43 = v30;
              v44 = 2112;
              v45 = v31;
              _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Failed to track VPN configuration %@ (%@)", buf, 0x16u);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v32 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        v12 = v32;
      }

      while (v32);
    }

    v34 = *(a1 + 32);
    if (v34)
    {
      objc_setProperty_atomic(v34, v33, v10, 56);
      v34 = *(a1 + 32);
    }

    v6 = 0;
    [(NEVPNConnectivityManager *)v34 refreshConnectivityState];

    v5 = v36;
    v7 = v35;
  }
}

BOOL __49__NEVPNConnectivityManager_refreshConfigurations__block_invoke_51(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 VPN];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = [v2 appVPN];
      if (v5)
      {
        v4 = 1;
      }

      else
      {
        v6 = [v2 alwaysOnVPN];
        if (v6)
        {
          v4 = 1;
        }

        else
        {
          v7 = [v2 relay];
          v4 = v7 != 0;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end