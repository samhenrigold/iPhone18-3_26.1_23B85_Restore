@interface AAIdentityAvatar
- (AAIdentityAvatar)init;
- (AAIdentityAvatar)initWithCoder:(id)coder;
- (AAIdentityAvatar)initWithIdentifier:(id)identifier imageData:(id)data cropRect:(id)rect;
- (NSData)imageData;
- (NSUUID)identifier;
- (NSValue)cropRectValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAIdentityAvatar

- (NSUUID)identifier
{
  v3 = sub_1B70557C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___AAIdentityAvatar_identifier, v3);
  v7 = sub_1B70557A0();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSData)imageData
{
  v2 = (self + OBJC_IVAR___AAIdentityAvatar_imageData);
  v3 = *(self + OBJC_IVAR___AAIdentityAvatar_imageData + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_1B700D100(*v2, v3);
    v6 = sub_1B7055780();
    sub_1B700ED20(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (AAIdentityAvatar)init
{
  result = sub_1B7055940();
  __break(1u);
  return result;
}

- (AAIdentityAvatar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = sub_1B700EA4C(coderCopy, v4);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B700DB88(coderCopy);
}

- (NSValue)cropRectValue
{
  if (*(self + OBJC_IVAR___AAIdentityAvatar_cropRect + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B70558D0();
  }

  return v3;
}

- (AAIdentityAvatar)initWithIdentifier:(id)identifier imageData:(id)data cropRect:(id)rect
{
  sub_1B70557C0();
  MEMORY[0x1EEE9AC00]();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B70557B0();
  rectCopy = rect;
  if (data)
  {
    dataCopy = data;
    data = sub_1B7055790();
    v12 = v11;
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  return Identity.Avatar.init(identifier:imageData:cropRect:)(v8, data, v12, rect);
}

@end