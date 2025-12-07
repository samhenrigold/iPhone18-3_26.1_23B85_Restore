@interface ImageResourceLoader
- (void)imageResourceDidChangeImage:(id)image;
@end

@implementation ImageResourceLoader

- (void)imageResourceDidChangeImage:(id)image
{
  v5 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  swift_unknownObjectRetain();

  image = [image image];
  v9 = sub_264770();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_264750();
  swift_unknownObjectRetain();

  v10 = image;
  v11 = sub_264740();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = image;
  v12[5] = self;
  v12[6] = image;
  sub_182AE4(0, 0, v7, &unk_26DE40, v12);

  swift_unknownObjectRelease();
}

@end