@interface TUIReusableSubviewPool
- (TUIReusableSubviewPool)initWithRegistry:(id)registry;
- (id)dequeueReusableSubviewWithReuseIdentifier:(id)identifier host:(id)host;
- (void)clearPool;
- (void)prepareToReuseHost:(id)host;
- (void)reuseSubviews:(id)subviews host:(id)host;
@end

@implementation TUIReusableSubviewPool

- (TUIReusableSubviewPool)initWithRegistry:(id)registry
{
  registryCopy = registry;
  v11.receiver = self;
  v11.super_class = TUIReusableSubviewPool;
  v6 = [(TUIReusableSubviewPool *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, registry);
    v8 = objc_opt_new();
    subviewsAvailableByIdentifier = v7->_subviewsAvailableByIdentifier;
    v7->_subviewsAvailableByIdentifier = v8;
  }

  return v7;
}

- (id)dequeueReusableSubviewWithReuseIdentifier:(id)identifier host:(id)host
{
  identifierCopy = identifier;
  hostCopy = host;
  v9 = hostCopy;
  if (identifierCopy)
  {
    v10 = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier objectForKeyedSubscript:identifierCopy];
    tui_hostingView = [v9 tui_hostingView];
    v12 = tui_hostingView;
    if (tui_hostingView)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    if (v13 || (v25[0] = _NSConcreteStackBlock, v25[1] = 3221225472, v25[2] = sub_DC5E4, v25[3] = &unk_261750, v4 = &v26, v26 = tui_hostingView, v15 = [v10 indexOfObjectPassingTest:v25], v15 == 0x7FFFFFFFFFFFFFFFLL))
    {
      if ([v10 count])
      {
        lastObject = [v10 lastObject];
        [v10 removeLastObject];
        if (lastObject)
        {
LABEL_12:
          if ([v9 isDescendantOfView:lastObject])
          {
            [v9 removeFromSuperview];
          }

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_DC624;
          v23[3] = &unk_25DE30;
          v17 = lastObject;
          v24 = v17;
          [UIView performWithoutAnimation:v23];

          if (!v14)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v21 = v15;
      lastObject = [v10 objectAtIndexedSubscript:v15];
      [v10 removeObjectAtIndex:v21];
      if (lastObject)
      {
        goto LABEL_12;
      }
    }

    v17 = [(TUIViewRegistry *)self->_registry newSubviewWithReuseIdentifier:identifierCopy];
    if (!v14)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:

    goto LABEL_23;
  }

  v18 = TUIDefaultLog(hostCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_19B400(v18);
  }

  if (_TUIDeviceHasInternalInstall(v19, v20))
  {
    objc_exception_throw([[NSException alloc] initWithName:@"Nil reuseIdentifier" reason:@"Requested a view with nil reuseIdentifier" userInfo:0]);
  }

  v17 = 0;
LABEL_24:

  return v17;
}

- (void)prepareToReuseHost:(id)host
{
  hostCopy = host;
  tui_hostedSubviewsMap = [hostCopy tui_hostedSubviewsMap];
  allValues = [tui_hostedSubviewsMap allValues];
  v7 = [allValues copy];

  [hostCopy setTui_hostedSubviewsMap:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DC75C;
  v9[3] = &unk_25DE30;
  v10 = v7;
  v8 = v7;
  [UIView performWithoutAnimation:v9];
  [(TUIReusableSubviewPool *)self reuseSubviews:v8 host:hostCopy];
}

- (void)reuseSubviews:(id)subviews host:(id)host
{
  subviewsCopy = subviews;
  hostCopy = host;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = subviewsCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        reuseIdentifier = [v12 reuseIdentifier];
        if (reuseIdentifier)
        {
          [v12 setHidden:1];
          v14 = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier objectForKeyedSubscript:reuseIdentifier];
          if (!v14)
          {
            v14 = objc_opt_new();
            [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier setObject:v14 forKeyedSubscript:reuseIdentifier];
          }

          if ([v14 indexOfObjectIdenticalTo:v12] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 addObject:v12];
          }
        }

        else
        {
          v15 = TUIDefaultLog(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_19B444(v29, v12, &v30, v15);
          }

          if (_TUIDeviceHasInternalInstall(v16, v17))
          {
            v18 = [NSException alloc];
            v27 = @"view";
            v28 = v12;
            v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
            v20 = [v18 initWithName:@"Nil reuseIdentifier" reason:@"A reusable view should have a non-nil reuseIdentifier" userInfo:v19];
            v21 = v20;

            objc_exception_throw(v20);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }
}

- (void)clearPool
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier objectForKeyedSubscript:v8, 0];
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13) removeFromSuperview];
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_subviewsAvailableByIdentifier removeAllObjects];
}

@end