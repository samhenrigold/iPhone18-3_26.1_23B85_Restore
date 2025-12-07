@interface VisualTranslationViewBridge
+ (void)isTranslatable:(id)translatable completion:(id)completion;
- (UIView)view;
- (id)dismissHandler;
- (void)dismissErrorUI;
- (void)setDismissHandler:(id)handler;
- (void)setPresentationAnchorWithRect:(CGRect)rect contentRect:(CGRect)contentRect;
- (void)setZoomScale:(double)scale;
- (void)showDebugMenu;
- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion;
@end

@implementation VisualTranslationViewBridge

- (void)setPresentationAnchorWithRect:(CGRect)rect contentRect:(CGRect)contentRect
{
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  v16 = sub_26F49FC08();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0.0;
  v17[3] = 0.0;
  *(v17 + 4) = self;
  v17[5] = v11;
  v17[6] = v10;
  v17[7] = v9;
  v17[8] = v8;
  v17[9] = x;
  v17[10] = y;
  v17[11] = width;
  v17[12] = height;
  selfCopy = self;
  sub_26F40570C(0, 0, v15, &unk_26F4ABED8, v17);
}

- (void)dismissErrorUI
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26F49FC08();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_26F40570C(0, 0, v5, &unk_26F4ABED0, v7);
}

- (id)dismissHandler
{
  v2 = (self + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26F3B3308;
    aBlock[3] = &block_descriptor_139;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_26F49C850;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_26F3ACE98(v7, v8);
}

- (UIView)view
{
  selfCopy = self;
  v3 = sub_26F493D60();
  view = [v3 view];

  return view;
}

+ (void)isTranslatable:(id)translatable completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_26F49C7FC();
  v5 = sub_26F49FAF8();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for VisualTranslationService();
  static VisualTranslationService.isTranslatable(_:completion:)(v5, sub_26F480C04, v6);
}

- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = _Block_copy(completion);
  sub_26F49C7FC();
  v17 = sub_26F49FAF8();
  if (locale)
  {
    sub_26F49DA18();
    v18 = sub_26F49DAB8();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_26F49DAB8();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  if (targetLocale)
  {
    sub_26F49DA18();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_26F49DAB8();
  (*(*(v21 - 8) + 56))(v12, v20, 1, v21);
  if (v16)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    v16 = sub_26F49C848;
  }

  else
  {
    v22 = 0;
  }

  selfCopy = self;
  VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:completion:)(v17, v15, v12, v16, v22);
  sub_26F3ACE98(v16, v22);

  sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
}

- (void)showDebugMenu
{
  selfCopy = self;
  if (_LTIsInternalInstall())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26F49DDB8();
  }

  else
  {
  }
}

- (void)setZoomScale:(double)scale
{
  v5 = *(self + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable, &protocol conformance descriptor for VisualTranslationErrorViewModel);
  selfCopy = self;
  sub_26F49DD48();
  sub_26F49DD58();

  v7 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  if (scale <= 0.0)
  {
    scale = COERCE_DOUBLE(1);
  }

  swift_beginAccess();
  *(v5 + v7) = scale;
}

@end