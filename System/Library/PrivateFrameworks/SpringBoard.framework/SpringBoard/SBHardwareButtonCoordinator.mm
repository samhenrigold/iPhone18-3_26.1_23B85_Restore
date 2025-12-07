@interface SBHardwareButtonCoordinator
- (BOOL)buttonShouldStart:(id)start;
- (id)_shouldSuppressButtonIdentifier:(unint64_t)identifier;
- (id)assertButtonIsActive:(id)active dropletHintIdentifier:(int64_t)identifier;
- (id)cancelHardwareButtons:(id)buttons fromButton:(id)button;
- (id)setWindowScene:(id *)result;
- (id)windowScene;
- (int)initWithHardwareButtons:(void *)buttons windowScene:;
- (void)dealloc;
@end

@implementation SBHardwareButtonCoordinator

void __67__SBHardwareButtonCoordinator_initWithHardwareButtons_windowScene___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SBLogButtonsLock(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "sysdiagnose began - canceling buttons", buf, 2u);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(*(a1 + 32) + 24) allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) cancelHardwareButtonPress];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  sysdiagnoseDidBeginNotificationToken = self->_sysdiagnoseDidBeginNotificationToken;
  if (sysdiagnoseDidBeginNotificationToken != -1)
  {
    notify_cancel(sysdiagnoseDidBeginNotificationToken);
    self->_sysdiagnoseDidBeginNotificationToken = -1;
  }

  v4.receiver = self;
  v4.super_class = SBHardwareButtonCoordinator;
  [(SBHardwareButtonCoordinator *)&v4 dealloc];
}

- (id)assertButtonIsActive:(id)active dropletHintIdentifier:(int64_t)identifier
{
  v46 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v7 = activeCopy;
  if (!self->_activeButtonIdentifiers)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA940]);
    activeButtonIdentifiers = self->_activeButtonIdentifiers;
    self->_activeButtonIdentifiers = v8;
  }

  v10 = SBLogButtonsInteraction(activeCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v7;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ active", buf, 0xCu);
  }

  [(NSCountedSet *)self->_activeButtonIdentifiers addObject:v7];
  if (identifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    hardwareButtonBezelEffectsCoordinator = [WeakRetained hardwareButtonBezelEffectsCoordinator];
    identifier = [hardwareButtonBezelEffectsCoordinator activateHintDropletForButton:identifier];
  }

  if ([(NSCountedSet *)self->_activeButtonIdentifiers countForObject:v7]== 1)
  {
    v13 = [(NSDictionary *)self->_buttonIdentifierToSuppressedButtonIdentifiers objectForKey:v7];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(NSDictionary *)self->_buttonIdentifierToButtonInstance objectForKey:*(*(&v38 + 1) + 8 * i)];
          [v18 cancelHardwareButtonPress];
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v15);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = self->_otherButtonsAlwaysSuppressButtonIdentifiers;
  v20 = [(NSSet *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        if (([v7 isEqual:v24] & 1) == 0)
        {
          v25 = [(NSDictionary *)self->_buttonIdentifierToButtonInstance objectForKey:v24];
          [v25 cancelHardwareButtonPress];
        }
      }

      v21 = [(NSSet *)v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v21);
  }

  v26 = objc_alloc(MEMORY[0x277CF0CE8]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __92__SBHardwareButtonCoordinator_ButtonsColluding__assertButtonIsActive_dropletHintIdentifier___block_invoke;
  v31[3] = &unk_2783BB1A8;
  v31[4] = self;
  v32 = v7;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  v28 = v7;
  v29 = [v26 initWithIdentifier:v28 forReason:@"button active" invalidationBlock:v31];

  return v29;
}

void __92__SBHardwareButtonCoordinator_ButtonsColluding__assertButtonIsActive_dropletHintIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v2 = SBLogButtonsInteraction([*(a1 + 48) invalidate]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ inactive", &v4, 0xCu);
  }
}

- (id)cancelHardwareButtons:(id)buttons fromButton:(id)button
{
  v39 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  buttonCopy = button;
  v9 = buttonCopy;
  if (!self->_canceledButtonIdentifiers)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCA940]);
    canceledButtonIdentifiers = self->_canceledButtonIdentifiers;
    self->_canceledButtonIdentifiers = v10;
  }

  v12 = SBLogButtonsInteraction(buttonCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CF0C08] descriptionForRootObject:buttonsCopy];
    *buf = 138543618;
    v36 = v9;
    v37 = 2114;
    v38 = v13;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ started canceling %{public}@", buf, 0x16u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = buttonsCopy;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        if ([v19 isEqual:v9])
        {
          [(SBHardwareButtonCoordinator(ButtonsColluding) *)v9 cancelHardwareButtons:a2 fromButton:self];
        }

        [(NSCountedSet *)self->_canceledButtonIdentifiers addObject:v19];
        v20 = [(NSDictionary *)self->_buttonIdentifierToButtonInstance objectForKey:v19];
        [v20 cancelHardwareButtonPress];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  v21 = objc_alloc(MEMORY[0x277CF0CE8]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __82__SBHardwareButtonCoordinator_ButtonsColluding__cancelHardwareButtons_fromButton___block_invoke;
  v26[3] = &unk_2783BB1A8;
  v27 = v14;
  selfCopy = self;
  v29 = v9;
  v22 = v9;
  v23 = v14;
  v24 = [v21 initWithIdentifier:@"cancel some buttons" forReason:v22 invalidationBlock:v26];

  return v24;
}

void __82__SBHardwareButtonCoordinator_ButtonsColluding__cancelHardwareButtons_fromButton___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 32) removeObject:{*(*(&v11 + 1) + 8 * v6++), v11}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v4);
  }

  v8 = SBLogButtonsInteraction(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x277CF0C08] descriptionForRootObject:*(a1 + 32)];
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ stopped canceling %{public}@", buf, 0x16u);
  }
}

- (int)initWithHardwareButtons:(void *)buttons windowScene:
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  buttonsCopy = buttons;
  if (self)
  {
    v46.receiver = self;
    v46.super_class = SBHardwareButtonCoordinator;
    v7 = objc_msgSendSuper2(&v46, sel_init);
    self = v7;
    if (v7)
    {
      v38 = buttonsCopy;
      objc_storeWeak(v7 + 2, buttonsCopy);
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v39 = v5;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v43;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v43 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v42 + 1) + 8 * i);
            hardwareButtonIdentifier = [v14 hardwareButtonIdentifier];
            [v8 setObject:v14 forKey:hardwareButtonIdentifier];

            [v14 setHardwareButtonCoordinator:self];
          }

          v11 = [v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
        }

        while (v11);
      }

      v16 = *(self + 3);
      *(self + 3) = v8;
      v37 = v8;

      v17 = MEMORY[0x277CBEB98];
      v52 = @"Lock";
      v53[0] = @"Action";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      v19 = [v17 setWithArray:v18];
      v53[1] = @"Lock";
      v54[0] = v19;
      v20 = MEMORY[0x277CBEB98];
      v51 = @"Action";
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
      v22 = [v20 setWithArray:v21];
      v54[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
      v24 = *(self + 6);
      *(self + 6) = v23;

      v48 = @"Lock";
      v49[0] = @"Action";
      v25 = MEMORY[0x277CBEB98];
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      v27 = [v25 setWithArray:v26];
      v49[1] = @"Lock";
      v50[0] = v27;
      v28 = MEMORY[0x277CBEB98];
      v47 = @"Action";
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v30 = [v28 setWithArray:v29];
      v50[1] = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      v32 = *(self + 8);
      *(self + 8) = v31;

      v33 = [MEMORY[0x277CBEB98] setWithObjects:{@"Capture", 0}];
      v34 = *(self + 7);
      *(self + 7) = v33;

      self[2] = -1;
      v35 = self + 2;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __67__SBHardwareButtonCoordinator_initWithHardwareButtons_windowScene___block_invoke;
      handler[3] = &unk_2783A95E8;
      self = self;
      selfCopy = self;
      notify_register_dispatch("com.apple.sysdiagnose.sysdiagnoseStarted", v35, MEMORY[0x277D85CD0], handler);

      buttonsCopy = v38;
      v5 = v39;
    }
  }

  return self;
}

- (id)windowScene
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 2);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setWindowScene:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 2, a2);
  }

  return result;
}

- (id)_shouldSuppressButtonIdentifier:(unint64_t)identifier
{
  v3 = a2;
  if (identifier)
  {
    if (objc_msgSend_containsObject_(*(identifier + 56)))
    {
      v4 = [*(identifier + 40) mutableCopy];
      [v4 removeObject:v3];
      identifier = [v4 count] != 0;
    }

    else
    {
      v4 = [*(identifier + 64) objectForKey:v3];
      identifier = [*(identifier + 40) intersectsSet:v4];
    }
  }

  return identifier;
}

- (BOOL)buttonShouldStart:(id)start
{
  v26 = *MEMORY[0x277D85DE8];
  startCopy = start;
  v5 = [(SBHardwareButtonCoordinator *)self _shouldSuppressButtonIdentifier:startCopy];
  v6 = objc_msgSend_containsObject_(self->_canceledButtonIdentifiers);
  v7 = v6;
  v8 = (v5 | v6) ^ 1;
  v9 = SBLogButtonsInteraction(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = v7 & 1;
    v12 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_activeButtonIdentifiers];
    v13 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_canceledButtonIdentifiers];
    v14 = 138544642;
    v15 = startCopy;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v8 & 1;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ shouldSuppress:(%{BOOL}u) isCanceled:(%{BOOL}u) shouldStart:(%{BOOL}u) active:%{public}@ canceled:%{public}@", &v14, 0x32u);
  }

  return v8 & 1;
}

@end