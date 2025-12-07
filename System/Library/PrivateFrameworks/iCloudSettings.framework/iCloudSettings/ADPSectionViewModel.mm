@interface ADPSectionViewModel
- (_TtC14iCloudSettings19ADPSectionViewModel)init;
- (void)beginEnablementFlow:(id)flow;
- (void)presentAccountRecoveryFlow;
- (void)remoteUIDidDismiss:(id)dismiss;
- (void)remoteUIDidReceiveHTTPResponse:(id)response;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)setDelegate:(id)delegate;
@end

@implementation ADPSectionViewModel

- (_TtC14iCloudSettings19ADPSectionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)beginEnablementFlow:(id)flow
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  if (flow)
  {
    sub_2759B84C8();
    v15 = sub_2759B8508();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_2759B8508();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  v17 = sub_2759BA518();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_27586FBC8(v14, v12, &unk_280A0EB10, &qword_2759C0740);
  sub_2759BA4C8();
  selfCopy = self;
  v19 = sub_2759BA4B8();
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v19;
  v21[3] = v22;
  v21[4] = selfCopy;
  sub_2758B4BD0(v12, v21 + v20);
  sub_27587D460(0, 0, v7, &unk_2759C6500, v21);

  sub_27586BF04(v14, &unk_280A0EB10, &qword_2759C0740);
}

- (void)setDelegate:(id)delegate
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_2759BA518();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2759BA4C8();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v10 = sub_2759BA4B8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = selfCopy;
  v11[5] = delegate;
  sub_27587D460(0, 0, v7, &unk_2759C64F8, v11);

  swift_unknownObjectRelease();
}

- (void)presentAccountRecoveryFlow
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2759BA4C8();
  selfCopy = self;
  v8 = sub_2759BA4B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_27587D460(0, 0, v5, &unk_2759C64F0, v9);
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_2759B8248();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2759B81F8();
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_2759BA4C8();
  selfCopy = self;
  errorCopy = error;
  v16 = selfCopy;
  v17 = sub_2759BA4B8();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = error;
  v18[5] = v16;
  sub_27587D460(0, 0, v8, &unk_2759C64E8, v18);

  (*(v10 + 8))(v12, v9);
}

- (void)remoteUIDidReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  v7.super._internal = self;
  internal = v7.super._internal;
  v7.super.super.isa = responseCopy;
  ADPSectionViewModel.remoteUIDidReceiveHTTPResponse(_:)(v7);
}

- (void)remoteUIDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _s14iCloudSettings19ADPSectionViewModelC18remoteUIDidDismissyySo18RemoteUIControllerCF_0();
}

@end