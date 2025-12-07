@interface FBSDisplayIdentity(SpringBoard)
- (id)UIScreen;
- (id)currentConfiguration;
@end

@implementation FBSDisplayIdentity(SpringBoard)

- (id)currentConfiguration
{
  BSDispatchQueueAssertMain();
  windowSceneManager = [SBApp windowSceneManager];
  v4 = [windowSceneManager windowSceneForDisplayIdentity:self];

  _fbsDisplayConfiguration = [v4 _fbsDisplayConfiguration];

  return _fbsDisplayConfiguration;
}

- (id)UIScreen
{
  v31 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  screens = [MEMORY[0x277D759A0] screens];
  v4 = [screens countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(screens);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        displayIdentity = [v8 displayIdentity];
        v10 = [self isEqual:displayIdentity];

        if (v10)
        {
          v11 = v8;
          goto LABEL_12;
        }
      }

      v5 = [screens countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([self isRootIdentity])
  {
    v11 = 0;
  }

  else
  {
    screens = [self rootIdentity];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    screens2 = [MEMORY[0x277D759A0] screens];
    v14 = [screens2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(screens2);
          }

          v18 = *(*(&v21 + 1) + 8 * j);
          displayIdentity2 = [v18 displayIdentity];
          v20 = [screens isEqual:displayIdentity2];

          if (v20)
          {
            v11 = v18;

            goto LABEL_12;
          }
        }

        v15 = [screens2 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  return v11;
}

@end