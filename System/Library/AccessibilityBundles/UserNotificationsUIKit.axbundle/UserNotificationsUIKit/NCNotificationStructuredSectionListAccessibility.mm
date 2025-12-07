@interface NCNotificationStructuredSectionListAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)axStringForRequest:(id)request label:(id)label;
- (id)removeNotificationGroupListsForMigrationPassingTest:(id)test filterRequestsPassingTest:(id)passingTest animate:(BOOL)animate;
- (int64_t)insertNotificationRequest:(id)request;
- (void)_toggleHiddenNotificationsOnAuthenticationChange:(BOOL)change;
- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications;
@end

@implementation NCNotificationStructuredSectionListAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationRootList" hasInstanceMethod:@"incomingSectionList" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"insertNotificationRequest:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"_existingIndexOfGroupForNotificationRequest:" withFullSignature:{"Q", "@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"_toggleHiddenNotificationsOnAuthenticationChange:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"removeNotificationGroupListsForMigrationPassingTest:filterRequestsPassingTest:animate:" withFullSignature:{"@", "@?", "@?", "B", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"mergeNotificationGroups:reorderGroupNotifications:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"notificationGroups" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"deviceAuthenticated" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCNotificationListPresentableGroup" hasInstanceMethod:@"listView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationListView" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"NCNotificationListViewDataSource" hasRequiredInstanceMethod:@"notificationListView:viewForItemAtIndex:"];
  [validationsCopy validateClass:@"NCNotificationListCell" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_setupStaticContentProvider" withFullSignature:{"v", 0}];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SpringBoard" hasInstanceMethod:@"notificationDispatcher" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBNCNotificationDispatcher" hasInstanceVariable:@"_dispatcher" withType:"NCNotificationDispatcher"];
    [validationsCopy validateClass:@"SBNCAlertingController" hasInstanceMethod:@"screenController" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBNCScreenController" hasInstanceMethod:@"canTurnOnScreenForNotificationRequest:" withFullSignature:{"B", "@", 0}];
  }
}

- (int64_t)insertNotificationRequest:(id)request
{
  requestCopy = request;
  v26.receiver = self;
  v26.super_class = NCNotificationStructuredSectionListAccessibility;
  v5 = [(NCNotificationStructuredSectionListAccessibility *)&v26 insertNotificationRequest:requestCopy];
  if (![(NCNotificationStructuredSectionListAccessibility *)self _axIgnoreNotification]&& ([(NCNotificationStructuredSectionListAccessibility *)self safeBoolForKey:@"deviceAuthenticated"]& 1) == 0)
  {
    v6 = [(NCNotificationStructuredSectionListAccessibility *)self safeValueForKey:@"delegate"];
    v7 = [v6 safeValueForKey:@"incomingSectionList"];

    if (v7 == self)
    {
      v8 = [(NCNotificationStructuredSectionListAccessibility *)self _existingIndexOfGroupForNotificationRequest:requestCopy];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v8;
        v10 = [(NCNotificationStructuredSectionListAccessibility *)self safeArrayForKey:@"notificationGroups"];
        v11 = [v10 axSafeObjectAtIndex:v9];
        v12 = [v11 safeValueForKey:@"listView"];

        v20 = 0;
        v21 = &v20;
        v22 = 0x3032000000;
        v23 = __Block_byref_object_copy__0;
        v24 = __Block_byref_object_dispose__0;
        v25 = 0;
        v19 = v12;
        AXPerformSafeBlock();
        v13 = v21[5];

        _Block_object_dispose(&v20, 8);
        v18 = v13;
        v14 = v13;
        AXPerformSafeBlock();
        accessibilityLabel = [v14 accessibilityLabel];
        v16 = [(NCNotificationStructuredSectionListAccessibility *)self axStringForRequest:requestCopy label:accessibilityLabel];

        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v16);
      }
    }
  }

  return v5;
}

void __78__NCNotificationStructuredSectionListAccessibility_insertNotificationRequest___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"dataSource"];
  v2 = [v5 notificationListView:*(a1 + 32) viewForItemAtIndex:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __78__NCNotificationStructuredSectionListAccessibility_insertNotificationRequest___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"contentViewController"];
  [v1 _setupStaticContentProvider];
}

- (id)axStringForRequest:(id)request label:(id)label
{
  requestCopy = request;
  labelCopy = label;
  LOBYTE(v25) = 0;
  v29 = 0;
  v7 = __UIAccessibilitySafeClass();
  v8 = v7;
  v9 = [v7 safeValueForKey:@"notificationDispatcher"];
  v10 = __UIAccessibilitySafeClass();

  if (v25 == 1)
  {
    abort();
  }

  v11 = [v10 safeValueForKey:@"_dispatcher"];
  v12 = __UIAccessibilitySafeClass();

  v13 = [v12 safeValueForKey:@"alertingController"];
  v14 = __UIAccessibilitySafeClass();

  v15 = [v14 safeValueForKey:@"screenController"];
  v16 = __UIAccessibilitySafeClass();

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24 = MEMORY[0x29EDCA5F8];
  v17 = v16;
  v18 = requestCopy;
  AXPerformSafeBlock();
  v19 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{labelCopy, v24, 3221225472, __77__NCNotificationStructuredSectionListAccessibility_axStringForRequest_label___block_invoke, &unk_29F3170B8}];
  [v19 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBDA00]];
  options = [v18 options];
  lockScreenPersistence = [options lockScreenPersistence];

  if (lockScreenPersistence == 2)
  {
    [v19 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
  }

  v22 = [MEMORY[0x29EDBA070] numberWithBool:*(v26 + 24)];
  [v19 setAttribute:v22 forKey:*MEMORY[0x29EDBD858]];

  _Block_object_dispose(&v25, 8);

  return v19;
}

void *__77__NCNotificationStructuredSectionListAccessibility_axStringForRequest_label___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canTurnOnScreenForNotificationRequest:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_toggleHiddenNotificationsOnAuthenticationChange:(BOOL)change
{
  changeCopy = change;
  [(NCNotificationStructuredSectionListAccessibility *)self _axSetIgnoreNotification:1];
  v5.receiver = self;
  v5.super_class = NCNotificationStructuredSectionListAccessibility;
  [(NCNotificationStructuredSectionListAccessibility *)&v5 _toggleHiddenNotificationsOnAuthenticationChange:changeCopy];
  [(NCNotificationStructuredSectionListAccessibility *)self _axSetIgnoreNotification:0];
}

- (id)removeNotificationGroupListsForMigrationPassingTest:(id)test filterRequestsPassingTest:(id)passingTest animate:(BOOL)animate
{
  animateCopy = animate;
  passingTestCopy = passingTest;
  testCopy = test;
  [(NCNotificationStructuredSectionListAccessibility *)self _axSetIgnoreNotification:1];
  v12.receiver = self;
  v12.super_class = NCNotificationStructuredSectionListAccessibility;
  v10 = [(NCNotificationStructuredSectionListAccessibility *)&v12 removeNotificationGroupListsForMigrationPassingTest:testCopy filterRequestsPassingTest:passingTestCopy animate:animateCopy];

  [(NCNotificationStructuredSectionListAccessibility *)self _axSetIgnoreNotification:0];

  return v10;
}

- (void)mergeNotificationGroups:(id)groups reorderGroupNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  groupsCopy = groups;
  [(NCNotificationStructuredSectionListAccessibility *)self _axSetIgnoreNotification:1];
  v7.receiver = self;
  v7.super_class = NCNotificationStructuredSectionListAccessibility;
  [(NCNotificationStructuredSectionListAccessibility *)&v7 mergeNotificationGroups:groupsCopy reorderGroupNotifications:notificationsCopy];

  [(NCNotificationStructuredSectionListAccessibility *)self _axSetIgnoreNotification:0];
}

@end