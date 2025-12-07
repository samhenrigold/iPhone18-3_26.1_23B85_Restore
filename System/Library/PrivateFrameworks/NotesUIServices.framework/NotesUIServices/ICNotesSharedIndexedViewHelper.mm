@interface ICNotesSharedIndexedViewHelper
+ (id)makeNoteSearchResultViewWithNote:(id)note attachmentURL:(id)l;
- (ICNotesSharedIndexedViewHelper)init;
@end

@implementation ICNotesSharedIndexedViewHelper

+ (id)makeNoteSearchResultViewWithNote:(id)note attachmentURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  if (l)
  {
    sub_25C7AA4EC();
    v8 = sub_25C7AA4FC();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_25C7AA4FC();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = swift_unknownObjectRetain();
  v11 = _sSo30ICNotesSharedIndexedViewHelperC15NotesUIServicesE020makeNoteSearchResultD04with13attachmentURLSo28CSSearchableItemAttributeSetCSgSo017ICSearchIndexableI0_p_10Foundation0N0VSgtFZ_0(v10, v7);
  swift_unknownObjectRelease();
  sub_25C79C9E8(v7, &qword_27FC15070, &qword_25C7AB768);

  return v11;
}

- (ICNotesSharedIndexedViewHelper)init
{
  v3.receiver = self;
  v3.super_class = ICNotesSharedIndexedViewHelper;
  return [(ICNotesSharedIndexedViewHelper *)&v3 init];
}

@end