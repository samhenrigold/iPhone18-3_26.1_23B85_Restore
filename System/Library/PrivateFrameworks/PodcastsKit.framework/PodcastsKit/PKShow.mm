@interface PKShow
- (BOOL)isInLibrary;
- (BOOL)isSubscribed;
- (PKShow)init;
- (id)artworkUrlFor:(CGSize)for;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKShow

- (BOOL)isInLibrary
{
  selfCopy = self;
  v3 = Show.isInLibrary.getter();

  return v3 & 1;
}

- (id)artworkUrlFor:(CGSize)for
{
  height = for.height;
  width = for.width;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FBE0, &qword_25EA22418);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  selfCopy = self;
  Show.artworkUrl(for:)(v8, width, height);

  v10 = sub_25EA1E448();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_25EA1E418();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

- (BOOL)isSubscribed
{
  selfCopy = self;
  v3 = Show.isSubscribed.getter();

  return v3 & 1;
}

- (PKShow)init
{
  v2 = (self + OBJC_IVAR___PKShow_podcastUuid);
  *v2 = 0;
  v2[1] = 0;
  result = sub_25EA1E8A8();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Show.encode(with:)(coderCopy);
}

@end