@interface AUUIAlertDelegateClass
- (BOOL)auUIAlertCancelAction:(id)action;
- (BOOL)auUIAlertOKAction:(id)action;
- (void)dealloc;
@end

@implementation AUUIAlertDelegateClass

- (void)dealloc
{
  objc_msgSend_setUiAlert_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = AUUIAlertDelegateClass;
  [(AUUIAlertDelegateClass *)&v4 dealloc];
}

- (BOOL)auUIAlertOKAction:(id)action
{
  objc_msgSend_setDelegate_(action, a2, 0, v3);
  selfCopy = self;
  qword_27E3833B0 = 0;
  sub_23EC18918(selfCopy, v6, v7, v8);
  return 1;
}

- (BOOL)auUIAlertCancelAction:(id)action
{
  objc_msgSend_setDelegate_(action, a2, 0, v3);
  selfCopy = self;
  qword_27E3833B0 = 0;
  return 1;
}

@end