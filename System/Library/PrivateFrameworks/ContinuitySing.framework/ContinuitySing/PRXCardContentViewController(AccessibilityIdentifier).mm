@interface PRXCardContentViewController(AccessibilityIdentifier)
- (void)setAccessibilityIdentifier:()AccessibilityIdentifier forAction:;
@end

@implementation PRXCardContentViewController(AccessibilityIdentifier)

- (void)setAccessibilityIdentifier:()AccessibilityIdentifier forAction:
{
  v21 = a3;
  v6 = a4;
  selfCopy = self;
  bottomTray = [self bottomTray];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  actionButtons = [bottomTray actionButtons];
  v9 = [actionButtons countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(actionButtons);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        currentTitle = [v13 currentTitle];
        title = [v6 title];
        v16 = [currentTitle isEqualToString:title];

        if (v16)
        {
          v18 = v21;
          v19 = ContinuitySingLog([v13 setAccessibilityIdentifier:v21]);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v23 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
            v24 = 2080;
            v25 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
            v26 = 2112;
            v27 = v21;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_2441FB000, v19, OS_LOG_TYPE_DEFAULT, "%s: %s Set accessibility identifier %@ on button %@", buf, 0x2Au);
          }

          goto LABEL_14;
        }
      }

      v10 = [actionButtons countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  actionButtons = ContinuitySingLog(v17);
  v18 = v21;
  if (os_log_type_enabled(actionButtons, OS_LOG_TYPE_ERROR))
  {
    [(PRXCardContentViewController(AccessibilityIdentifier) *)v21 setAccessibilityIdentifier:selfCopy forAction:actionButtons];
  }

LABEL_14:
}

- (void)setAccessibilityIdentifier:()AccessibilityIdentifier forAction:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 actions];
  v6 = 136315906;
  v7 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
  v8 = 2080;
  v9 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v5;
  _os_log_error_impl(&dword_2441FB000, a3, OS_LOG_TYPE_ERROR, "%s: %s Action for %@ has not been found in %@", &v6, 0x2Au);
}

@end