@interface PFObjCCachingImageContentProviderBridge
+ (id)extensionBridge;
- (PFObjCCachingImageContentProviderBridge)init;
- (void)artworkForPodcast:(MTPodcast *)podcast size:(CGSize)size completionHandler:(id)handler;
@end

@implementation PFObjCCachingImageContentProviderBridge

+ (id)extensionBridge
{
  v2 = type metadata accessor for CachingImageContentProvider(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD60B8 != -1)
  {
    v11 = v3;
    swift_once();
    v3 = v11;
  }

  v6 = __swift_project_value_buffer(v3, qword_1EDCD60C0);
  sub_1D8E57C3C(v6, v5);
  v7 = type metadata accessor for ObjCCachingImageContentProviderBridge(0);
  v8 = objc_allocWithZone(v7);
  sub_1D8E57C3C(v5, v8 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  sub_1D8E596E4(v5, type metadata accessor for CachingImageContentProvider);

  return v9;
}

- (void)artworkForPodcast:(MTPodcast *)podcast size:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 2) = podcast;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = sub_1D917886C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D918B970;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D918B978;
  v17[5] = v16;
  podcastCopy = podcast;
  selfCopy = self;
  sub_1D901312C(0, 0, v12, &unk_1D918B980, v17);
}

- (PFObjCCachingImageContentProviderBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end