@interface NFGReplicatedSnapshotViewController
- (NFGReplicatedSnapshotViewController)initWithCoder:(id)coder;
- (NFGReplicatedSnapshotViewController)initWithFace:(id)face uuid:(id)uuid;
- (NFGReplicatedSnapshotViewController)initWithFace:(id)face uuid:(id)uuid index:(unint64_t)index;
- (NFGReplicatedSnapshotViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NTKFace)face;
- (void)viewDidLoad;
@end

@implementation NFGReplicatedSnapshotViewController

- (NTKFace)face
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR___NFGReplicatedSnapshotViewController__face);

  return v3;
}

- (NFGReplicatedSnapshotViewController)initWithFace:(id)face uuid:(id)uuid
{
  v6 = sub_25B0E24A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2480();
  faceCopy = face;
  v11 = sub_25B0E2470();
  v12 = [(NFGReplicatedSnapshotViewController *)self initWithFace:faceCopy uuid:v11 index:100];

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (NFGReplicatedSnapshotViewController)initWithFace:(id)face uuid:(id)uuid index:(unint64_t)index
{
  v7 = sub_25B0E24A0();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2480();
  v10 = NFGReplicatedSnapshotViewController.init(face:uuid:index:)(face, v9, index);

  return v10;
}

- (NFGReplicatedSnapshotViewController)initWithCoder:(id)coder
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_25B0E3D00();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  NFGReplicatedSnapshotViewController.viewDidLoad()();
}

- (NFGReplicatedSnapshotViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end