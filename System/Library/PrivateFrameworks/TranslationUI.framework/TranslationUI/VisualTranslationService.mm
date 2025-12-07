@interface VisualTranslationService
+ (void)isTranslatable:(id)translatable completion:(id)completion;
+ (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion;
- (_TtC13TranslationUI24VisualTranslationService)init;
@end

@implementation VisualTranslationService

+ (void)isTranslatable:(id)translatable completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_26F3B0C24(0, &qword_280F66CC0, 0x277CE2DE0);
  v5 = sub_26F49FAF8();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_getObjCClassMetadata();
  static VisualTranslationService.isTranslatable(_:completion:)(v5, sub_26F480C04, v6);
}

+ (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = _Block_copy(completion);
  sub_26F3B0C24(0, &qword_280F66CC0, 0x277CE2DE0);
  v16 = sub_26F49FAF8();
  if (locale)
  {
    sub_26F49DA18();
    v17 = sub_26F49DAB8();
    (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  }

  else
  {
    v18 = sub_26F49DAB8();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  }

  if (targetLocale)
  {
    sub_26F49DA18();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_26F49DAB8();
  (*(*(v20 - 8) + 56))(v11, v19, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  swift_getObjCClassMetadata();
  static VisualTranslationService.translate(_:sourceLocale:targetLocale:completion:)(v16, v14, v11, sub_26F480BFC, v21);

  sub_26F3B6B4C(v11, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v14, &qword_2806DEFD8, &qword_26F4A3670);
}

- (_TtC13TranslationUI24VisualTranslationService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(VisualTranslationService *)&v3 init];
}

@end