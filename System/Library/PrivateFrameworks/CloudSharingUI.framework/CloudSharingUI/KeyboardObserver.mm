@interface KeyboardObserver
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
@end

@implementation KeyboardObserver

- (void)keyboardWillShow:(id)show
{
  v3 = sub_243B6F9EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6F9CC();

  sub_243B31170();

  (*(v4 + 8))(v6, v3);
}

- (void)keyboardWillHide:(id)hide
{
  v3 = sub_243B6F9EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6F9CC();
  swift_getKeyPath();
  swift_getKeyPath();
  v7[1] = 0;

  sub_243B6FC4C();
  (*(v4 + 8))(v6, v3);
}

@end