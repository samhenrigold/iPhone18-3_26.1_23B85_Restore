@interface LSApplicationWorkspaceObserver
+ (BOOL)actuallyOverridesDMFObserverMethod;
- (LSApplicationWorkspaceObserver)init;
- (LSApplicationWorkspaceObserver)initWithCoder:(id)coder;
- (void)applicationIconDidChange:(id)change;
- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused;
- (void)applicationInstallsDidCancel:(id)cancel;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidPause:(id)pause;
- (void)applicationInstallsDidPrioritize:(id)prioritize;
- (void)applicationInstallsDidResume:(id)resume;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationInstallsDidUpdateIcon:(id)icon;
- (void)applicationStateDidChange:(id)change;
- (void)applicationsDidChangePersonas:(id)personas;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidFailToUninstall:(id)uninstall;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)deviceManagementPolicyDidChange:(id)change;
- (void)encodeWithCoder:(id)coder;
- (void)networkUsageChanged:(BOOL)changed;
@end

@implementation LSApplicationWorkspaceObserver

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(LSApplicationWorkspaceObserver *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

- (LSApplicationWorkspaceObserver)init
{
  v6.receiver = self;
  v6.super_class = LSApplicationWorkspaceObserver;
  v2 = [(LSApplicationWorkspaceObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (LSApplicationWorkspaceObserver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSApplicationWorkspaceObserver;
  v5 = [(LSApplicationWorkspaceObserver *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)applicationInstallsDidStart:(id)start
{
  startCopy = start;
  v4 = _LSInstallLog(startCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidStart:];
  }
}

- (void)applicationInstallsDidChange:(id)change
{
  changeCopy = change;
  v4 = _LSInstallLog(changeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidChange:];
  }
}

- (void)applicationInstallsDidUpdateIcon:(id)icon
{
  iconCopy = icon;
  v4 = _LSInstallLog(iconCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidUpdateIcon:];
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v4 = _LSInstallLog(installCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidInstall:];
  }
}

- (void)applicationsWillInstall:(id)install
{
  installCopy = install;
  v4 = _LSInstallLog(installCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsWillInstall:];
  }
}

- (void)applicationsWillUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v4 = _LSInstallLog(uninstallCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsWillUninstall:];
  }
}

- (void)applicationsDidFailToInstall:(id)install
{
  installCopy = install;
  v4 = _LSInstallLog(installCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidFailToInstall:];
  }
}

- (void)applicationsDidFailToUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v4 = _LSInstallLog(uninstallCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidFailToUninstall:];
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v4 = _LSInstallLog(uninstallCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidUninstall:];
  }
}

- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused
{
  prioritizedCopy = prioritized;
  pausedCopy = paused;
  v7 = _LSInstallLog(pausedCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsArePrioritized:prioritizedCopy arePaused:?];
  }

  v9 = _LSInstallLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsArePrioritized:pausedCopy arePaused:?];
  }
}

- (void)applicationInstallsDidPause:(id)pause
{
  pauseCopy = pause;
  v4 = _LSInstallLog(pauseCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidPause:];
  }
}

- (void)applicationInstallsDidResume:(id)resume
{
  resumeCopy = resume;
  v4 = _LSInstallLog(resumeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidResume:];
  }
}

- (void)applicationInstallsDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v4 = _LSInstallLog(cancelCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidCancel:];
  }
}

- (void)applicationInstallsDidPrioritize:(id)prioritize
{
  prioritizeCopy = prioritize;
  v4 = _LSInstallLog(prioritizeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidPrioritize:];
  }
}

- (void)applicationStateDidChange:(id)change
{
  changeCopy = change;
  v4 = _LSInstallLog(changeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationStateDidChange:];
  }
}

- (void)applicationIconDidChange:(id)change
{
  changeCopy = change;
  v4 = _LSInstallLog(changeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationIconDidChange:];
  }
}

- (void)networkUsageChanged:(BOOL)changed
{
  changedCopy = changed;
  v4 = _LSInstallLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(LSApplicationWorkspaceObserver *)changedCopy networkUsageChanged:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)deviceManagementPolicyDidChange:(id)change
{
  changeCopy = change;
  v4 = _LSInstallLog(changeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver deviceManagementPolicyDidChange:];
  }
}

+ (BOOL)actuallyOverridesDMFObserverMethod
{
  if (objc_opt_class() == self)
  {
    return 0;
  }

  v3 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v3, sel_deviceManagementPolicyDidChange_);
  return MethodImplementation != class_getMethodImplementation(self, sel_deviceManagementPolicyDidChange_);
}

- (void)applicationsDidChangePersonas:(id)personas
{
  personasCopy = personas;
  v4 = _LSInstallLog(personasCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidChangePersonas:];
  }
}

- (void)applicationInstallsArePrioritized:(void *)a1 arePaused:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_2(&dword_18162D000, v1, v2, "Currently %d prioritized installs: %@", v3, v4, v5, v6);
}

- (void)applicationInstallsArePrioritized:(void *)a1 arePaused:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_2(&dword_18162D000, v1, v2, "Currently %d paused installs: %@", v3, v4, v5, v6);
}

- (void)networkUsageChanged:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = "NO";
  if (a1)
  {
    v8 = "YES";
  }

  LODWORD(v9) = 136315138;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_1(&dword_18162D000, a2, a3, "LSApplicationWorkspaceObserver networkUsageChanged to %s", a5, a6, a7, a8, v9, HIDWORD(v8));
}

@end