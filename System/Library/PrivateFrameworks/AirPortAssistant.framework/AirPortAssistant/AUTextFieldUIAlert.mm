@interface AUTextFieldUIAlert
- (id)textFieldAtIndex:(unint64_t)index;
- (void)prepareToShow;
@end

@implementation AUTextFieldUIAlert

- (void)prepareToShow
{
  v6.receiver = self;
  v6.super_class = AUTextFieldUIAlert;
  [(AUUIAlert *)&v6 prepareToShow];
  objc_msgSend_addTextField(self, v3, v4, v5);
}

- (id)textFieldAtIndex:(unint64_t)index
{
  v5 = objc_msgSend_textFields(self->super.alert, a2, index, v3);
  if (objc_msgSend_count(v5, v6, v7, v8) <= index)
  {
    return 0;
  }

  return objc_msgSend_objectAtIndexedSubscript_(v5, v9, index, v10);
}

@end