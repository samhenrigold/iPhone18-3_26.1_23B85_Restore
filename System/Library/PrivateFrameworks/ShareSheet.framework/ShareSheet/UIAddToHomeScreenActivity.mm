@interface UIAddToHomeScreenActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation UIAddToHomeScreenActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"AddToHomeScreen[Activity]" value:@"Add to Home Screen" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v36 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (_ShareSheetIsBrowser(itemsCopy, v4))
  {
    if (canPerformWithActivityItems__onceToken != -1)
    {
      [UIAddToHomeScreenActivity canPerformWithActivityItems:];
    }

    if (canPerformWithActivityItems__addToHomeScreenDisabled == 1)
    {
      v5 = share_sheet_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "UIAddToHomeScreenActivity: 'Add to Home Screen' is disabled";
LABEL_9:
        _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = itemsCopy;
      v9 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v5);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v20 = [v13 URL];
              isHTTPOrHTTPSURL = [v20 isHTTPOrHTTPSURL];

              if ((isHTTPOrHTTPSURL & 1) == 0)
              {
                v21 = share_sheet_log();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "UIAddToHomeScreenActivity: Activity item did not provide an eligible HTTP(S) URL", buf, 2u);
                }
              }

              goto LABEL_11;
            }
          }

          v10 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      if (NSClassFromString(&cfstr_Wkwebview.isa))
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = v5;
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
LABEL_23:
          v18 = 0;
          while (1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * v18);
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
              if (v16)
              {
                goto LABEL_23;
              }

              goto LABEL_29;
            }
          }

          v5 = v19;

          if (!v5)
          {
            goto LABEL_37;
          }

          v22 = [v5 URL];
          isHTTPOrHTTPSURL2 = [v22 isHTTPOrHTTPSURL];

          if (isHTTPOrHTTPSURL2)
          {
            isHTTPOrHTTPSURL = 1;
            goto LABEL_11;
          }

          v24 = share_sheet_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_DEFAULT, "UIAddToHomeScreenActivity: WKWebView is not currently displaying an eligible HTTP(S) URL", buf, 2u);
          }
        }

        else
        {
LABEL_29:

LABEL_37:
          v24 = share_sheet_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_DEFAULT, "UIAddToHomeScreenActivity: activityItems array does not contain a WKWebView", buf, 2u);
          }

          v5 = 0;
        }

        goto LABEL_10;
      }

      v5 = share_sheet_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "UIAddToHomeScreenActivity: activityItems array cannot contain a WKWebView";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "UIAddToHomeScreenActivity: App does not have the default browser entitlement";
      goto LABEL_9;
    }
  }

LABEL_10:
  isHTTPOrHTTPSURL = 0;
LABEL_11:

  return isHTTPOrHTTPSURL;
}

void __57__UIAddToHomeScreenActivity_canPerformWithActivityItems___block_invoke()
{
  v0 = [(objc_class *)getMCProfileConnectionClass() sharedConnection];
  canPerformWithActivityItems__addToHomeScreenDisabled = [v0 isEphemeralMultiUser];
}

- (void)prepareWithActivityItems:(id)items
{
  v43 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = *v38;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        getWKWebViewClass();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 URL];
          isHTTPOrHTTPSURL = [v8 isHTTPOrHTTPSURL];

          if (isHTTPOrHTTPSURL)
          {
            inited = objc_initWeak(&location, self);
            v20 = objc_alloc(getSFAddToHomeScreenViewControllerClass(inited));
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke;
            v34[3] = &unk_1E71F94C8;
            objc_copyWeak(&v35, &location);
            v21 = [v20 initWithWebView:v7 completion:v34];
            addToHomeScreenViewController = self->_addToHomeScreenViewController;
            self->_addToHomeScreenViewController = v21;

            objc_destroyWeak(&v35);
            objc_destroyWeak(&location);
            goto LABEL_26;
          }
        }
      }

      v4 = [itemsCopy countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v11)
  {
    v12 = *v31;
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * j);
        if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          v15 = v14;
          v16 = [v15 URL];
          isHTTPOrHTTPSURL2 = [v16 isHTTPOrHTTPSURL];

          if (isHTTPOrHTTPSURL2)
          {
            v23 = objc_alloc(getSFAddToHomeScreenViewControllerClass(v18));
            if (objc_opt_respondsToSelector())
            {
              objc_initWeak(&location, self);
              v24 = v23;
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v28[2] = __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke_2;
              v28[3] = &unk_1E71F94C8;
              objc_copyWeak(&v29, &location);
              v25 = [v24 initWithAddToHomeScreenActivityItem:v15 completion:v28];
              v26 = self->_addToHomeScreenViewController;
              self->_addToHomeScreenViewController = v25;

              objc_destroyWeak(&v29);
              objc_destroyWeak(&location);
            }

            goto LABEL_26;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:
}

void __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityDidFinish:a2];
}

void __54__UIAddToHomeScreenActivity_prepareWithActivityItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityDidFinish:a2];
}

@end