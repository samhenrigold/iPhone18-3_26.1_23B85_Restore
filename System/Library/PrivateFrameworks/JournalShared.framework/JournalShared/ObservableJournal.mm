@interface ObservableJournal
- (void)contextObjectsDidChangeWithNotification:(id)notification;
@end

@implementation ObservableJournal

- (void)contextObjectsDidChangeWithNotification:(id)notification
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF748, &qword_25575BD20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  if (notification)
  {
    sub_25574EB70();
    v7 = sub_25574EBA0();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_25574EBA0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_2556FDF64(v6);

  sub_255674B20(v6, &qword_27F7BF748, &qword_25575BD20);
}

@end