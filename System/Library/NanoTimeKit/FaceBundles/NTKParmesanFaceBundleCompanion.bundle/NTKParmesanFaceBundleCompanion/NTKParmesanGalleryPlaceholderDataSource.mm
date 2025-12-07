@interface NTKParmesanGalleryPlaceholderDataSource
+ (NSString)heroPlaceholderName;
+ (NSString)placeholderCustomDataKey;
+ (NSString)randomPlaceholderName;
+ (id)configurationForName:(id)name;
+ (id)placeholderNamesForDevice:(id)device;
- (NTKParmesanGalleryPlaceholderDataSource)init;
@end

@implementation NTKParmesanGalleryPlaceholderDataSource

- (NTKParmesanGalleryPlaceholderDataSource)init
{
  *&self->delegate[OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_delegate] = 0;
  swift_unknownObjectWeakInit();
  v3 = self + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_contentOption;
  *v3 = 0;
  v3[8] = 1;
  v4 = (&self->super.isa + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource_forcedPlaceholderName);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryPlaceholderDataSource____lazy_storage___faceBundle) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ParmesanGalleryPlaceholderDataSource();
  return [(NTKParmesanGalleryPlaceholderDataSource *)&v6 init];
}

+ (NSString)placeholderCustomDataKey
{
  v2 = sub_23BFFA2C0();

  return v2;
}

+ (NSString)heroPlaceholderName
{
  v2 = sub_23BFFA2C0();

  return v2;
}

+ (NSString)randomPlaceholderName
{
  result = sub_23BFC3728(6uLL);
  if (result > 5)
  {
    __break(1u);
  }

  else
  {
    sub_23BF7477C();
    v3 = sub_23BFFA2C0();

    return v3;
  }

  return result;
}

+ (id)placeholderNamesForDevice:(id)device
{
  deviceCopy = device;
  sub_23BFC37B4(deviceCopy);

  v4 = sub_23BFFA450();

  return v4;
}

+ (id)configurationForName:(id)name
{
  v3 = sub_23BFFA300();
  v5 = sub_23BF74730(v3, v4);
  if (v5 == 12)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = type metadata accessor for ParmesanGalleryPlaceholderConfiguration();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR___NTKParmesanGalleryPlaceholderConfiguration_placeholderStyle] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

@end