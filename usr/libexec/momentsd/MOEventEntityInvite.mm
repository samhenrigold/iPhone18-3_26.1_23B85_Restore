@interface MOEventEntityInvite
- (CLLocation)location;
- (_TtC8momentsd19MOEventEntityInvite)initWithTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location placeName:(id)name identifier:(id)identifier appBundle:(id)bundle organizers:(id)self0 attendees:(id)self1;
- (void)setLocation:(id)location;
@end

@implementation MOEventEntityInvite

- (CLLocation)location
{
  v3 = OBJC_IVAR____TtC8momentsd19MOEventEntityInvite_location;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLocation:(id)location
{
  v5 = OBJC_IVAR____TtC8momentsd19MOEventEntityInvite_location;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = location;
  locationCopy = location;
}

- (_TtC8momentsd19MOEventEntityInvite)initWithTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location placeName:(id)name identifier:(id)identifier appBundle:(id)bundle organizers:(id)self0 attendees:(id)self1
{
  selfCopy = self;
  locationCopy = location;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = __chkstk_darwin(v16 - 8, v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v57 - v22;
  if (title)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v25;
    v60 = v24;
    if (date)
    {
LABEL_3:
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
      goto LABEL_6;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
    if (date)
    {
      goto LABEL_3;
    }
  }

  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
LABEL_6:
  if (endDate)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 56);
    v30 = locationCopy;
    nameCopy = name;
    identifierCopy = identifier;
    bundleCopy = bundle;
    organizersCopy = organizers;
    attendeesCopy = attendees;
    v29(v20, 0, 1, v28);
    if (name)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v46 = type metadata accessor for Date();
    (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
    v47 = locationCopy;
    nameCopy2 = name;
    identifierCopy2 = identifier;
    bundleCopy2 = bundle;
    organizersCopy2 = organizers;
    attendeesCopy2 = attendees;
    if (name)
    {
LABEL_8:
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (identifier)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  v58 = 0;
  v37 = 0;
  if (identifier)
  {
LABEL_9:
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (bundle)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v38 = 0;
  v40 = 0;
  if (bundle)
  {
LABEL_10:
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (organizers)
    {
      goto LABEL_11;
    }

LABEL_17:
    v44 = 0;
    if (attendees)
    {
      goto LABEL_12;
    }

LABEL_18:
    v45 = 0;
    goto LABEL_19;
  }

LABEL_16:
  v41 = 0;
  v43 = 0;
  if (!organizers)
  {
    goto LABEL_17;
  }

LABEL_11:
  type metadata accessor for MOEventEntityInvitePerson();
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!attendees)
  {
    goto LABEL_18;
  }

LABEL_12:
  type metadata accessor for MOEventEntityInvitePerson();
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_19:
  v53 = v20;
  v54 = locationCopy;
  v55 = specialized MOEventEntityInvite.init(title:startDate:endDate:location:placeName:identifier:appBundle:organizers:attendees:)(v60, v59, v23, v53, locationCopy, v58, v37, v38, v40, v41, v43, v44, v45);

  return v55;
}

@end