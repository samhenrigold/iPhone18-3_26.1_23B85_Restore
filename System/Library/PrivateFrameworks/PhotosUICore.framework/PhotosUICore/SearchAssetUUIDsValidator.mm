@interface SearchAssetUUIDsValidator
- (_TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator)init;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
@end

@implementation SearchAssetUUIDsValidator

- (id)prepareForPhotoLibraryChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1A43F54FC(changeCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1A524C3D4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  if (info)
  {
    v6 = sub_1A524C3E4();
  }

  else
  {
    v6 = 0;
  }

  queueCopy = queue;
  selfCopy = self;
  sub_1A43F5CA4(v6);
}

- (_TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end