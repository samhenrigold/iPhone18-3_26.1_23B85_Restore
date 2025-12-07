@interface DACoreDAVTaskManager
- (DACoreDAVTaskManager)initWithAccount:(id)account;
- (void)_updateSpinner:(BOOL)spinner;
- (void)dealloc;
- (void)taskManagerDidAddTask:(id)task;
- (void)taskManagerWillRemoveTask:(id)task;
@end

@implementation DACoreDAVTaskManager

- (DACoreDAVTaskManager)initWithAccount:(id)account
{
  v7.receiver = self;
  v7.super_class = DACoreDAVTaskManager;
  v3 = [(DATaskManager *)&v7 initWithAccount:account];
  if (v3)
  {
    v4 = objc_opt_new();
    applicationsShowingActivity = v3->_applicationsShowingActivity;
    v3->_applicationsShowingActivity = v4;
  }

  return v3;
}

- (void)_updateSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277CF3A50]));
  spinnerIdentifiers = [WeakRetained spinnerIdentifiers];

  v7 = objc_opt_new();
  v32 = spinnerCopy;
  if (spinnerCopy)
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v8 = spinnerIdentifiers;
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          if (([(NSMutableSet *)self->_applicationsShowingActivity containsObject:v13]& 1) == 0)
          {
            [(NSMutableSet *)self->_applicationsShowingActivity addObject:v13];
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v14 = spinnerIdentifiers;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * j);
          if ([(NSMutableSet *)self->_applicationsShowingActivity containsObject:v19])
          {
            [(NSMutableSet *)self->_applicationsShowingActivity removeObject:v19];
            [v7 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v16);
    }
  }

  if ([v7 count])
  {
    v30 = spinnerIdentifiers;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v7;
    v20 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      v23 = *(MEMORY[0x277CF3AF0] + 6);
      if (v32)
      {
        v24 = @"ON";
      }

      else
      {
        v24 = @"OFF";
      }

      v25 = *(MEMORY[0x277CF3AF0] + 7);
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v33 + 1) + 8 * k);
          v28 = DALoggingwithCategory();
          if (os_log_type_enabled(v28, v23))
          {
            *buf = 138412546;
            v46 = v24;
            v47 = 2112;
            v48 = v27;
            _os_log_impl(&dword_2424DC000, v28, v23, "Telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }

          SBSSetStatusBarShowsActivityForApplication();
          v29 = DALoggingwithCategory();
          if (os_log_type_enabled(v29, v25))
          {
            *buf = 138412546;
            v46 = v24;
            v47 = 2112;
            v48 = v27;
            _os_log_impl(&dword_2424DC000, v29, v25, "Finished telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }
        }

        v21 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v21);
    }

    spinnerIdentifiers = v30;
  }
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_applicationsShowingActivity;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    v7 = *(MEMORY[0x277CF3AF0] + 7);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = DALoggingwithCategory();
        if (os_log_type_enabled(v10, v6))
        {
          *buf = 138412290;
          v19 = v9;
          _os_log_impl(&dword_2424DC000, v10, v6, "Telling springboard to set the spinner to OFF for identifier %@", buf, 0xCu);
        }

        SBSSetStatusBarShowsActivityForApplication();
        v11 = DALoggingwithCategory();
        if (os_log_type_enabled(v11, v7))
        {
          *buf = 138412290;
          v19 = v9;
          _os_log_impl(&dword_2424DC000, v11, v7, "Finished telling springboard to set the spinner to OFF for identifier %@", buf, 0xCu);
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v4);
  }

  v13.receiver = self;
  v13.super_class = DACoreDAVTaskManager;
  [(DATaskManager *)&v13 dealloc];
}

- (void)taskManagerDidAddTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DACoreDAVTaskManager *)selfCopy _updateSpinner:1];
  objc_sync_exit(selfCopy);

  v6.receiver = selfCopy;
  v6.super_class = DACoreDAVTaskManager;
  [(DATaskManager *)&v6 taskManagerDidAddTask:taskCopy];
}

- (void)taskManagerWillRemoveTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DACoreDAVTaskManager *)selfCopy _updateSpinner:0];
  objc_sync_exit(selfCopy);

  v6.receiver = selfCopy;
  v6.super_class = DACoreDAVTaskManager;
  [(DATaskManager *)&v6 taskManagerWillRemoveTask:taskCopy];
}

@end