@interface KeyboardObserver
- (void)keyboardDidHideWithNotification:(id)notification;
- (void)keyboardWillChangeFrameWithNotification:(id)notification;
- (void)keyboardWillHideWithNotification:(id)notification;
- (void)keyboardWillShowWithNotification:(id)notification;
@end

@implementation KeyboardObserver

- (void)keyboardWillShowWithNotification:(id)notification
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068, &qword_1BE0DB508);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_1BE04A2E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04A2C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v18[15] = 1;
  swift_retain_n();
  sub_1BE04D8C4();
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1BD4D9370(v6);
  self, v11, v12, v13, v14, v15, v16, v17;
  sub_1BD4D9CC0(v6);
  (*(v8 + 8))(v10, v7);
}

- (void)keyboardWillHideWithNotification:(id)notification
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068, &qword_1BE0DB508);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1BE04A2E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  (*(v8 + 56))(v6, 1, 1, v7);
  sub_1BE048964();
  sub_1BD4D9370(v6);
  self, v11, v12, v13, v14, v15, v16, v17;
  sub_1BD4D9CC0(v6);
  (*(v8 + 8))(v10, v7);
}

- (void)keyboardDidHideWithNotification:(id)notification
{
  v3 = sub_1BE04A2E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04A2C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v7[15] = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  (*(v4 + 8))(v6, v3);
}

- (void)keyboardWillChangeFrameWithNotification:(id)notification
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068, &qword_1BE0DB508);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1BE04A2E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1BE048964();
  sub_1BD4D9370(v6);
  self, v11, v12, v13, v14, v15, v16, v17;
  sub_1BD4D9CC0(v6);
  (*(v8 + 8))(v10, v7);
}

@end