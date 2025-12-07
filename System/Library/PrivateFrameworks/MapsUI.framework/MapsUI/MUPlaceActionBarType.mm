@interface MUPlaceActionBarType
- (MUPlaceActionBarType)init;
- (NSString)symbol;
- (NSString)title;
@end

@implementation MUPlaceActionBarType

- (NSString)symbol
{
  type metadata accessor for MUPlaceActionBarTypeCustom();
  if (swift_dynamicCastClass() || (type metadata accessor for MUPlaceActionBarTypeDirections(), swift_dynamicCastClass()))
  {
    swift_beginAccess();
  }

  v2 = sub_1C584F630();

  return v2;
}

- (NSString)title
{
  type metadata accessor for MUPlaceActionBarTypeCustom();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &OBJC_IVAR___MUPlaceActionBarTypeCustom_text;
  }

  else
  {
    type metadata accessor for MUPlaceActionBarTypeDirections();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = &OBJC_IVAR___MUPlaceActionBarTypeDirections_eta;
  }

  v4 = &v2[*v3];
  swift_beginAccess();
  if (*(v4 + 1))
  {

    v5 = sub_1C584F630();

    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

LABEL_8:

  return v2;
}

- (MUPlaceActionBarType)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MUPlaceActionBarType();
  return [(MUPlaceActionBarType *)&v3 init];
}

@end