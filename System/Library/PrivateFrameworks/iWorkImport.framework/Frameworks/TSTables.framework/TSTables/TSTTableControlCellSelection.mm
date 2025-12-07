@interface TSTTableControlCellSelection
+ (id)controlCellSelection;
- (TSTTableControlCellSelection)initWithKeyboardShown:(BOOL)shown;
- (id)copy;
@end

@implementation TSTTableControlCellSelection

- (TSTTableControlCellSelection)initWithKeyboardShown:(BOOL)shown
{
  v5.receiver = self;
  v5.super_class = TSTTableControlCellSelection;
  result = [(TSTTableControlCellSelection *)&v5 init];
  if (result)
  {
    result->_keyboardShown = shown;
  }

  return result;
}

+ (id)controlCellSelection
{
  v2 = [self alloc];
  v5 = objc_msgSend_initWithKeyboardShown_(v2, v3, 0, v4);

  return v5;
}

- (id)copy
{
  v3 = objc_alloc(objc_opt_class());
  keyboardShown = self->_keyboardShown;

  return objc_msgSend_initWithKeyboardShown_(v3, v4, keyboardShown, v5);
}

@end