@interface LibraryAddKeepLocalHandlingController
+ (id)requiredPropertiesForModelClass:(Class)class;
- (_TtC16MusicApplication37LibraryAddKeepLocalHandlingController)init;
@end

@implementation LibraryAddKeepLocalHandlingController

- (_TtC16MusicApplication37LibraryAddKeepLocalHandlingController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LibraryAddKeepLocalHandlingController();
  return [(LibraryAddKeepLocalHandlingController *)&v3 init];
}

+ (id)requiredPropertiesForModelClass:(Class)class
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v4 = sub_2BAFF8(ObjCClassMetadata);

  return v4;
}

@end