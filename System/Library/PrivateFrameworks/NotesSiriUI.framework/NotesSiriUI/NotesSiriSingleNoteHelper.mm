@interface NotesSiriSingleNoteHelper
- (_TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper)init;
- (id)noteHTMLEditorView:(id)view attachmentPresentationForContentID:(id)d;
- (id)noteHTMLEditorView:(id)view fileURLForAttachmentWithContentID:(id)d;
@end

@implementation NotesSiriSingleNoteHelper

- (id)noteHTMLEditorView:(id)view fileURLForAttachmentWithContentID:(id)d
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  if (d)
  {
    sub_25C78F034();
    d = v10;
  }

  viewCopy = view;
  selfCopy = self;
  sub_25C779F70(d, v9);

  v13 = sub_25C78E744();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v9, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_25C78E714();
    (*(v14 + 8))(v9, v13);
    v16 = v17;
  }

  return v16;
}

- (id)noteHTMLEditorView:(id)view attachmentPresentationForContentID:(id)d
{
  if (d)
  {
    sub_25C78F034();
    selfCopy = self;
    v6 = sub_25C78F024();
    v7 = sub_25C77A524(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper)init
{
  v3 = OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations;
  sub_25C77ADD4(0, &qword_27FC14028, 0x277CBEA60);
  *(&self->super.isa + v3) = MEMORY[0x25F88CEB0](MEMORY[0x277D84F90]);
  v5.receiver = self;
  v5.super_class = type metadata accessor for NotesSiriSingleNoteHelper();
  return [(NotesSiriSingleNoteHelper *)&v5 init];
}

@end