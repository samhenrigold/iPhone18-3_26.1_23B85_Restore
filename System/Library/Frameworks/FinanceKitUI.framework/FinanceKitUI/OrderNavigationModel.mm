@interface OrderNavigationModel
- (_TtC12FinanceKitUI20OrderNavigationModel)init;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
@end

@implementation OrderNavigationModel

- (_TtC12FinanceKitUI20OrderNavigationModel)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23867E224();

  return v2;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  typeCopy = type;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13040, &qword_238773EC8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  pathCopy = path;
  indexPathCopy = indexPath;
  sub_23875F2E0();
  swift_unknownObjectRelease();
  if (pathCopy)
  {
    sub_23875BE50();

    v21 = sub_23875BE60();
    (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  }

  else
  {
    v22 = sub_23875BE60();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  if (indexPathCopy)
  {
    sub_23875BE50();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_23875BE60();
  (*(*(v24 - 8) + 56))(v13, v23, 1, v24);
  sub_238680E54(v27, v16, typeCopy);

  sub_238439884(v13, &qword_27DF13040, &qword_238773EC8);
  sub_238439884(v16, &qword_27DF13040, &qword_238773EC8);
  __swift_destroy_boxed_opaque_existential_1(v27);
}

@end