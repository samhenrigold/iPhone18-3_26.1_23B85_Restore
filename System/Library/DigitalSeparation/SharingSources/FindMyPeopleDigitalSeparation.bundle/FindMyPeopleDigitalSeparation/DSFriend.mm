@interface DSFriend
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (NSString)unifiedContactIdentifier;
- (_TtC29FindMyPeopleDigitalSeparation8DSFriend)init;
@end

@implementation DSFriend

- (NSString)unifiedContactIdentifier
{
  if (*(&self->role + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendContactIdentifier))
  {

    v2 = sub_7F54();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)emailAddress
{
  v3 = objc_opt_self();
  selfCopy = self;
  v5 = sub_7F54();
  LOBYTE(v3) = [v3 isStringEmailAddress:v5];

  if (v3)
  {

    v6 = sub_7F54();

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (NSString)phoneNumber
{
  v3 = objc_opt_self();
  selfCopy = self;
  v5 = sub_7F54();
  LODWORD(v3) = [v3 isStringEmailAddress:v5];

  if (v3)
  {

    v6 = 0;
  }

  else
  {

    v7 = sub_7F54();

    v6 = v7;
  }

  return v6;
}

- (_TtC29FindMyPeopleDigitalSeparation8DSFriend)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end