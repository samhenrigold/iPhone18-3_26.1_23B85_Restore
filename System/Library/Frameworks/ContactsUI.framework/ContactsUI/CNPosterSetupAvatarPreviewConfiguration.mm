@interface CNPosterSetupAvatarPreviewConfiguration
- (_TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type;
@end

@implementation CNPosterSetupAvatarPreviewConfiguration

- (_TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  v11 = sub_199DF71FC();
  v13 = v12;

  v14 = sub_199AD4D78(v11, v13, type, x, y, width, height);
  sub_199A9EF34(v11, v13);
  return v14;
}

@end