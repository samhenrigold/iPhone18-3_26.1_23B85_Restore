@interface CHUISControlInstanceConfiguration
- (BOOL)isEqual:(id)equal;
- (CHUISControlInstanceConfiguration)init;
- (NSString)description;
- (id)mutableCopyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation CHUISControlInstanceConfiguration

- (CHUISControlInstanceConfiguration)init
{
  v2 = self + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4.receiver = self;
  v4.super_class = CHUISControlInstanceConfiguration;
  return [(CHUISControlInstanceConfiguration *)&v4 init];
}

- (id)mutableCopyWithZone:(void *)zone
{
  v4 = objc_allocWithZone(CHUISMutableControlInstanceConfiguration);
  selfCopy = self;
  v6 = [v4 init];
  v7 = *(&selfCopy->super.isa + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v8 = *(&selfCopy->super.isa + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v9 = *&selfCopy->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v10 = selfCopy->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8];
  v12 = *&selfCopy->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16];
  v11 = *&selfCopy->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24];

  v13 = v6;

  v14 = &v13[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  *v14 = v7;
  v14[1] = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  *(v14 + 3) = v12;
  *(v14 + 4) = v11;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D93283A4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CHUISControlInstanceConfiguration.isEqual(_:)(v8);

  sub_1D92CAFB8(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = *(&self->super.isa + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v4 = *&self->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v5 = self->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8];
  v6 = *&self->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16];
  v7 = *&self->_configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24];
  v11[72] = *(&self->super.isa + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v11[73] = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_1D9328724();

  selfCopy = self;
  ControlInstanceConfiguration.hash(into:)(v11);
  v9 = sub_1D9328764();

  return v9;
}

- (NSString)description
{
  selfCopy = self;
  CHUISControlInstanceConfiguration.description.getter();

  v3 = sub_1D9327F74();

  return v3;
}

@end