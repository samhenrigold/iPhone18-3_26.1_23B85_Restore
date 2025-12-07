uint64_t sub_10004DA30(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10004DB64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004EEC4(*a1);
  *a2 = result;
  return result;
}

void sub_10004DB94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006574656C706DLL;
  v4 = 0x6F636E4920444545;
  if (v2 != 5)
  {
    v4 = 0xD000000000000017;
    v3 = 0x80000001000A5230;
  }

  v5 = 0x80000001000A51C0;
  v6 = 0xD000000000000021;
  if (v2 == 3)
  {
    v6 = 0xD000000000000023;
  }

  else
  {
    v5 = 0x80000001000A51F0;
  }

  if (*v1 <= 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001000A5140;
  v8 = 0xD000000000000013;
  v9 = 0xD000000000000023;
  v10 = 0x80000001000A5160;
  if (v2 != 1)
  {
    v9 = 0xD000000000000026;
    v10 = 0x80000001000A5190;
  }

  if (*v1)
  {
    v8 = v9;
    v7 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10004DCA0()
{
  v50 = type metadata accessor for SectionedDataSourceContainerViewType();
  v0 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004EBD8(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v48 = v31 - v3;
  v47 = type metadata accessor for CellDeselectionBehavior();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UUID();
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ContentConfigurationItem();
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = _swiftEmptyArrayStorage;
  sub_10007C53C(0, 7, 0);
  v11 = v56;
  v43 = objc_opt_self();
  v12 = 0;
  v42 = 0x80000001000A5230;
  v40 = 0x80000001000A51F0;
  v39 = 0x80000001000A51C0;
  v38 = 0x80000001000A5190;
  v37 = 0x80000001000A5160;
  v36 = 0x80000001000A5140;
  v51 = (v6 + 8);
  v35 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v34 = (v4 + 104);
  v33 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v32 = (v0 + 104);
  v44 = v8;
  v31[2] = v8 + 32;
  do
  {
    v13 = *(&off_1000CC208 + v12 + 32);
    *(swift_allocObject() + 16) = v13;
    v14 = v52;
    UUID.init()();
    UUID.uuidString.getter();
    v41 = *v51;
    v41(v14, v53);
    v55[3] = type metadata accessor for UIListContentConfiguration();
    v55[4] = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(v55);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v15 = [v43 tintColor];
    v16 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v16(v54, 0);

    v18 = v46;
    v17 = v47;
    *v46 = 1;
    (*v34)(v18, v35, v17);
    v19 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v19 - 8) + 56))(v48, 1, 1, v19);
    (*v32)(v49, v33, v50);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v56 = v11;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_10007C53C((v20 > 1), v21 + 1, 1);
      v11 = v56;
    }

    ++v12;
    *(v11 + 16) = v21 + 1;
    (*(v44 + 32))(v11 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v21, v10, v45);
  }

  while (v12 != 7);
  sub_10004EBD8(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  sub_10009C004(v11);

  v22 = v52;
  UUID.init()();
  UUID.uuidString.getter();
  v23 = v53;
  v24 = v41;
  v41(v22, v53);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v55[0] = 0x3C53447961727241;
  v55[1] = 0xE800000000000000;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v24(v22, v23);
  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 62;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10004E53C(void *a1, char a2)
{
  v4 = sub_10004C17C(a2);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7104878;
  }

  v7 = 0xE300000000000000;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v9 = sub_10004C1C8(a2);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 7104878;
  }

  if (v10)
  {
    v7 = v10;
  }

  _StringGuts.grow(_:)(17);

  v12._countAndFlagsBits = v6;
  v12._object = v8;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x203A65756C61560ALL;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v11;
  v14._object = v7;
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:{1, 0x203A79654BLL, 0xE500000000000000}];

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = String._bridgeToObjectiveC()();
  v25[4] = sub_10004EAD4;
  v25[5] = v18;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100087848;
  v25[3] = &unk_1000CEA28;
  v20 = _Block_copy(v25);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v17 addAction:v22];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 actionWithTitle:v23 style:1 handler:0];

  [v17 addAction:v24];
  [a1 presentViewController:v17 animated:1 completion:0];
}

uint64_t sub_10004EA48(uint64_t a1)
{
  *(a1 + 8) = sub_10004EDD4(&qword_1000DBFD0, type metadata accessor for HKKeyValueDataSource, &unk_1000AF190);
  result = sub_10004EDD4(&qword_1000DBFD8, type metadata accessor for HKKeyValueDataSource, &unk_1000AF1C0);
  *(a1 + 24) = result;
  return result;
}

_OWORD *sub_10004EB2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004EB48()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10004EB90()
{
  result = qword_1000DBFE0;
  if (!qword_1000DBFE0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000DBFE0);
  }

  return result;
}

void sub_10004EBD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HKKeyValueDataSource.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HKKeyValueDataSource.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10004EDD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10004EE1C()
{
  if (!qword_1000DBFF0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBFF0);
    }
  }
}

unint64_t sub_10004EE70()
{
  result = qword_1000DBFF8;
  if (!qword_1000DBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBFF8);
  }

  return result;
}

unint64_t sub_10004EEC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CC928, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004EF3C(uint64_t a1, void *a2)
{
  sub_10000ACE8(a1, v15);
  v3 = [objc_opt_self() primaryProfile];
  v4 = objc_allocWithZone(type metadata accessor for PersonalizedFeedDataSource(0));
  v4[qword_1000DC598] = 1;
  sub_10000BFFC(v15, v15[3]);
  v5 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v6 = NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)();

  isa = [v6 fetchRequest];
  v8 = [(objc_class *)isa relationshipKeyPathsForPrefetching];
  if (v8)
  {
    v9 = v8;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061574(&off_1000CC9F0);
    if (v10)
    {
      v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:v11.super.isa, v10];

    isa = v11.super.isa;
  }

  else
  {
    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:0];
  }

  *&v4[qword_1000DC590] = a2;
  v12 = a2;
  v13 = FetchedResultsControllerDataSource.init(_:)();

  sub_100003B90(v15);
  return v13;
}

uint64_t sub_10004F0FC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withoutHeader.getter();
  v6 = ListLayoutConfiguration.layout(for:)();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_10004F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100017380(0, &qword_1000DC068, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v9 = v8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  sub_100017380(0, &qword_1000DC0C0, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource);
  v13 = method lookup function for HideableDataSource();
  v13(a1, a2, a3, a4);
  dispatch thunk of HideableDataSource.wrappedDataSource.getter();
  HeaderFooterDataSourceWithLayout.mainDataSource.getter();

  swift_getObjectType();
  LOBYTE(a4) = SnapshotDataSource.isEmpty.getter();
  swift_unknownObjectRelease();
  v14 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if ((a4 & 1) == 0)
  {
    v14 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v10 + 104))(v12, *v14, v9);
  return dispatch thunk of HideableDataSource.visibility.setter();
}

uint64_t sub_10004F3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100017380(0, &qword_1000DC068, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v21 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  sub_10002ACA0();
  v20 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017380(0, &qword_1000DC0C0, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource);
  v17 = method lookup function for HideableDataSource();

  v17(v14, v16, v13, a5);

  dispatch thunk of HideableDataSource.wrappedDataSource.getter();
  HeaderFooterDataSourceWithLayout.mainDataSource.getter();

  swift_getObjectType();
  LOBYTE(a5) = SnapshotDataSource.isEmpty.getter();
  swift_unknownObjectRelease();
  v18 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if ((a5 & 1) == 0)
  {
    v18 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v7 + 104))(v9, *v18, v21);
  dispatch thunk of HideableDataSource.visibility.setter();

  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_10004F67C()
{
  sub_10004FC4C(0);
  v1 = v0;
  v2 = *(v0 - 8);
  __chkstk_darwin(v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = static FeatureStatusSupport.isHealthChecklistAvailablePublisher()();
  sub_10000CB1C();
  sub_100012940(&qword_1000DB190, sub_10000CB1C, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.dropFirst(_:)();
  swift_allocObject();
  swift_weakInit();
  sub_100012940(&qword_1000DC0D0, sub_10004FC4C, &protocol conformance descriptor for Publishers.Drop<A>);
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10004F878(unsigned __int8 *a1, uint64_t a2)
{
  sub_100017380(0, &qword_1000DC070, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v10 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
    if (!v8)
    {
      v10 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
    }

    (*(v5 + 104))(v7, *v10, v4);
    dispatch thunk of HideableDataSource.visibility.setter();
  }

  return result;
}

void sub_10004F9EC(void *a1)
{
  v2 = type metadata accessor for HealthChecklistOpenedAnalyticsSource();
  __chkstk_darwin(v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HealthChecklistOpenedAnalyticsSource.getMoreFromHealth(_:));
  v5 = objc_allocWithZone(type metadata accessor for HealthChecklistViewController());
  v6 = HealthChecklistViewController.init(sender:isDoneButtonVisible:)();
  [a1 showViewController:v6 sender:a1];
}

uint64_t sub_10004FB18()
{
}

uint64_t sub_10004FB68()
{
  HideableDataSource.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_10004FC00()
{
  result = qword_1000DC0B8;
  if (!qword_1000DC0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC0B8);
  }

  return result;
}

void sub_10004FC4C(uint64_t a1)
{
  if (!qword_1000DC0C8)
  {
    sub_10000CB1C();
    sub_100012940(&qword_1000DB190, sub_10000CB1C, &protocol conformance descriptor for AnyPublisher<A, B>);
    v1 = type metadata accessor for Publishers.Drop();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC0C8);
    }
  }
}

uint64_t type metadata accessor for MiscellaneousItemsDataSource(uint64_t a1)
{
  result = qword_1000DC0F0;
  if (!qword_1000DC0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004FD74(void *a1, char a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(type metadata accessor for HealthSharingInternalSettingsViewController());
    v11 = HealthSharingInternalSettingsViewController.init()();
    v4 = [a1 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 pushViewController:v11 animated:1];
    }
  }

  else
  {
    v6 = [objc_allocWithZone(HKHealthStore) init];
    type metadata accessor for PinnedContentManager();
    v7 = v6;
    PinnedContentManager.__allocating_init(healthStore:domain:)();
    type metadata accessor for SharedProfileOverviewViewController();
    v11 = v7;
    UIViewController.resolvedHealthExperienceStore.getter();

    v8 = SharedProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)();
    v9 = [a1 navigationController];
    if (v9)
    {
      v10 = v9;
      [v9 pushViewController:v8 animated:1];
    }
  }
}

uint64_t sub_10004FEEC()
{
  v0 = type metadata accessor for ContentConfigurationItem();
  v85 = *(v0 - 8);
  __chkstk_darwin(v0);
  v84 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SectionedDataSourceContainerViewType();
  v105 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051028(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v97 = &v62 - v4;
  v95 = type metadata accessor for CellDeselectionBehavior();
  v104 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051028(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v93 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v102 = *(v93 - 8);
  __chkstk_darwin(v93);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v90 - 8);
  __chkstk_darwin(v90);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051028(0, &qword_1000DB6C8, sub_100050F74, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  v103 = xmmword_1000AE100;
  *(inited + 16) = xmmword_1000AE100;
  v86 = v0;
  *(inited + 56) = v0;
  v79 = sub_100050FD8(&qword_1000DC150, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  *(inited + 64) = v79;
  v92 = inited;
  v91 = sub_10000AD4C((inited + 32));
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  UUID.init()();
  v88 = UUID.uuidString.getter();
  v87 = v19;
  v20 = *(v15 + 8);
  v101 = v14;
  v100 = v15 + 8;
  v94 = v20;
  v20(v17, v14);
  v78 = type metadata accessor for UIListContentConfiguration();
  v108 = v78;
  v109 = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(&v107);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v77 = objc_opt_self();
  v21 = [v77 labelColor];
  v22 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v22(v106, 0);
  sub_100051028(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v24 = v23;
  v25 = *(type metadata accessor for UICellAccessory() - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = v26 + *(v25 + 72);
  v75 = v24;
  v74 = v27;
  *(swift_allocObject() + 16) = v103;
  v28 = *(v11 + 104);
  v73 = enum case for UICellAccessory.DisplayedState.always(_:);
  v29 = v90;
  v72 = v28;
  v28(v13);
  v30 = type metadata accessor for UICellAccessory.LayoutDimension();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v71 = v30;
  v70 = v32;
  v69 = v31 + 56;
  (v32)(v8, 1, 1);
  v83 = v8;
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  v76 = v26;
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  v33 = *(v102 + 8);
  v82 = v10;
  v102 += 8;
  v68 = v33;
  v33(v10, v93);
  v34 = v29;
  v35 = *(v11 + 8);
  v80 = v13;
  v36 = v13;
  v37 = v34;
  v81 = v11 + 8;
  v35(v36);
  v38 = *(v104 + 104);
  v67 = enum case for CellDeselectionBehavior.default(_:);
  v104 += 104;
  v66 = v38;
  v38(v96);
  v39 = type metadata accessor for UIBackgroundConfiguration();
  v40 = *(v39 - 8);
  v65 = *(v40 + 56);
  v64 = v40 + 56;
  v65(v97, 1, 1, v39);
  v41 = *(v105 + 104);
  v63 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v105 += 104;
  v62 = v41;
  v41(v98);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  if (static HealthSharingFeatureManager.isFeatureFlagEnabled.getter())
  {
    v91 = swift_allocObject();
    *(v91 + 16) = 1;
    UUID.init()();
    v89 = UUID.uuidString.getter();
    v88 = v42;
    v94(v17, v101);
    v108 = v78;
    v109 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&v107);
    static UIListContentConfiguration.cell()();
    UIListContentConfiguration.text.setter();
    v43 = [v77 labelColor];
    v44 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v44(v106, 0);
    *(swift_allocObject() + 16) = v103;
    v45 = v80;
    v46 = v37;
    v72(v80, v73, v37);
    v70(v83, 1, 1, v71);
    v47 = v35;
    v48 = v82;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    v68(v48, v93);
    v47(v45, v46);
    v66(v96, v67, v95);
    v65(v97, 1, 1, v39);
    v62(v98, v63, v99);
    v49 = v84;
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v50 = sub_100031758(1, 2, 1, v92);
    v51 = v86;
    v108 = v86;
    v109 = v79;
    v52 = sub_10000AD4C(&v107);
    v53 = v85;
    (*(v85 + 16))(v52, v49, v51);
    v50[2] = 2;
    sub_100014D24(&v107, (v50 + 9));
    (*(v53 + 8))(v49, v51);
  }

  else
  {
    v50 = v92;
  }

  sub_100051028(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = v103;
  sub_10009C1FC(v50);

  UUID.init()();
  UUID.uuidString.getter();
  v54 = v101;
  v55 = v94;
  v94(v17, v101);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  *&v107 = 0x3C53447961727241;
  *(&v107 + 1) = 0xE800000000000000;
  UUID.init()();
  v56 = UUID.uuidString.getter();
  v58 = v57;
  v55(v17, v54);
  v59._countAndFlagsBits = v56;
  v59._object = v58;
  String.append(_:)(v59);

  v60._countAndFlagsBits = 62;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

uint64_t sub_100050EF0(uint64_t a1)
{
  *(a1 + 8) = sub_100050FD8(&qword_1000DC140, type metadata accessor for MiscellaneousItemsDataSource, &unk_1000AF368);
  result = sub_100050FD8(&qword_1000DC148, type metadata accessor for MiscellaneousItemsDataSource, &unk_1000AF398);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_100050F74()
{
  result = qword_1000DB6D0;
  if (!qword_1000DB6D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB6D0);
  }

  return result;
}

uint64_t sub_100050FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100051028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100051090()
{

  v1 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckVersion;
  sub_10000E5C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckDate;
  sub_10000E6E8(0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void *sub_10005117C()
{
  sub_100055040(0);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup);
  *(v1 + 16) = xmmword_1000AE110;
  v3 = *(v0 + OBJC_IVAR____TtC6Health16TabBarController_summaryTab);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v13 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC6Health16TabBarController_sharingTab);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v13 + 16) >= *(v13 + 24) >> 1)
  {
LABEL_11:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = 0;
  v9 = *(v13 + 16);
  while (v9 != v8)
  {
    if (v8 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    v10 = *(v13 + 8 * v8++ + 32);
    if (v10)
    {
      v11 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100051304(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setSelectedTab:*&a1[OBJC_IVAR____TtC6Health16TabBarController_searchTab]];
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_10005489C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CEE40;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000548A4(&qword_1000DAD40, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005FF4(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_10005160C()
{
  v0 = dispatch thunk of SearchViewController.searchController.getter();
  v1 = [v0 searchBar];

  [v1 becomeFirstResponder];
}

void sub_100051684(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = [v3 presentedViewController];
  if (v19)
  {
    v52 = a2;
    v53 = v6;
    v58 = v19;
    v20 = v19;
    sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
    sub_100009630(0, &qword_1000DC3F0, &protocol descriptor for StartupNotDismissible);
    v21 = v20;
    if (swift_dynamicCast())
    {
      sub_10000D544(&aBlock, &unk_1000DC3F8, &qword_1000DC3F0, &protocol descriptor for StartupNotDismissible, sub_100055124);
      static Logger.view.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "asked to dismiss but the present view controller is StartupNotDismissible", v24, 2u);
      }

      else
      {
      }

      (*(v7 + 8))(v18, v53);
    }

    else
    {
      v56 = 0;
      aBlock = 0u;
      v55 = 0u;
      sub_10000D544(&aBlock, &unk_1000DC3F8, &qword_1000DC3F0, &protocol descriptor for StartupNotDismissible, sub_100055124);
      if ([v21 isBeingDismissed])
      {
        static Logger.view.getter();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&aBlock = v37;
          *v36 = 136315138;
          v38 = _typeName(_:qualified:)();
          v40 = sub_1000036D0(v38, v39, &aBlock);

          *(v36 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Presented View Controller Already Being Dismissed", v36, 0xCu);
          sub_100003B90(v37);
        }

        v41 = (*(v7 + 8))(v13, v53);
        if (a1)
        {
          a1(v41);
        }
      }

      else
      {
        static Logger.view.getter();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&aBlock = v51;
          *v44 = 136315138;
          v45 = _typeName(_:qualified:)();
          v47 = v21;
          v48 = sub_1000036D0(v45, v46, &aBlock);

          *(v44 + 4) = v48;
          v21 = v47;
          _os_log_impl(&_mh_execute_header, v42, v43, "[%s] Presented View Controller Dismissing", v44, 0xCu);
          sub_100003B90(v51);
        }

        (*(v7 + 8))(v16, v53);
        if (a1)
        {
          v56 = a1;
          v57 = v52;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v55 = sub_100008310;
          *(&v55 + 1) = &unk_1000CEE68;
          v49 = _Block_copy(&aBlock);
        }

        else
        {
          v49 = 0;
        }

        [v3 dismissViewControllerAnimated:0 completion:v49];
        _Block_release(v49);
      }
    }
  }

  else
  {
    static Logger.view.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53 = a1;
      *&aBlock = v28;
      v29 = v28;
      *v27 = 136315138;
      v30 = _typeName(_:qualified:)();
      v32 = sub_1000036D0(v30, v31, &aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] No presented view controller to dismiss", v27, 0xCu);
      sub_100003B90(v29);
      a1 = v53;
    }

    v33 = (*(v7 + 8))(v10, v6);
    if (a1)
    {
      a1(v33);
    }
  }
}

id sub_100051D68()
{
  v1 = [v0 selectedTab];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewController];

    if (v3)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  v5 = [v0 selectedTab];
  v6 = [v5 managingTabGroup];

  v7 = [v6 managingNavigationController];
  return v7;
}

id sub_100051F7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabBarController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100052100(void *a1)
{
  v2 = v1;
  v4 = sub_100051D68();
  if (!v4 || (v5 = v4, v6 = UINavigationController.rootViewController()(), v5, !v6))
  {
    v6 = v2;
  }

  v7 = [v6 navigationController];

  if (!v7)
  {
    return 0;
  }

  sub_100003DDC(0, &qword_1000DC3A8, UINavigationController_ptr);
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  return v9 & 1;
}

void *sub_1000521BC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &ObjectType - v13;
  __chkstk_darwin(v12);
  v16 = &ObjectType - v15;
  v17 = [a1 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 && (v19 = [a1 traitCollection], v20 = objc_msgSend(v19, "horizontalSizeClass"), v19, v20 == 2))
  {
    sub_100003DDC(0, &qword_1000DD140, NSObject_ptr);
    v21 = *(v4 + OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup);

    if (static NSObject.== infix(_:_:)() & 1) == 0 || (v22 = [v21 selectedChild]) != 0 && (v23 = v22, v24 = *(v4 + OBJC_IVAR____TtC6Health16TabBarController_searchTab), sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr), v25 = v24, v26 = static NSObject.== infix(_:_:)(), v25, v23, (v26) || (v27 = objc_msgSend(v21, "selectedChild")) == 0)
    {
      static Logger.view.getter();

      v62 = a2;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v65 = 136315650;
        v66 = _typeName(_:qualified:)();
        v68 = sub_1000036D0(v66, v67, &v81);

        *(v65 + 4) = v68;
        *(v65 + 12) = 2080;
        sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
        v69 = Array.description.getter();
        v71 = sub_1000036D0(v69, v70, &v81);

        *(v65 + 14) = v71;
        *(v65 + 22) = 2080;
        v72 = [v62 identifier];
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = sub_1000036D0(v73, v75, &v81);

        *(v65 + 24) = v76;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%s] Returning proposedViewControllers: %s for %s in regular", v65, 0x20u);
        swift_arrayDestroy();
      }

      (*(v79 + 8))(v14, v80);
    }

    else
    {
      v28 = v27;

      static Logger.view.getter();

      v29 = a2;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v32 = 136315906;
        v33 = _typeName(_:qualified:)();
        v35 = sub_1000036D0(v33, v34, &v81);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
        v36 = Array.description.getter();
        v38 = sub_1000036D0(v36, v37, &v81);

        *(v32 + 14) = v38;
        *(v32 + 22) = 2080;
        a3 = _swiftEmptyArrayStorage;
        v39 = Array.description.getter();
        v41 = sub_1000036D0(v39, v40, &v81);

        *(v32 + 24) = v41;
        *(v32 + 32) = 2080;
        v42 = [v29 identifier];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_1000036D0(v43, v45, &v81);

        *(v32 + 34) = v46;
        _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Modifying view controllers: %s to %s for %s in regular", v32, 0x2Au);
        swift_arrayDestroy();

        (*(v79 + 8))(v16, v80);
      }

      else
      {

        (*(v79 + 8))(v16, v80);
        return _swiftEmptyArrayStorage;
      }
    }
  }

  else
  {
    static Logger.view.getter();

    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v50 = 136315650;
      v51 = _typeName(_:qualified:)();
      v53 = sub_1000036D0(v51, v52, &v81);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
      v54 = Array.description.getter();
      v56 = sub_1000036D0(v54, v55, &v81);

      *(v50 + 14) = v56;
      *(v50 + 22) = 2080;
      v57 = [v47 identifier];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_1000036D0(v58, v60, &v81);

      *(v50 + 24) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "[%s] Returning proposedViewControllers: %s for %s in compact", v50, 0x20u);
      swift_arrayDestroy();
    }

    (*(v79 + 8))(v11, v80);
  }

  return a3;
}

void *sub_100052A58(void *result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v3 = v1;
    v4 = v3;
    if (v2)
    {
      v5 = v3;
      v6 = [v2 viewControllers];
      sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 == 1)
      {
        v9 = UINavigationController.rootViewController()();
        v10 = sub_100052A58(v9);

        return v10;
      }
    }

    ObjectType = swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      v13 = (*(v12 + 8))(ObjectType, v12);
    }

    else
    {
      v13 = [v4 view];
    }

    v10 = v13;

    return v10;
  }

  return result;
}

void sub_100052C6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeepLinkActivityType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for DeepLinkActivityType.allHealthData(_:) || v8 == enum case for DeepLinkActivityType.allTrends(_:))
  {
    goto LABEL_14;
  }

  v9 = v8 == enum case for DeepLinkActivityType.healthProfile(_:) || v8 == enum case for DeepLinkActivityType.medicalID(_:);
  v10 = v9 || v8 == enum case for DeepLinkActivityType.notificationSettings(_:);
  if (v10 || v8 == enum case for DeepLinkActivityType.profileAppSources(_:))
  {
    goto LABEL_14;
  }

  if (v8 == enum case for DeepLinkActivityType.sharingInviteFlow(_:) || v8 == enum case for DeepLinkActivityType.sharingOverview(_:) || v8 == enum case for DeepLinkActivityType.sharingProfile(_:))
  {
    v12 = OBJC_IVAR____TtC6Health16TabBarController_sharingTab;
    goto LABEL_15;
  }

  if (v8 == enum case for DeepLinkActivityType.summary(_:))
  {
LABEL_14:
    v12 = OBJC_IVAR____TtC6Health16TabBarController_summaryTab;
LABEL_15:
    v13 = *&v2[v12];
    goto LABEL_16;
  }

  v21 = *(v5 + 8);
  v13 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
  v21(v7, v4);
LABEL_16:
  v14 = [v2 selectedTab];
  if (!v14)
  {

    goto LABEL_21;
  }

  v15 = v14;
  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v16 = static NSObject.== infix(_:_:)();

  if ((v16 & 1) == 0)
  {
LABEL_21:
    [v2 setSelectedTab:v13];
    goto LABEL_22;
  }

  v17 = sub_100051D68();
  if (v17)
  {
    v18 = v17;
  }

LABEL_22:
  sub_100051684(0, 0);
}

unint64_t sub_100052F1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = [v2 tabs];
  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = TabIdentifier.identifier.getter();
  v9 = sub_100053280(v7, v8, v6);

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 viewController];
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  sub_100003DDC(0, &qword_1000DD140, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {

    v9 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
  }

  v12 = [v2 selectedTab];
  if (!v12 || (v13 = v12, v14 = v9, v15 = static NSObject.== infix(_:_:)(), v13, v14, (v15 & 1) == 0))
  {
    [v3 setSelectedTab:v9];
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = sub_100051D68();
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  v18 = [v16 viewControllers];
  sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_27:

    return v11;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_12:
  v21 = __OFSUB__(v20, 1);
  result = v20 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (result >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v23 = *(v19 + 8 * result + 32);
LABEL_17:
  v24 = v23;

  if ((static NSObject.== infix(_:_:)() & 1) != 0 || (v25 = [v17 viewControllers], v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v25, v29 = v11, __chkstk_darwin(v27), v28[2] = &v29, LOBYTE(v25) = sub_1000545FC(sub_10005482C, v28, v26), , (v25 & 1) == 0))
  {

LABEL_23:
    return v11;
  }

  return v11;
}

void *sub_100053280(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

        return v9;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        return v9;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 children];
        sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = sub_100053280(a1, a2, v19);

        if (v20)
        {
          return v20;
        }
      }

      else
      {
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

id sub_10005346C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = __chkstk_darwin(v2);
  v77 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v86 = &v76 - v5;
  v81 = type metadata accessor for TabIdentifier();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for HKTypeGroup();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HAUserActivity.RestorationInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005FF4(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  __chkstk_darwin(v12 - 8);
  v14 = &v76 - v13;
  v15 = type metadata accessor for DeepLinkActivityType();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v87 = &v76 - v21;
  __chkstk_darwin(v20);
  v23 = &v76 - v22;
  v89 = a1;
  v24 = NSUserActivity.fetchProfileIdentifier()();
  if (v24)
  {
    v25 = v24;
    if ([v24 type] != 1)
    {
      (*(v16 + 104))(v23, enum case for DeepLinkActivityType.sharingOverview(_:), v15);
      v45 = v88;
      sub_100052C6C(v23);
      (*(v16 + 8))(v23, v15);
      v46 = [v45 selectedViewController];
      v29 = &off_1000D7000;
      if (v46)
      {
        v47 = v46;
        [v46 restoreUserActivityState:v89];
      }

      v27 = type metadata accessor for TabBarController();
      v90 = v45;
      v28 = &v90;
      goto LABEL_38;
    }
  }

  v26 = [v89 activityType];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkActivityType.init(_:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100054FAC(v14);
    v27 = type metadata accessor for TabBarController();
    v96.receiver = v88;
    v28 = &v96;
LABEL_6:
    v29 = &off_1000D7000;
    goto LABEL_38;
  }

  v30 = v87;
  (*(v16 + 32))(v87, v14, v15);
  (*(v16 + 16))(v19, v30, v15);
  v31 = (*(v16 + 88))(v19, v15);
  v32 = v88;
  if (v31 == enum case for DeepLinkActivityType.allHealthData(_:) || v31 == enum case for DeepLinkActivityType.allTrends(_:) || v31 == enum case for DeepLinkActivityType.browse(_:))
  {
    goto LABEL_29;
  }

  if (v31 != enum case for DeepLinkActivityType.category(_:))
  {
    if (v31 != enum case for DeepLinkActivityType.dataTypeAddData(_:) && v31 != enum case for DeepLinkActivityType.dataTypeDetail(_:) && v31 != enum case for DeepLinkActivityType.dataTypeHighlights(_:) && v31 != enum case for DeepLinkActivityType.notificationSettings(_:))
    {
      if (v31 == enum case for DeepLinkActivityType.plugin(_:))
      {
        goto LABEL_31;
      }

      if (v31 != enum case for DeepLinkActivityType.sharingInviteFlow(_:) && v31 != enum case for DeepLinkActivityType.sharingOverview(_:) && v31 != enum case for DeepLinkActivityType.sharingProfile(_:) && v31 != enum case for DeepLinkActivityType.summary(_:))
      {
        v48 = v77;
        static Logger.general.getter();
        v49 = v89;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v93[0] = v53;
          *v52 = 136315138;
          v54 = [v49 activityType];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58 = v55;
          v32 = v88;
          v59 = sub_1000036D0(v58, v57, v93);
          v30 = v87;

          *(v52 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v50, v51, "Unsupported activity type falling back to For You feed %s", v52, 0xCu);
          sub_100003B90(v53);

          (*(v84 + 8))(v77, v85);
        }

        else
        {

          (*(v84 + 8))(v48, v85);
        }

        [v32 setSelectedTab:*&v32[OBJC_IVAR____TtC6Health16TabBarController_summaryTab]];
        v75 = *(v16 + 8);
        v75(v30, v15);
        v75(v19, v15);
        v27 = type metadata accessor for TabBarController();
        v95 = v32;
        v28 = &v95;
        goto LABEL_6;
      }
    }

LABEL_29:
    sub_100052C6C(v30);
    v60 = [v32 selectedViewController];
    if (v60)
    {
      v29 = &off_1000D7000;
      v61 = v60;
      [v60 restoreUserActivityState:v89];

      (*(v16 + 8))(v30, v15);
      goto LABEL_32;
    }

LABEL_31:
    (*(v16 + 8))(v30, v15);
    v29 = &off_1000D7000;
    goto LABEL_32;
  }

  (*(v9 + 104))(v11, enum case for HAUserActivity.RestorationInfoKey.displayCategoryID(_:), v8);
  sub_1000548A4(&qword_1000DC3D8, 255, &type metadata accessor for HAUserActivity.RestorationInfoKey, &protocol conformance descriptor for HAUserActivity.RestorationInfoKey);
  NSUserActivity.retrieveUserInfoValueForKey<A>(_:)();
  (*(v9 + 8))(v11, v8);
  if (v93[3])
  {
    v33 = swift_dynamicCast();
    v34 = v86;
    if (v33)
    {
      v35 = v91;
      v36 = [objc_opt_self() categoryWithID:v91];
      if (v36)
      {
        v37 = v83;
        v77 = v36;
        static HKTypeGroup.typeGroup(for:)();
        v93[0] = v32;
        v38 = v78;
        *v78 = v35;
        v39 = v79;
        v40 = v81;
        v41 = (*(v79 + 104))(v38, enum case for TabIdentifier.category(_:), v81);
        v86 = &v76;
        __chkstk_darwin(v41);
        *(&v76 - 2) = v37;
        *(&v76 - 1) = v32;
        type metadata accessor for TabBarController();
        sub_1000548A4(&unk_1000DC3E0, v42, type metadata accessor for TabBarController, &unk_1000AF530);
        DeepLinkNavigator.openTabOrCreateOnSearch(tab:popToTabVC:orCreate:)();
        v44 = v43;
        (*(v39 + 8))(v38, v40);
        v29 = &off_1000D7000;
        [v44 restoreUserActivityState:v89];

        (*(v16 + 8))(v30, v15);
        (*(v80 + 8))(v83, v82);
LABEL_32:
        v27 = type metadata accessor for TabBarController();
        v94 = v32;
        v28 = &v94;
        goto LABEL_38;
      }
    }
  }

  else
  {
    sub_10000D544(v93, &qword_1000DB160, &type metadata for Any + 8, &type metadata accessor for Optional, sub_100003D8C);
    v34 = v86;
  }

  static Logger.view.getter();
  v62 = v89;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v93[0] = v66;
    *v65 = 136446210;
    v67 = v62;
    v68 = [v67 description];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = v69;
    v32 = v88;
    v73 = sub_1000036D0(v72, v71, v93);

    *(v65 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v63, v64, "Couldn't unpack the type group from the sending NSUserActivity. sender = %{public}s", v65, 0xCu);
    sub_100003B90(v66);

    (*(v84 + 8))(v86, v85);
    (*(v16 + 8))(v87, v15);
  }

  else
  {

    (*(v84 + 8))(v34, v85);
    (*(v16 + 8))(v30, v15);
  }

  v29 = &off_1000D7000;
  v27 = type metadata accessor for TabBarController();
  v92 = v32;
  v28 = &v92;
LABEL_38:
  v28->super_class = v27;
  return objc_msgSendSuper2(v28, v29[334], v89);
}

uint64_t sub_10005412C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKTypeGroup();
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v7 = *(a2 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore);
  sub_10000ACE8(a2 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore, v12);
  sub_10000ACE8(a2 + OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManager, v11);
  v8 = objc_allocWithZone(type metadata accessor for CategoryViewController());
  v9 = v7;
  return CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)();
}

id sub_100054478()
{
  v1 = [*v0 selectedTab];

  return v1;
}

id sub_100054574(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [v3 *a3];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000545A4(uint64_t a1, uint64_t a2)
{
  result = sub_1000548A4(&qword_1000DC3A0, a2, type metadata accessor for TabBarController, &unk_1000AF4DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000545FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void (*sub_100054724(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100055200;
  }

  __break(1u);
  return result;
}

void (*sub_1000547A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100054824;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000548A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000548EC(void *a1, id a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003DDC(0, &qword_1000DD140, NSObject_ptr);
  v11 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup];
  v43 = v10;
  if (static NSObject.== infix(_:_:)())
  {
    if (!a2)
    {
      return;
    }

    v12 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
    sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
    v13 = v12;
    a2 = a2;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      static Logger.view.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = v43;
        *v17 = 136315138;
        v18 = _typeName(_:qualified:)();
        v20 = sub_1000036D0(v18, v19, &v44);

        *(v17 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v15, v16, "[%s] searchTabGroup selected from searchTab, custom logic to ignore and reselect searchTab", v17, 0xCu);
        sub_100003B90(v43);
      }

      (*(v7 + 8))(v9, v6);
      [v3 setSelectedTab:v13];
      return;
    }
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v13 = *&v2[OBJC_IVAR____TtC6Health16TabBarController_searchTab];
  }

  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v21 = a2;
  v22 = v13;
  v23 = static NSObject.== infix(_:_:)();

  if (v23 & 1) != 0 || (v24 = v21, v25 = v11, v26 = static NSObject.== infix(_:_:)(), v25, v24, (v26))
  {
    v27 = v21;
    v28 = a1;
    v29 = static NSObject.== infix(_:_:)();

    if ((v29 & 1) == 0)
    {
      String._bridgeToObjectiveC()();
      v30 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
      v31 = PostNotificationOperation.init(name:userInfo:)();
      sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
      v32 = static NSOperationQueue.userInitiated.getter();
      [v32 addOperation:v31];
    }
  }

  v33 = v21;
  v34 = a1;
  v35 = static NSObject.== infix(_:_:)();

  if (v35)
  {
    v36 = [v3 selectedViewController];
    v42 = sub_100052A58(v36);

    if (v42)
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        [v37 _scrollToTopIfPossible:1];
        if (static NSObject.== infix(_:_:)())
        {
          v38 = dispatch thunk of SearchViewController.searchController.getter();
          v39 = [v38 searchBar];

          [v39 becomeFirstResponder];
        }
      }

      v40 = v42;
    }
  }
}

id sub_100054DA4(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() itemFromRequest:a1];
  UITabSidebarItem.defaultContentConfiguration()();
  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v7(v14, 0);
  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v8(v14, 0);
  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.minimumScaleFactor.setter();
  v9(v14, 0);
  v10 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.allowsDefaultTighteningForTruncation.setter();
  v10(v14, 0);
  v14[3] = v2;
  v14[4] = &protocol witness table for UIListContentConfiguration;
  v11 = sub_10000AD4C(v14);
  (*(v3 + 16))(v11, v5, v2);
  UITabSidebarItem.contentConfiguration.setter();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_100054FAC(uint64_t a1)
{
  sub_100005FF4(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100055040(uint64_t a1)
{
  if (!qword_1000DC400)
  {
    sub_1000550B4(255, &qword_1000DC408, &type metadata accessor for Optional);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC400);
    }
  }
}

void sub_1000550B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100003DDC(255, &qword_1000DC3B0, UITab_ptr);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100055124(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100009630(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10005517C()
{
  result = qword_1000DC480;
  if (!qword_1000DC480)
  {
    sub_1000550B4(255, &qword_1000DC478, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC480);
  }

  return result;
}

uint64_t sub_100055214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100055288()
{

  v1 = OBJC_IVAR____TtC6Health32TipTileForLoggingHeaderViewModel__hasUserDismissedTipTile;
  sub_10005543C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TipTileForLoggingHeaderViewModel(uint64_t a1)
{
  result = qword_1000DC4C0;
  if (!qword_1000DC4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100055390(uint64_t a1)
{
  sub_10005543C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10005543C()
{
  if (!qword_1000DD100)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD100);
    }
  }
}

uint64_t sub_10005548C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TipTileForLoggingHeaderViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000554CC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10005554C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_100055600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalizedFeedDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100055650(uint64_t a1)
{
  if (!qword_1000DC5F8)
  {
    type metadata accessor for FeedSection();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC5F8);
    }
  }
}

void sub_1000556A8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
    sub_100057160();
    Set.Iterator.init(_cocoa:)();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100003DDC(0, &qword_1000DD220, UIScene_ptr), swift_dynamicCast(), (v12 = v13) == 0))
    {
LABEL_21:
      sub_10000F754(v2);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_10005595C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(HKHealthStore) init];
  *a1 = result;
  return result;
}

id sub_100055B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100055BD0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10000F0C8(v2, &qword_1000DD220, UIScene_ptr);

  return v3;
}

Swift::Int sub_100055C98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000571C8(0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100055EB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005723C();
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100056108(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100056304(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100056274(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100056108(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int sub_100056304(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000571C8(0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1000564EC(unint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for AdvertisableFeatureModel();
      swift_dynamicCast();
      return v9;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    type metadata accessor for AdvertisableFeatureModel();
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    sub_100003E7C(&qword_1000DBDA8, 255, &type metadata accessor for AdvertisableFeatureModel, &protocol conformance descriptor for AdvertisableFeatureModel);
    v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v7 = -1 << *(a4 + 32);
    v5 = v6 & ~v7;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v8 = ~v7;
      sub_100003E7C(&unk_1000DC690, 255, &type metadata accessor for AdvertisableFeatureModel, &protocol conformance descriptor for AdvertisableFeatureModel);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

LABEL_10:

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

void sub_100056754(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003DDC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003DDC(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_10005696C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    static Logger.general.getter();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      type metadata accessor for OpenURLOptionsKey(0);
      sub_100003E7C(&qword_1000DA758, 255, type metadata accessor for OpenURLOptionsKey, &unk_1000ADB70);
      v12 = Dictionary.description.getter();
      v14 = sub_1000036D0(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Legacy openURL method on AppDelegate does not support options: %s", v10, 0xCu);
      sub_100003B90(v11);
    }

    (*(v5 + 8))(v7, v4);
  }

  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 connectedScenes];

  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10000F0C8(v17, &qword_1000DD220, UIScene_ptr);

  if (v18)
  {
    if ([v18 delegate])
    {
      type metadata accessor for SceneDelegate();
      if (swift_dynamicCastClass())
      {
        sub_100067E04(a1, 0);
        swift_unknownObjectRelease();

        return 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

id sub_100056C98()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v39[2] = 0;
  if ((v2 & 0xC000000000000001) == 0)
  {
    v20 = *(v2 + 32);
    v5 = (((1 << v20) + 63) >> 6);
    if ((v20 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  v4 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v2 = __CocoaSet.makeIterator()();
  v5 = v2;
  for (i = __CocoaSet.Iterator.next()(); i; i = __CocoaSet.Iterator.next()())
  {
    v39[3] = i;
    swift_dynamicCast();
    v7 = v40[0];
    if ([v40[0] activationState])
    {
    }

    else
    {
      v8 = v4[2];
      if (v4[3] <= v8)
      {
        sub_100055C98(v8 + 1);
      }

      v4 = v41;
      v5 = v40[0];
      v9 = NSObject._rawHashValue(seed:)(v41[5]);
      v10 = (v41 + 7);
      v11 = -1 << *(v41 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~v41[(v12 >> 6) + 7]) != 0)
      {
        v14 = __clz(__rbit64((-1 << v12) & ~v41[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        do
        {
          if (++v13 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            goto LABEL_43;
          }

          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *&v10[8 * v13];
        }

        while (v18 == -1);
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      }

      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(v4[6] + 8 * v14) = v7;
      ++v4[2];
    }

    v5 = v2;
  }

LABEL_37:
  sub_1000556A8(v4, v19);
  v2 = v34;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_45;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v2 + 32);
LABEL_42:
        v36 = v35;

        return v36;
      }

      __break(1u);
LABEL_49:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v38 = swift_slowAlloc();
        v4 = sub_100056274(v38, v5, v2, sub_100055B94);

        goto LABEL_37;
      }

LABEL_22:
      v39[1] = v39;
      __chkstk_darwin(v3);
      v22 = v39 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v22, v21);
      v23 = 0;
      v24 = 0;
      v25 = 1 << *(v2 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(v2 + 56);
      v28 = (v25 + 63) >> 6;
      while (v27)
      {
        v29 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
LABEL_32:
        v32 = v29 | (v24 << 6);
        if (![*(*(v2 + 48) + 8 * v32) activationState])
        {
          *&v22[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
          if (__OFADD__(v23++, 1))
          {
            __break(1u);
LABEL_36:
            v4 = sub_100056304(v22, v5, v23, v2);
            goto LABEL_37;
          }
        }
      }

      v30 = v24;
      while (1)
      {
        v24 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v24 >= v28)
        {
          goto LABEL_36;
        }

        v31 = *(v2 + 56 + 8 * v24);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v27 = (v31 - 1) & v31;
          goto LABEL_32;
        }
      }

LABEL_43:
      __break(1u);
    }

    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_45:

  return 0;
}

unint64_t sub_100057160()
{
  result = qword_1000DC640;
  if (!qword_1000DC640)
  {
    sub_100003DDC(255, &qword_1000DD220, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC640);
  }

  return result;
}

void sub_1000571C8(uint64_t a1)
{
  if (!qword_1000DC648)
  {
    sub_100003DDC(255, &qword_1000DD220, UIScene_ptr);
    sub_100057160();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC648);
    }
  }
}

void sub_10005723C()
{
  if (!qword_1000DC658)
  {
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC658);
    }
  }
}

void *sub_100057294(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v13[3] = sub_10002C1C4();
  v17 = type metadata accessor for CloudSyncBuddyAvailabilityProvider();
  sub_100058DC0();
  v8 = String.init<A>(describing:)();
  v13[1] = v9;
  v13[2] = v8;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100007D04(&unk_1000DD150, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100006058(0, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_100007DDC(&unk_1000DD160, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v16;
  v2[2] = v15;
  v2[3] = v11;
  v2[4] = v10;
  return v2;
}

void sub_100057524(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100057DB0(a1, a2, a3, a4);
}

uint64_t sub_100057570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = dispatch_semaphore_create(0);
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  v15 = swift_allocBox();
  v17 = v16;
  v18 = type metadata accessor for CloudSyncState();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v30 = a1;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v15;
  v20[4] = v14;

  v31 = v14;
  dispatch thunk of CloudSyncStateObserver.stateChangeHandler.setter();

  dispatch thunk of CloudSyncStateObserver.startObservingStateChanges()();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v11, v7);
  LOBYTE(v19) = OS_dispatch_semaphore.wait(timeout:)();
  v21(v13, v7);
  dispatch thunk of CloudSyncStateObserver.stateChangeHandler.setter();
  sub_10002C1C4();
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v30;
  *(v23 + 24) = v15;
  *(v23 + 32) = v19 & 1;
  v24 = v34;
  *(v23 + 40) = v33;
  *(v23 + 48) = v24;
  aBlock[4] = sub_10005836C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CF098;
  v25 = _Block_copy(aBlock);

  v26 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100006058(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100007DDC(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  v28 = v35;
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v39 + 8))(v28, v27);
  (*(v37 + 8))(v26, v38);
}

Swift::Int sub_100057ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  v7 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 16);

    dispatch thunk of CloudSyncStateObserver.stateChangeHandler.setter();
  }

  sub_100058C6C(a1, v6);
  v10 = type metadata accessor for CloudSyncState();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100058D2C(v6, v7);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_100057C4C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  v11 = swift_projectBox();
  swift_beginAccess();
  sub_10005837C(v11, v10);
  sub_100058410(v10, a3 & 1, a4, a5);
  return sub_100058AE4(v10);
}

uint64_t sub_100057D44()
{

  return swift_deallocClassInstance();
}

void sub_100057DB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v35 = *(v11 - 8);
  v36 = v11;
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v40 = a4;
  v20[4] = a4;
  v21 = *(a1 + 24);

  v22 = a3;
  v23 = [v21 aida_accountForPrimaryiCloudAccount];
  if (!v23)
  {
    static Logger.cloudSync.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No account, skip enable cloud sync buddy", v31, 2u);
    }

    (*(v38 + 8))(v19, v39);
    sub_100070280(2, a2, v22, v40);
    goto LABEL_12;
  }

  v34 = v22;

  v24 = [v21 aa_primaryAppleAccount];
  if (!v24)
  {
LABEL_11:
    v32 = swift_allocObject();
    v32[2] = a1;
    v32[3] = sub_100058348;
    v32[4] = v20;
    aBlock[4] = sub_100058354;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000CEFF8;
    v33 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100006058(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100007DDC(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    (*(v37 + 8))(v10, v8);
    (*(v35 + 8))(v13, v36);

LABEL_12:

    return;
  }

  v25 = v24;
  if (([v24 aa_isManagedAppleID] & 1) == 0)
  {

    goto LABEL_11;
  }

  static Logger.cloudSync.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Account is a Managed Apple ID, skip enable cloud sync buddy", v28, 2u);
  }

  (*(v38 + 8))(v17, v39);
  sub_100070280(3, a2, v34, v40);
}

uint64_t sub_10005837C(uint64_t a1, uint64_t a2)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058410(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v74 = a4;
  v75 = a3;
  v6 = type metadata accessor for CloudSyncState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v65 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v69 = &v64 - v11;
  v12 = __chkstk_darwin(v10);
  v70 = &v64 - v13;
  __chkstk_darwin(v12);
  v66 = &v64 - v14;
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  v71 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = type metadata accessor for Logger();
  v72 = *(v21 - 8);
  v73 = v21;
  v22 = __chkstk_darwin(v21);
  v68 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v67 = &v64 - v25;
  __chkstk_darwin(v24);
  v27 = &v64 - v26;
  sub_100058B70(0);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v29 + 56);
  sub_10005837C(a1, v31);
  v33 = a2;
  v34 = a2 & 1;
  v31[v32] = v34;
  if ((*(v7 + 48))(v31, 1, v6) == 1)
  {
LABEL_4:
    static Logger.cloudSync.getter();
    sub_10005837C(a1, v20);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v37 = 136446466;
      sub_10005837C(v20, v18);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      sub_100058AE4(v20);
      v41 = sub_1000036D0(v38, v40, &v77);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v76 = v34;
      v42 = String.init<A>(describing:)();
      v44 = sub_1000036D0(v42, v43, &v77);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "state: %{public}s, timeoutResult: %{public}s, healthd did not respond fast enough, skip enable cloud sync buddy", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100058AE4(v20);
    }

    (*(v72 + 8))(v27, v73);
    v45 = 1;
    return v75(v45);
  }

  if (v33)
  {
    sub_100058AE4(v31);
    goto LABEL_4;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || !EnumCaseMultiPayload && (v48 = v66, sub_100058C6C(v31, v66), (*v48 & 1) == 0))
  {
    sub_100058CD0(v31);
    v60 = v67;
    static Logger.cloudSync.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Cloud sync disabled, show enable cloud sync buddy", v63, 2u);
    }

    (*(v72 + 8))(v60, v73);
    v45 = 0;
    return v75(v45);
  }

  v49 = v70;
  sub_100058C08(v31, v70);
  v50 = v68;
  static Logger.cloudSync.getter();
  v51 = v69;
  sub_100058C6C(v49, v69);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v77 = v55;
    *v54 = 136315138;
    sub_100058C6C(v51, v65);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    sub_100058CD0(v51);
    v59 = sub_1000036D0(v56, v58, &v77);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v52, v53, "Cloud sync not disabled (%s), skip enable cloud sync buddy", v54, 0xCu);
    sub_100003B90(v55);
  }

  else
  {

    sub_100058CD0(v51);
  }

  (*(v72 + 8))(v50, v73);
  v75(1);
  return sub_100058CD0(v49);
}

uint64_t sub_100058AE4(uint64_t a1)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100058B70(uint64_t a1)
{
  if (!qword_1000DC768)
  {
    sub_100006058(255, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DC768);
    }
  }
}

uint64_t sub_100058C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058CD0(uint64_t a1)
{
  v2 = type metadata accessor for CloudSyncState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058D2C(uint64_t a1, uint64_t a2)
{
  sub_100006058(0, &qword_1000DC760, &type metadata accessor for CloudSyncState, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100058DC0()
{
  result = qword_1000DC770;
  if (!qword_1000DC770)
  {
    type metadata accessor for CloudSyncBuddyAvailabilityProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000DC770);
  }

  return result;
}

uint64_t type metadata accessor for WelcomeiPadHealthKitSyncViewController(uint64_t a1)
{
  result = qword_1000DC7B0;
  if (!qword_1000DC7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058EC8()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for WelcomeiPadHealthKitSyncViewController(0);
  objc_msgSendSuper2(&v17, "viewDidLoad");
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = HKUIJoinStringsForAutomationIdentifier();

  v6 = [v0 hxui_addPrimaryFooterButtonWithTitle:v3 accessibilityIdentifier:v5];
  v7 = *&v0[qword_1000DC7A0];
  *&v0[qword_1000DC7A0] = v6;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = Array._bridgeToObjectiveC()().super.isa;
  v10 = HKUIJoinStringsForAutomationIdentifier();

  v11 = [v0 hxui_addSecondaryFooterButtonWithTitle:v8 bold:0 accessibilityIdentifier:v10];
  v12 = *&v0[qword_1000DC7A8];
  *&v0[qword_1000DC7A8] = v11;

  v13 = [v0 view];
  if (v13)
  {
    v14 = v13;
    v15 = Array._bridgeToObjectiveC()().super.isa;
    v16 = HKUIJoinStringsForAutomationIdentifier();

    [v14 setAccessibilityIdentifier:v16];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000591B4(void *a1)
{
  v1 = a1;
  sub_100058EC8();
}

void sub_1000591FC(void *a1)
{
  v1 = a1;
  sub_100059258(&qword_1000DC7A0, 1, 1);
}

uint64_t sub_100059258(void *a1, uint64_t a2, char a3)
{
  v5 = a2;
  v6 = *(v3 + *a1);
  v7 = v6;
  sub_100059360(v6, v5);

  v10 = 7;
  v11 = a3;
  v9[3] = type metadata accessor for AnalyticsSender();
  v9[4] = &protocol witness table for AnalyticsSender;
  v9[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(v9);
}

void sub_100059304(void *a1)
{
  v1 = a1;
  sub_100059258(&qword_1000DC7A8, 0, 2);
}

void sub_100059360(void *a1, char a2)
{
  if (*(v2 + qword_1000DC798) == (a2 & 1))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100072D1C(a2 & 1);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    [a1 showsBusyIndicator];
    v4 = *(v2 + qword_1000DC790);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    if (a2)
    {
      *(v6 + 24) = 1;
      v12 = sub_10005A420;
      v13 = v6;
      v8 = _NSConcreteStackBlock;
      v9 = 1107296256;
      v10 = sub_1000099BC;
      v11 = &unk_1000CF170;
      v7 = _Block_copy(&v8);

      [v4 enableCloudSyncWithCompletion:v7];
    }

    else
    {
      *(v6 + 24) = 0;
      v12 = sub_10005A3D4;
      v13 = v6;
      v8 = _NSConcreteStackBlock;
      v9 = 1107296256;
      v10 = sub_1000099BC;
      v11 = &unk_1000CF120;
      v7 = _Block_copy(&v8);

      [v4 disableCloudSyncWithCompletion:v7];
    }

    _Block_release(v7);
  }
}

uint64_t sub_10005956C(int a1, uint64_t a2, uint64_t a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a7;
  v43 = a8;
  v47 = a6;
  v40 = a5;
  v48 = a4;
  v49 = a3;
  v41 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v50 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v45 = *(v16 - 8);
  v46 = v16;
  __chkstk_darwin(v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v39 = v20;
  v44 = v19;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v10;
    v24 = v23;
    v51 = a2;
    aBlock[0] = v23;
    *v22 = 67109378;
    *(v22 + 4) = v41 & 1;
    *(v22 + 8) = 2082;
    swift_errorRetain();
    sub_10005A4C4(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
    v25 = String.init<A>(describing:)();
    v27 = v13;
    v28 = v12;
    v29 = v9;
    v30 = sub_1000036D0(v25, v26, aBlock);

    *(v22 + 10) = v30;
    v9 = v29;
    v12 = v28;
    v13 = v27;
    v31 = v44;
    _os_log_impl(&_mh_execute_header, v44, v39, v40, v22, 0x12u);
    sub_100003B90(v24);
    v10 = v38;

    v14 = v37;
  }

  else
  {
  }

  (*(v45 + 8))(v18, v46);
  sub_10002C1C4();
  v32 = static OS_dispatch_queue.main.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = v49;
  *(v33 + 24) = v48 & 1;
  *(v33 + 32) = a2;
  aBlock[4] = v42;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = v43;
  v34 = _Block_copy(aBlock);
  swift_errorRetain();

  v35 = v50;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005A46C();
  sub_10005A4C4(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v10 + 8))(v12, v9);
  return (*(v14 + 8))(v35, v13);
}

void sub_100059A48(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_1000DC7A0);
    if (v7)
    {
      [v7 hidesBusyIndicator];
    }

    if (a3)
    {
      swift_errorRetain();
      sub_10005A528();

LABEL_6:

      return;
    }

    *(v6 + qword_1000DC798) = a2 & 1;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_6;
    }

    sub_100072D1C(a2 & 1);

    swift_unknownObjectRelease();
  }
}

void sub_100059B20(char *a1)
{
  sub_10005A4C4(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  v3 = v2;
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a1;
    swift_unknownObjectRelease();
    if (qword_1000DA590 != -1)
    {
      swift_once();
    }

    v7 = sub_10005A254(v3, qword_1000E3EA0);
    sub_10005A28C(v7, v5);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10005A320(v5);
    }

    else
    {
      URL.openSensitiveURL()();
      (*(v9 + 8))(v5, v8);
    }
  }
}

void sub_100059D1C()
{
  sub_10005A3AC(v0 + qword_1000DC780);

  v1 = *(v0 + qword_1000DC7A8);
}

id sub_100059D8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeiPadHealthKitSyncViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100059DC4(uint64_t a1)
{
  sub_10005A3AC(a1 + qword_1000DC780);

  v2 = *(a1 + qword_1000DC7A8);
}

void sub_100059E48(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  *(v4 + qword_1000DC780 + 8) = 0;
  v11 = swift_unknownObjectWeakInit();
  *(v4 + qword_1000DC7A0) = 0;
  *(v4 + qword_1000DC7A8) = 0;
  *(v4 + qword_1000DC798) = a4;
  *(v4 + qword_1000DC788) = a1;
  *(v11 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v12 = [objc_allocWithZone(HKCloudSyncControl) initWithHealthStore:a1];
  *(v4 + qword_1000DC790) = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  [objc_opt_self() wapiCapability];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  static OnboardingImageHeight.iconDefaultHeight.getter();
  v14 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:v13];
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  if (v16)
  {
    v17 = type metadata accessor for ImageWithCircleBackground();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image] = v16;
    v22.receiver = v18;
    v22.super_class = v17;
    v19 = v16;
    v20 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_100028D78();
    v21 = v20;
    OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005A254(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10005A28C(uint64_t a1, uint64_t a2)
{
  sub_10005A4C4(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A320(uint64_t a1)
{
  sub_10005A4C4(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005A46C()
{
  result = qword_1000DAD40;
  if (!qword_1000DAD40)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD40);
  }

  return result;
}

void sub_10005A4C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10005A528()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() actionWithTitle:v6 style:0 handler:0];

  [v5 addAction:v7];
  [v0 presentViewController:v5 animated:1 completion:0];
}

uint64_t sub_10005A7D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t type metadata accessor for CloudSyncDownloadingStateViewController(uint64_t a1)
{
  result = qword_1000DC818;
  if (!qword_1000DC818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A898(uint64_t a1)
{
  result = type metadata accessor for CloudSyncRestoreState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005A93C(uint64_t a1)
{
  v3 = type metadata accessor for CloudSyncRestoreState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_1000DC808 + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = *(v4 + 16);
  v7(v1 + qword_1000DC810, a1, v3);
  v8 = [objc_allocWithZone(UIView) init];
  static OnboardingImageHeight.iconDefaultHeight.getter();
  v10 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:v9];
  v7(v6, a1, v3);
  v11 = (*(v4 + 88))(v6, v3);
  if (v11 == enum case for CloudSyncRestoreState.failed(_:) || v11 == enum case for CloudSyncRestoreState.completed(_:))
  {
    v12 = v10;
    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    if (v14)
    {
      v15 = type metadata accessor for ImageWithCircleBackground();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image] = v14;
      v21.receiver = v16;
      v21.super_class = v15;
      v17 = v14;
      v18 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100028D78();
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  sub_10005AC74();
  sub_10005AEA4();
  v19 = OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();

  (*(v4 + 8))(a1, v3);
  return v19;
}

uint64_t sub_10005AC74()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CloudSyncRestoreState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for CloudSyncRestoreState.failed(_:) || v7 == enum case for CloudSyncRestoreState.completed(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }
}

uint64_t sub_10005AEA4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CloudSyncRestoreState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for CloudSyncRestoreState.failed(_:))
  {
    [objc_opt_self() wapiCapability];
LABEL_4:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v7 == enum case for CloudSyncRestoreState.completed(_:))
  {
    goto LABEL_4;
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

void sub_10005B104()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CloudSyncDownloadingStateViewController(0);
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  sub_10005B23C();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = HKUIJoinStringsForAutomationIdentifier();

    if (v5)
    {
      [v3 setAccessibilityIdentifier:v5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10005B1F4(void *a1)
{
  v1 = a1;
  sub_10005B104();
}

void sub_10005B23C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CloudSyncRestoreState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0 + qword_1000DC810, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for CloudSyncRestoreState.failed(_:))
  {
    v8 = [objc_opt_self() boldButton];
    [v8 addTarget:v0 action:"tryAgainButtonTapped" forControlEvents:64];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v9 = String._bridgeToObjectiveC()();

    [v8 setTitle:v9 forState:0];

    sub_10000B84C();
    v10 = swift_allocObject();
    v42 = xmmword_1000AE110;
    *(v10 + 16) = xmmword_1000AE110;
    v11 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v13 = HKUIJoinStringsForAutomationIdentifier();

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      *(v10 + 32) = v14;
      *(v10 + 40) = v16;
      strcpy((v10 + 48), "TryAgainButton");
      *(v10 + 63) = -18;
      v17 = Array._bridgeToObjectiveC()().super.isa;

      v18 = HKUIJoinStringsForAutomationIdentifier();

      [v11 setAccessibilityIdentifier:v18];
      v19 = [v0 buttonTray];
      [v19 addButton:v11];

      v20 = [objc_opt_self() linkButton];
      [v20 addTarget:v0 action:"doneButtonTapped" forControlEvents:64];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v21 = String._bridgeToObjectiveC()();

      [v20 setTitle:v21 forState:0];

      v22 = swift_allocObject();
      *(v22 + 16) = v42;
      v23 = v20;
      v24 = Array._bridgeToObjectiveC()().super.isa;
      v25 = HKUIJoinStringsForAutomationIdentifier();

      if (v25)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        *(v22 + 32) = v26;
        *(v22 + 40) = v28;
        *(v22 + 48) = 0xD000000000000013;
        *(v22 + 56) = 0x80000001000A8090;
        v29 = Array._bridgeToObjectiveC()().super.isa;

        v30 = HKUIJoinStringsForAutomationIdentifier();

        [v23 setAccessibilityIdentifier:v30];
        v31 = [v0 buttonTray];
        [v31 addButton:v23];

LABEL_8:
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v7 == enum case for CloudSyncRestoreState.completed(_:))
  {
    v32 = [objc_opt_self() boldButton];
    [v32 addTarget:v0 action:"doneButtonTapped" forControlEvents:64];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v33 = String._bridgeToObjectiveC()();

    [v32 setTitle:v33 forState:0];

    sub_10000B84C();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000AE110;
    v23 = v32;
    v35 = Array._bridgeToObjectiveC()().super.isa;
    v36 = HKUIJoinStringsForAutomationIdentifier();

    if (v36)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      *(v34 + 48) = 0x74747542656E6F44;
      *(v34 + 56) = 0xEA00000000006E6FLL;
      v40 = Array._bridgeToObjectiveC()().super.isa;

      v41 = HKUIJoinStringsForAutomationIdentifier();

      [v23 setAccessibilityIdentifier:v41];
      v31 = [v0 buttonTray];
      [v31 addButton:v23];
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_10005B98C()
{
  sub_10005BEE0(0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = (&v11 - v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
    v8 = type metadata accessor for CloudSyncRestoreState();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v5, v7, v8);
    v10 = *(v9 + 56);
    v10(v5, 0, 1, v8);
    v10(v3, 1, 1, v8);
    sub_1000731F4(v5, v3);
    swift_unknownObjectRelease();
    sub_10001DC44(v3);
    return sub_10001DC44(v5);
  }

  return result;
}

void sub_10005BB10(void *a1)
{
  v1 = a1;
  sub_10005B98C();
}

uint64_t sub_10005BB58()
{
  sub_10005BEE0(0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = (&v12 - v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = enum case for CloudSyncRestoreState.failed(_:);
    v8 = type metadata accessor for CloudSyncRestoreState();
    v9 = *(v8 - 8);
    v10 = *(v9 + 104);
    v10(v5, v7, v8);
    v11 = *(v9 + 56);
    v11(v5, 0, 1, v8);
    v10(v3, enum case for CloudSyncRestoreState.activelyRestoring(_:), v8);
    v11(v3, 0, 1, v8);
    sub_1000731F4(v5, v3);
    swift_unknownObjectRelease();
    sub_10001DC44(v3);
    return sub_10001DC44(v5);
  }

  return result;
}

void sub_10005BD04(void *a1)
{
  v1 = a1;
  sub_10005BB58();
}

uint64_t sub_10005BDAC()
{
  sub_10005A3AC(v0 + qword_1000DC808);
  v1 = qword_1000DC810;
  v2 = type metadata accessor for CloudSyncRestoreState();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10005BE24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncDownloadingStateViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005BE5C(uint64_t a1)
{
  sub_10005A3AC(a1 + qword_1000DC808);
  v2 = qword_1000DC810;
  v3 = type metadata accessor for CloudSyncRestoreState();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void sub_10005BEE0(uint64_t a1)
{
  if (!qword_1000DD4D0)
  {
    type metadata accessor for CloudSyncRestoreState();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD4D0);
    }
  }
}

uint64_t property wrapper backing initializer of TipTileForLoggingHeaderView.model(uint64_t a1)
{
  type metadata accessor for TipTileForLoggingHeaderViewModel(0);
  State.init(wrappedValue:)();
  return v2;
}

void TipTileForLoggingHeaderView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TipTileForLoggingHeaderView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10005C7E0(0);
  sub_10005C17C(v1, a1 + *(v6 + 44));
  sub_10005E854(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipTileForLoggingHeaderView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_100022B68(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_10005CECC(0, &qword_1000DC970, sub_10005D498, sub_10005D54C);
  v10 = (a1 + *(v9 + 36));
  *v10 = sub_10005D3F4;
  v10[1] = 0;
  v10[2] = sub_10005D494;
  v10[3] = v8;
}

uint64_t type metadata accessor for TipTileForLoggingHeaderView(uint64_t a1)
{
  result = qword_1000DC9F8;
  if (!qword_1000DC9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C17C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005CB2C(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CB04(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CAA8(0);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v77 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v76 = objc_opt_self();
  v17 = [v76 systemBackgroundColor];
  v83 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v18 = v118;
  v79 = v120;
  v80 = v119;
  v19 = v121;
  v78 = v122;
  v20 = v123;
  v21 = static Alignment.center.getter();
  v81 = v22;
  v82 = v21;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = a1[3];
  v94 = a1[2];
  v95 = v23;
  sub_10005DFE0(0, &unk_1000DCA10, &type metadata for CGFloat, &type metadata accessor for State);
  State.wrappedValue.getter();
  v24 = *&v85 + -38.0;
  v84 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v94) = 0;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_10005E6EC(0);
  v34 = &v6[*(v33 + 44)];
  *v34 = static VerticalAlignment.top.getter();
  *(v34 + 1) = 0;
  v34[16] = 1;
  sub_10005E754(0);
  sub_10005D618(a1, &v34[*(v35 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10005E7EC(v6, v10, sub_10005CB2C);
  v36 = &v10[*(v8 + 44)];
  v37 = v129;
  *(v36 + 4) = v128;
  *(v36 + 5) = v37;
  *(v36 + 6) = v130;
  v38 = v125;
  *v36 = v124;
  *(v36 + 1) = v38;
  v39 = v127;
  *(v36 + 2) = v126;
  *(v36 + 3) = v39;
  LOBYTE(v6) = static Edge.Set.all.getter();
  sub_10005E7EC(v10, v16, sub_10005CB04);
  sub_10005CADC(0);
  v41 = &v16[*(v40 + 36)];
  *v41 = v6;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  v41[40] = 1;
  v42 = &v16[*(v12 + 44)];
  v75 = v16;
  v43 = *(type metadata accessor for RoundedRectangle() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  v51 = [v76 systemBackgroundColor];
  v52 = Color.init(_:)();
  sub_10005D344(0);
  *&v42[*(v53 + 52)] = v52;
  *&v42[*(v53 + 56)] = 256;
  v54 = static Alignment.center.getter();
  v56 = v55;
  sub_10005D2B0(0);
  v58 = &v42[*(v57 + 36)];
  *v58 = v54;
  v58[1] = v56;
  v59 = v77;
  sub_10005EA6C(v16, v77, sub_10005CAA8);
  *&v85 = v18;
  LODWORD(v16) = v79;
  LODWORD(v56) = v80;
  *(&v85 + 1) = __PAIR64__(v79, v80);
  *&v86 = v19;
  v60 = v78;
  *(&v86 + 1) = v78;
  *&v87 = v20;
  v61 = v83;
  *(&v87 + 1) = v83;
  LOWORD(v88) = 256;
  *(&v88 + 2) = v134;
  WORD3(v88) = v135;
  v63 = v81;
  v62 = v82;
  *(&v88 + 1) = v82;
  *&v89[0] = v81;
  *(&v89[1] + 8) = v132;
  *(&v89[2] + 8) = v133;
  *(v89 + 8) = v131;
  *(&v89[3] + 1) = v24;
  *&v90 = 0;
  BYTE8(v90) = v84;
  *(&v90 + 9) = *v117;
  HIDWORD(v90) = *&v117[3];
  *&v91 = v26;
  *(&v91 + 1) = v28;
  *&v92 = v30;
  *(&v92 + 1) = v32;
  v93 = 0;
  v64 = v85;
  v65 = v86;
  v66 = v88;
  *(a2 + 32) = v87;
  *(a2 + 48) = v66;
  *a2 = v64;
  *(a2 + 16) = v65;
  v67 = v89[0];
  v68 = v89[1];
  v69 = v89[3];
  *(a2 + 96) = v89[2];
  *(a2 + 112) = v69;
  *(a2 + 64) = v67;
  *(a2 + 80) = v68;
  v70 = v90;
  v71 = v91;
  v72 = v92;
  *(a2 + 176) = 0;
  *(a2 + 144) = v71;
  *(a2 + 160) = v72;
  *(a2 + 128) = v70;
  sub_10005C878(0);
  sub_10005EA6C(v59, a2 + *(v73 + 48), sub_10005CAA8);
  sub_10005E854(&v85, &v94, sub_10005C8E8);
  sub_10005EAD4(v75, sub_10005CAA8);
  sub_10005EAD4(v59, sub_10005CAA8);
  v94 = v18;
  v95 = __PAIR64__(v16, v56);
  v96 = v19;
  v97 = v60;
  v98 = v20;
  v99 = v61;
  v100 = 256;
  v101 = v134;
  v102 = v135;
  v103 = v62;
  v104 = v63;
  v107 = v133;
  v106 = v132;
  v105 = v131;
  v108 = v24;
  v109 = 0;
  v110 = v84;
  *&v111[3] = *&v117[3];
  *v111 = *v117;
  v112 = v26;
  v113 = v28;
  v114 = v30;
  v115 = v32;
  v116 = 0;
  return sub_10005EC54(&v94, sub_10005C8E8);
}

void sub_10005C7E0(uint64_t a1)
{
  if (!qword_1000DC868)
  {
    sub_10005CC74(255, &qword_1000DC870, sub_10005C878, &type metadata accessor for TupleView);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC868);
    }
  }
}

void sub_10005C878(uint64_t a1)
{
  if (!qword_1000DC878)
  {
    sub_10005C8E8(255);
    sub_10005CAA8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DC878);
    }
  }
}

void sub_10005C938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10005C9C4(uint64_t a1)
{
  if (!qword_1000DC898)
  {
    sub_10005CA54();
    v1 = type metadata accessor for StrokeShapeView();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC898);
    }
  }
}

unint64_t sub_10005CA54()
{
  result = qword_1000DC8A0;
  if (!qword_1000DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC8A0);
  }

  return result;
}

void sub_10005CB2C(uint64_t a1)
{
  if (!qword_1000DC8C0)
  {
    sub_10005CBC0(255);
    sub_10005D268(&qword_1000DC948, sub_10005CBC0, &protocol conformance descriptor for HStack<A>);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC8C0);
    }
  }
}

void sub_10005CBC0(uint64_t a1)
{
  if (!qword_1000DC8C8)
  {
    sub_10005CC74(255, &qword_1000DC8D0, sub_10005CCD8, &type metadata accessor for TupleView);
    sub_10005D204(&qword_1000DC940, &qword_1000DC8D0, sub_10005CCD8);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC8C8);
    }
  }
}

void sub_10005CC74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10005CCD8(uint64_t a1)
{
  if (!qword_1000DC8D8)
  {
    sub_10005CD48(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DC8D8);
    }
  }
}

void sub_10005CD70(uint64_t a1)
{
  if (!qword_1000DC8E8)
  {
    sub_10005CE14(255);
    sub_10005CE98(255);
    sub_10005D04C();
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for Button();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC8E8);
    }
  }
}

void sub_10005CE14(uint64_t a1)
{
  if (!qword_1000DC8F0)
  {
    sub_10005CE98(255);
    sub_10005D04C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DC8F0);
    }
  }
}

void sub_10005CECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10005CF40(uint64_t a1)
{
  if (!qword_1000DC900)
  {
    sub_10005CC74(255, &qword_1000DC908, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC900);
    }
  }
}

void sub_10005CFD0(uint64_t a1)
{
  if (!qword_1000DC910)
  {
    sub_10005DFE0(255, &qword_1000DC918, &type metadata for Color, &type metadata accessor for Optional);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC910);
    }
  }
}

unint64_t sub_10005D04C()
{
  result = qword_1000DC920;
  if (!qword_1000DC920)
  {
    sub_10005CE98(255);
    sub_10005D0FC();
    sub_10005D268(&qword_1000DC938, sub_10005CFD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC920);
  }

  return result;
}

unint64_t sub_10005D0FC()
{
  result = qword_1000DC928;
  if (!qword_1000DC928)
  {
    sub_10005CF40(255);
    sub_10005D17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC928);
  }

  return result;
}

unint64_t sub_10005D17C()
{
  result = qword_1000DC930;
  if (!qword_1000DC930)
  {
    sub_10005CC74(255, &qword_1000DC908, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC930);
  }

  return result;
}

uint64_t sub_10005D204(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_10005CC74(255, a2, a3, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005D268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005D2B0(uint64_t a1)
{
  if (!qword_1000DC950)
  {
    sub_10005D344(255);
    sub_10005D268(&qword_1000DC968, sub_10005D344, &protocol conformance descriptor for _ShapeView<A, B>);
    v1 = type metadata accessor for _BackgroundModifier();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC950);
    }
  }
}

void sub_10005D344(uint64_t a1)
{
  if (!qword_1000DC958)
  {
    type metadata accessor for RoundedRectangle();
    sub_10005D268(&qword_1000DC960, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC958);
    }
  }
}

void sub_10005D498(uint64_t a1)
{
  if (!qword_1000DC978)
  {
    sub_10005CC74(255, &qword_1000DC870, sub_10005C878, &type metadata accessor for TupleView);
    sub_10005D204(&qword_1000DC980, &qword_1000DC870, sub_10005C878);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC978);
    }
  }
}

void sub_10005D54C(uint64_t a1)
{
  if (!qword_1000DC988)
  {
    sub_10005D5A8();
    v1 = type metadata accessor for _GeometryActionModifier();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DC988);
    }
  }
}

unint64_t sub_10005D5A8()
{
  result = qword_1000DC990;
  if (!qword_1000DC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC990);
  }

  return result;
}

uint64_t sub_10005D618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipTileForLoggingHeaderView(0);
  v49 = *(v4 - 8);
  v48 = *(v49 + 64);
  __chkstk_darwin(v4 - 8);
  v47 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005CD48(0);
  v51 = v6 - 8;
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v50 = &v44[-v9];
  v46 = a1;
  v10 = a1[1];
  v54 = *a1;
  v55 = v10;
  sub_10005CC74(0, &qword_1000DCA08, type metadata accessor for TipTileForLoggingHeaderViewModel, &type metadata accessor for State);
  State.wrappedValue.getter();
  v11 = *(v53 + 16);
  v12 = *(v53 + 24);

  v54 = v11;
  v55 = v12;
  sub_100039898();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.subheadline.getter();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  sub_1000385F4(v13, v15, v17 & 1);

  LODWORD(v54) = static HierarchicalShapeStyle.secondary.getter();
  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  v45 = v26;
  v28 = v27;
  sub_1000385F4(v18, v20, v22 & 1);

  v29 = v47;
  sub_10005E854(v46, v47, type metadata accessor for TipTileForLoggingHeaderView);
  v30 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v31 = swift_allocObject();
  sub_100022B68(v29, v31 + v30);
  sub_10005CE14(0);
  sub_10005CE98(255);
  v33 = v32;
  v34 = sub_10005D04C();
  v54 = v33;
  v55 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  Button.init(action:label:)();
  LOBYTE(v11) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v36 = v52;
  v37 = v35 + *(v51 + 44);
  *v37 = v11;
  *(v37 + 8) = v38;
  *(v37 + 16) = v39;
  *(v37 + 24) = v40;
  *(v37 + 32) = v41;
  *(v37 + 40) = 0;
  sub_10005EA6C(v35, v36, sub_10005CD48);
  *a2 = v23;
  *(a2 + 8) = v25;
  LOBYTE(v30) = v45 & 1;
  *(a2 + 16) = v45 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_10005CCD8(0);
  sub_10005EA6C(v36, a2 + *(v42 + 64), sub_10005CD48);
  sub_1000385D8(v23, v25, v30);

  sub_10005EAD4(v35, sub_10005CD48);
  sub_10005EAD4(v36, sub_10005CD48);
  sub_1000385F4(v23, v25, v30);
}

void sub_10005DA30(uint64_t *a1)
{
  sub_10005CC74(0, &qword_1000DCA08, type metadata accessor for TipTileForLoggingHeaderViewModel, &type metadata accessor for State);
  State.wrappedValue.getter();
  v1 = *(v2 + 32);

  State.wrappedValue.getter();

  HKKeyValueDomain.setBool(_:for:)();

  State.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

uint64_t sub_10005DB74()
{
  sub_10005CE98(0);
  v1 = v0;
  __chkstk_darwin(v0);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = Image.init(systemName:)();
  sub_10005CF40(0);
  v6 = (v3 + *(v5 + 36));
  sub_10005CC74(0, &qword_1000DC908, &type metadata accessor for Image.Scale, &type metadata accessor for _EnvironmentKeyWritingModifier);
  v8 = *(v7 + 28);
  v9 = enum case for Image.Scale.small(_:);
  v10 = type metadata accessor for Image.Scale();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *v6 = swift_getKeyPath();
  *v3 = v4;
  v11 = static Color.tertiary.getter();
  KeyPath = swift_getKeyPath();
  v13 = (v3 + *(v1 + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  static Font.Weight.bold.getter();
  sub_10005D04C();
  View.fontWeight(_:)();
  return sub_10005EC54(v3, sub_10005CE98);
}

void sub_10005DD20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10005C7E0(0);
  sub_10005C17C(v2, a2 + *(v6 + 44));
  sub_10005E854(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipTileForLoggingHeaderView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_100022B68(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_10005CECC(0, &qword_1000DC970, sub_10005D498, sub_10005D54C);
  v10 = (a2 + *(v9 + 36));
  *v10 = sub_10005D3F4;
  v10[1] = 0;
  v10[2] = sub_10005ECB4;
  v10[3] = v8;
}

void sub_10005DEC0(uint64_t a1)
{
  sub_10005CC74(319, &qword_1000DCA08, type metadata accessor for TipTileForLoggingHeaderViewModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_10005DFE0(319, &unk_1000DCA10, &type metadata for CGFloat, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_10005CC74(319, &qword_1000DC998, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005DFE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10005E030()
{
  result = qword_1000DCA48;
  if (!qword_1000DCA48)
  {
    sub_10005CECC(255, &qword_1000DC970, sub_10005D498, sub_10005D54C);
    sub_10005D268(&qword_1000DCA50, sub_10005D498, &protocol conformance descriptor for VStack<A>);
    sub_10005D268(&qword_1000DCA58, sub_10005D54C, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA48);
  }

  return result;
}

void sub_10005E198(uint64_t a1)
{
  if (!qword_1000DCA68)
  {
    sub_10005CA54();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCA68);
    }
  }
}

double sub_10005E214@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Path.init()();
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  *&v11 = CGRectGetMinY(v23);
  Path.move(to:)(__PAIR128__(v11, *&MidX));
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  *&v13 = CGRectGetMaxY(v25);
  Path.addLine(to:)(__PAIR128__(v13, *&MinX));
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  *&v15 = CGRectGetMaxY(v27);
  Path.addLine(to:)(__PAIR128__(v15, *&MaxX));
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v16 = CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  *&v17 = CGRectGetMinY(v29);
  Path.addLine(to:)(__PAIR128__(v17, *&v16));
  result = *&v19;
  *a1 = v19;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  return result;
}

uint64_t (*sub_10005E38C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10005E414;
}

void sub_10005E414(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10005E460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005CA54();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005E4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005CA54();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005E528(uint64_t a1)
{
  v2 = sub_10005CA54();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_10005E578()
{
  result = qword_1000DCA70;
  if (!qword_1000DCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA70);
  }

  return result;
}

unint64_t sub_10005E5D0()
{
  result = qword_1000DCA78;
  if (!qword_1000DCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA78);
  }

  return result;
}

unint64_t sub_10005E628()
{
  result = qword_1000DCA80;
  if (!qword_1000DCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCA80);
  }

  return result;
}

uint64_t sub_10005E67C(void *a1)
{
  v3 = *(type metadata accessor for TipTileForLoggingHeaderView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10005D420(a1, v4);
}

void sub_10005E6EC(uint64_t a1)
{
  if (!qword_1000DCA88)
  {
    sub_10005CBC0(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCA88);
    }
  }
}

void sub_10005E754(uint64_t a1)
{
  if (!qword_1000DCA90)
  {
    sub_10005CC74(255, &qword_1000DC8D0, sub_10005CCD8, &type metadata accessor for TupleView);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCA90);
    }
  }
}

uint64_t sub_10005E7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E8BC()
{
  v1 = (type metadata accessor for TipTileForLoggingHeaderView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_10005CC74(0, &qword_1000DA5D8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10005EA0C()
{
  v1 = *(type metadata accessor for TipTileForLoggingHeaderView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_10005DA30(v2);
}

uint64_t sub_10005EA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005EAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005EB34(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_10005EBFC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005EC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005ECB8()
{
  sub_100003B90((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_10005ED5C(uint64_t a1)
{
  if (*(a1 + qword_1000DCB70 + 8))
  {

    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void (*sub_10005EDCC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100018E60();
  return sub_10005EE14;
}

void sub_10005EE14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + qword_1000DCB98);
  *(v1 + qword_1000DCB98) = v2;
}

uint64_t sub_10005EE2C()
{
  v1 = qword_1000DCBA8;
  if (*(v0 + qword_1000DCBA8))
  {
    v2 = *(v0 + qword_1000DCBA8);
  }

  else
  {
    v3 = *(v0 + qword_1000DCB78);
    type metadata accessor for AlertStackModalPresentationManager();
    swift_allocObject();
    v4 = v3;
    v2 = AlertStackModalPresentationManager.init(healthStore:)();
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_10005EEBC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_10000ACE8(a2, v11);
  v7 = [a1 collectionView];
  type metadata accessor for SummaryFeedDataSource(0);
  swift_allocObject();
  v8 = a3;

  v9 = sub_100010970(v11, v8, a4, v7);

  return v9;
}

void sub_10005EFA8(char a1)
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for Presentation();
  __chkstk_darwin(v4);
  (*(v6 + 104))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Presentation.summaryFeed(_:));
  UIViewController.traitOverrides.getter();
  UIMutableTraits.presentation.setter();
  UIViewController.traitOverrides.setter();
  v7 = type metadata accessor for SummaryFeedViewController(0);
  v11.receiver = v1;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewIsAppearing:", a1 & 1);
  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v10];
  }

  else
  {
    __break(1u);
  }
}

void sub_10005F178(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummaryFeedViewController(0);
  v14.receiver = v2;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  sub_10001BC98();
  Date.init()();
  dispatch thunk of PersonalizedFeedTrainer.feedDidEndDisplay(at:)();

  (*(v5 + 8))(v7, v4);
  v9 = [v2 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 setAllowsFocus:1];

    v11 = [v2 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(UIFocusHaloEffect) init];
      [v12 setFocusEffect:v13];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10005F318(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005F178(a3);
}

void sub_10005F36C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[qword_1000DCB68] & 1) == 0)
  {
    v1[qword_1000DCB68] = 1;
    static Logger.view.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting visible rect edges of collection view", v8, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 _visibleRectEdgeInsets];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [v1 collectionView];
      if (v19)
      {
        v20 = v19;
        [v19 _setVisibleRectEdgeInsets:{0.0, 0.0, -10000.0, 0.0}];

        v21 = [v1 collectionView];
        if (v21)
        {
          v22 = v21;
          [v21 _setVisibleRectEdgeInsets:{v12, v14, v16, v18}];

          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10005F59C(void *a1)
{
  v1 = a1;
  sub_10005F36C();
}

void sub_10005F5E4(void *a1, void *a2)
{
  type metadata accessor for PlatformTabCollectionViewController();
  v4 = method lookup function for CompoundDataSourceCollectionViewController();
  v4(a1, a2);
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != [a2 horizontalSizeClass])
  {

    sub_100018B30();
  }
}

uint64_t sub_10005F6E4()
{

  sub_100003B90((v0 + qword_1000DCB80));
  sub_100003B90((v0 + qword_1000DCB88));

  return sub_100003B90((v0 + qword_1000DCBC0));
}

id sub_10005F7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryFeedViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005F7E4(uint64_t a1)
{

  sub_100003B90((a1 + qword_1000DCB80));
  sub_100003B90((a1 + qword_1000DCB88));

  return sub_100003B90((a1 + qword_1000DCBC0));
}

void (*sub_10005F9AC(id **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10005EDCC(v2);
  return sub_10005E414;
}

void sub_10005FA20(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CellDeselectionBehavior();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Presentation();
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HealthAppInteraction.Action();
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (!v14)
  {
    return;
  }

  v33 = a1;
  v40 = v14;
  sub_100003DDC(0, &qword_1000DCCE0, UICollectionViewCell_ptr);
  sub_100009630(0, &qword_1000DCCE8, &protocol descriptor for CellSelectionHandling);
  v15 = v14;
  if ((swift_dynamicCast() & 1) == 0)
  {

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_100061728(&v37, &unk_1000DCCF0, &qword_1000DCCE8, &protocol descriptor for CellSelectionHandling, sub_100055124);
    return;
  }

  v30 = v4;
  sub_100014D24(&v37, v41);
  sub_10000BFFC(v41, v42);
  v31 = v15;
  v32 = a2;
  dispatch thunk of CellSelectionHandling.didSelectCell(_:in:)();
  dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
  type metadata accessor for SummaryFeedDataSource(0);
  swift_dynamicCastClassUnconditional();
  SnapshotDataSource.item(at:)();

  sub_100009630(0, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem);
  type metadata accessor for FeedItem();
  if (swift_dynamicCast())
  {
    v16 = v40;
    FeedItem.favoriteStatus.getter();
    v17 = FeedItem.FavoriteStatus.rawValue.getter();
    v19 = v18;
    v20 = FeedItem.FavoriteStatus.rawValue.getter();
    v22 = v30;
    if (v17 == v20 && v19 == v21)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v29[1] = type metadata accessor for HealthAppAnalyticsManager();
    v24 = v34;
    (*(v34 + 104))(v12, enum case for HealthAppInteraction.Action.selectFavorite(_:), v10);
    v25 = v35;
    (*(v35 + 104))(v9, enum case for Presentation.summaryFeed(_:), v7);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v29[0] = v7;
    static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)();

    sub_100061728(&v37, &unk_1000DCD00, &unk_1000DCD08, &protocol descriptor for PinnedContentManaging, sub_100055124);
    (*(v25 + 8))(v9, v29[0]);
    (*(v24 + 8))(v12, v10);
  }

  else
  {
    v22 = v30;
  }

LABEL_12:
  sub_10000BFFC(v41, v42);
  dispatch thunk of CellSelectionHandling.deselectionBehavior(in:)();
  v26 = v36;
  if ((*(v36 + 88))(v6, v22) == enum case for CellDeselectionBehavior.deselectOnDidSelect(_:))
  {
    (*(v26 + 96))(v6, v22);
    v27 = *v6;
    v28 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v33 deselectItemAtIndexPath:v28 animated:v27];
  }

  else
  {

    (*(v26 + 8))(v6, v22);
  }

  sub_100003B90(v41);
}

uint64_t sub_10005FFF8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_10005FA20(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1000600F4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 2 && (*(v1 + qword_1000DCBC8) & 1) == 0)
  {
    static Logger.view.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_1000036D0(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Checking if we need to show the alerts modal", v10, 0xCu);
      sub_100003B90(v11);
    }

    (*(v3 + 8))(v5, v2);
    sub_10005EE2C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of AlertStackModalPresentationManager.fetchEligibleAlerts(completion:)();
  }
}

void sub_100060358(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(a1 + 16) < 2uLL)
    {
    }

    else
    {
      v12 = Strong;
      sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
      v17 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      aBlock[4] = sub_100061670;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008310;
      aBlock[3] = &unk_1000CF320;
      v14 = _Block_copy(aBlock);
      v15 = v12;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100007D4C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000060BC(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
      sub_100028B74();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = v17;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_100060684(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1000DCBC8;
  if ((*(a1 + qword_1000DCBC8) & 1) == 0)
  {
    static Logger.view.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000036D0(0xD000000000000019, 0x80000001000AFBA0, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] User has at least two new alerts; displaying the expanded modal!", v10, 0xCu);
      sub_100003B90(v11);
    }

    (*(v3 + 8))(v6, v2);
    *(a1 + v7) = 1;
    dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
    type metadata accessor for SummaryFeedDataSource(0);
    swift_dynamicCastClassUnconditional();
    sub_100081BB8();
  }

  return result;
}

uint64_t sub_100060880(void *a1)
{
  v85 = a1;
  v81 = type metadata accessor for Presentation();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76[1] = v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for HAUserActivity.ViewNavigationKeys();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060BC(0, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = v76 - v4;
  v6 = type metadata accessor for DeepLinkActivityType();
  v86 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = v76 - v10;
  v83 = type metadata accessor for Logger();
  v11 = *(v83 - 8);
  v12 = __chkstk_darwin(v83);
  v76[0] = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v76 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v76 - v18;
  __chkstk_darwin(v17);
  v21 = v76 - v20;
  static Logger.view.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Attempting to restore ForYou View Controller from User Activity.", v24, 2u);
  }

  v25 = *(v11 + 8);
  v25(v21, v83);
  v26 = type metadata accessor for SummaryFeedViewController(0);
  v27 = v85;
  v92.receiver = v84;
  v92.super_class = v26;
  objc_msgSendSuper2(&v92, "restoreUserActivityState:", v85);
  v28 = [v27 activityType];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  DeepLinkActivityType.init(_:)();
  v29 = v86;
  v30 = v6;
  if ((*(v86 + 48))(v5, 1, v6) == 1)
  {
    return sub_100061728(v5, &qword_1000DC3D0, &type metadata accessor for DeepLinkActivityType, &type metadata accessor for Optional, sub_1000060BC);
  }

  v32 = v82;
  (*(v29 + 32))(v82, v5, v30);
  (*(v29 + 16))(v9, v32, v30);
  v33 = (*(v29 + 88))(v9, v30);
  if (v33 == enum case for DeepLinkActivityType.allHealthData(_:))
  {
    static Logger.view.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Restoring to All Data view from User Activity via Discover.", v36, 2u);
    }

    v25(v19, v83);
    v37 = v84;
    v38 = *&v84[qword_1000DCB78];
    sub_10000ACE8(&v84[qword_1000DCB80], v91);
    v39 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController(0));
    (*(v80 + 104))(&v39[qword_1000E3F58], enum case for Presentation.showAllData(_:), v81);
    *&v39[qword_1000DDE98] = v38;
    sub_10000ACE8(v91, &v39[qword_1000DDEA0]);
    sub_10000ACE8(v91, &v87);
    type metadata accessor for AllHealthDataDataSource(0);
    swift_allocObject();
    v40 = v38;
    sub_100030B28(v40, &v87);

    v41 = CompoundDataSourceCollectionViewController.init(dataSource:)();
    sub_100003B90(v91);
    v42 = [v37 navigationController];
    if (v42)
    {
      v43 = v42;
      [v42 pushViewController:v41 animated:0];
    }

    [v41 restoreUserActivityState:v85];
LABEL_17:

    return (*(v86 + 8))(v82, v30);
  }

  if (v33 == enum case for DeepLinkActivityType.notificationSettings(_:))
  {
    static Logger.view.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Restoring to notification settings view from User Activity via Discover.", v46, 2u);
    }

    v25(v16, v83);
    v47 = v84;
    UIViewController.resolvedHealthExperienceStore.getter();
    v48 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());
    v41 = NotificationSettingsViewController.init(healthExperienceStore:)();
    type metadata accessor for ProfileViewController();
    dispatch thunk of PinnedContentManagerProvider.manager(for:)();
    v49 = static ProfileViewController.makeProfileNavigationController(healthStore:pinnedContentManager:configurator:)();
    sub_100003B90(v91);
    [v49 pushViewController:v41 animated:0];
    v50 = [v47 navigationController];
    if (v50)
    {
      v51 = v50;
      [v50 presentViewController:v49 animated:0 completion:0];
    }

    [v41 restoreUserActivityState:v85];

    goto LABEL_17;
  }

  v54 = *(v29 + 8);
  v52 = v29 + 8;
  v53 = v54;
  v54(v9, v30);
  v55 = [v85 userInfo];
  if (!v55)
  {
    v53(v82, v30);
    v87 = 0u;
    v88 = 0u;
    return sub_100061678(&v87);
  }

  v86 = v52;
  v56 = v55;
  v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = v78;
  v59 = v77;
  v60 = v79;
  (*(v78 + 104))(v77, enum case for HAUserActivity.ViewNavigationKeys.allTrends(_:), v79);
  v61 = HAUserActivity.ViewNavigationKeys.rawValue.getter();
  v63 = v62;
  (*(v58 + 8))(v59, v60);
  v89 = v61;
  v90 = v63;
  AnyHashable.init<A>(_:)();
  if (!*(v57 + 16) || (v64 = sub_100033344(v91), (v65 & 1) == 0))
  {

    sub_10002E508(v91);
    v87 = 0u;
    v88 = 0u;
    goto LABEL_28;
  }

  sub_100003B34(*(v57 + 56) + 32 * v64, &v87);
  sub_10002E508(v91);

  if (!*(&v88 + 1))
  {
LABEL_28:
    v53(v82, v30);
    return sub_100061678(&v87);
  }

  sub_100061678(&v87);
  v66 = v76[0];
  static Logger.view.getter();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Restoring to All Trends View Controller from User Activity via Discover.", v69, 2u);
  }

  v25(v66, v83);
  v70 = v84;
  v71 = *&v84[qword_1000DCB78];
  UIViewController.resolvedHealthExperienceStore.getter();
  UIViewController.resolvedPresentation.getter();
  v72 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
  v73 = AllTrendsViewController.init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)();
  v74 = [v70 navigationController];
  if (v74)
  {
    v75 = v74;
    [v74 pushViewController:v73 animated:0];
  }

  [v73 restoreUserActivityState:v85];

  return (v53)(v82, v30);
}

void sub_100061434(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100060880(v4);
}

void sub_10006149C(char *a1)
{
  v2 = *&a1[qword_1000DCB78];
  v3 = objc_allocWithZone(type metadata accessor for InternalSettingsViewController(0));
  v7 = a1;
  v4 = v2;
  v5 = sub_10002BCE4(v4);

  v6 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v5];
  [v7 presentViewController:v6 animated:1 completion:0];
}

char *sub_100061574(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100031A88(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100061678(uint64_t a1)
{
  sub_1000616D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000616D4()
{
  if (!qword_1000DB160)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB160);
    }
  }
}

uint64_t sub_100061728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_100061788(uint64_t a1)
{
  if (!qword_1000DCD30)
  {
    sub_100003DDC(255, &qword_1000DB670, UIColor_ptr);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCD30);
    }
  }
}

void sub_1000617F0()
{
  v1 = v0;
  v2 = v0 + qword_1000DCB60;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = xmmword_1000AFB70;
  *(v0 + qword_1000DCB68) = 0;
  v3 = (v0 + qword_1000DCB70);
  type metadata accessor for SidebarDataSourceItem();
  *v3 = static SidebarDataSourceItem.summarySidebarItemIdentifier.getter();
  v3[1] = v4;
  *(v0 + qword_1000DCB98) = 0;
  *(v0 + qword_1000DCBA0) = 0;
  *(v0 + qword_1000DCBA8) = 0;
  v5 = (v0 + qword_1000DCBB0);
  v6 = [objc_allocWithZone(type metadata accessor for ProfileGradientWithFadeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = ProfileGradientWithFadeView.gradientView.getter();
  dispatch thunk of ProfileGradientView.delayAnimation.setter();

  *v5 = v6;
  v5[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v1 + qword_1000DCBB8) = 0;
  *(v1 + qword_1000DCBC8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for MedicalIDEmergencyBuddyDataSource(uint64_t a1)
{
  result = qword_1000DCD70;
  if (!qword_1000DCD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000619D0()
{
  v42 = *v0;
  v1 = type metadata accessor for UUID();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EmergencyAccessBuddyFlow();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ContentConfigurationItem();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static EmergencyAccessBuddyFlow.allCases.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v43 = _swiftEmptyArrayStorage;
    v11 = v9;
    sub_10007C53C(0, v10, 0);
    v12 = 0;
    v13 = v43;
    v37 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v38 = (v4 + 8);
    v39 = v6;
    v35 = v6 + 32;
    v36 = v4 + 16;
    while (v12 < *(v11 + 16))
    {
      v14 = v37 + *(v4 + 72) * v12;
      v15 = v4;
      v16 = *(v4 + 16);
      v17 = v40;
      v16(v40, v14, v3);
      sub_100061EF8(v17, v42, v8);
      v18 = v17;
      v19 = v3;
      (*v38)(v18, v3);
      v43 = v13;
      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        sub_10007C53C((v20 > 1), v21 + 1, 1);
        v13 = v43;
      }

      ++v12;
      v13[2] = v21 + 1;
      (*(v39 + 32))(v13 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v21, v8, v41);
      v3 = v19;
      v4 = v15;
      if (v10 == v12)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    (*v38)(v4, v3);

    __break(1u);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
LABEL_9:
    sub_100015F04(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
    type metadata accessor for ArrayDataSourceSection();
    *(swift_allocObject() + 16) = xmmword_1000AE100;
    sub_10009C004(v13);

    v22 = v32;
    UUID.init()();
    UUID.uuidString.getter();
    v23 = v34;
    v24 = *(v33 + 8);
    v24(v22, v34);
    ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
    v43 = 0x3C53447961727241;
    v44 = 0xE800000000000000;
    UUID.init()();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    v24(v22, v23);
    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 62;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    return ArrayDataSource.init(arrangedSections:identifier:)();
  }

  return result;
}

uint64_t sub_100061EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v31 = a2;
  v42 = a1;
  v3 = type metadata accessor for SectionedDataSourceContainerViewType();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015F04(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v35 = &v29 - v6;
  v7 = type metadata accessor for CellDeselectionBehavior();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EmergencyAccessBuddyFlow();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v29 - v17;
  v19 = *(v13 + 16);
  v19(&v29 - v17, v42, v12);
  v20 = (*(v13 + 88))(v18, v12);
  if (v20 == enum case for EmergencyAccessBuddyFlow.followUpOnboarding(_:))
  {
    (*(v13 + 8))(v18, v12);
    v29 = 0xD000000000000013;
  }

  else if (v20 == enum case for EmergencyAccessBuddyFlow.followUpReview(_:))
  {
    (*(v13 + 8))(v18, v12);
    v29 = 0x7055776F6C6C6F46;
  }

  else if (v20 == enum case for EmergencyAccessBuddyFlow.healthOnboarding(_:))
  {
    v29 = 0xD000000000000011;
  }

  else if (v20 == enum case for EmergencyAccessBuddyFlow.healthReview(_:))
  {
    v29 = 0x522068746C616548;
  }

  else
  {
    (*(v13 + 8))(v18, v12);
    v29 = 0;
  }

  v19(v16, v42, v12);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = swift_allocObject();
  (*(v13 + 32))(v22 + v21, v16, v12);
  *(v22 + ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v9 + 8))(v11, v30);
  v41[3] = type metadata accessor for UIListContentConfiguration();
  v41[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v41);
  static UIListContentConfiguration.cell()();

  UIListContentConfiguration.text.setter();
  v23 = [objc_opt_self() tintColor];
  v24 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v24(v40, 0);

  v25 = v33;
  v26 = v34;
  *v34 = 1;
  (*(v32 + 104))(v26, enum case for CellDeselectionBehavior.deselectOnDidSelect(_:), v25);
  v27 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  (*(v37 + 104))(v36, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v38);
  return ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
}

void sub_10006255C(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v5 = type metadata accessor for Logger();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmergencyAccessUserStatus();
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  v55 = &v53 - v9;
  v10 = type metadata accessor for EmergencyAccessBuddyFlow();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v53 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v53 - v21;
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  v59 = a1;
  v25 = UIViewController.resolvedHealthStore.getter();
  if (!v25)
  {
    v25 = [objc_allocWithZone(HKHealthStore) init];
  }

  v60 = v25;
  v26 = *(v11 + 16);
  v26(v24, a2, v10);
  v27 = (*(v11 + 88))(v24, v10);
  if (v27 == enum case for EmergencyAccessBuddyFlow.followUpOnboarding(_:) || v27 == enum case for EmergencyAccessBuddyFlow.followUpReview(_:))
  {
    (*(v11 + 8))(v24, v10);
    v26(v19, a2, v10);
    EmergencyAccessBuddyFlow.isReview.getter();
    EmergencyAccessUserStatus.init(onboardingStatus:isStewieSupported:)();
    v29 = objc_allocWithZone(type metadata accessor for EmergencyAccessFollowUpStartViewController());
    v30 = v60;
    v31 = v60;
    v32 = EmergencyAccessFollowUpStartViewController.init(healthStore:flow:emergencyStatus:)();
LABEL_15:
    v36 = v32;
    v37 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v32];
    [v59 presentViewController:v37 animated:1 completion:0];

    return;
  }

  if (v27 == enum case for EmergencyAccessBuddyFlow.healthOnboarding(_:) || v27 == enum case for EmergencyAccessBuddyFlow.healthReview(_:))
  {
    v26(v22, a2, v10);
    EmergencyAccessBuddyFlow.isReview.getter();
    EmergencyAccessUserStatus.init(onboardingStatus:isStewieSupported:)();
    v34 = objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyStartViewController());
    v30 = v60;
    v35 = v60;
    v32 = EmergencyAccessBuddyStartViewController.init(healthStore:flow:emergencyStatus:)();
    goto LABEL_15;
  }

  v38 = v58;
  static Logger.general.getter();
  v39 = v16;
  v26(v16, a2, v10);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    LODWORD(v55) = v41;
    v44 = v43;
    v59 = swift_slowAlloc();
    v61[0] = v59;
    *v44 = 136315394;
    v61[1] = v54;
    swift_getMetatypeMetadata();
    v45 = String.init<A>(describing:)();
    v47 = sub_1000036D0(v45, v46, v61);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    v26(v53, v16, v10);
    v48 = String.init<A>(describing:)();
    v50 = v49;
    v51 = *(v11 + 8);
    v51(v39, v10);
    v52 = sub_1000036D0(v48, v50, v61);

    *(v44 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v40, v55, "[%s] Flow is not supported: %s", v44, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v58, v57);
  }

  else
  {

    v51 = *(v11 + 8);
    v51(v39, v10);
    (*(v56 + 8))(v38, v57);
  }

  v51(v24, v10);
}

uint64_t sub_100062C9C(uint64_t a1)
{
  *(a1 + 8) = sub_100062D04(&qword_1000DCDC0, &unk_1000AFE90);
  result = sub_100062D04(&qword_1000DCDC8, &unk_1000AFEC0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100062D04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicalIDEmergencyBuddyDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100062D48(void *a1)
{
  v3 = *(type metadata accessor for EmergencyAccessBuddyFlow() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10006255C(a1, v1 + v4, v5);
}

uint64_t sub_100062DE4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsetGroupedListStyle();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065BB8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000660C4(0);
  v38 = v12;
  v39 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000661E0(0);
  v40 = v15;
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000662E4(0);
  v42 = v18;
  v44 = *(v18 - 8);
  __chkstk_darwin(v18);
  v35 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v1;
  sub_100065C68(0);
  sub_100066198(&qword_1000DCE48, sub_100065C68, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v20 = sub_100066198(&qword_1000DCE58, sub_100065BB8, &protocol conformance descriptor for List<A, B>);
  View.listStyle<A>(_:)();
  (*(v36 + 8))(v6, v4);
  (*(v9 + 8))(v11, v8);
  LocalizedStringKey.init(stringLiteral:)();
  v51 = v8;
  v52 = v4;
  v53 = v20;
  v54 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v38;
  View.navigationTitle(_:)();

  v23 = v14;
  v24 = v22;
  (*(v39 + 8))(v23, v22);
  v26 = v45;
  v25 = v46;
  v27 = v43;
  (*(v45 + 104))(v43, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v46);
  v51 = v24;
  v52 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  v30 = v40;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v26 + 8))(v27, v25);
  (*(v41 + 8))(v17, v30);
  v31 = v37;
  v50 = *(v37 + 72);
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.projectedValue.getter();
  v48 = v31;
  v51 = v30;
  v52 = v28;
  swift_getOpaqueTypeConformance2();
  v32 = v42;
  View.alert(isPresented:content:)();

  return (*(v44 + 8))(v29, v32);
}

uint64_t sub_100063484@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  sub_100065F94(0, &qword_1000DCE30, sub_100065FF4);
  v65 = v3;
  v72 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v68 = &v57 - v6;
  sub_100065F94(0, &qword_1000DCE28, sub_100065E8C);
  v67 = v7;
  v61 = *(v7 - 8);
  v8 = v61;
  v9 = __chkstk_darwin(v7);
  v71 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  sub_100065F94(0, &qword_1000DCDE8, sub_100065D78);
  v70 = v13;
  v63 = *(v13 - 8);
  v14 = v63;
  v15 = __chkstk_darwin(v13);
  v69 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v75 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v80 = Text.init(_:tableName:bundle:comment:)();
  v81 = v19;
  v82 = v20 & 1;
  v83 = v21;
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v77 = v22;
  v78 = v23 & 1;
  v79 = v24;
  sub_100065D78(0);
  sub_100066198(&qword_1000DCE88, sub_100065D78, &protocol conformance descriptor for TupleView<A>);
  v62 = v18;
  Section<>.init(header:footer:content:)();
  v74 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v80 = Text.init(_:tableName:bundle:comment:)();
  v81 = v25;
  v82 = v26 & 1;
  v83 = v27;
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v77 = v28;
  v78 = v29 & 1;
  v79 = v30;
  sub_100065E8C(0);
  sub_100066468();
  v31 = v12;
  v60 = v12;
  Section<>.init(header:footer:content:)();
  v73 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v80 = Text.init(_:tableName:bundle:comment:)();
  v81 = v32;
  v82 = v33 & 1;
  v83 = v34;
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v77 = v35;
  v78 = v36 & 1;
  v79 = v37;
  sub_100065FF4(0, v35);
  sub_100066198(&qword_1000DCEA8, sub_100065FF4, &protocol conformance descriptor for NavigationLink<A, B>);
  v38 = v68;
  Section<>.init(header:footer:content:)();
  v58 = *(v14 + 16);
  v39 = v69;
  v40 = v70;
  v58(v69, v18, v70);
  v59 = *(v8 + 16);
  v41 = v71;
  v59(v71, v31, v67);
  v42 = *(v72 + 16);
  v43 = v64;
  v44 = v65;
  v42(v64, v38, v65);
  v45 = v42;
  v46 = v66;
  v58(v66, v39, v40);
  sub_100065C9C(0);
  v48 = v47;
  v49 = v41;
  v50 = v67;
  v59(&v46[*(v47 + 48)], v49, v67);
  v45(&v46[*(v48 + 64)], v43, v44);
  v51 = *(v72 + 8);
  v52 = v44;
  v51(v68, v44);
  v53 = *(v61 + 8);
  v53(v60, v50);
  v54 = *(v63 + 8);
  v55 = v70;
  v54(v62, v70);
  v51(v43, v52);
  v53(v71, v50);
  return (v54)(v69, v55);
}

uint64_t sub_100063CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_100065E8C(0);
  v35 = v3 - 8;
  v4 = __chkstk_darwin(v3 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  sub_100065E10(0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v43 = *(a1 + 48);
  v44 = *(a1 + 64);
  v41 = *(a1 + 48);
  v42 = *(a1 + 64);
  v32 = &type metadata accessor for State;
  sub_100066E40(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.projectedValue.getter();
  *&v38 = 0x1000000000000036;
  *(&v38 + 1) = 0x80000001000A5740;
  sub_100039898();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  v41 = v43;
  v42 = v44;
  State.projectedValue.getter();
  v13 = v39;
  v14 = v40;
  v15 = &v12[*(v8 + 44)];
  *v15 = v38;
  *(v15 + 2) = v13;
  *(v15 + 3) = v14;
  LocalizedStringKey.init(stringLiteral:)();
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  *(v16 + 80) = *(a1 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(a1 + 96);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  v19 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v19;
  sub_100066620(a1, &v38);
  v20 = v33;
  Button<>.init(_:action:)();
  v38 = *(a1 + 88);
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, v32);
  State.wrappedValue.getter();
  v21 = v41;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = v20;
  v25 = &v20[*(v35 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_100066F9C;
  v25[2] = v23;
  v26 = v34;
  sub_1000667C4(v12, v34, sub_100065E10);
  v27 = v20;
  v28 = v36;
  sub_1000667C4(v27, v36, sub_100065E8C);
  v29 = v37;
  sub_1000667C4(v26, v37, sub_100065E10);
  sub_100066B08(0, &qword_1000DCDF8, sub_100065E10, sub_100065E8C);
  sub_1000667C4(v28, v29 + *(v30 + 48), sub_100065E8C);
  sub_10006682C(v24, sub_100065E8C);
  sub_10006682C(v12, sub_100065E10);
  sub_10006682C(v28, sub_100065E8C);
  return sub_10006682C(v26, sub_100065E10);
}

uint64_t sub_100064148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_1000641E0, v6, v5);
}

uint64_t sub_1000641E0()
{
  v1 = *(v0 + 88);
  type metadata accessor for NotificationSyncStoreModel(0);
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel, &unk_1000ADFD0);
  *(v0 + 120) = StateObject.wrappedValue.getter();
  v2 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 48);
  *(v0 + 32) = v2;
  sub_100066E40(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.wrappedValue.getter();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 128) = v4;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_100064348;

  return sub_1000234F8(3, v3, v4);
}

uint64_t sub_100064348()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1000644A8, v3, v2);
}

uint64_t sub_1000644A8()
{
  v1 = *(v0 + 88);

  *(v0 + 56) = *(v1 + 72);
  *(v0 + 144) = 1;
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();
  *(v0 + 72) = *(v1 + 88);
  *(v0 + 145) = 0;
  State.wrappedValue.setter();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100064580(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = swift_allocObject();
  v5 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a1 + 96);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  v7 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v7;
  sub_100066620(a1, v13);
  Button<>.init(_:action:)();
  v13[0] = *(a1 + 88);
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v12;
  sub_100065E8C(0);
  v11 = (a2 + *(v10 + 36));
  *v11 = KeyPath;
  v11[1] = sub_100066658;
  v11[2] = v9;
}

uint64_t sub_1000646FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100066C68(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v15[0] = *(a1 + 88);
  v16 = 1;
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  sub_100066620(a1, v15);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = *(a1 + 80);
  *(v10 + 96) = *(a1 + 64);
  *(v10 + 112) = v11;
  *(v10 + 128) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = *(a1 + 48);
  *(v10 + 64) = *(a1 + 32);
  *(v10 + 80) = v13;
  sub_100084B64(0, 0, v7, a3, v10);
}

uint64_t sub_1000648B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100064948, v6, v5);
}

uint64_t sub_100064948()
{
  type metadata accessor for NotificationSyncStoreModel(0);
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel, &unk_1000ADFD0);
  *(v0 + 80) = StateObject.wrappedValue.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100064A54;

  return sub_1000234F8(1, 0, 0);
}

uint64_t sub_100064A54()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100064B98, v3, v2);
}

uint64_t sub_100064B98()
{
  v1 = *(v0 + 48);

  *(v0 + 16) = *(v1 + 72);
  *(v0 + 96) = 1;
  sub_100066E40(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();
  *(v0 + 32) = *(v1 + 88);
  *(v0 + 97) = 0;
  State.wrappedValue.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100064C70(uint64_t a1)
{
  type metadata accessor for NotificationSyncStoreModel(0);
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel, &unk_1000ADFD0);
  StateObject.wrappedValue.getter();
  ObservedObject.init(wrappedValue:)();
  sub_100066070();
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_100064D60@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100064DD8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  sub_100066C68(0, &qword_1000DCE78, &type metadata accessor for Alert.Button, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v38 = v37 - v2;
  type metadata accessor for NotificationSyncStoreModel(0);
  sub_100066198(&qword_1000DCE80, type metadata accessor for NotificationSyncStoreModel, &unk_1000ADFD0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  countAndFlagsBits = v41._countAndFlagsBits;
  if (LOBYTE(v41._object) == 1)
  {
    object = 0x80000001000A8470;
    v41._countAndFlagsBits = 0x203A726F727245;
    v41._object = 0xE700000000000000;
    v40._countAndFlagsBits = countAndFlagsBits;
    swift_errorRetain();
    sub_100008C14();
    v5._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v5);

    sub_10006644C(countAndFlagsBits, 1);
    v6 = 0xD00000000000001ALL;
  }

  else if (v41._countAndFlagsBits)
  {
    [v41._countAndFlagsBits action];
    v7 = NSStringFromHKNotificationInstructionAction();
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v40._countAndFlagsBits = v8;
    v40._object = v10;
    sub_100039898();
    v11 = StringProtocol.localizedCapitalized.getter();
    v13 = v12;

    v41._countAndFlagsBits = v11;
    v41._object = v13;
    v14._countAndFlagsBits = 0xD000000000000011;
    v14._object = 0x80000001000A84D0;
    String.append(_:)(v14);
    object = v41._object;
    v6 = v41._countAndFlagsBits;
    v41._countAndFlagsBits = 0xD000000000000026;
    v41._object = 0x80000001000A84F0;
    v15 = [countAndFlagsBits categoryIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v40._countAndFlagsBits = 2230794;
      v40._object = 0xE300000000000000;
      v20 = [countAndFlagsBits categoryIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 34;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      String.append(_:)(v40);
      sub_10006644C(countAndFlagsBits, 0);
    }

    else
    {
      sub_10006644C(countAndFlagsBits, 0);
    }
  }

  else
  {
    object = 0x80000001000A8490;
    v41._countAndFlagsBits = 0xD00000000000001DLL;
    v41._object = 0x80000001000A84B0;
    v6 = 0xD000000000000010;
  }

  v40._countAndFlagsBits = v6;
  v40._object = object;
  sub_100039898();
  v26 = Text.init<A>(_:)();
  v37[2] = v27;
  v37[3] = v26;
  v37[1] = v28;
  v40 = v41;
  Text.init<A>(_:)();
  LocalizedStringKey.init(stringLiteral:)();
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  v34 = v38;
  static Alert.Button.default(_:action:)();
  sub_1000385F4(v29, v31, v33 & 1);

  v35 = type metadata accessor for Alert.Button();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  return Alert.init(title:message:dismissButton:)();
}

uint64_t sub_100065340@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v50 = a5;
  sub_100066CCC(0);
  v10 = v9;
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100066C34(0);
  v13 = __chkstk_darwin(v12 - 8);
  v53 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = v45 - v15;
  sub_100066B84(0);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = __chkstk_darwin(v16);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = *(v18 + 16);
  v51 = v45 - v23;
  v48 = v22;
  v22();
  v24 = a1;
  v56 = a1;
  v57 = a2;
  v25 = a2;
  v46 = a3;
  v58 = a3;
  v59 = a4;
  v26 = a4;
  sub_100066E40(0, &qword_1000DCF00, &type metadata for String, &type metadata accessor for Binding);
  Binding.wrappedValue.getter();
  v28 = v54;
  v27 = v55;

  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = swift_allocObject();
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = v46;
    v30[5] = v26;
    sub_100066D30(0);
    v45[1] = v31;
    sub_100066D90();
    v46 = v21;

    v21 = v46;
    v32 = v47;
    Button.init(action:label:)();
    v33 = v52;
    v34 = v49;
    (*(v52 + 32))(v49, v32, v10);
    v35 = 0;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    v35 = 1;
    v36 = v52;
    v37 = v49;
  }

  (*(v36 + 56))(v37, v35, 1, v10);
  v38 = v51;
  v39 = v48;
  (v48)(v21, v51, v17);
  v40 = v53;
  sub_1000667C4(v37, v53, sub_100066C34);
  v41 = v50;
  (v39)(v50, v21, v17);
  sub_100066B08(0, &qword_1000DCEC8, sub_100066B84, sub_100066C34);
  sub_1000667C4(v40, v41 + *(v42 + 48), sub_100066C34);
  sub_10006682C(v37, sub_100066C34);
  v43 = *(v18 + 8);
  v43(v38, v17);
  sub_10006682C(v40, sub_100066C34);
  return (v43)(v21, v17);
}

uint64_t sub_1000657B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = [objc_opt_self() opaqueSeparatorColor];
  v4 = Color.init(_:)();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_10006585C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_100066A64(0);
  return sub_100065340(v3, v4, v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_1000658D0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10006593C@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  if (!a1)
  {
    a1 = [objc_allocWithZone(HKHealthStore) init];
  }

  type metadata accessor for NotificationSyncStoreModel(0);
  swift_allocObject();
  v4 = a1;
  result = sub_10002327C(0x46656C706D617845, 0xEE00657275746165, v4);
  strcpy(a2, "ExampleFeature");
  *(a2 + 15) = -18;
  *(a2 + 16) = v4;
  *(a2 + 24) = sub_100065AAC;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  return result;
}

__n128 sub_100065AC0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100065AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100065B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100065BB8(uint64_t a1)
{
  if (!qword_1000DCDD0)
  {
    sub_100065C68(255);
    sub_100066198(&qword_1000DCE48, sub_100065C68, &protocol conformance descriptor for TupleView<A>);
    v1 = type metadata accessor for List();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCDD0);
    }
  }
}

void sub_100065C9C(uint64_t a1)
{
  if (!qword_1000DCDE0)
  {
    sub_100065F94(255, &qword_1000DCDE8, sub_100065D78);
    sub_100065F94(255, &qword_1000DCE28, sub_100065E8C);
    sub_100065F94(255, &qword_1000DCE30, sub_100065FF4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DCDE0);
    }
  }
}

void sub_100065DB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_100066B08(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100065E10(uint64_t a1)
{
  if (!qword_1000DCE00)
  {
    sub_100065F34(255, &qword_1000DCE08, &type metadata accessor for TextField);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCE00);
    }
  }
}

void sub_100065E8C(uint64_t a1)
{
  if (!qword_1000DCE10)
  {
    sub_100065F34(255, &qword_1000DCE18, &type metadata accessor for Button);
    sub_100066E40(255, &qword_1000DCE20, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCE10);
    }
  }
}

void sub_100065F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Text, &protocol witness table for Text);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100065F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Section();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100065FF4(uint64_t a1, uint64_t a2)
{
  if (!qword_1000DCE38)
  {
    sub_100066070();
    v2 = type metadata accessor for NavigationLink();
    if (!v3)
    {
      atomic_store(v2, &qword_1000DCE38);
    }
  }
}

unint64_t sub_100066070()
{
  result = qword_1000DCE40;
  if (!qword_1000DCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCE40);
  }

  return result;
}

void sub_1000660C4(uint64_t a1)
{
  if (!qword_1000DCE50)
  {
    sub_100065BB8(255);
    type metadata accessor for InsetGroupedListStyle();
    sub_100066198(&qword_1000DCE58, sub_100065BB8, &protocol conformance descriptor for List<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DCE50);
    }
  }
}

uint64_t sub_100066198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000661E0(uint64_t a1)
{
  if (!qword_1000DCE60)
  {
    sub_1000660C4(255);
    sub_100065BB8(255);
    type metadata accessor for InsetGroupedListStyle();
    sub_100066198(&qword_1000DCE58, sub_100065BB8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DCE60);
    }
  }
}

void sub_1000662E4(uint64_t a1)
{
  if (!qword_1000DCE68)
  {
    sub_1000661E0(255);
    sub_1000660C4(255);
    sub_100065BB8(255);
    type metadata accessor for InsetGroupedListStyle();
    sub_100066198(&qword_1000DCE58, sub_100065BB8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DCE68);
    }
  }
}

void sub_10006644C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_100066468()
{
  result = qword_1000DCE90;
  if (!qword_1000DCE90)
  {
    sub_100065E8C(255);
    sub_1000664E8();
    sub_10006655C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCE90);
  }

  return result;
}

unint64_t sub_1000664E8()
{
  result = qword_1000DCE98;
  if (!qword_1000DCE98)
  {
    sub_100065F34(255, &qword_1000DCE18, &type metadata accessor for Button);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCE98);
  }

  return result;
}

unint64_t sub_10006655C()
{
  result = qword_1000DCEA0;
  if (!qword_1000DCEA0)
  {
    sub_100066E40(255, &qword_1000DCE20, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyTransformModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCEA0);
  }

  return result;
}

uint64_t sub_100066670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004BB0C;

  return sub_1000648B0(a1, v4, v5, v1 + 32);
}

uint64_t sub_100066720()
{

  sub_1000665E0(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000667C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006682C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006688C()
{
  swift_unknownObjectRelease();

  sub_1000665E0(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100066900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100018D6C;

  return sub_100064148(a1, v4, v5, v1 + 32);
}

uint64_t sub_1000669B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000669F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100066A64(uint64_t a1)
{
  if (!qword_1000DCEB8)
  {
    sub_100066ACC(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCEB8);
    }
  }
}

void sub_100066B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100066B84(uint64_t a1)
{
  if (!qword_1000DCED0)
  {
    sub_100066BE0();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCED0);
    }
  }
}

unint64_t sub_100066BE0()
{
  result = qword_1000DCED8;
  if (!qword_1000DCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCED8);
  }

  return result;
}

void sub_100066C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100066CCC(uint64_t a1)
{
  if (!qword_1000DCEE8)
  {
    sub_100066D30(255);
    sub_100066D90();
    v1 = type metadata accessor for Button();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCEE8);
    }
  }
}

void sub_100066D30(uint64_t a1)
{
  if (!qword_1000DCEF0)
  {
    sub_10005CFD0(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCEF0);
    }
  }
}

unint64_t sub_100066D90()
{
  result = qword_1000DCEF8;
  if (!qword_1000DCEF8)
  {
    sub_100066D30(255);
    sub_100066198(&qword_1000DC938, sub_10005CFD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCEF8);
  }

  return result;
}

void sub_100066E40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100066F08(uint64_t a1)
{
  if (!qword_1000DCF10)
  {
    sub_100066ACC(255);
    sub_100066198(&qword_1000DCF18, sub_100066ACC, &protocol conformance descriptor for TupleView<A>);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DCF10);
    }
  }
}

uint64_t sub_1000670D8(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for DeepLinkContentKind(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler);
  if (v17)
  {
    *v16 = a1;
    v16[8] = a2;
    swift_storeEnumTagMultiPayload();
    sub_10002E3B4(v16, v12);
    (*(v14 + 56))(v12, 0, 1, v13);
    v18 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
    swift_beginAccess();

    v19 = a1;
    sub_10002E474(v12, v17 + v18);
    swift_endAccess();
    sub_10000CC50();

    return sub_10002E418(v16);
  }

  else
  {
    v29 = v6;
    v21 = ObjectType;
    static Logger.general.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136446210;
      v31 = v21;
      swift_getMetatypeMetadata();
      v26 = String.init<A>(describing:)();
      v28 = sub_1000036D0(v26, v27, &v32);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s]: Unable to handleUserActivity: deepLinkHandler is nil", v24, 0xCu);
      sub_100003B90(v25);
    }

    return (*(v7 + 8))(v9, v29);
  }
}

uint64_t sub_100067440(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = type metadata accessor for DeepLinkContentKind(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler);
  if (v16)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    sub_10002E3B4(v15, v11);
    (*(v13 + 56))(v11, 0, 1, v12);
    v17 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
    swift_beginAccess();

    v18 = a1;
    sub_10002E474(v11, v16 + v17);
    swift_endAccess();
    v19 = sub_10000CC50();

    sub_10002E418(v15);
  }

  else
  {
    static Logger.general.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136446210;
      v28[0] = ObjectType;
      swift_getMetatypeMetadata();
      v24 = String.init<A>(describing:)();
      v26 = sub_1000036D0(v24, v25, &v29);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s]: Unable to performShortcutItem: deepLinkHandler is nil", v22, 0xCu);
      sub_100003B90(v23);
    }

    (*(v6 + 8))(v8, v5);
    v19 = 0;
  }

  return v19 & 1;
}

id sub_1000678D4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = [a1 userActivity];
  if (v12)
  {
    static Logger.general.getter();
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    v16 = os_log_type_enabled(v14, v15);
    v43 = v13;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v42 = v9;
      v18 = v17;
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v18 = 136446466;
      v44 = ObjectType;
      swift_getMetatypeMetadata();
      v19 = String.init<A>(describing:)();
      v40 = v2;
      v21 = sub_1000036D0(v19, v20, v46);
      v41 = ObjectType;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v44 = v13;
      sub_100003DDC(0, &qword_1000DC650, NSUserActivity_ptr);
      v23 = v13;
      v2 = v40;
      v24 = String.init<A>(reflecting:)();
      v26 = sub_1000036D0(v24, v25, v46);

      *(v18 + 14) = v26;
      ObjectType = v41;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s]: saving user activity for stateRestoration: %s", v18, 0x16u);
      swift_arrayDestroy();

      v9 = v42;
    }

    v27 = *(v6 + 8);
    v27(v11, v5);
    if (*(v2 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler))
    {
      sub_10006873C(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AE100;

      v44 = static HAUserActivity.dateSavedRestorationKey.getter();
      v45 = v29;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = type metadata accessor for Date();
      sub_10000AD4C((inited + 72));
      Date.init()();
      sub_1000687A4(inited);
      swift_setDeallocating();
      sub_1000688E8(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v43 addUserInfoEntriesFromDictionary:isa];
    }

    else
    {
      static Logger.general.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v46[0] = v34;
        *v33 = 136446210;
        v44 = ObjectType;
        swift_getMetatypeMetadata();
        v35 = String.init<A>(describing:)();
        v37 = sub_1000036D0(v35, v36, v46);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s]: Unable to createRestorationActivity: deepLinkHandler is nil", v33, 0xCu);
        sub_100003B90(v34);
      }

      else
      {
      }

      v27(v9, v5);
      return 0;
    }
  }

  return v12;
}

uint64_t sub_100067E04(uint64_t a1, void *a2)
{
  v3 = v2;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for DeepLinkContentKind(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler);
  if (v17)
  {
    sub_10000C61C(0);
    v19 = *(v18 + 48);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 16))(v16, v32, v20);
    *&v16[v19] = a2;
    swift_storeEnumTagMultiPayload();
    sub_10002E3B4(v16, v12);
    (*(v14 + 56))(v12, 0, 1, v13);
    v21 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
    swift_beginAccess();
    v22 = a2;

    sub_10002E474(v12, v17 + v21);
    swift_endAccess();
    sub_10000CC50();

    return sub_10002E418(v16);
  }

  else
  {
    v32 = v6;
    static Logger.general.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136446210;
      v33 = ObjectType;
      swift_getMetatypeMetadata();
      v28 = String.init<A>(describing:)();
      v30 = sub_1000036D0(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s]: Unable to open URL: deepLinkHandler is nil", v26, 0xCu);
      sub_100003B90(v27);
    }

    return (*(v7 + 8))(v9, v32);
  }
}

uint64_t sub_10006822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100068320, v7, v6);
}

uint64_t sub_100068320()
{

  static Tips.configure(_:)();

  v1 = *(v0 + 8);

  return v1();
}

id sub_100068544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000685F0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100068670(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1000686E4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100003DDC(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10006873C(uint64_t a1)
{
  if (!qword_1000DBB70)
  {
    sub_100069460(255, &qword_1000DD0B0, &type metadata for AnyHashable);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBB70);
    }
  }
}

unint64_t sub_1000687A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100069404(0, &qword_1000DD0C0, &type metadata for AnyHashable, &protocol witness table for AnyHashable);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100068954(v4, v13, &qword_1000DD0B0, &type metadata for AnyHashable);
      result = sub_100033344(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10004EB2C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000688E8(uint64_t a1)
{
  sub_100069460(0, &qword_1000DD0B0, &type metadata for AnyHashable);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100068954(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_100069460(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000689C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100069404(0, &qword_1000DD170, &type metadata for String, &protocol witness table for String);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100068954(v4, &v13, &qword_1000DD178, &type metadata for String);
      v5 = v13;
      v6 = v14;
      result = sub_100033388(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004EB2C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100068AF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000694C4(0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_100033400(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 3);
    v17 = *(v9 - 1);
    v5 = *v9;
    swift_unknownObjectRetain();
    result = sub_100033400(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100068C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000695D8(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100033388(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100068D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100018D6C;

  return sub_10006822C(a1, v4, v5, v6);
}

uint64_t sub_100068DD4()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    v12[1] = ObjectType;
    *v7 = 136446466;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000036D0(v8, v9, v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000036D0(0xD000000000000019, 0x80000001000A8870, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: Lifecycle: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100068FC8()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    v12[1] = ObjectType;
    *v7 = 136446466;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_1000036D0(v8, v9, v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000036D0(0xD00000000000001BLL, 0x80000001000A8830, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: Lifecycle: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000691BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22[1] = v2;
    v13 = v12;
    v23 = swift_slowAlloc();
    v24 = ObjectType;
    *v13 = 136446466;
    swift_getMetatypeMetadata();
    v14 = String.init<A>(describing:)();
    v16 = sub_1000036D0(v14, v15, &v23);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v24 = v9;
    sub_100003DDC(0, &qword_1000DC650, NSUserActivity_ptr);
    v17 = v9;
    v18 = String.init<A>(reflecting:)();
    v20 = sub_1000036D0(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s]: continuing userActivity: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v8, v5);
  return sub_1000670D8(v9, 1);
}

void sub_100069404(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _DictionaryStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100069460(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1000694C4(uint64_t a1)
{
  if (!qword_1000DD180)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_100069570();
    sub_100006A10(&qword_1000DD190, type metadata accessor for UIUserInterfaceSizeClass, &unk_1000ADBB4);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD180);
    }
  }
}

unint64_t sub_100069570()
{
  result = qword_1000DD188;
  if (!qword_1000DD188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD188);
  }

  return result;
}

void sub_1000695D8(uint64_t a1)
{
  if (!qword_1000DD198)
  {
    sub_100003DDC(255, &qword_1000DD140, NSObject_ptr);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD198);
    }
  }
}

void sub_100069650(uint64_t a1@<X8>)
{
  sub_10006986C();
  if (!v2)
  {
LABEL_14:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = v2;
  v4 = [v2 windows];

  sub_100003DDC(0, &qword_1000DD210, UIWindow_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    v7 = 0;
LABEL_10:

    v8 = [v7 rootViewController];

    if (v8)
    {
      v9 = type metadata accessor for TabBarController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        *(a1 + 24) = v9;
        *(a1 + 32) = sub_10006A1B4();
        *a1 = v11;
        return;
      }
    }

    goto LABEL_14;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:
    v7 = v6;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_10006986C()
{
  v1 = [v0 connectedScenes];
  sub_100003DDC(0, &qword_1000DD220, UIScene_ptr);
  sub_100057160();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while ([v16 activationState])
      {

        v6 = v14;
        v7 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v16 = v17;
          v14 = v6;
          v15 = v7;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_10000F754(v4);

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }

    else
    {
LABEL_19:
      sub_10000F754(v4);
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_100069AC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  if (!a3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = sub_100041430(a2, a3);
  if (v16 == 43)
  {
    v51 = v8;
    v50 = v15;
    v17 = a1;
    v18 = a4;
    v19 = v9;

    v20 = a2;
    v21 = sub_1000345E0(a2, a3);
    if (v21)
    {
      v25 = v21;
      v26 = v22;
      v27 = v23;
      v28 = v24;
      v21 = swift_allocObject();
      v21[2] = v25;
      v21[3] = v26;
      v21[4] = v27;
      v21[5] = v28;
      v29 = &off_1000CDAA8;
      v30 = &type metadata for PluginPPT;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      *(&v56 + 1) = 0;
      *&v57 = 0;
    }

    *&v56 = v21;
    *(&v57 + 1) = v30;
    v58 = v29;
    a2 = v20;
    v9 = v19;
    a4 = v18;
    a1 = v17;
    v15 = v50;
    v8 = v51;
  }

  else
  {
    *(&v60 + 1) = &type metadata for HealthAppPPT;
    v61 = &off_1000CDDE0;
    LOBYTE(v59) = v16;
    sub_100014D24(&v59, &v56);
  }

  v59 = v56;
  v60 = v57;
  v61 = v58;
  sub_10006A150(&v59, &v54);
  if (!v55)
  {
    sub_10006A038(&v54);
    static Logger.general.getter();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v56 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1000036D0(a2, a3, &v56);
      _os_log_impl(&_mh_execute_header, v41, v42, "No test configured by name %s", v43, 0xCu);
      sub_100003B90(v44);
    }

    (*(v9 + 8))(v12, v8);
    sub_10006A038(&v59);
    v45 = 0;
    return (v45 & 1);
  }

  sub_100014D24(&v54, &v56);
  static Logger.general.getter();
  sub_10000ACE8(&v56, &v54);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v31, v32))
  {

    sub_100003B90(&v54);
    (*(v9 + 8))(v15, v8);
LABEL_16:
    v46 = *(&v57 + 1);
    v47 = v58;
    result = sub_10000BFFC(&v56, *(&v57 + 1));
    if (a1)
    {
      if (a4)
      {
        v45 = (v47[2])(a1, a2, a3, a4, v46, v47);
        sub_10006A038(&v59);
        sub_100003B90(&v56);
        return (v45 & 1);
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v50 = v15;
  v48 = a1;
  v49 = a2;
  v51 = v8;
  v33 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  *v33 = 136315394;
  sub_10000ACE8(&v54, v52);
  sub_10006A0EC();
  v34 = String.init<A>(describing:)();
  v36 = v35;
  sub_100003B90(&v54);
  v37 = sub_1000036D0(v34, v36, &v53);

  *(v33 + 4) = v37;
  *(v33 + 12) = 2080;
  if (a4)
  {

    v38 = Dictionary.description.getter();
    v40 = sub_1000036D0(v38, v39, &v53);

    *(v33 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Executing Test %s with options %s", v33, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v50, v51);
    a2 = v49;
    a1 = v48;
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10006A038(uint64_t a1)
{
  sub_10006A094(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006A094(uint64_t a1)
{
  if (!qword_1000DD200)
  {
    sub_10006A0EC();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD200);
    }
  }
}

unint64_t sub_10006A0EC()
{
  result = qword_1000DD208;
  if (!qword_1000DD208)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD208);
  }

  return result;
}

uint64_t sub_10006A150(uint64_t a1, uint64_t a2)
{
  sub_10006A094(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A1B4()
{
  result = qword_1000DD218;
  if (!qword_1000DD218)
  {
    type metadata accessor for TabBarController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD218);
  }

  return result;
}

uint64_t type metadata accessor for FeatureAvailabilityDataSource(uint64_t a1)
{
  result = qword_1000DD228;
  if (!qword_1000DD228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}