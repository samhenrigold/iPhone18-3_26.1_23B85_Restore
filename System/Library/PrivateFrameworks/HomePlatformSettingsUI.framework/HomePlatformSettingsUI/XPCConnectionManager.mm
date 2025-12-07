@interface XPCConnectionManager
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
@end

@implementation XPCConnectionManager

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2542AD7DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2542AEFF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2542AEFF8;
  v14[5] = v13;
  dCopy = d;

  sub_2542A5A74(0, 0, v9, &unk_2542AF000, v14);
}

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = identifiers;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2542AD7DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2542AEFD0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2542AEFD8;
  v16[5] = v15;
  dCopy = d;
  identifiersCopy = identifiers;

  sub_2542A5A74(0, 0, v11, &unk_2542AEFE0, v16);
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2542AD7DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2542AF658;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2542AF660;
  v14[5] = v13;
  dCopy = d;

  sub_2542A5A74(0, 0, v9, &unk_2542AF668, v14);
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = identifiers;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2542AD7DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2542AF620;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2542AEFD8;
  v16[5] = v15;
  dCopy = d;
  identifiersCopy = identifiers;

  sub_2542A5A74(0, 0, v11, &unk_2542AEFE0, v16);
}

@end