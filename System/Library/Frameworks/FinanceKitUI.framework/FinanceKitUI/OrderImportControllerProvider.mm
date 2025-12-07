@interface OrderImportControllerProvider
+ (id)makeViewControllerWithBundleURL:(id)l competion:(id)competion error:(id *)error;
+ (id)makeViewControllerWithOrderData:(id)data competion:(id)competion error:(id *)error;
- (_TtC12FinanceKitUI29OrderImportControllerProvider)init;
@end

@implementation OrderImportControllerProvider

+ (id)makeViewControllerWithBundleURL:(id)l competion:(id)competion error:(id *)error
{
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(competion);
  sub_23875B8B0();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_23875B950();
  v14 = v13;
  v16 = sub_238755270(v12, v13, sub_238756A74, v11);
  sub_23844C954(v12, v14);
  (*(v7 + 8))(v9, v6);

  return v16;
}

+ (id)makeViewControllerWithOrderData:(id)data competion:(id)competion error:(id *)error
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(competion);
  dataCopy = data;
  v9 = sub_23875B990();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = sub_238755270(v9, v11, sub_238755E98, v12);

  sub_23844C954(v9, v11);

  return v13;
}

- (_TtC12FinanceKitUI29OrderImportControllerProvider)init
{
  ObjectType = swift_getObjectType();
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(OrderImportControllerProvider *)&v6 init];

  return v4;
}

@end