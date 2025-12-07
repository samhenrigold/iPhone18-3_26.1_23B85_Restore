@interface AXDefaultsObserverPostDarwinNotificationAction
- (AXDefaultsObserverPostDarwinNotificationAction)initWithDarwinNotification:(id)notification postGlobally:(BOOL)globally;
- (void)performForChangedDefault:(id)default;
@end

@implementation AXDefaultsObserverPostDarwinNotificationAction

- (AXDefaultsObserverPostDarwinNotificationAction)initWithDarwinNotification:(id)notification postGlobally:(BOOL)globally
{
  globallyCopy = globally;
  notificationCopy = notification;
  v10.receiver = self;
  v10.super_class = AXDefaultsObserverPostDarwinNotificationAction;
  v7 = [(AXDefaultsObserverPostDarwinNotificationAction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AXDefaultsObserverPostDarwinNotificationAction *)v7 setNote:notificationCopy];
    [(AXDefaultsObserverPostDarwinNotificationAction *)v8 setShouldPostGlobally:globallyCopy];
  }

  return v8;
}

- (void)performForChangedDefault:(id)default
{
  defaultCopy = default;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXDefaultsObserverPostDarwinNotificationAction performForChangedDefault:?];
  }

  if (self->_shouldPostGlobally)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetLocalCenter();
  }

  v7 = DarwinNotifyCenter;
  note = [(AXDefaultsObserverPostDarwinNotificationAction *)self note];
  CFNotificationCenterPostNotification(v7, note, 0, 0, 1u);

  v9 = _AXSPreferencesParticipatingInGuestPass();
  if ([v9 containsObject:defaultCopy])
  {

LABEL_12:
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v14, @"AXGuestPassNeedsSync", 0, 0, 1u);
    goto LABEL_13;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v10 = getAXMediaPreferencesParticipatingInGuestPassSymbolLoc_ptr;
  v18 = getAXMediaPreferencesParticipatingInGuestPassSymbolLoc_ptr;
  if (!getAXMediaPreferencesParticipatingInGuestPassSymbolLoc_ptr)
  {
    v11 = AccessibilityUtilitiesLibrary();
    v16[3] = dlsym(v11, "AXMediaPreferencesParticipatingInGuestPass");
    getAXMediaPreferencesParticipatingInGuestPassSymbolLoc_ptr = v16[3];
    v10 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v10)
  {
    [AXDefaultsObserverPostDarwinNotificationAction performForChangedDefault:];
  }

  v12 = v10();
  v13 = [v12 containsObject:defaultCopy];

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (void)performForChangedDefault:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 note];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)performForChangedDefault:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSArray *AXMediaPreferencesParticipatingInGuestPass_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySupport.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

@end