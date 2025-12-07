@interface TSRemoteUIStyle
- (TSRemoteUIStyle)initWithButton:(id)button;
- (void)applyToObjectModel:(id)model;
@end

@implementation TSRemoteUIStyle

- (TSRemoteUIStyle)initWithButton:(id)button
{
  buttonCopy = button;
  v9.receiver = self;
  v9.super_class = TSRemoteUIStyle;
  v6 = [(RUIStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_button, button);
  }

  return v7;
}

- (void)applyToObjectModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allPages = [model allPages];
  v5 = [allPages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allPages);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        navigationItem = [v9 navigationItem];
        [navigationItem setRightBarButtonItem:self->_button];

        [v9 setModalInPresentation:1];
      }

      v6 = [allPages countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end