@interface _UISceneHostGeometrySceneExtension
+ (id)hostComponents;
- (_UISceneHostGeometrySceneExtension)init;
@end

@implementation _UISceneHostGeometrySceneExtension

+ (id)hostComponents
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0, &unk_18A666F00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18A64BFB0;
  type metadata accessor for _UISceneHostGeometryHostComponent();
  *(v2 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9395B0, &qword_18A666FB0);
  v4 = sub_18A4A7518();

  return v4;
}

- (_UISceneHostGeometrySceneExtension)init
{
  v3.receiver = self;
  v3.super_class = _UISceneHostGeometrySceneExtension;
  return [(_UISceneHostGeometrySceneExtension *)&v3 init];
}

@end