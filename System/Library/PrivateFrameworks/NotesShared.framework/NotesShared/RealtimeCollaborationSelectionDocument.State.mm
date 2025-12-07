@interface RealtimeCollaborationSelectionDocument.State
+ (NSDictionary)CRProperties;
- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithICCRCoder:(id)coder;
- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithIdentity:(id)identity fields:(id)fields;
@end

@implementation RealtimeCollaborationSelectionDocument.State

+ (NSDictionary)CRProperties
{
  _s11NotesShared38RealtimeCollaborationSelectionDocumentC5StateC12crPropertiesSDySSSo12ICCRDataType_pGvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0, &qword_2150C38A8);
  v2 = sub_2150A4910();

  return v2;
}

- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithIdentity:(id)identity fields:(id)fields
{
  ObjectType = swift_getObjectType();
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0, &qword_2150C38A8);
  sub_2150A4920();
  v11 = sub_2150A39A0();
  v12 = sub_2150A4910();

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(ICCRObject *)&v15 initWithIdentity:v11 fields:v12];

  (*(v7 + 8))(v10, v6);
  return v13;
}

- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithICCRCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ICCRObject *)&v7 initWithICCRCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end