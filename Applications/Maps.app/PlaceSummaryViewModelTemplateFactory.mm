@interface PlaceSummaryViewModelTemplateFactory
+ (id)addAPlaceAutocompleteViewModel;
+ (id)addAPlaceSearchViewModel;
+ (id)venueViewModelWithSearchResult:(id)result metadata:(id)metadata labelContext:(unint64_t)context;
+ (id)viewModelWithCompletion:(id)completion metadata:(id)metadata currentLocation:(id)location userLocationSearchResult:(id)result highlightType:(id)type availableWidth:(double)width clientSourceType:(int64_t)sourceType allowsTappableUnits:(BOOL)self0 searchAlongRoute:(BOOL)self1;
+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)display highlightConfiguration:(id)configuration availableWidth:(double)width currentLocation:(id)location searchAlongRoute:(BOOL)route;
+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)display highlightConfiguration:(id)configuration availableWidth:(double)width currentLocation:(id)location searchAlongRoute:(BOOL)route recentUnit:(BOOL)unit;
+ (id)viewModelWithHistoryEntrySearch:(id)search highlightConfiguration:(id)configuration searchAlongRoute:(BOOL)route;
+ (id)viewModelWithHistoryEntrySearch:(id)search highlightConfiguration:(id)configuration searchAlongRoute:(BOOL)route recentUnit:(BOOL)unit;
+ (id)viewModelWithSearchResult:(id)result highlightConfiguration:(id)configuration currentLocation:(id)location availableWidth:(double)width searchAlongRoute:(BOOL)route;
+ (id)viewModelWithSearchResult:(id)result metadata:(id)metadata currentLocation:(id)location searchAlongRoute:(BOOL)route openAt:(id)at;
+ (id)viewModelWithUserRoute:(id)route highlightConfiguration:(id)configuration currentLocation:(id)location;
+ (void)updateDistanceViewModelWithCurrentLocation:(id)location mapItem:(id)item template:(id)template searchAlongTheRoute:(BOOL)route;
- (_TtC4Maps36PlaceSummaryViewModelTemplateFactory)init;
@end

@implementation PlaceSummaryViewModelTemplateFactory

+ (id)venueViewModelWithSearchResult:(id)result metadata:(id)metadata labelContext:(unint64_t)context
{
  swift_getObjCClassMetadata();
  resultCopy = result;
  metadataCopy = metadata;
  sub_1002DCBF4(resultCopy, context);
  v11 = v10;

  return v11;
}

+ (id)viewModelWithSearchResult:(id)result metadata:(id)metadata currentLocation:(id)location searchAlongRoute:(BOOL)route openAt:(id)at
{
  routeCopy = route;
  swift_getObjCClassMetadata();
  resultCopy = result;
  metadataCopy = metadata;
  locationCopy = location;
  atCopy = at;
  sub_1002C2368(resultCopy, metadata, location, routeCopy, at);
  v17 = v16;

  return v17;
}

+ (id)viewModelWithCompletion:(id)completion metadata:(id)metadata currentLocation:(id)location userLocationSearchResult:(id)result highlightType:(id)type availableWidth:(double)width clientSourceType:(int64_t)sourceType allowsTappableUnits:(BOOL)self0 searchAlongRoute:(BOOL)self1
{
  swift_getObjCClassMetadata();
  completionCopy = completion;
  metadataCopy = metadata;
  locationCopy = location;
  resultCopy = result;
  typeCopy = type;
  sub_1002C33E8(completionCopy, metadata, location, result, typeCopy, sourceType, units, route, width);
  v23 = v22;

  return v23;
}

+ (id)viewModelWithHistoryEntrySearch:(id)search highlightConfiguration:(id)configuration searchAlongRoute:(BOOL)route
{
  routeCopy = route;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  sub_1002C44FC(search, configurationCopy, routeCopy, 1);
  v10 = v9;
  swift_unknownObjectRelease();

  return v10;
}

+ (id)viewModelWithHistoryEntrySearch:(id)search highlightConfiguration:(id)configuration searchAlongRoute:(BOOL)route recentUnit:(BOOL)unit
{
  unitCopy = unit;
  routeCopy = route;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  sub_1002C44FC(search, configurationCopy, routeCopy, unitCopy);
  v12 = v11;
  swift_unknownObjectRelease();

  return v12;
}

+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)display highlightConfiguration:(id)configuration availableWidth:(double)width currentLocation:(id)location searchAlongRoute:(BOOL)route
{
  routeCopy = route;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  locationCopy = location;
  v14 = sub_1002C58A8(display, configurationCopy, location, routeCopy, 1, width);
  swift_unknownObjectRelease();

  return v14;
}

+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)display highlightConfiguration:(id)configuration availableWidth:(double)width currentLocation:(id)location searchAlongRoute:(BOOL)route recentUnit:(BOOL)unit
{
  unitCopy = unit;
  routeCopy = route;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  locationCopy = location;
  v16 = sub_1002C58A8(display, configurationCopy, location, routeCopy, unitCopy, width);
  swift_unknownObjectRelease();

  return v16;
}

+ (id)viewModelWithSearchResult:(id)result highlightConfiguration:(id)configuration currentLocation:(id)location availableWidth:(double)width searchAlongRoute:(BOOL)route
{
  routeCopy = route;
  swift_getObjCClassMetadata();
  resultCopy = result;
  configurationCopy = configuration;
  locationCopy = location;
  sub_1002C9DFC(resultCopy, configurationCopy, location, routeCopy, width);
  v16 = v15;

  return v16;
}

+ (id)viewModelWithUserRoute:(id)route highlightConfiguration:(id)configuration currentLocation:(id)location
{
  swift_getObjCClassMetadata();
  routeCopy = route;
  configurationCopy = configuration;
  locationCopy = location;
  sub_1002CC0E0(routeCopy, configurationCopy, location);
  v12 = v11;

  return v12;
}

+ (id)addAPlaceAutocompleteViewModel
{
  swift_getObjCClassMetadata();
  v2 = sub_1002CD644(1);

  return v2;
}

+ (id)addAPlaceSearchViewModel
{
  swift_getObjCClassMetadata();
  v2 = sub_1002CD644(2);

  return v2;
}

- (_TtC4Maps36PlaceSummaryViewModelTemplateFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceSummaryViewModelTemplateFactory();
  return [(PlaceSummaryViewModelTemplateFactory *)&v3 init];
}

+ (void)updateDistanceViewModelWithCurrentLocation:(id)location mapItem:(id)item template:(id)template searchAlongTheRoute:(BOOL)route
{
  locationCopy = location;
  itemCopy = item;
  templateCopy = template;
  sub_1002E20E0(location, itemCopy, templateCopy, route);
}

@end