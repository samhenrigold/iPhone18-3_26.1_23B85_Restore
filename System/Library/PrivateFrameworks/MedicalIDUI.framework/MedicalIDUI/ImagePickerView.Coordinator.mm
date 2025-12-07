@interface ImagePickerView.Coordinator
- (_TtCV11MedicalIDUI15ImagePickerView11Coordinator)init;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
@end

@implementation ImagePickerView.Coordinator

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_258869CA0(&qword_27F95D660, type metadata accessor for InfoKey, &unk_2588BFC58);
  v6 = sub_2588BD768();
  controllerCopy = controller;
  selfCopy = self;
  sub_25886A104(v6);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  v4 = sub_2588BC298();
  MEMORY[0x28223BE20](v4 - 8);
  sub_258804A60(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_25885299C(v8);
  MEMORY[0x259C8C5A0](v6);
  sub_2588BC288();
  sub_2588BD438();

  sub_258869DE0(v8, sub_258804A60);
}

- (_TtCV11MedicalIDUI15ImagePickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end