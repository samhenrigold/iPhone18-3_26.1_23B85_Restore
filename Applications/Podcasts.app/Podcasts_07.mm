uint64_t sub_10018DBE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 hidden])
  {
    result = 0;
  }

  else
  {
    type metadata accessor for PodcastDetail();
    result = static PodcastDetail.fullPodcastDetails(from:)();
  }

  *a2 = result;
  return result;
}

void sub_10018DC38(void *a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v3 = a1;
  if (![v3 isSerialShowTypeInFeed])
  {

LABEL_17:
    v8 = _swiftEmptyArrayStorage;
LABEL_18:
    *a2 = v8;
    return;
  }

  v4 = [v3 seasonNumbers];
  if (v4)
  {
    v5 = v4;
    sub_100009F1C(0, &qword_1005742A0, NSNumber_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v6 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_16:

    goto LABEL_17;
  }

LABEL_6:
  sub_1001A73C8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = _swiftEmptyArrayStorage;
    if ((v6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [specialized _ArrayBuffer._getElementSlowPath(_:)() longLongValue];
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_1001A73C8((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        _swiftEmptyArrayStorage[v12 + 4] = v10;
      }
    }

    else
    {
      v13 = 32;
      do
      {
        v14 = [*(v6 + v13) longLongValue];
        v18 = v8;
        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_1001A73C8((v15 > 1), v16 + 1, 1);
          v14 = v17;
          v8 = v18;
        }

        v8[2] = v16 + 1;
        v8[v16 + 4] = v14;
        v13 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_10018DE88@<X0>(uint64_t *a2@<X8>)
{
  result = static EpisodeUserFilter.allAvailableFilters(seasonNumbers:hasBookmarkedEpisodes:hasSubscriberEpisodes:)();
  *a2 = result;
  return result;
}

uint64_t sub_10018DEC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v7 = &v19[-1] - v6;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v9 = &v19[-1] - v8;
  type metadata accessor for Episode();
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v10 = a1;
  EpisodeListSettings.listType.getter();
  EpisodeListType.wantsListenNowReason.getter();
  sub_100018888(v19);
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v12 = type metadata accessor for EpisodeListSettings();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a2, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = enum case for SectionContext.season(_:);
    v15 = type metadata accessor for SectionContext();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v7, v14, v15);
    (*(v16 + 56))(v7, 0, 1, v15);

    static MetricsDataConfiguration.default.getter();
    v17 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v26 = v20;
    sub_100009104(&v26, &unk_100574650, &unk_1004023C0);
    v25 = v21;
    sub_100009104(&v25, &unk_100573A90, &unk_100401170);
    v24 = *(&v21 + 1);
    sub_100009104(&v24, &unk_100574660, &unk_1004023D0);
    sub_1000112B4(v22, v23);

    sub_100009104(v7, &qword_100573A78, &qword_10040FDF0);
    result = sub_100009104(v9, &unk_100573A80, &unk_100401160);
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
  return result;
}

uint64_t sub_10018E1DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v44 = a2;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v43 = &v37[-1] - v2;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v42 = &v37[-1] - v3;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v5 = &v37[-1] - v4;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v7 = &v37[-1] - v6;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v40 = &v37[-1] - v8;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v46 = &v37[-1] - v9;
  v47 = type metadata accessor for ModernShelf.ItemPresentation();
  v41 = *(v47 - 8);
  __chkstk_darwin();
  v45 = &v37[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v37[-1] - v11;
  EpisodeListSettings.listType.getter();
  if (v54 == 8)
  {
    v12 = v53;
    v13 = v52[2];

    if (!v12)
    {
      v56 = 0x6E6F73616553;
      v57 = 0xE600000000000000;
      v55[0] = v13;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v37[0] = v56;
      v37[1] = v57;
      countAndFlagsBits = 0;
      goto LABEL_10;
    }

    v14 = v7;
    v15 = v5;
    sub_10019C1BC(v13, v12);
  }

  else
  {
    v14 = v7;
    v15 = v5;
    sub_100018888(v52);
  }

  sub_100168088(&qword_1005741B8, &qword_100401868);
  FRPSectionInfo.section.getter();
  v16 = v56;
  v17 = v57;
  v18 = [objc_opt_self() mainBundle];
  if ((v17 & 1) != 0 || !v16)
  {
    v59._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD000000000000017;
    v23._object = 0x8000000100466230;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v18, v24, v59)._countAndFlagsBits;

    HIWORD(v37[1]) = -4864;
    strcpy(v37, "UnknownSeason");
  }

  else
  {
    v58._object = 0xE000000000000000;
    v19._object = 0x8000000100466250;
    v19._countAndFlagsBits = 0xD000000000000014;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v58);

    sub_100168088(&unk_100574670, &qword_100400AB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100400790;
    *(v21 + 56) = &type metadata for Int64;
    *(v21 + 64) = &protocol witness table for Int64;
    *(v21 + 32) = v16;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    v56 = 0x6E6F73616553;
    v57 = 0xE600000000000000;
    v55[0] = v16;

    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v37[0] = v56;
    v37[1] = v57;
  }

  v5 = v15;
  v7 = v14;
LABEL_10:
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v55);
  sub_100168088(&qword_1005741B8, &qword_100401868);
  FRPSectionInfo.section.getter();
  if ((v57 & 1) == 0)
  {
    *&v49 = v56;
    sub_10019FFC0();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v36 = ShelfIDBuilder.build()()._countAndFlagsBits;

  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemKind.getter();
  sub_100018888(&v56);
  LOBYTE(v49) = 1;
  v25 = v39;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v26 = type metadata accessor for ActionMenu();
  (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
  v27 = type metadata accessor for Header.PrimaryAction();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = type metadata accessor for ArtworkModel();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v29 = v41;
  (*(v41 + 16))(v45, v25, v47);
  v30 = FRPSectionInfo.items.getter();
  v48 = sub_1001A4A7C(v30);

  v31 = type metadata accessor for URL();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v32 = v43;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v33 = type metadata accessor for ImpressionMetrics();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v29 + 8))(v25, v47);
}

uint64_t sub_10018EB34(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a2;
  v57 = type metadata accessor for Calendar();
  v55 = *(v57 - 8);
  v58 = *(v55 + 64);
  __chkstk_darwin();
  v54 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EpisodeListSettings();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v46 = v8;
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100168088(&qword_100574228, &unk_1004018A0);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  __chkstk_darwin();
  v53 = &v36 - v12;
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v62 = 0xD000000000000026;
  v63 = 0x80000001004662D0;
  EpisodeListSettings.listType.getter();
  v13 = EpisodeListType.description.getter();
  v15 = v14;
  sub_100018888(v64);
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v52 = v62;
  v51 = v63;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v18;
  v48 = EpisodeListSettings.predicate.getter();
  v43 = a1;
  EpisodeListSettings.sort.getter();
  v45 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  v42 = *(v7 + 16);
  v36 = v9;
  v19 = v6;
  v37 = v6;
  v42(v9, a1, v6);
  v20 = *(v7 + 80);
  v44 = v20 | 7;
  v21 = swift_allocObject();
  v47 = *(v7 + 32);
  v47(v21 + ((v20 + 16) & ~v20), v9, v19);
  v40 = type metadata accessor for LibraryEpisodeLockup();
  v22 = a3;
  v39 = sub_100168088(&qword_100574230, &qword_100401FE0);
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  v41 = sub_1001A02E0(&qword_100574238, &qword_100574230, &qword_100401FE0);
  v23 = v53;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v25 = v54;
  v24 = v55;
  v26 = v57;
  (*(v55 + 16))(v54, v59 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_metricsCalendar, v57);
  v27 = v36;
  v28 = v37;
  v42(v36, v43, v37);
  v29 = v24;
  v30 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v31 = (v58 + v20 + v30) & ~v20;
  v32 = swift_allocObject();
  (*(v29 + 32))(v32 + v30, v25, v26);
  v47(v32 + v31, v27, v28);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100574240, &qword_100574228, &unk_1004018A0, &protocol conformance descriptor for FetchedResultsSectionedPublisher<A, B, C>);
  v33 = v60;
  v34 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v61 + 8))(v23, v33);
  return v34;
}

uint64_t sub_10018F150@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v7 = &v17[-1] - v6;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v9 = &v17[-1] - v8;
  type metadata accessor for Episode();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v10 = a1;
  EpisodeListSettings.listType.getter();
  EpisodeListType.wantsListenNowReason.getter();
  sub_100018888(v17);
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v12 = type metadata accessor for EpisodeListSettings();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a2, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = type metadata accessor for SectionContext();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);

    static MetricsDataConfiguration.default.getter();
    v15 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v24 = v18;
    sub_100009104(&v24, &unk_100574650, &unk_1004023C0);
    v23 = v19;
    sub_100009104(&v23, &unk_100573A90, &unk_100401170);
    v22 = *(&v19 + 1);
    sub_100009104(&v22, &unk_100574660, &unk_1004023D0);
    sub_1000112B4(v20, v21);

    sub_100009104(v7, &qword_100573A78, &qword_10040FDF0);
    result = sub_100009104(v9, &unk_100573A80, &unk_100401160);
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  return result;
}

uint64_t sub_10018F42C@<X0>(uint64_t *a1@<X8>)
{
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v3 = &v8 - v2;
  LegacyEpisodeLockup.releaseDate.getter();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_100009104(v3, &qword_100574760, &unk_1003FEB60);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *a1 = Date.yearString.getter();
    a1[1] = v7;
    return (*(v5 + 8))(v3, v4);
  }

  return result;
}

unint64_t sub_10018F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v55 = a2;
  v66 = a4;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v65 = &v50 - v5;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v64 = &v50 - v6;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v60 = (&v50 - v7);
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v59 = &v50 - v8;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v58 = &v50 - v9;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v70 = &v50 - v10;
  v71 = type metadata accessor for ModernShelf.ItemPresentation();
  v63 = *(v71 - 8);
  __chkstk_darwin();
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v50 - v12;
  v54 = type metadata accessor for Calendar.Component();
  v53 = *(v54 - 8);
  __chkstk_darwin();
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v15 = &v50 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v51 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v50 - v19;
  v69 = sub_100168088(&qword_100574248, &qword_1004018B0);
  v21 = a1;
  FRPSectionInfo.section.getter();
  v23 = v76;
  v22 = v77;
  static Date.now.getter();
  v24 = Date.yearString.getter();
  v26 = v25;
  v50 = *(v17 + 8);
  v50(v20, v16);
  if (!v22)
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!v26)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v23 == v24 && v22 == v26)
  {

LABEL_10:
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_14;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
LABEL_8:
    FRPSectionInfo.section.getter();
    object = v77;
    if (v77)
    {
      countAndFlagsBits = v76;
    }

    else
    {
      v27 = [objc_opt_self() mainBundle];
      v78._object = 0xE000000000000000;
      v28._object = 0x8000000100466270;
      v28._countAndFlagsBits = 0xD000000000000015;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      v78._countAndFlagsBits = 0;
      v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v78);
      countAndFlagsBits = v30._countAndFlagsBits;
      object = v30._object;
    }

    goto LABEL_14;
  }

  countAndFlagsBits = 0;
  object = 0;
LABEL_14:
  result = FRPSectionInfo.items.getter();
  if (result >> 62)
  {
    v49 = result;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    result = v49;
  }

  else
  {
    v33 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v21;
  if (!v33)
  {

    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_23:
    sub_100009104(v15, &qword_100574760, &unk_1003FEB60);
    v38 = 0;
    v39 = 1;
    goto LABEL_24;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  LegacyEpisodeLockup.releaseDate.getter();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_23;
  }

  v34 = v51;
  (*(v17 + 32))(v51, v15, v16);
  v35 = v53;
  v36 = v52;
  v37 = v54;
  (*(v53 + 104))(v52, enum case for Calendar.Component.year(_:), v54);
  v38 = Calendar.component(_:from:)();
  (*(v35 + 8))(v36, v37);
  v50(v34, v16);
  v39 = 0;
LABEL_24:
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v75);
  if ((v39 & 1) == 0)
  {
    v76 = v38;
    sub_1001A0058();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v69 = ShelfIDBuilder.build()()._countAndFlagsBits;

  if (v39)
  {
    v67 = 0x6E6B6E5565746144;
  }

  else
  {
    v76 = v38;
    sub_1001A0058();
    v67 = BinaryInteger.description.getter();
  }

  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemKind.getter();
  sub_100018888(&v76);
  LOBYTE(v72) = 1;
  v40 = v62;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v41 = type metadata accessor for ActionMenu();
  (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
  v42 = type metadata accessor for Header.PrimaryAction();
  (*(*(v42 - 8) + 56))(v59, 1, 1, v42);
  v43 = type metadata accessor for ArtworkModel();
  (*(*(v43 - 8) + 56))(v60, 1, 1, v43);

  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v44 = v63;
  (*(v63 + 16))(v61, v40, v71);
  v45 = FRPSectionInfo.items.getter();
  v60 = sub_1001A4A7C(v45);

  v46 = type metadata accessor for URL();
  (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
  v74 = 0;
  v73 = 0u;
  v72 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v47 = v65;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v48 = type metadata accessor for ImpressionMetrics();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v44 + 8))(v40, v71);
}

uint64_t sub_100190210@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    result = MTPodcast.episodeSortType.getter();
  }

  *a2 = result;
  return result;
}

uint64_t sub_100190240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;

  sub_1001A05DC(a2, v5);
  return EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)();
}

uint64_t sub_1001902C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  EpisodeListSettings.sort.getter();
  if (EpisodeSortType.isSerialSort.getter())
  {
    sub_10019C60C(a1, a2, a3);
  }

  else
  {
    sub_10018EB34(a1, a2, a3);
  }

  sub_100168088(&unk_100574090, &unk_1004017C0);
  sub_100168088(&qword_100574108, &qword_100401828);
  sub_100168088(&qword_1005740B0, &qword_1004017D8);
  sub_100009FAC(&qword_1005740A0, &unk_100574090, &unk_1004017C0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();
  sub_100168088(&qword_1005740A8, &qword_1004017D0);
  sub_100168088(&unk_10057FAC0, &unk_10040CF20);
  *(swift_allocObject() + 16) = xmmword_100400790;
  FRPOutput.init(content:hasMore:totalCount:)();
  sub_100168088(&qword_10057FA80, &qword_1004012D0);
  sub_100009FAC(&qword_100573C50, &qword_10057FA80, &qword_1004012D0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v8 = PaginatedPublisher.paginatedPrepend(_:)();

  *a4 = v8;
  return result;
}

uint64_t sub_100190528(uint64_t *a1)
{
  v2 = sub_100168088(&qword_1005740D8, &qword_100401800);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  if ((EpisodeListType.shouldMatchShowSorting.getter() & 1) != 0 && (EpisodeListType.libraryShowUUID.getter(), v6))
  {
    v7 = sub_1001907D8();
  }

  else if (*(a1 + 64) == 5)
  {
    v8 = sub_1001907D8();
    v10 = v8;
    v11 = sub_1001922D8();
    v12 = v8;
    v13[0] = v11;
    sub_100168088(&qword_100574120, &qword_100401830);
    sub_100168088(&qword_100573C68, &qword_1004012E8);
    sub_100009FAC(&qword_100574128, &qword_100574120, &qword_100401830, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100009FAC(&qword_100573C78, &qword_100573C68, &qword_1004012E8, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.combineLatest<A, B>(_:_:)();
    sub_100009FAC(&qword_100574130, &qword_1005740D8, &qword_100401800, &protocol conformance descriptor for Publishers.Map<A, B>);
    v7 = Publisher.eraseToAnyPublisher()();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    LibraryDataProvider.libraryActionController.getter(v13);
    sub_1000044A0(v13, v13[3]);
    v7 = dispatch thunk of LibraryActionControllerProtocol.episodeSortTypePublisher(forListType:)();
    sub_100004590(v13);
  }

  return v7;
}

uint64_t sub_1001907D8()
{
  v1 = sub_100168088(&qword_100574208, &qword_100401890);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v17 - v3;
  v5 = sub_100168088(&qword_100574210, &qword_100401898);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - v7;
  v17[3] = "stationSortPublisher";
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17[1] = v10;
  v17[2] = v9;
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 predicateForPodcastUUID:v12];

  v14 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100574218, &qword_100574208, &qword_100401890, &protocol conformance descriptor for FetchedResultsSingleItemPublisher<A, B>);
  Publisher.map<A>(_:)();
  (*(v2 + 8))(v4, v1);
  sub_100009FAC(&qword_100574220, &qword_100574210, &qword_100401898, &protocol conformance descriptor for Publishers.Map<A, B>);
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v8, v5);
  return v15;
}

void *sub_100190B30@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_100190D7C(a1, a3, a4);

    sub_100168088(&unk_100574090, &unk_1004017C0);
    sub_100168088(&unk_10057FAC0, &unk_10040CF20);
    sub_100009FAC(&qword_1005740A0, &unk_100574090, &unk_1004017C0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
    PaginatedPublisher.paginatedMap<A>(_:)();

    sub_100168088(&qword_1005740A8, &qword_1004017D0);
    *(swift_allocObject() + 16) = xmmword_100400790;
    sub_100168088(&qword_1005740B0, &qword_1004017D8);
    FRPOutput.init(content:hasMore:totalCount:)();
    sub_100168088(&qword_10057FA80, &qword_1004012D0);
    sub_100009FAC(&qword_100573C50, &qword_10057FA80, &qword_1004012D0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
    v11 = PaginatedPublisher.paginatedPrepend(_:)();
  }

  else
  {
    v11 = 0;
  }

  *a5 = v11;
  return result;
}

id sub_100190D7C(uint64_t a1, uint64_t a2, void *a3)
{
  v139 = a3;
  v145 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_100168088(&qword_1005740C0, &qword_1004017E8);
  v128 = *(v4 - 8);
  v129 = v4;
  __chkstk_darwin();
  v127 = &v113 - v5;
  v133 = sub_100168088(&qword_1005740C8, &qword_1004017F0);
  v131 = *(v133 - 8);
  __chkstk_darwin();
  v130 = &v113 - v6;
  v7 = sub_100168088(&qword_1005740D0, &qword_1004017F8);
  v134 = *(v7 - 8);
  v135 = v7;
  __chkstk_darwin();
  v132 = &v113 - v8;
  v9 = sub_100168088(&qword_1005740D8, &qword_100401800);
  v125 = *(v9 - 8);
  v126 = v9;
  __chkstk_darwin();
  v124 = &v113 - v10;
  v11 = sub_100168088(&qword_1005740E0, &qword_100401808);
  v122 = *(v11 - 8);
  v123 = v11;
  __chkstk_darwin();
  v121 = &v113 - v12;
  v13 = sub_100168088(&qword_1005740E8, &qword_100401810);
  v137 = *(v13 - 8);
  v138 = v13;
  __chkstk_darwin();
  v136 = &v113 - v14;
  v15 = type metadata accessor for EpisodeListSettings();
  v143 = *(v15 - 8);
  v144 = v15;
  v16 = *(v143 + 64);
  __chkstk_darwin();
  v142 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100168088(&qword_100573AB8, &qword_100401198);
  v118 = *(v17 - 8);
  v119 = v17;
  __chkstk_darwin();
  v117 = &v113 - v18;
  sub_100168088(&unk_1005740F0, &qword_100401818);
  __chkstk_darwin();
  v20 = &v113 - v19;
  v21 = type metadata accessor for ShowLockupStyle();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v113 - v25;
  EpisodeListSettings.listType.getter();
  EpisodeListSettings.hidePlayedEpisodes.getter();
  v26 = EpisodeListType.groupedShowListType(hidePlayedEpisodes:)();
  v28 = v27;
  sub_100018888(&v148);
  if ((v28 & 0x100) != 0)
  {
LABEL_4:
    EpisodeListSettings.listType.getter();
    v29 = a1;
    if (v151 == 3)
    {
      type metadata accessor for CoreDataFetcher();
      sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
      v30 = static OS_dispatch_queue.main.getter();
      v31 = static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)();
      sub_100018888(&v150);

      v152[0] = v31;
      v32 = v143;
      v33 = v16;
      v34 = v142;
      v35 = v29;
      v36 = v144;
      (*(v143 + 16))(v142, v35, v144);
      v37 = (*(v32 + 80) + 24) & ~*(v32 + 80);
      v38 = (v33 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      v40 = v141;
      *(v39 + 16) = v141;
      (*(v32 + 32))(v39 + v37, v34, v36);
      *(v39 + v38) = v145;
      v41 = v139;
      *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v42 = v40;
      v43 = v41;
      sub_100168088(&qword_100574160, &unk_100401840);
      sub_100168088(&unk_100574090, &unk_1004017C0);
      sub_100009FAC(&qword_100574168, &qword_100574160, &unk_100401840, &protocol conformance descriptor for Future<A, B>);
      v44 = v136;
      Publisher.map<A>(_:)();

      sub_100009FAC(&unk_100574170, &qword_1005740E8, &qword_100401810, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_100009FAC(&qword_1005740A0, &unk_100574090, &unk_1004017C0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
      v45 = v138;
      v46 = Publisher<>.paginatedSwitchToLatest()();
      (*(v137 + 8))(v44, v45);
    }

    else
    {
      sub_100018888(&v150);
      EpisodeListSettings.listType.getter();
      if (v153 == 5)
      {
        v48 = v152[6];
        v47 = v152[7];
        v137 = v152[1];
        v138 = v16;
        v49 = v152[0];

        v140 = "stationDetailEpisodesPublisher ";
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v51;
        ObjectType = v50;
        v52 = objc_opt_self();
        v136 = v49;
        v53 = String._bridgeToObjectiveC()();
        v54 = [v52 predicateForStationUUID:v53];

        sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
        static OS_dispatch_queue.main.getter();
        v55 = swift_allocObject();
        *(v55 + 16) = v48;
        *(v55 + 24) = v47;
        sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
        v116 = v29;
        sub_100009F1C(0, &qword_100573CE0, MTPlaylist_ptr);
        v139 = v139;

        v56 = v121;
        FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
        sub_100009FAC(&qword_100574118, &qword_1005740E0, &qword_100401808, &protocol conformance descriptor for FetchedResultsSingleItemPublisher<A, B>);
        v57 = v123;
        v140 = Publisher.eraseToAnyPublisher()();
        (*(v122 + 8))(v56, v57);
        v58 = sub_1001907D8();

        v59 = sub_1001922D8();
        v146 = v58;
        v147 = v59;
        sub_100168088(&qword_100574120, &qword_100401830);
        sub_100168088(&qword_100573C68, &qword_1004012E8);
        sub_100009FAC(&qword_100574128, &qword_100574120, &qword_100401830, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_100009FAC(&qword_100573C78, &qword_100573C68, &qword_1004012E8, &protocol conformance descriptor for AnyPublisher<A, B>);
        v60 = v124;
        Publisher.combineLatest<A, B>(_:_:)();
        sub_100009FAC(&qword_100574130, &qword_1005740D8, &qword_100401800, &protocol conformance descriptor for Publishers.Map<A, B>);
        v61 = v126;
        v62 = Publisher.eraseToAnyPublisher()();
        v141 = v62;

        (*(v125 + 8))(v60, v61);
        v146 = v62;
        v147 = v140;
        sub_100168088(&qword_100574138, &qword_100401838);
        sub_100009FAC(&qword_100574140, &qword_100574138, &qword_100401838, &protocol conformance descriptor for AnyPublisher<A, B>);
        v63 = v127;
        Publisher.combineLatest<A>(_:)();
        sub_100009FAC(&qword_100574148, &qword_1005740C0, &qword_1004017E8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
        v65 = v129;
        v64 = v130;
        Publisher.removeDuplicates(by:)();
        (*(v128 + 8))(v63, v65);
        v67 = v142;
        v66 = v143;
        v68 = v144;
        (*(v143 + 16))(v142, v116, v144);
        v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
        v70 = (v138 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
        v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        (*(v66 + 32))(v72 + v69, v67, v68);
        *(v72 + v70) = v145;
        v73 = v139;
        *(v72 + v71) = v139;
        v74 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
        v75 = v137;
        *v74 = v136;
        v74[1] = v75;
        v76 = swift_allocObject();
        *(v76 + 16) = sub_10019FD34;
        *(v76 + 24) = v72;
        v77 = v73;
        sub_100168088(&unk_100574090, &unk_1004017C0);
        sub_100009FAC(&qword_100574150, &qword_1005740C8, &qword_1004017F0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
        v79 = v132;
        v78 = v133;
        Publisher.compactMap<A>(_:)();

        (*(v131 + 8))(v64, v78);
        sub_100009FAC(&qword_100574158, &qword_1005740D0, &qword_1004017F8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
        sub_100009FAC(&qword_1005740A0, &unk_100574090, &unk_1004017C0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
        v80 = v135;
        v81 = Publisher<>.paginatedSwitchToLatest()();
        (*(v134 + 8))(v79, v80);
        v147 = v81;
        v46 = PaginatedPublisher.paginatedBufferedMulticast()();
      }

      else
      {
        sub_100018888(v152);
        sub_10000F084(&unk_10057AFE0, type metadata accessor for LibraryDataProvider, &protocol conformance descriptor for LibraryDataProvider);
        v147 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)();
        v89 = v142;
        v88 = v143;
        v90 = v144;
        (*(v143 + 16))(v142, a1, v144);
        v91 = (*(v88 + 80) + 16) & ~*(v88 + 80);
        v92 = swift_allocObject();
        (*(v88 + 32))(v92 + v91, v89, v90);
        sub_100168088(&qword_100574100, &qword_100401820);
        sub_100168088(&qword_100573A70, &unk_100401150);
        sub_100168088(&qword_100574108, &qword_100401828);
        sub_100009FAC(&qword_100574110, &qword_100574100, &qword_100401820, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
        v46 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();
      }
    }

    return v46;
  }

  v115 = v26;
  EpisodeListSettings.listType.getter();
  EpisodeListSettings.hidePlayedEpisodes.getter();
  EpisodeListType.groupedShowLockupStyle(hidePlayedEpisodes:)();
  sub_100018888(&v149);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100009104(v20, &unk_1005740F0, &qword_100401818);
    goto LABEL_4;
  }

  v114 = v22;
  v83 = *(v22 + 32);
  v82 = v22 + 32;
  v113 = v83;
  v83(v140, v20, v21);
  v116 = a1;
  EpisodeListSettings.sort.getter();
  v84 = EpisodeSortType.rawValue.getter();
  v86 = v85;
  if (v84 == EpisodeSortType.rawValue.getter() && v86 == v87)
  {

    goto LABEL_14;
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v93 & 1) == 0)
  {
    (*(v114 + 8))(v140, v21);
    a1 = v116;
    goto LABEL_4;
  }

LABEL_14:
  v137 = v82;
  v138 = v16;
  v94 = v115;
  v95 = sub_100029130(v115, v28 & 1);
  v135 = v96;
  v136 = v95;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v133 = v98;
  v134 = v97;
  LODWORD(v139) = v28 & 1;
  v132 = sub_10002929C(v94, v28 & 1);
  result = [objc_opt_self() sortDescriptorsForSortType:3];
  if (result)
  {
    v100 = result;
    sub_100009F1C(0, &qword_10057B1F0, NSSortDescriptor_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v101 = [*&v141[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider] privateQueueContext];
    sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.main.getter();
    v102 = v114;
    (*(v114 + 16))(v24, v140, v21);
    v103 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v104 = swift_allocObject();
    v113(v104 + v103, v24, v21);
    type metadata accessor for LibraryShowLockup();
    sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
    v105 = v117;
    FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
    sub_100009FAC(&qword_100573AC8, &qword_100573AB8, &qword_100401198, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
    v106 = v119;
    v107 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
    (*(v118 + 8))(v105, v106);
    v152[0] = v107;
    v109 = v142;
    v108 = v143;
    v110 = v144;
    (*(v143 + 16))(v142, v116, v144);
    v111 = (*(v108 + 80) + 25) & ~*(v108 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = v115;
    *(v112 + 24) = v139;
    (*(v108 + 32))(v112 + v111, v109, v110);
    sub_100168088(&qword_100574180, &unk_1004109E0);
    sub_100168088(&qword_100573AA0, &qword_100401180);
    sub_100168088(&qword_100574108, &qword_100401828);
    sub_100009FAC(&qword_100574188, &qword_100574180, &unk_1004109E0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
    v46 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

    (*(v102 + 8))(v140, v21);
    return v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_100192258()
{
  sub_100168088(&qword_1005740B8, &qword_1004017E0);
  sub_100168088(&qword_1005740B0, &qword_1004017D8);
  return FRPOutput.map<A>(_:)();
}

uint64_t sub_1001922D8()
{
  v1 = sub_100168088(&qword_1005741F0, &qword_100401888);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11 - v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 predicateForStationUUID:v6];

  v8 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for StationSortOrder();
  sub_100009F1C(0, &qword_100573CE0, MTPlaylist_ptr);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_1005741F8, &qword_1005741F0, &qword_100401888, &protocol conformance descriptor for FetchedResultsSingleItemPublisher<A, B>);
  v9 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_100192538@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_100168088(&qword_100574080, &qword_1004017B8);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = *a2;
  sub_100010430(a1, &v13 - v6, &qword_100574080, &qword_1004017B8);
  v9 = type metadata accessor for StationSortOrder();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    result = sub_100009104(v7, &qword_100574080, &qword_1004017B8);
  }

  else
  {
    v12 = StationSortOrder.episodeSort.getter();
    result = (*(v10 + 8))(v7, v9);
    if (v12 != 17)
    {
      v8 = v12;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100192690@<X0>(_BYTE *a1@<X8>)
{
  result = MTPodcast.episodeSortType.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001926BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = EpisodeSortType.rawValue.getter();
  v4 = v3;
  if (v2 == EpisodeSortType.rawValue.getter() && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

unsigned __int8 *sub_100192758@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 17)
  {
    LOBYTE(v2) = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100192770(void *a1)
{
  [a1 containerOrder];

  return StationSortOrder.init(rawValue:)();
}

BOOL sub_1001927B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StationSortOrder();
  sub_10000F084(&qword_100574200, &type metadata accessor for StationSortOrder, &protocol conformance descriptor for StationSortOrder);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10019283C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v9 = &v18 - v8;
  type metadata accessor for Episode();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v10 = a1;
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v12 = type metadata accessor for EpisodeListSettings();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a2, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = enum case for SectionContext.season(_:);
    v15 = type metadata accessor for SectionContext();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v7, v14, v15);
    (*(v16 + 56))(v7, 0, 1, v15);

    static MetricsDataConfiguration.default.getter();
    v17 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v24 = v18;
    sub_100009104(&v24, &unk_100574650, &unk_1004023C0);
    v23 = v19;
    sub_100009104(&v23, &unk_100573A90, &unk_100401170);
    v22 = *(&v19 + 1);
    sub_100009104(&v22, &unk_100574660, &unk_1004023D0);
    sub_1000112B4(v20, v21);

    sub_100009104(v7, &qword_100573A78, &qword_10040FDF0);
    result = sub_100009104(v9, &unk_100573A80, &unk_100401160);
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
  return result;
}

uint64_t sub_100192B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v46 = v39 - v5;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v45 = v39 - v6;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v8 = v39 - v7;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v41 = v39 - v9;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v40 = v39 - v10;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v12 = v39 - v11;
  v43 = type metadata accessor for ModernShelf.ItemPresentation();
  v13 = *(v43 - 8);
  __chkstk_darwin();
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v39 - v16;
  ShelfIDBuilder.init(named:)();
  v42 = a2;
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v52);
  v48 = sub_100168088(&qword_1005741B8, &qword_100401868);
  FRPSectionInfo.section.getter();
  if ((v54 & 1) == 0)
  {
    *&v49 = v53;
    sub_10019FFC0();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v18 = ShelfIDBuilder.build()();
  v39[6] = v18._countAndFlagsBits;
  v39[5] = v18._object;

  v44 = a1;
  FRPSectionInfo.section.getter();
  v19 = v53;
  v20 = v54;
  v21 = [objc_opt_self() mainBundle];
  if ((v20 & 1) != 0 || !v19)
  {
    v58._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000017;
    v28._object = 0x8000000100466230;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v21, v29, v58);

    v39[4] = 0xED00006E6F736165;
    v26 = 0x536E776F6E6B6E55;
    v27 = &v55;
  }

  else
  {
    v57._object = 0xE000000000000000;
    v22._object = 0x8000000100466250;
    v22._countAndFlagsBits = 0xD000000000000014;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v57);

    sub_100168088(&unk_100574670, &qword_100400AB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100400790;
    *(v24 + 56) = &type metadata for Int64;
    *(v24 + 64) = &protocol witness table for Int64;
    *(v24 + 32) = v19;
    static String.localizedStringWithFormat(_:_:)();

    v53 = 0x6E6F73616553;
    v54 = 0xE600000000000000;
    *&v49 = v19;

    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26 = v54;
    v39[3] = v53;
    v27 = &v56;
  }

  *(v27 - 32) = v26;
  v39[1] = v12;
  v39[2] = v15;
  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v53);
  v30 = type metadata accessor for ActionMenu();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v31 = type metadata accessor for Header.PrimaryAction();
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  v32 = type metadata accessor for ArtworkModel();
  (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v33 = v43;
  (*(v13 + 16))(v15, v17, v43);
  v34 = FRPSectionInfo.items.getter();
  v48 = sub_1001A4A7C(v34);

  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
  v51 = 0;
  v50 = 0u;
  v49 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v36 = v46;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v37 = type metadata accessor for ImpressionMetrics();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v13 + 8))(v17, v33);
}

uint64_t sub_10019346C(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = a3;
  v47 = a2;
  v48 = type metadata accessor for Calendar();
  v46 = *(v48 - 8);
  v49 = *(v46 + 64);
  __chkstk_darwin();
  v45 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EpisodeListSettings();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v36 = v7;
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_1005741C8, &unk_100401870);
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  __chkstk_darwin();
  v53 = &v30 - v11;
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v54 = 0xD00000000000001ALL;
  v55 = 0x8000000100466210;
  EpisodeListSettings.listType.getter();
  v12._countAndFlagsBits = EpisodeListType.description.getter();
  String.append(_:)(v12);

  sub_100018888(v56);
  v43 = v54;
  v42 = v55;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v13;
  v39 = EpisodeListSettings.predicate.getter();
  v33 = a1;
  EpisodeListSettings.sort.getter();
  v35 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v32 = static OS_dispatch_queue.main.getter();
  v14 = *(v6 + 16);
  v31 = v5;
  v14(v8, a1, v5);
  v15 = *(v6 + 80);
  v34 = v15 | 7;
  v16 = swift_allocObject();
  v38 = *(v6 + 32);
  v38(v16 + ((v15 + 16) & ~v15), v8, v5);
  v37 = type metadata accessor for LibraryEpisodeLockup();
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  v17 = v44;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v19 = v45;
  v18 = v46;
  v20 = v48;
  (*(v46 + 16))(v45, v50 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_metricsCalendar, v48);
  v21 = v31;
  v14(v8, v33, v31);
  v22 = v18;
  v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v24 = (v49 + v15 + v23) & ~v15;
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v23, v19, v20);
  v38(v25 + v24, v8, v21);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&unk_1005741D0, &qword_1005741C8, &unk_100401870, &protocol conformance descriptor for FetchedResultsSectionedPublisher<A, B, C>);
  v26 = v51;
  v27 = v53;
  v28 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v52 + 8))(v27, v26);
  return v28;
}

uint64_t sub_100193A1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v9 = &v16 - v8;
  type metadata accessor for Episode();
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v10 = a1;
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v12 = type metadata accessor for EpisodeListSettings();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a2, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = type metadata accessor for SectionContext();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);

    static MetricsDataConfiguration.default.getter();
    v15 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v22 = v16;
    sub_100009104(&v22, &unk_100574650, &unk_1004023C0);
    v21 = v17;
    sub_100009104(&v21, &unk_100573A90, &unk_100401170);
    v20 = *(&v17 + 1);
    sub_100009104(&v20, &unk_100574660, &unk_1004023D0);
    sub_1000112B4(v18, v19);

    sub_100009104(v7, &qword_100573A78, &qword_10040FDF0);
    result = sub_100009104(v9, &unk_100573A80, &unk_100401160);
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  return result;
}

void sub_100193CD0(uint64_t *a1@<X8>)
{
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v3 = &v13 - v2;
  LegacyEpisodeLockup.releaseDate.getter();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100009104(v3, &qword_100574760, &unk_1003FEB60);
LABEL_4:
    v9 = [objc_opt_self() mainBundle];
    v14._object = 0xE000000000000000;
    v10._object = 0x8000000100466270;
    v10._countAndFlagsBits = 0xD000000000000015;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14);
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;

    goto LABEL_5;
  }

  countAndFlagsBits = Date.yearString.getter();
  object = v7;
  (*(v5 + 8))(v3, v4);
  if (!object)
  {
    goto LABEL_4;
  }

LABEL_5:
  *a1 = countAndFlagsBits;
  a1[1] = object;
}

unint64_t sub_100193E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v55 = a4;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v54 = &v41 - v6;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v53 = &v41 - v7;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v49 = (&v41 - v8);
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v48 = &v41 - v9;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v46 = &v41 - v10;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v57 = &v41 - v11;
  v58 = type metadata accessor for ModernShelf.ItemPresentation();
  v51 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v41 - v13;
  v14 = type metadata accessor for Calendar.Component();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v19 = &v41 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_1005741E0, &qword_100401880);
  v52 = a1;
  result = FRPSectionInfo.items.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    (*(v21 + 56))(v19, 1, 1, v20);
LABEL_10:
    sub_100009104(v19, &qword_100574760, &unk_1003FEB60);
    v25 = 0;
    v26 = 1;
    goto LABEL_11;
  }

  v27 = a2;
  v28 = result;
  v29 = _CocoaArrayWrapper.endIndex.getter();
  result = v28;
  a2 = v27;
  if (!v29)
  {
    goto LABEL_9;
  }

LABEL_3:
  countAndFlagsBits = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  LegacyEpisodeLockup.releaseDate.getter();

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_10;
  }

  (*(v21 + 32))(v23, v19, v20);
  (*(v15 + 104))(v17, enum case for Calendar.Component.year(_:), v14);
  v25 = Calendar.component(_:from:)();
  (*(v15 + 8))(v17, v14);
  (*(v21 + 8))(v23, v20);
  v26 = 0;
LABEL_11:
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v62);
  if ((v26 & 1) == 0)
  {
    v63 = v25;
    sub_1001A0058();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v30 = ShelfIDBuilder.build()();
  countAndFlagsBits = v30._countAndFlagsBits;
  object = v30._object;

  if (v26)
  {
    v43 = 0xEB000000006E776FLL;
    v42 = 0x6E6B6E5565746144;
  }

  else
  {
    v63 = v25;
    sub_1001A0058();
    v42 = BinaryInteger.description.getter();
    v43 = v31;
  }

  EpisodeListSettings.listType.getter();
  v32 = v50;
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v63);
  FRPSectionInfo.section.getter();
  v33 = type metadata accessor for ActionMenu();
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v34 = type metadata accessor for Header.PrimaryAction();
  (*(*(v34 - 8) + 56))(v48, 1, 1, v34);
  v35 = type metadata accessor for ArtworkModel();
  (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v36 = v51;
  (*(v51 + 16))(v56, v32, v58);
  v37 = FRPSectionInfo.items.getter();
  v49 = sub_1001A4A7C(v37);

  v38 = type metadata accessor for URL();
  (*(*(v38 - 8) + 56))(v53, 1, 1, v38);
  v61 = 0;
  v60 = 0u;
  v59 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  FRPSectionInfo.section.getter();
  v39 = v54;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v40 = type metadata accessor for ImpressionMetrics();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v36 + 8))(v32, v58);
}

uint64_t sub_100194940@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v42 = v31 - v5;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v44 = v31 - v6;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v39 = v31 - v7;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v35 = (v31 - v8);
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v33 = v31 - v9;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v11 = v31 - v10;
  v41 = type metadata accessor for ModernShelf();
  v38 = *(v41 - 8);
  __chkstk_darwin();
  v40 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModernShelf.ItemPresentation();
  v45 = *(v13 - 8);
  __chkstk_darwin();
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v31 - v16;
  v32 = *a1;
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(&v49);
  countAndFlagsBits = ShelfIDBuilder.build()()._countAndFlagsBits;

  v31[1] = a2;
  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v50);
  EpisodeListSettings.listType.getter();
  v34 = EpisodeListType.shelfImpressionMetricsID.getter();
  sub_100018888(v51);
  v18 = type metadata accessor for ActionMenu();
  (*(*(v18 - 8) + 56))(v33, 1, 1, v18);
  v19 = type metadata accessor for Header.PrimaryAction();
  (*(*(v19 - 8) + 56))(v35, 1, 1, v19);
  v20 = type metadata accessor for ArtworkModel();
  (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
  v37 = v11;
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v21 = *(v45 + 16);
  v39 = v13;
  v21(v15, v17, v13);
  v35 = sub_1001A4A7C(v32);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v44, 1, 1, v22);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  EpisodeListSettings.listType.getter();
  if (v55 != 6)
  {
    if (v55 != 10 || v52[0] != 1 || (v23 = vorrq_s8(v53, v54), *&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | v52[3] | v52[2] | v52[1]))
    {
      sub_100018888(v52);
    }
  }

  v24 = v42;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v25 = type metadata accessor for ImpressionMetrics();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  v26 = v40;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  sub_100168088(&qword_100574190, &qword_100401850);
  v27 = v38;
  v28 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100400790;
  (*(v27 + 32))(v29 + v28, v26, v41);
  result = (*(v45 + 8))(v17, v39);
  *v43 = v29;
  return result;
}

uint64_t sub_100195110@<X0>(unint64_t *a1@<X0>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v42 = a5;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v41 = v32 - v6;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v39 = v32 - v7;
  type metadata accessor for ModernShelf.ItemPresentation();
  __chkstk_darwin();
  v37 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v10 = v32 - v9;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v12 = v32 - v11;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v14 = v32 - v13;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v32[1] = v32 - v15;
  v40 = type metadata accessor for ModernShelf();
  v38 = *(v40 - 8);
  v34 = v38;
  __chkstk_darwin();
  v36 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  ShelfIDBuilder.init(named:)();
  ShowListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  ShelfIDBuilder.build()();

  EpisodeListSettings.listType.getter();
  v17 = EpisodeListType.shelfImpressionMetricsID.getter();
  v19 = v18;
  sub_100018888(v46);
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0x7365646F73697045;
  }

  v35 = v20;
  v21 = type metadata accessor for ActionMenu();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = type metadata accessor for Header.PrimaryAction();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = type metadata accessor for ArtworkModel();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  LOBYTE(v43) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  sub_1001A4AB0(v33);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;

  static MetricsTargetType.swoosh.getter();
  v25 = v41;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v26 = type metadata accessor for ImpressionMetrics();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v27 = v36;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  sub_100168088(&qword_100574190, &qword_100401850);
  v28 = v34;
  v29 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100400790;
  result = (*(v28 + 32))(v30 + v29, v27, v40);
  *v42 = v30;
  return result;
}

id sub_1001957B4@<X0>(id result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    result = [result isSerialShowTypeInFeed];
  }

  *a2 = result;
  return result;
}

uint64_t sub_1001957E8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  if (*a1 == 1)
  {
    result = sub_10019CAE8(a2, a3, a4);
  }

  else
  {
    result = sub_10019346C(a2, a3, a4);
  }

  *a5 = result;
  return result;
}

void sub_100195840(void *a1)
{
  if (a1)
  {
    type metadata accessor for StationDetail();
    v2 = a1;
    if (StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)())
    {
      Promise.resolve(_:)();

      return;
    }

    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithDomain:v7 code:42 userInfo:0];

    v9 = v8;
    Promise.reject(_:)();
  }

  else
  {
    v3 = objc_allocWithZone(NSError);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithDomain:v4 code:42 userInfo:0];

    v9 = v5;
    Promise.reject(_:)();
  }
}

uint64_t sub_1001959D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StationDetailObserver();
  swift_allocObject();

  sub_1001D31CC(a1, a2);
  sub_10000F084(&qword_100574088, type metadata accessor for StationDetailObserver, &unk_100403290);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_100195B00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100168088(&qword_100574080, &qword_1004017B8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v11 - v5;
  [a1 containerOrder];
  StationSortOrder.init(rawValue:)();
  v7 = type metadata accessor for StationSortOrder();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100009104(v6, &qword_100574080, &qword_1004017B8);
  }

  else
  {
    StationSortOrder.supportsUsingFRP(isGrouped:)([a1 isUngroupedList] != 1);
    (*(v8 + 8))(v6, v7);
  }

  type metadata accessor for StationDetail();
  v9 = a1;
  result = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
  *a2 = result;
  return result;
}

uint64_t sub_100195C70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    *a2 = v2;
  }

  else
  {
    v4 = type metadata accessor for ModelError();
    sub_10000F084(&qword_100574078, &type metadata accessor for ModelError, &protocol conformance descriptor for ModelError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for ModelError.notInDatabase(_:), v4);
    return swift_willThrow();
  }
}

uint64_t sub_100195D3C@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for StationSortOrder();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = StationDetail.uuid.getter();
  v8 = v7;
  v9 = StationDetail.objectID.getter();
  v10 = StationDetail.grouped.getter();
  StationDetail.sortOrder.getter();
  v11 = StationDetail.predicateForEpisodes.getter();
  if (!v11)
  {
    v11 = [objc_opt_self() falsePredicate];
  }

  v12 = v11;
  v13 = dispatch thunk of StationDetail.episodes.getter();

  if (!v13)
  {
    v13 = _swiftEmptyArrayStorage;
  }

  *a2 = v17;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10 & 1;
  v14 = type metadata accessor for LibraryDataProvider._Station(0);
  result = (*(v4 + 32))(a2 + v14[7], v6, v3);
  *(a2 + v14[8]) = v12;
  *(a2 + v14[9]) = v13;
  return result;
}

uint64_t sub_100195EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100195F50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100195FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100196054@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  type metadata accessor for StationShow();
  v5 = a1;

  result = StationShow.__allocating_init(from:stationUuid:)();
  if (!result)
  {
    goto LABEL_5;
  }

  if (dispatch thunk of StationShow.episodeCount.getter() < 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = dispatch thunk of StationShow.modernLockup.getter();

LABEL_6:
  *a3 = v7;
  return result;
}

uint64_t sub_1001960F8@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v6 = &v14 - v5;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v8 = &v14 - v7;
  type metadata accessor for StationEpisode();
  v9 = a1;

  result = StationEpisode.__allocating_init(from:stationUuid:)();
  if (result)
  {
    v11 = type metadata accessor for EpisodeListSettings();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = type metadata accessor for SectionContext();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);

    static MetricsDataConfiguration.default.getter();
    v13 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v21 = v14;
    sub_100009104(&v21, &unk_100574650, &unk_1004023C0);
    v20 = v15;
    sub_100009104(&v20, &unk_100573A90, &unk_100401170);
    v19 = v16;
    sub_100009104(&v19, &unk_100574660, &unk_1004023D0);
    sub_1000112B4(v17, v18);

    sub_100009104(v6, &qword_100573A78, &qword_10040FDF0);
    result = sub_100009104(v8, &unk_100573A80, &unk_100401160);
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

uint64_t sub_100196368@<X0>(uint64_t *a1@<X0>, unsigned int a3@<W2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v32 = a3;
  v36 = a5;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v35 = v28 - v6;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v33 = v28 - v7;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v9 = v28 - v8;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v11 = v28 - v10;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v13 = v28 - v12;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v28[1] = v28 - v14;
  v30 = type metadata accessor for ModernShelf.ItemPresentation();
  v15 = *(v30 - 8);
  __chkstk_darwin();
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = v28 - v18;
  v29 = *a1;
  ShelfIDBuilder.init(named:)();
  ShelfIDBuilder.addingAttribute(_:named:)();

  countAndFlagsBits = ShelfIDBuilder.build()()._countAndFlagsBits;

  LOBYTE(v37) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v20 = type metadata accessor for ActionMenu();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = type metadata accessor for Header.PrimaryAction();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = type metadata accessor for ArtworkModel();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v23 = v30;
  (*(v15 + 16))(v17, v19, v30);
  v34(v29);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v25 = v35;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v26 = type metadata accessor for ImpressionMetrics();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v15 + 8))(v19, v23);
}

uint64_t sub_100196930@<X0>(uint64_t a2@<X8>)
{

  return sub_100195D3C(a2);
}

uint64_t sub_10019696C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for LibraryDataProvider._Station(0);
  v8 = *(a1 + 24);
  if (StationSortOrder.supportsUsingFRP(isGrouped:)(*(a1 + 24)))
  {
    if (v8)
    {
      result = sub_10019CFA8(a1, a2, a3);
    }

    else
    {
      result = sub_10019D4B4(a1, a2, a3);
    }
  }

  else
  {
    result = sub_10019D8D8(a1);
  }

  *a4 = result;
  return result;
}

uint64_t sub_1001969F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100168088(&qword_100573FF0, &qword_100401758);
  __chkstk_darwin();
  v5 = &v9 - v4;
  v10 = *a1;
  sub_100168088(&qword_100573D48, &qword_100401358);
  v6 = type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100573FF8, &qword_100573D48, &qword_100401358, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v10 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();
  sub_100168088(&qword_100574000, &qword_100401760);
  sub_100168088(&qword_100574008, &qword_100401768);
  *(swift_allocObject() + 16) = xmmword_100400790;
  (*(*(v6 - 8) + 56))(v5, 1, 2, v6);
  FRPOutput.init(content:hasMore:totalCount:)();
  sub_100168088(&qword_100573D58, &qword_100401360);
  sub_100009FAC(&qword_100573D68, &qword_100573D58, &qword_100401360, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v7 = PaginatedPublisher.paginatedPrepend(_:)();

  *a2 = v7;
  return result;
}

uint64_t sub_100196C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModernShelf();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 2, v4);
}

uint64_t sub_100196DA0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
      v6 = a1;
      v7 = a3;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v13 = 0;
    return v13 & 1;
  }

  if (a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = EpisodeSortType.rawValue.getter();
  v11 = v10;
  if (v9 == EpisodeSortType.rawValue.getter() && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100196EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, uint64_t), uint64_t a7)
{
  v42 = a7;
  v43 = a5;
  v40 = a6;
  v46 = a4;
  v9 = type metadata accessor for EpisodeListSettings();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = sub_100168088(&unk_100573C10, &qword_1004012B8);
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin();
  v41 = v32 - v13;
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v47 = 0xD000000000000015;
  v48 = 0x8000000100465C50;
  EpisodeListSettings.listType.getter();
  v14 = EpisodeListType.description.getter();
  v16 = v15;
  sub_100018888(v49);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v38 = v48;
  v39 = v47;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v18;
  if (a1)
  {
    v34 = a1;
  }

  else
  {
    v34 = [objc_opt_self() falsePredicate];
  }

  v19 = a1;
  v32[1] = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  v35 = *(v10 + 16);
  v35(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v33 = a3;
  v20 = v9;
  v21 = *(v10 + 80);
  v22 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v24 = v42;
  *(v23 + 16) = v40;
  *(v23 + 24) = v24;
  v40 = *(v10 + 32);
  v40(v23 + ((v21 + 32) & ~v21), v22, v20);
  type metadata accessor for LibraryEpisodeLockup();
  v32[0] = v11;
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);

  v25 = v43;
  v26 = v41;
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573C20, &unk_100573C10, &qword_1004012B8, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v27 = v45;
  v28 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v44 + 8))(v26, v27);
  v47 = v28;
  v35(v22, v33, v20);
  v29 = swift_allocObject();
  v40(v29 + ((v21 + 16) & ~v21), v22, v20);
  sub_100168088(&qword_100574100, &qword_100401820);
  sub_100168088(&qword_100573A70, &unk_100401150);
  sub_100168088(&qword_100574108, &qword_100401828);
  sub_100009FAC(&qword_100574110, &qword_100574100, &qword_100401820, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v30 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

  return v30;
}

uint64_t sub_1001973D4@<X0>(void *a1@<X0>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v11 = &v17 - v10;
  type metadata accessor for StationEpisode();
  v12 = a1;

  result = StationEpisode.__allocating_init(from:stationUuid:)();
  if (result)
  {
    v14 = type metadata accessor for EpisodeListSettings();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a4, v14);
    (*(v15 + 56))(v11, 0, 1, v14);

    EpisodeListSettings.sectionContext.getter();
    static MetricsDataConfiguration.default.getter();
    v16 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v24 = v17;
    sub_100009104(&v24, &unk_100574650, &unk_1004023C0);
    v23 = v18;
    sub_100009104(&v23, &unk_100573A90, &unk_100401170);
    v22 = v19;
    sub_100009104(&v22, &unk_100574660, &unk_1004023D0);
    sub_1000112B4(v20, v21);

    sub_100009104(v9, &qword_100573A78, &qword_10040FDF0);
    result = sub_100009104(v11, &unk_100573A80, &unk_100401160);
  }

  else
  {
    v16 = 0;
  }

  *a5 = v16;
  return result;
}

uint64_t sub_100197664()
{
  v0 = LegacyLockup.shelfUniqueId.getter();
  v2 = v1;
  if (v0 == LegacyLockup.shelfUniqueId.getter() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_100197700@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v42 = v32 - v3;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v44 = v32 - v4;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v39 = v32 - v5;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v36 = v32 - v6;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v34 = (v32 - v7);
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v9 = v32 - v8;
  v41 = type metadata accessor for ModernShelf();
  v38 = *(v41 - 8);
  __chkstk_darwin();
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModernShelf.ItemPresentation();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v32 - v15;
  v33 = *a1;
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(&v48);
  v17 = ShelfIDBuilder.build()();
  countAndFlagsBits = v17._countAndFlagsBits;
  v32[1] = v17._object;

  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v49);
  v18 = type metadata accessor for ActionMenu();
  (*(*(v18 - 8) + 56))(v34, 1, 1, v18);
  v19 = type metadata accessor for Header.PrimaryAction();
  (*(*(v19 - 8) + 56))(v36, 1, 1, v19);
  v20 = type metadata accessor for ArtworkModel();
  (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
  v37 = v9;
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v21 = v12;
  v22 = *(v12 + 16);
  v36 = v14;
  v39 = v11;
  v22(v14, v16, v11);
  v34 = sub_1001A4A7C(v33);
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v44, 1, 1, v23);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfImpressionMetricsID.getter();
  sub_100018888(v50);

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  EpisodeListSettings.listType.getter();
  if (v54 != 6)
  {
    if (v54 != 10 || v51[0] != 1 || (v24 = vorrq_s8(v52, v53), *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v51[3] | v51[2] | v51[1]))
    {
      sub_100018888(v51);
    }
  }

  v25 = v42;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v26 = type metadata accessor for ImpressionMetrics();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v27 = v40;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  sub_100168088(&qword_100574190, &qword_100401850);
  v28 = v38;
  v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100400790;
  (*(v28 + 32))(v30 + v29, v27, v41);
  result = (*(v21 + 8))(v16, v39);
  *v43 = v30;
  return result;
}

uint64_t sub_100197EDC(char **a1, char *a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for ScalarDictionary();
  v191 = *(v7 - 8);
  v192 = v7;
  __chkstk_darwin();
  v9 = (&v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v188 = &v175 - v10;
  v190 = type metadata accessor for MetricsPageFields();
  v187 = *(v190 - 8);
  __chkstk_darwin();
  v185 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageID();
  __chkstk_darwin();
  v199 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for GroupedSearchResultsPage();
  v186 = *(v189 - 8);
  __chkstk_darwin();
  v184 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v204 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageMetrics();
  __chkstk_darwin();
  v210 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v202 = &v175 - v16;
  sub_100168088(&unk_100573FB0, &unk_100401720);
  __chkstk_darwin();
  v201 = &v175 - v17;
  v18 = type metadata accessor for GroupedSearchResultsPage.Result();
  v205 = *(v18 - 8);
  v206 = v18;
  __chkstk_darwin();
  v180 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v175 - v20;
  __chkstk_darwin();
  v178 = &v175 - v21;
  __chkstk_darwin();
  v177 = &v175 - v22;
  __chkstk_darwin();
  v176 = &v175 - v23;
  type metadata accessor for ShowLockupStyle();
  __chkstk_darwin();
  v25 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_allocWithZone(MTTextQuery) init];
  [v30 setFetchLimit:100];
  v211 = a2;
  v212 = a1;
  v31 = String._bridgeToObjectiveC()();
  [v30 runQueryWithText:v31];

  UUID.init()();
  UUID.uuidString.getter();
  (*(v27 + 8))(v29, v26);
  v32 = String.lowercased()();

  v231 = v32;
  *&v225 = 45;
  *(&v225 + 1) = 0xE100000000000000;
  v223 = 0;
  v224 = 0xE000000000000000;
  sub_10019FA64();
  v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v208 = v34;
  v209 = v33;

  v207 = v30;
  v35 = [v30 podcastResults];
  if (!v35)
  {
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v36 = v35;
  v182 = v9;
  sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v225 = _swiftEmptyArrayStorage;
  v183 = a3;
  v38 = v37 & 0xFFFFFFFFFFFFFF8;
  if (v37 >> 62)
  {
LABEL_131:
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = 0;
  v198 = 0;
  v200 = _swiftEmptyArrayStorage;
  while (v39 != v40)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *(v38 + 16))
      {
        goto LABEL_124;
      }

      v41 = *(v37 + 8 * v40 + 32);
    }

    v42 = v41;
    v43 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v9 = type metadata accessor for LibraryShowLockup();
    v231 = 0;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = -1;
    ShowLockupStyle.init(includesOfferButton:defaultSubtitle:unfollowedSubtitle:groupedEpisodesListType:)();
    static MetricsDataConfiguration.default.getter();
    ++v40;
    if (sub_100032D90(v42, v25, v217))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v200 = v225;
      v40 = v43;
    }
  }

  v44 = v211;

  *&v225 = sub_10019B2C8(v45);
  v46 = v198;
  sub_10019F9A8(&v225, v212, v44);
  if (v46)
  {
    goto LABEL_145;
  }

  v200 = v225;
  v47 = [v207 episodeResults];
  if (!v47)
  {
    goto LABEL_142;
  }

  v48 = v47;
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v223 = _swiftEmptyArrayStorage;
  v198 = 0;
  if (v37 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = _swiftEmptyArrayStorage;
  if (v25)
  {
    v38 = 0;
    do
    {
      v197 = v49;
      v39 = v38;
      while (1)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v50 = *(v37 + 8 * v39 + 32);
        }

        v51 = v50;
        v38 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_125;
        }

        v9 = type metadata accessor for Episode();
        v227 = 0;
        v225 = 0u;
        v226 = 0u;
        v52 = v51;
        if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
        {
          break;
        }

        ++v39;
        if (v38 == v25)
        {
          goto LABEL_33;
        }
      }

      v39 = dispatch thunk of Episode.presentDetailsLockup.getter();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v49 = v223;
    }

    while (v38 != v25);
  }

LABEL_33:

  v53 = v211;

  *&v225 = sub_10019B2C8(v54);
  v46 = v198;
  sub_10019F9A8(&v225, v212, v53);
  if (v46)
  {
    goto LABEL_145;
  }

  v198 = v225;
  v55 = [v207 channelResults];
  if (!v55)
  {
    goto LABEL_143;
  }

  v56 = v55;
  sub_100009F1C(0, &qword_100573B10, MTChannel_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v225 = _swiftEmptyArrayStorage;
  if (v37 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = _swiftEmptyArrayStorage;
  if (v25)
  {
    v197 = 0;
    v57 = 0;
    v38 = v37 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v57 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        v58 = *(v37 + 8 * v57 + 32);
      }

      v59 = v58;
      v60 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_127;
      }

      type metadata accessor for LegacyChannelLockup();
      static MetricsDataConfiguration.default.getter();
      sub_100357920(v59, 1, &v218);
      v9 = v61;
      v230 = v218;
      sub_100009104(&v230, &unk_100574650, &unk_1004023C0);
      v216[0] = v219;
      sub_100009104(v216, &unk_100573A90, &unk_100401170);
      v215 = v220;
      sub_100009104(&v215, &unk_100574660, &unk_1004023D0);
      sub_1000112B4(v221, v222);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v57;
    }

    while (v60 != v25);
    v53 = v211;
    v46 = v197;
    v39 = _swiftEmptyArrayStorage;
  }

  *&v225 = sub_10019B2C8(v62);
  sub_10019F9A8(&v225, v212, v53);
  if (v46)
  {
    goto LABEL_145;
  }

  v197 = v225;
  v63 = v207;
  v64 = [v207 categoryResults];

  if (!v64)
  {
LABEL_144:
    __break(1u);
  }

  type metadata accessor for MTCategory();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v225 = _swiftEmptyArrayStorage;
  if (v25 >> 62)
  {
    v65 = _CocoaArrayWrapper.endIndex.getter();
    v181 = 0;
    if (!v65)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v65 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v181 = 0;
    if (!v65)
    {
      goto LABEL_62;
    }
  }

  v66 = 0;
  v38 = v25 & 0xC000000000000001;
  v37 = v25 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v38)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v66 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_130;
      }

      v67 = *(v25 + 8 * v66 + 32);
    }

    v9 = (v66 + 1);
    if (__OFADD__(v66, 1))
    {
      goto LABEL_129;
    }

    type metadata accessor for LegacyCategoryLockup();
    static MetricsDataConfiguration.default.getter();
    LegacyCategoryLockup.__allocating_init(from:configuration:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v66;
  }

  while (v9 != v65);
  v39 = v225;
LABEL_62:

  type metadata accessor for Shelf();
  v25 = objc_opt_self();
  v9 = &selRef_isPartiallyPlayedBackCatalogItem;
  v68 = [v25 mainBundle];
  v69._countAndFlagsBits = 0xD000000000000014;
  v236._object = 0xE000000000000000;
  v69._object = 0x80000001004660E0;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v236._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v236);

  sub_1001A4CE8(v200);
  v196 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v71 = [v25 mainBundle];
  v237._object = 0xE000000000000000;
  v72._object = 0x8000000100466100;
  v72._countAndFlagsBits = 0xD000000000000017;
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  v237._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v237);

  sub_1001A4CE8(v198);
  v195 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v74 = [v25 mainBundle];
  v238._object = 0xE000000000000000;
  v75._object = 0x8000000100466120;
  v75._countAndFlagsBits = 0xD000000000000017;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v238._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v238);

  sub_1001A4CE8(v197);
  v194 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v77 = [v25 mainBundle];
  v78._countAndFlagsBits = 0xD000000000000011;
  v239._object = 0xE000000000000000;
  v78._object = 0x8000000100466140;
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  v239._countAndFlagsBits = 0;
  v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v239);
  countAndFlagsBits = v80._countAndFlagsBits;
  object = v80._object;

  sub_1001A4F08(v39);
  v46 = v39 >> 62;
  if (v39 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    while (1)
    {
      v193 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
      sub_100168088(&unk_100573FC0, &unk_100401D60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007E0;
      *(inited + 32) = v197;
      if (v46)
      {
        type metadata accessor for LegacyLockup();

        v84 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for LegacyLockup();
        v84 = v39;
      }

      v85 = v198;
      *(inited + 40) = v84;
      *(inited + 48) = v85;
      sub_10019A634(inited, 50, v200);

      swift_setDeallocating();
      sub_100168088(&unk_100574640, &unk_100401730);
      swift_arrayDestroy();
      v86 = v211;

      *&v225 = sub_10019B2C8(v87);
      v46 = v181;
      sub_10019F9A8(&v225, v212, v86);
      if (!v46)
      {
        break;
      }

LABEL_145:

      __break(1u);
    }

    object = v225;
    v88 = [v25 v9[225]];
    v240._object = 0xE000000000000000;
    v89._countAndFlagsBits = 0xD00000000000001ALL;
    v89._object = 0x8000000100466160;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    v240._countAndFlagsBits = 0;
    v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v240);
    countAndFlagsBits = v91._countAndFlagsBits;
    v46 = v91._object;

    sub_1001A4CE8(object);
    if ((object & 0x8000000000000000) == 0 && (object & 0x4000000000000000) == 0)
    {

      goto LABEL_70;
    }
  }

  v174 = _CocoaArrayWrapper.endIndex.getter();

  if (v174 < 0)
  {
    __break(1u);
LABEL_140:
    v9 = sub_100243240((v104 > 1), countAndFlagsBits, 1, v9);
LABEL_75:
    v9[2] = countAndFlagsBits;
    (*(v205 + 32))(v9 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v46, object, v206);
    v94 = &unk_100400000;
    goto LABEL_77;
  }

LABEL_70:
  v92 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v93 = *(Shelf.items.getter() + 16);

  v94 = &unk_100400000;
  v200 = v92;
  if (v93)
  {
    v95 = static SearchResultsGroupID.topResults.getter();
    v197 = v96;
    v198 = v95;
    v97 = Shelf.title.getter();
    if (v98)
    {
      v99 = v97;
    }

    else
    {
      v99 = 0;
    }

    v181 = v99;
    sub_100168088(&unk_100574680, &qword_100401740);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1004007B0;
    *(v100 + 32) = v92;
    v101 = v92;
    Shelf.title.getter();
    v102 = sub_100168088(&unk_100573FE0, &unk_100401748);
    (*(*(v102 - 8) + 56))(v201, 1, 1, v102);
    v103 = type metadata accessor for ArtworkModel();
    (*(*(v103 - 8) + 56))(v202, 1, 1, v103);
    sub_10019A068(v209, v212, v211, v210);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v225) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    object = v176;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    v9 = sub_100243240(0, 1, 1, _swiftEmptyArrayStorage);
    v46 = v9[2];
    v104 = v9[3];
    countAndFlagsBits = v46 + 1;
    if (v46 < v104 >> 1)
    {
      goto LABEL_75;
    }

    goto LABEL_140;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_77:
  v105 = v196;
  v106 = *(Shelf.items.getter() + 16);

  if (v106)
  {
    v107 = static SearchResultsGroupID.shows.getter();
    v197 = v108;
    v198 = v107;
    v109 = Shelf.title.getter();
    if (v110)
    {
      v111 = v109;
    }

    else
    {
      v111 = 0;
    }

    v181 = v111;
    v112 = 0xE000000000000000;
    if (v110)
    {
      v112 = v110;
    }

    v176 = v112;
    sub_100168088(&unk_100574680, &qword_100401740);
    v113 = swift_allocObject();
    *(v113 + 16) = v94[123];
    *(v113 + 32) = v105;
    v114 = v105;
    Shelf.title.getter();
    v115 = sub_100168088(&unk_100573FE0, &unk_100401748);
    (*(*(v115 - 8) + 56))(v201, 1, 1, v115);
    v116 = type metadata accessor for ArtworkModel();
    (*(*(v116 - 8) + 56))(v202, 1, 1, v116);
    sub_10019A068(v209, v212, v211, v210);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v225) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v117 = v177;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100243240(0, (v9[2] + 1), 1, v9);
    }

    v119 = v9[2];
    v118 = v9[3];
    v94 = &unk_100400000;
    if (v119 >= v118 >> 1)
    {
      v9 = sub_100243240((v118 > 1), v119 + 1, 1, v9);
    }

    v9[2] = (v119 + 1);
    (*(v205 + 32))(v9 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v119, v117, v206);
  }

  v120 = v195;
  v121 = *(Shelf.items.getter() + 16);

  if (v121)
  {
    v122 = static SearchResultsGroupID.episodes.getter();
    v197 = v123;
    v198 = v122;
    v124 = Shelf.title.getter();
    if (v125)
    {
      v126 = v124;
    }

    else
    {
      v126 = 0;
    }

    v181 = v126;
    v127 = 0xE000000000000000;
    if (v125)
    {
      v127 = v125;
    }

    v177 = v127;
    sub_100168088(&unk_100574680, &qword_100401740);
    v128 = swift_allocObject();
    *(v128 + 16) = v94[123];
    *(v128 + 32) = v120;
    v129 = v120;
    Shelf.title.getter();
    v130 = sub_100168088(&unk_100573FE0, &unk_100401748);
    (*(*(v130 - 8) + 56))(v201, 1, 1, v130);
    v131 = type metadata accessor for ArtworkModel();
    (*(*(v131 - 8) + 56))(v202, 1, 1, v131);
    sub_10019A068(v209, v212, v211, v210);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v225) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v132 = v178;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100243240(0, (v9[2] + 1), 1, v9);
    }

    v134 = v9[2];
    v133 = v9[3];
    v94 = &unk_100400000;
    if (v134 >= v133 >> 1)
    {
      v9 = sub_100243240((v133 > 1), v134 + 1, 1, v9);
    }

    v9[2] = (v134 + 1);
    (*(v205 + 32))(v9 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v134, v132, v206);
  }

  v135 = v194;
  v136 = *(Shelf.items.getter() + 16);

  if (v136)
  {
    v137 = static SearchResultsGroupID.channels.getter();
    v197 = v138;
    v198 = v137;
    v139 = Shelf.title.getter();
    if (v140)
    {
      v141 = v139;
    }

    else
    {
      v141 = 0;
    }

    v181 = v141;
    v142 = 0xE000000000000000;
    if (v140)
    {
      v142 = v140;
    }

    v178 = v142;
    sub_100168088(&unk_100574680, &qword_100401740);
    v143 = swift_allocObject();
    *(v143 + 16) = v94[123];
    *(v143 + 32) = v135;
    v144 = v135;
    Shelf.title.getter();
    v145 = sub_100168088(&unk_100573FE0, &unk_100401748);
    (*(*(v145 - 8) + 56))(v201, 1, 1, v145);
    v146 = type metadata accessor for ArtworkModel();
    (*(*(v146 - 8) + 56))(v202, 1, 1, v146);
    sub_10019A068(v209, v212, v211, v210);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v225) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v147 = v179;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100243240(0, (v9[2] + 1), 1, v9);
    }

    v149 = v9[2];
    v148 = v9[3];
    v94 = &unk_100400000;
    if (v149 >= v148 >> 1)
    {
      v9 = sub_100243240((v148 > 1), v149 + 1, 1, v9);
    }

    v9[2] = (v149 + 1);
    (*(v205 + 32))(v9 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v149, v147, v206);
  }

  v150 = v193;
  v151 = *(Shelf.items.getter() + 16);

  if (v151)
  {
    v152 = static SearchResultsGroupID.categories.getter();
    v197 = v153;
    v198 = v152;
    v154 = Shelf.title.getter();
    if (v155)
    {
      v156 = v154;
    }

    else
    {
      v156 = 0;
    }

    v181 = v156;
    v157 = 0xE000000000000000;
    if (v155)
    {
      v157 = v155;
    }

    v179 = v157;
    sub_100168088(&unk_100574680, &qword_100401740);
    v158 = swift_allocObject();
    *(v158 + 16) = v94[123];
    *(v158 + 32) = v150;
    v159 = v150;
    Shelf.title.getter();
    v160 = sub_100168088(&unk_100573FE0, &unk_100401748);
    (*(*(v160 - 8) + 56))(v201, 1, 1, v160);
    v161 = type metadata accessor for ArtworkModel();
    (*(*(v161 - 8) + 56))(v202, 1, 1, v161);
    sub_10019A068(v209, v212, v211, v210);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v225) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v162 = v180;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100243240(0, (v9[2] + 1), 1, v9);
    }

    v164 = v9[2];
    v163 = v9[3];
    if (v164 >= v163 >> 1)
    {
      v9 = sub_100243240((v163 > 1), v164 + 1, 1, v9);
    }

    v212 = v9;
    v9[2] = (v164 + 1);
    (*(v205 + 32))(v9 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v164, v162, v206);
  }

  else
  {
    v212 = v9;
  }

  *&v225 = static MetricsPageType.searchResults.getter();
  *(&v225 + 1) = v165;
  v166._countAndFlagsBits = 95;
  v166._object = 0xE100000000000000;
  String.append(_:)(v166);
  v167._countAndFlagsBits = v209;
  v167._object = v208;
  String.append(_:)(v167);
  PageID.init(with:)();
  static MetricsPageType.searchResults.getter();
  v168 = v185;
  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  v169 = v188;
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0, &unk_100402440);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v171 = v191;
  v170 = v192;
  (*(v191 + 16))(v182, v169, v192);
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v229 = v225;
  sub_100009104(&v229, &unk_100574650, &unk_1004023C0);
  v214 = v226;
  sub_100009104(&v214, &unk_100573A90, &unk_100401170);
  v213 = *(&v226 + 1);
  sub_100009104(&v213, &unk_100574660, &unk_1004023D0);
  sub_1000112B4(v227, v228);
  (*(v171 + 8))(v169, v170);
  (*(v187 + 8))(v168, v190);
  v172 = v184;
  GroupedSearchResultsPage.init(id:results:pageMetrics:)();
  Promise.resolve(_:)();

  return (*(v186 + 8))(v172, v189);
}

uint64_t sub_10019A068@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a1;
  v26 = a5;
  v8 = type metadata accessor for ScalarDictionary();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v23 - v11;
  v13 = type metadata accessor for MetricsPageFields();
  v27 = *(v13 - 8);
  v28 = v13;
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetricsPageType.searchResults.getter();
  v16 = static MetricsField<>.searchTerm.getter();
  v18 = v17;
  v32 = &type metadata for String;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  sub_10016B7CC(&v30, v29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = &_swiftEmptyDictionarySingleton;
  sub_10019ACB0(v29, v16, v18, isUniquelyReferenced_nonNull_native);

  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0, &unk_100402440);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v21 = v24;
  v20 = v25;
  (*(v24 + 16))(v10, v12, v25);
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v29[0] = v30;
  sub_100009104(v29, &unk_100574650, &unk_1004023C0);
  v36 = v31;
  sub_100009104(&v36, &unk_100573A90, &unk_100401170);
  v35 = v32;
  sub_100009104(&v35, &unk_100574660, &unk_1004023D0);
  sub_1000112B4(v33, v34);
  (*(v21 + 8))(v12, v20);
  return (*(v27 + 8))(v15, v28);
}

BOOL sub_10019A40C(uint64_t a1)
{
  sub_10019FA64();
  v1 = StringProtocol.localizedLowercase.getter();
  v3 = v2;
  LegacyLockup.title.getter();
  if (!v4 || (StringProtocol.localizedLowercase.getter(), , v5._countAndFlagsBits = v1, v5._object = v3, v6 = String.hasPrefix(_:)(v5), , !v6))
  {
    LegacyLockup.title.getter();
    if (v10)
    {
      StringProtocol.localizedLowercase.getter();

      v11._countAndFlagsBits = v1;
      v11._object = v3;
      v12 = String.hasPrefix(_:)(v11);

      if (v12)
      {
        return 0;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

  LegacyLockup.title.getter();
  if (!v7)
  {

    return 1;
  }

  StringProtocol.localizedLowercase.getter();

  v8._countAndFlagsBits = v1;
  v8._object = v3;
  v9 = String.hasPrefix(_:)(v8);

  if (!v9)
  {
    return 1;
  }

LABEL_10:
  type metadata accessor for LegacyEpisodeLockup();
  if (swift_dynamicCastClass())
  {
    v14 = 2;
  }

  else
  {
    type metadata accessor for LegacyChannelLockup();
    v14 = swift_dynamicCastClass() != 0;
  }

  if (swift_dynamicCastClass())
  {
    return v14 < 2;
  }

  type metadata accessor for LegacyChannelLockup();
  return swift_dynamicCastClass() && v14 == 0;
}

uint64_t sub_10019A634(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 >= v5[3] >> 1)
  {
    v5 = sub_100243268(isUniquelyReferenced_nonNull_native, v6 + 1, 1, v5);
  }

  sub_100252124(0, 0, 1, a3);

  v9 = 0;
  v10 = v5[2];
  while (v10 != v9)
  {
    if (v9 >= v5[2])
    {
      __break(1u);
      goto LABEL_27;
    }

    v11 = v5[v9 + 4];
    if (v11 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      ++v9;
      if (result)
      {
LABEL_9:

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001A7438(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1001A7438((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        _swiftEmptyArrayStorage[v13 + 4] = v11;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      ++v9;
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    v15 = round(a2 / v14);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    if (v15 <= -9.22337204e18)
    {
LABEL_29:
      __break(1u);
    }

    else if (v15 < 9.22337204e18)
    {
      v16 = 0;
      v17 = v15;
      v18 = _swiftEmptyArrayStorage;
      while (v16 < _swiftEmptyArrayStorage[2])
      {
        v19 = v16 + 1;
        v20 = _swiftEmptyArrayStorage[v16 + 4];

        v21 = sub_10019AAA8(v18, v20, v17, a2);

        v18 = v21;
        v16 = v19;
        if (v14 == v19)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    return result;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_25:

  return v21;
}

uint64_t sub_10019A8AC@<X0>(BOOL *a2@<X8>)
{
  sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
  result = NSManagedObjectContext.count<A>(for:)();
  *a2 = result > 0;
  return result;
}

id LibraryDataProvider.imageStore.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_100009F1C(0, &qword_100573E40, MTImageStore_ptr);
  result = [swift_getObjCClassFromMetadata() defaultStore];
  a1[3] = v2;
  a1[4] = &protocol witness table for MTImageStore;
  *a1 = result;
  return result;
}

void *sub_10019A994@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for TranscriptReportConcernURLBuilder();
  a1[4] = &off_1004E6A50;
  return BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_10019A9E8@<X0>(uint64_t *a2@<X8>)
{

  result = sub_100020360(v3);
  *a2 = result;
  return result;
}

void *sub_10019AA1C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for LibraryActionController();
  a1[4] = sub_10000F084(&qword_1005738A0, type metadata accessor for LibraryActionController, &unk_100410110);
  return BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_10019AAA8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v20 = a3;
    v21 = a4;
    result = _CocoaArrayWrapper.endIndex.getter();
    a4 = v21;
    a3 = v20;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(a4, result))
  {
    goto LABEL_30;
  }

  if (__OFADD__(a3, result % a3))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a3 + result % a3 >= a4 - result)
  {
    v5 = a4 - result;
  }

  else
  {
    v5 = a3 + result % a3;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v4 = a2 >> 62;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (result >= v10)
    {
      goto LABEL_19;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_33:
  v22 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v22 >= v5)
    {
      v23 = v5;
    }

    else
    {
      v23 = v22;
    }

    if (v22 < 0)
    {
      v23 = v5;
    }

    if (v5)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v10)
    {
LABEL_19:
      if ((a2 & 0xC000000000000001) != 0 && v10)
      {
        type metadata accessor for LegacyLockup();

        v11 = 0;
        do
        {
          v12 = v11 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v11);
          v11 = v12;
        }

        while (v10 != v12);
        if (!v4)
        {
          goto LABEL_24;
        }
      }

      else
      {

        if (!v4)
        {
LABEL_24:
          v13 = 0;
          v14 = a2 & 0xFFFFFFFFFFFFFF8;
          v15 = v14 + 32;
          v16 = (2 * v10) | 1;
LABEL_27:

          sub_1001CC958(v14, v15, v13, v16);
          swift_unknownObjectRelease();
          return a1;
        }
      }

      v14 = _CocoaArrayWrapper.subscript.getter();
      v15 = v17;
      v13 = v18;
      v16 = v19;
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
  return result;
}

_OWORD *sub_10019ACB0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100359C2C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10019AE6C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10019B010(v16, a4 & 1);
    v11 = sub_100359C2C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100004590(v22);

    return sub_10016B7CC(a1, v22);
  }

  else
  {
    sub_10019AE00(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10019AE00(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10016B7CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10019AE6C()
{
  v1 = v0;
  sub_100168088(&unk_100572CA0, &unk_1003FF2E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001B944(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10016B7CC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10019B010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100168088(&unk_100572CA0, &unk_1003FF2E0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10016B7CC(v24, v34);
      }

      else
      {
        sub_10001B944(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10016B7CC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_10019B2C8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100245200();
  sub_1001CA6FC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_10019B35C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100009F1C(0, &qword_100573F80, NSObject_ptr), (static NSObject.== infix(_:_:)() & 1) == 0) || *(a1 + 24) != *(a2 + 24) || (v5 = type metadata accessor for LibraryDataProvider._Station(0), type metadata accessor for StationSortOrder(), sub_10000F084(&qword_100573F88, &type metadata accessor for StationSortOrder, &protocol conformance descriptor for StationSortOrder), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v37 != v36) || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v18 = 0;
    return (v18 & 1);
  }

  v6 = *(a1 + *(v5 + 36));
  if (v6 >> 62)
  {
    v29 = *(a1 + *(v5 + 36));
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = v6;
    v33 = v5;
    result = sub_1001A7364(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v10 = 0;
    v34 = v8 & 0xC000000000000001;
    v11 = v7;
    do
    {
      if (v34)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v12 = Episode.uuid.getter();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1001A7364((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v11 != v10);
    v5 = v33;
  }

  v19 = *(a2 + *(v5 + 36));
  if (v19 >> 62)
  {
    v31 = *(a2 + *(v5 + 36));
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v31;
    v20 = v32;
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
LABEL_35:
    v18 = sub_100195EC0(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

    return (v18 & 1);
  }

  v21 = v19;
  result = sub_1001A7364(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v35 = v21 & 0xC000000000000001;
    do
    {
      if (v35)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v23 = Episode.uuid.getter();
      v25 = v24;

      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_1001A7364((v26 > 1), v27 + 1, 1);
      }

      ++v22;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
    }

    while (v20 != v22);
    goto LABEL_35;
  }

LABEL_39:
  __break(1u);
  return result;
}

id _s8Podcasts19LibraryDataProviderC35handleEventsForBackgroundURLSession10identifier7handlerSbSS_yyctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009F1C(0, &qword_1005742D0, MTLegacyDownloadManagerProvider_ptr);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 downloadManager];

  v8 = String._bridgeToObjectiveC()();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F038;
  v12[3] = &unk_1004E1ED8;
  v9 = _Block_copy(v12);

  v10 = [v7 handleEventsForBackgroundURLSession:v8 handler:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t _s8Podcasts19LibraryDataProviderC12fetchEpisode4with9JetEngine7PromiseCySo9MTEpisodeCSgG0A10Foundation6AdamIDV_tF_0(uint64_t a1)
{
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v3 = &v7 - v2;
  sub_100168088(&unk_100573A50, &qword_100401138);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v4 = Promise.init(signpost:log:metadata:logResult:)();
  result = type metadata accessor for CoreDataFetcher();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

    static CoreDataFetcher.fetchEpisode(contentId:guid:title:pubDate:podcastUuid:completion:)();

    sub_100009104(v3, &qword_100574760, &unk_1003FEB60);
    return v4;
  }

  return result;
}

uint64_t sub_10019BA30()
{
  v1 = *(type metadata accessor for StationListOptions() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10018C78C(v2);
}

unint64_t sub_10019BAC4()
{
  result = qword_100573B08;
  if (!qword_100573B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573B08);
  }

  return result;
}

uint64_t _s8Podcasts19LibraryDataProviderC31seeAllEpisodesSettingsPublisher4uuid06filterI07Combine03AnyI0Vy0A10Foundation011EpisodeListH0Vs5NeverOGSS_AIyAJ0O10UserFilterOANGtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v4 = sub_100168088(&qword_100574250, &qword_1004018B8);
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  __chkstk_darwin();
  v7 = &v22 - v6;
  v27 = sub_100168088(&qword_100574258, &qword_1004018C0);
  v29 = *(v27 - 8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v26 = sub_100168088(&qword_100574260, &qword_1004018C8);
  v28 = *(v26 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  type metadata accessor for CoreDataFetcher();
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)();

  v30 = a3;
  v31 = v13;
  sub_100168088(&qword_100574268, &qword_1004018D0);
  sub_100168088(&qword_100574270, &qword_1004018D8);
  sub_100009FAC(&qword_100574278, &qword_100574268, &qword_1004018D0, &protocol conformance descriptor for Future<A, B>);
  sub_100009FAC(&qword_100574280, &qword_100574270, &qword_1004018D8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.combineLatest<A>(_:)();

  v14 = swift_allocObject();
  v15 = v22;
  *(v14 + 16) = v23;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1001A05A0;
  *(v16 + 24) = v14;
  type metadata accessor for EpisodeListSettings();
  sub_100009FAC(&qword_100574288, &qword_100574250, &qword_1004018B8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);

  v17 = v24;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v7, v17);
  sub_100009FAC(&qword_100574290, &qword_100574258, &qword_1004018C0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000F084(&qword_100573CA8, &type metadata accessor for EpisodeListSettings, &protocol conformance descriptor for EpisodeListSettings);
  v18 = v27;
  Publisher<>.removeDuplicates()();
  (*(v29 + 8))(v9, v18);
  sub_100009FAC(&qword_100574298, &qword_100574260, &qword_1004018C8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v19 = v26;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v28 + 8))(v11, v19);
  return v20;
}

void sub_10019C0A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 3u)
  {
    if (a9 >= 4u)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a9 <= 6u)
  {
    if (a9 != 4)
    {
      if (a9 != 5)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (a9 == 7)
  {
LABEL_12:

    return;
  }

  if (a9 != 8)
  {
    if (a9 != 9)
    {
      return;
    }

    goto LABEL_12;
  }

  v9 = a4;

  sub_10019C1BC(a3, v9);
}

uint64_t sub_10019C1BC(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t sub_10019C2C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t _s8Podcasts19LibraryDataProviderC26fetchImageDownloadObserver9JetEngine7PromiseCy8ShelfKit0fgH8Protocol_pGyF_0()
{
  sub_100168088(&qword_100573F98, &unk_100401710);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v0 = Promise.init(signpost:log:metadata:logResult:)();
  v1 = type metadata accessor for ImageDownloadObserver();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = qword_100572850;

  if (v4 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v2 selector:"notificationFiredWithNote:" name:qword_100580590 object:0];

  v6[3] = v1;
  v6[4] = sub_10000F084(&unk_100573FA0, type metadata accessor for ImageDownloadObserver, &unk_10040E328);
  v6[0] = v2;
  Promise.resolve(_:)();
  sub_100004590(v6);
  return v0;
}

void sub_10019C4E8(uint64_t a1)
{
  sub_100009F1C(319, &unk_100573F30, NSManagedObjectID_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StationSortOrder();
    if (v2 <= 0x3F)
    {
      sub_100009F1C(319, &qword_1005751F0, NSPredicate_ptr);
      if (v3 <= 0x3F)
      {
        sub_100009E94(319, &unk_100573F40, &type metadata accessor for Episode, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10019C60C(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = a2;
  v5 = type metadata accessor for EpisodeListSettings();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v34 = v7;
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100574198, &qword_100401858);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  __chkstk_darwin();
  v43 = v29 - v11;
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v47 = 0xD000000000000026;
  v48 = 0x80000001004662D0;
  EpisodeListSettings.listType.getter();
  v12 = EpisodeListType.description.getter();
  v14 = v13;
  sub_100018888(v49);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 93;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v41 = v48;
  v42 = v47;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v18;
  v40 = v17;
  v38 = EpisodeListSettings.predicate.getter();
  v36 = a1;
  EpisodeListSettings.sort.getter();
  v37 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v32 = static OS_dispatch_queue.main.getter();
  v19 = v6;
  v35 = *(v6 + 16);
  v30 = v8;
  v31 = v5;
  v35(v8, a1, v5);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v33 = *(v19 + 32);
  v33(v21 + v20, v8, v5);
  type metadata accessor for LibraryEpisodeLockup();
  v29[1] = a3;
  v29[2] = sub_100168088(&qword_1005741A0, &qword_100401860);
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  sub_1001A02E0(&qword_1005741A8, &qword_1005741A0, &qword_100401860);
  v22 = v43;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v23 = v30;
  v24 = v31;
  v35(v30, v36, v31);
  v25 = swift_allocObject();
  v33(v25 + v20, v23, v24);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_1005741B0, &qword_100574198, &qword_100401858, &protocol conformance descriptor for FetchedResultsSectionedPublisher<A, B, C>);
  v26 = v45;
  v27 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v46 + 8))(v22, v26);
  return v27;
}

uint64_t sub_10019CAE8(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v5 = type metadata accessor for EpisodeListSettings();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v29 = v7;
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100574198, &qword_100401858);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  __chkstk_darwin();
  v38 = v24 - v11;
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v42 = 0xD00000000000001ALL;
  v43 = 0x8000000100466210;
  EpisodeListSettings.listType.getter();
  v12._countAndFlagsBits = EpisodeListType.description.getter();
  String.append(_:)(v12);

  sub_100018888(v44);
  v36 = v43;
  v37 = v42;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v14;
  v35 = v13;
  v33 = EpisodeListSettings.predicate.getter();
  v31 = a1;
  EpisodeListSettings.sort.getter();
  v32 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v30 = *(v6 + 16);
  v25 = v8;
  v26 = v5;
  v30(v8, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v28 = *(v6 + 32);
  v28(v16 + v15, v8, v5);
  type metadata accessor for LibraryEpisodeLockup();
  v24[1] = a3;
  v24[2] = sub_100168088(&qword_1005741A0, &qword_100401860);
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  sub_1001A02E0(&qword_1005741A8, &qword_1005741A0, &qword_100401860);
  v17 = v38;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v18 = v25;
  v19 = v26;
  v30(v25, v31, v26);
  v20 = swift_allocObject();
  v28(v20 + v15, v18, v19);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_1005741B0, &qword_100574198, &qword_100401858, &protocol conformance descriptor for FetchedResultsSectionedPublisher<A, B, C>);
  v21 = v40;
  v22 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v41 + 8))(v17, v21);
  return v22;
}

uint64_t sub_10019CFA8(Swift::String *a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v30 = a2;
  v27 = *(type metadata accessor for LibraryDataProvider._Station(0) - 8);
  __chkstk_darwin();
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&unk_100574010, &unk_100401770);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  __chkstk_darwin();
  v28 = v26 - v8;
  sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  *(v9 + 56) = sub_100009F1C(0, &unk_100573F30, NSManagedObjectID_ptr);
  *(v9 + 64) = sub_100024384(&qword_100574020, &unk_100573F30, NSManagedObjectID_ptr, &protocol conformance descriptor for NSObject);
  *(v9 + 32) = countAndFlagsBits;
  v11 = countAndFlagsBits;
  v12 = NSPredicate.init(format:_:)();
  v26[4] = sub_100009F1C(0, &qword_100574028, MTPodcastPlaylistSettings_ptr);
  StationSortOrder.playlistContainerOrder.getter();
  v26[5] = static MTPodcastPlaylistSettings.sortDescriptorsForGroupedStation(orderedBy:)();
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v33 = 0xD000000000000026;
  v34 = 0x8000000100466180;
  String.append(_:)(*a1);
  v26[2] = v34;
  v26[3] = v33;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26[0] = v14;
  v26[1] = v13;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v15 = v12;
  static OS_dispatch_queue.main.getter();
  v16 = v5;
  sub_1001A05FC(a1, v5, type metadata accessor for LibraryDataProvider._Station);
  v17 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v18 = swift_allocObject();
  sub_1001A06C0(v16, v18 + v17, type metadata accessor for LibraryDataProvider._Station);
  type metadata accessor for LibraryShowLockup();
  v19 = v29;
  v20 = v28;
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_1001A05FC(a1, v16, type metadata accessor for LibraryDataProvider._Station);
  v21 = swift_allocObject();
  sub_1001A06C0(v16, v21 + v17, type metadata accessor for LibraryDataProvider._Station);
  sub_100168088(&qword_100573AA0, &qword_100401180);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100574030, &unk_100574010, &unk_100401770, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v22 = v31;
  v23 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

  (*(v32 + 8))(v20, v22);
  v33 = v23;
  sub_100168088(&qword_100573D48, &qword_100401358);
  sub_100009FAC(&qword_100573FF8, &qword_100573D48, &qword_100401358, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v24 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();

  return v24;
}

uint64_t sub_10019D4B4(Swift::String *a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v26 = a2;
  v4 = (type metadata accessor for LibraryDataProvider._Station(0) - 8);
  v5 = *v4;
  v6 = *(*v4 + 64);
  __chkstk_darwin();
  v7 = sub_100168088(&unk_100573C10, &qword_1004012B8);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  __chkstk_darwin();
  v24 = v23 - v9;
  v23[5] = sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  StationSortOrder.playlistContainerOrder.getter();
  v23[6] = static MTEpisode.sortDescriptorsForUngroupedStation(orderedBy:)();
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v29 = 0xD00000000000001FLL;
  v30 = 0x80000001004661D0;
  String.append(_:)(*a1);
  v23[3] = v30;
  v23[4] = v29;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23[1] = v11;
  v23[2] = v10;
  v12 = *(&a1->_countAndFlagsBits + v4[10]);
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v13 = v12;
  static OS_dispatch_queue.main.getter();
  sub_1001A05FC(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LibraryDataProvider._Station);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1001A06C0(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LibraryDataProvider._Station);
  type metadata accessor for LibraryEpisodeLockup();
  v16 = v25;
  v17 = v24;
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_1001A05FC(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LibraryDataProvider._Station);
  v18 = swift_allocObject();
  sub_1001A06C0(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v14, type metadata accessor for LibraryDataProvider._Station);
  sub_100168088(&qword_100573A70, &unk_100401150);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100573C20, &unk_100573C10, &qword_1004012B8, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v19 = v27;
  v20 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

  (*(v28 + 8))(v17, v19);
  v29 = v20;
  sub_100168088(&qword_100573D48, &qword_100401358);
  sub_100009FAC(&qword_100573FF8, &qword_100573D48, &qword_100401358, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v21 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();

  return v21;
}

uint64_t sub_10019D8D8(void *a1)
{
  sub_100168088(&qword_100573A78, &qword_10040FDF0);
  __chkstk_darwin();
  v3 = v47 - v2;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v5 = v47 - v4;
  v6 = sub_100168088(&qword_100574060, &qword_1004017A8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v63 = v47 - v8;
  v62 = sub_100168088(&qword_100574068, &qword_1004017B0);
  v61 = *(v62 - 8);
  __chkstk_darwin();
  v59 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = v47 - v10;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v58 = v47 - v11;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v55 = v47 - v12;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v51 = v47 - v13;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v49 = v47 - v14;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v48 = v47 - v15;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v52 = v47 - v16;
  v57 = type metadata accessor for ModernShelf();
  v56 = *(v57 - 8);
  __chkstk_darwin();
  v53 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = v47 - v18;
  v54 = type metadata accessor for ModernShelf.ItemPresentation();
  v67 = *(v54 - 8);
  __chkstk_darwin();
  v50 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = v47 - v20;
  ShelfIDBuilder.init(named:)();
  ShelfIDBuilder.addingAttribute(_:named:)();

  v22 = ShelfIDBuilder.build()();
  v47[2] = v22._countAndFlagsBits;
  v47[1] = v22._object;

  LOBYTE(v72) = 1;
  v66 = v21;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v23 = *(a1 + *(type metadata accessor for LibraryDataProvider._Station(0) + 36));
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = _swiftEmptyArrayStorage;
  v65 = v6;
  v64 = v7;
  if (v24)
  {
    *&v69 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v24 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v27;
      v28 = type metadata accessor for EpisodeListSettings();
      (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      v29 = type metadata accessor for SectionContext();
      (*(*(v29 - 8) + 56))(v3, 1, 1, v29);
      static MetricsDataConfiguration.default.getter();
      dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
      v79 = v72;
      sub_100009104(&v79, &unk_100574650, &unk_1004023C0);
      v78 = v73;
      sub_100009104(&v78, &unk_100573A90, &unk_100401170);
      v77 = v74;
      sub_100009104(&v77, &unk_100574660, &unk_1004023D0);
      sub_1000112B4(v75, v76);

      sub_100009104(v3, &qword_100573A78, &qword_10040FDF0);
      sub_100009104(v5, &unk_100573A80, &unk_100401160);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v24 != v27);
    v25 = v69;
  }

  v30 = type metadata accessor for ActionMenu();
  (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
  v31 = type metadata accessor for Header.PrimaryAction();
  (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
  v32 = type metadata accessor for ArtworkModel();
  (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v33 = v54;
  (*(v67 + 16))(v50, v66, v54);
  sub_1001A4A7C(v25);
  v34 = type metadata accessor for URL();
  (*(*(v34 - 8) + 56))(v55, 1, 1, v34);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v35 = v58;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v36 = type metadata accessor for ImpressionMetrics();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v68;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  v38 = v56;
  v39 = v57;
  (*(v56 + 16))(v53, v37, v57);
  if (v25 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v40 = v65;
  v41 = v64;

  v42 = v60;
  FRPOutput.init(content:hasMore:totalCount:)();
  v43 = v61;
  v44 = v62;
  (*(v61 + 16))(v59, v42, v62);
  v45 = v63;
  Just.init(_:)();
  sub_100009FAC(&qword_100574070, &qword_100574060, &qword_1004017A8, &protocol conformance descriptor for Just<A>);
  v46 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v41 + 8))(v45, v40);
  (*(v43 + 8))(v42, v44);
  (*(v38 + 8))(v68, v39);
  (*(v67 + 8))(v66, v33);
  return v46;
}

uint64_t sub_10019E508(char *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v25 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_1001D77EC(v25);
  }

  v22 = v7;
  *v7 = v25;
  v9 = v25 + 16;
  v10 = *(v25 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v25[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 8 * *v13);
      v18 = (v11 + 8 * *v16);
      v7 = (v11 + 8 * v17);

      sub_10019E818(__dst, v18, v7, a2);
      v6 = v12;

      if (v12)
      {
        *v22 = v25;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v25;
    __break(1u);
  }

  return result;
}

Swift::Int sub_10019E6B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for LegacyLockup();
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v9;

      sub_10019EAB8(v11, v12, a1, v8, a2, a3);

      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_10019F624(0, v6, 1, a1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_10019E818(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v20 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v20 > v6)
    {
      v29 = v4;
LABEL_27:
      v21 = v20 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = v5 + 8;
        v22 -= 8;
        v24 = v21;

        v26 = sub_10019A40C(v25);

        if (v26)
        {
          v27 = v24;
          if (v23 != v20)
          {
            *v5 = *v24;
          }

          v4 = v29;
          if (v14 <= v29 || (v20 = v27, v27 <= v6))
          {
            v20 = v27;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v23 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
        v21 = v24;
      }

      while (v22 > v29);
      v14 = v22;
      v4 = v29;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      while (1)
      {

        v17 = sub_10019A40C(v16);

        if (!v17)
        {
          break;
        }

        v18 = v15;
        v19 = v6 == v15;
        v15 += 8;
        if (!v19)
        {
          goto LABEL_17;
        }

LABEL_18:
        v6 += 8;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_20;
        }
      }

      v18 = v4;
      v19 = v6 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v18;
      goto LABEL_18;
    }

LABEL_20:
    v20 = v6;
  }

LABEL_38:
  if (v20 != v4 || v20 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v20, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10019EAB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v132 = _swiftEmptyArrayStorage;
  v7 = a3[1];
  if (v7 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v126 = a6;
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v115 = v9;
        v12 = v8;
        v13 = *a3;

        v128 = sub_10019A40C(v14);

        v11 = v12 + 2;
        if (v12 + 2 < v7)
        {
          sub_10019FA64();
          v15 = v13 + 8 * v12 + 16;
          v124 = v7;
          while (1)
          {
            v18 = v11;

            v19 = StringProtocol.localizedLowercase.getter();
            v21 = v20;
            LegacyLockup.title.getter();
            if (v22 && (StringProtocol.localizedLowercase.getter(), , v23._countAndFlagsBits = v19, v23._object = v21, v24 = String.hasPrefix(_:)(v23), , v24))
            {
              LegacyLockup.title.getter();
              if (!v25)
              {

LABEL_28:
                v17 = v124;
                v11 = v18;
                if (!v128)
                {
                  v10 = v12;
                  v9 = v115;
                  goto LABEL_41;
                }

                goto LABEL_9;
              }

              StringProtocol.localizedLowercase.getter();

              v26._countAndFlagsBits = v19;
              v26._object = v21;
              v27 = String.hasPrefix(_:)(v26);

              if (!v27)
              {

                goto LABEL_28;
              }
            }

            else
            {
              LegacyLockup.title.getter();
              if (v28)
              {
                StringProtocol.localizedLowercase.getter();

                v29._countAndFlagsBits = v19;
                v29._object = v21;
                v30 = String.hasPrefix(_:)(v29);

                if (v30)
                {

                  goto LABEL_25;
                }
              }

              else
              {
              }
            }

            type metadata accessor for LegacyEpisodeLockup();
            if (swift_dynamicCastClass())
            {
              v31 = 2;
            }

            else
            {
              type metadata accessor for LegacyChannelLockup();
              v31 = swift_dynamicCastClass() != 0;
            }

            if (swift_dynamicCastClass())
            {

              v16 = v31 < 2;
              goto LABEL_8;
            }

            type metadata accessor for LegacyChannelLockup();
            v32 = swift_dynamicCastClass();

            if (v32)
            {
              v16 = v31 == 0;
LABEL_8:
              v11 = v18;
              v17 = v124;
              if ((v128 ^ v16))
              {
                break;
              }

              goto LABEL_9;
            }

LABEL_25:
            v11 = v18;
            v17 = v124;
            if (v128)
            {
              v10 = v12;
              v9 = v115;
              if (v18 < v12)
              {
                goto LABEL_159;
              }

              goto LABEL_34;
            }

LABEL_9:
            ++v11;
            v15 += 8;
            if (v17 == v11)
            {
              v11 = v17;
              break;
            }
          }
        }

        v10 = v12;
        v9 = v115;
        if (v128)
        {
          if (v11 < v12)
          {
            goto LABEL_159;
          }

LABEL_34:
          if (v10 < v11)
          {
            v33 = 8 * v11 - 8;
            v34 = 8 * v10;
            v35 = v11;
            v36 = v10;
            do
            {
              if (v36 != --v35)
              {
                v38 = *a3;
                if (!*a3)
                {
                  goto LABEL_164;
                }

                v37 = *(v38 + v34);
                *(v38 + v34) = *(v38 + v33);
                *(v38 + v33) = v37;
              }

              ++v36;
              v33 -= 8;
              v34 += 8;
            }

            while (v36 < v35);
          }
        }
      }

LABEL_41:
      v39 = a3[1];
      if (v11 >= v39)
      {
        goto LABEL_79;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_158;
      }

      if (v11 - v10 >= a4)
      {
        goto LABEL_79;
      }

      if (__OFADD__(v10, a4))
      {
        goto LABEL_160;
      }

      v40 = v10 + a4 >= v39 ? a3[1] : v10 + a4;
      if (v40 < v10)
      {
        break;
      }

      if (v11 == v40)
      {
        goto LABEL_79;
      }

      v116 = v9;
      v41 = *a3;
      sub_10019FA64();
      v125 = v41;
      v42 = (v41 + 8 * v11 - 8);
      v43 = v10 - v11;
      while (2)
      {
        v119 = v42;
        v120 = v11;
        v118 = v43;
        while (1)
        {
          v130 = v43;

          v44 = StringProtocol.localizedLowercase.getter();
          v46 = v45;
          LegacyLockup.title.getter();
          if (!v47)
          {
            break;
          }

          StringProtocol.localizedLowercase.getter();

          v48._countAndFlagsBits = v44;
          v48._object = v46;
          v49 = String.hasPrefix(_:)(v48);

          if (!v49)
          {
            break;
          }

          LegacyLockup.title.getter();
          if (v50)
          {
            StringProtocol.localizedLowercase.getter();

            v51._countAndFlagsBits = v44;
            v51._object = v46;
            v52 = String.hasPrefix(_:)(v51);

            if (v52)
            {
              type metadata accessor for LegacyEpisodeLockup();
              if (swift_dynamicCastClass())
              {
                v53 = 2;
                goto LABEL_70;
              }

              goto LABEL_69;
            }
          }

          else
          {
          }

LABEL_75:
          if (!v125)
          {
            goto LABEL_162;
          }

          v57 = *v42;
          *v42 = v42[1];
          v42[1] = v57;
          --v42;
          v43 = v130 + 1;
          if (v130 == -1)
          {
            goto LABEL_52;
          }
        }

        LegacyLockup.title.getter();
        if (v54)
        {
          StringProtocol.localizedLowercase.getter();

          v55._countAndFlagsBits = v44;
          v55._object = v46;
          v56 = String.hasPrefix(_:)(v55);

          if (v56)
          {
            goto LABEL_51;
          }
        }

        else
        {
        }

        type metadata accessor for LegacyEpisodeLockup();
        if (swift_dynamicCastClass())
        {
          v53 = 2;
          goto LABEL_70;
        }

LABEL_69:
        type metadata accessor for LegacyChannelLockup();
        v53 = swift_dynamicCastClass() != 0;
LABEL_70:
        if (swift_dynamicCastClass())
        {

          if (v53 >= 2)
          {
            goto LABEL_52;
          }

          goto LABEL_75;
        }

        type metadata accessor for LegacyChannelLockup();
        if (swift_dynamicCastClass())
        {

          if (v53)
          {
            goto LABEL_52;
          }

          goto LABEL_75;
        }

LABEL_51:

LABEL_52:
        v11 = v120 + 1;
        v42 = v119 + 1;
        v43 = v118 - 1;
        if (v120 + 1 != v40)
        {
          continue;
        }

        break;
      }

      v11 = v40;
      v9 = v116;
LABEL_79:
      if (v11 < v10)
      {
        goto LABEL_157;
      }

      v121 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1001D7800(0, *(v9 + 2) + 1, 1, v9);
      }

      v59 = *(v9 + 2);
      v58 = *(v9 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v9 = sub_1001D7800((v58 > 1), v59 + 1, 1, v9);
      }

      *(v9 + 2) = v60;
      v61 = v9 + 32;
      v62 = &v9[16 * v59 + 32];
      *v62 = v10;
      *(v62 + 1) = v121;
      v131 = *a1;
      if (!*a1)
      {
        goto LABEL_165;
      }

      if (v59)
      {
        v129 = v9 + 32;
        while (1)
        {
          v63 = v60 - 1;
          if (v60 >= 4)
          {
            break;
          }

          if (v60 == 3)
          {
            v64 = *(v9 + 4);
            v65 = *(v9 + 5);
            v74 = __OFSUB__(v65, v64);
            v66 = v65 - v64;
            v67 = v74;
LABEL_100:
            if (v67)
            {
              goto LABEL_147;
            }

            v80 = &v9[16 * v60];
            v82 = *v80;
            v81 = *(v80 + 1);
            v83 = __OFSUB__(v81, v82);
            v84 = v81 - v82;
            v85 = v83;
            if (v83)
            {
              goto LABEL_149;
            }

            v86 = &v61[16 * v63];
            v88 = *v86;
            v87 = *(v86 + 1);
            v74 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v74)
            {
              goto LABEL_152;
            }

            if (__OFADD__(v84, v89))
            {
              goto LABEL_154;
            }

            if (v84 + v89 >= v66)
            {
              if (v66 < v89)
              {
                v63 = v60 - 2;
              }

              goto LABEL_122;
            }

            goto LABEL_115;
          }

          if (v60 < 2)
          {
            goto LABEL_155;
          }

          v90 = &v9[16 * v60];
          v92 = *v90;
          v91 = *(v90 + 1);
          v74 = __OFSUB__(v91, v92);
          v84 = v91 - v92;
          v85 = v74;
LABEL_115:
          if (v85)
          {
            goto LABEL_151;
          }

          v93 = &v61[16 * v63];
          v95 = *v93;
          v94 = *(v93 + 1);
          v74 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v74)
          {
            goto LABEL_153;
          }

          if (v96 < v84)
          {
            goto LABEL_3;
          }

LABEL_122:
          if (v63 - 1 >= v60)
          {
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          v101 = *a3;
          if (!*a3)
          {
            goto LABEL_163;
          }

          v102 = v9;
          v103 = &v61[16 * v63 - 16];
          v104 = *v103;
          v105 = v63;
          v106 = &v61[16 * v63];
          v107 = *(v106 + 1);
          v108 = (v101 + 8 * *v103);
          v109 = (v101 + 8 * *v106);
          v110 = (v101 + 8 * v107);

          sub_10019E818(v108, v109, v110, v131);
          if (v123)
          {

            v132 = v102;
            goto LABEL_137;
          }

          if (v107 < v104)
          {
            goto LABEL_142;
          }

          v9 = v102;
          v111 = *(v102 + 2);
          if (v105 > v111)
          {
            goto LABEL_143;
          }

          *v103 = v104;
          *(v103 + 1) = v107;
          if (v105 >= v111)
          {
            goto LABEL_144;
          }

          v60 = v111 - 1;
          memmove(v106, v106 + 16, 16 * (v111 - 1 - v105));
          *(v102 + 2) = v111 - 1;
          v61 = v129;
          if (v111 <= 2)
          {
            goto LABEL_3;
          }
        }

        v68 = &v61[16 * v60];
        v69 = *(v68 - 8);
        v70 = *(v68 - 7);
        v74 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        if (v74)
        {
          goto LABEL_145;
        }

        v73 = *(v68 - 6);
        v72 = *(v68 - 5);
        v74 = __OFSUB__(v72, v73);
        v66 = v72 - v73;
        v67 = v74;
        if (v74)
        {
          goto LABEL_146;
        }

        v75 = &v9[16 * v60];
        v77 = *v75;
        v76 = *(v75 + 1);
        v74 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v74)
        {
          goto LABEL_148;
        }

        v74 = __OFADD__(v66, v78);
        v79 = v66 + v78;
        if (v74)
        {
          goto LABEL_150;
        }

        if (v79 >= v71)
        {
          v97 = &v61[16 * v63];
          v99 = *v97;
          v98 = *(v97 + 1);
          v74 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v74)
          {
            goto LABEL_156;
          }

          if (v66 < v100)
          {
            v63 = v60 - 2;
          }

          goto LABEL_122;
        }

        goto LABEL_100;
      }

LABEL_3:
      v8 = v121;
      v7 = a3[1];
      a6 = v126;
      if (v121 >= v7)
      {
        v132 = v9;
        goto LABEL_134;
      }
    }

LABEL_161:
    __break(1u);
LABEL_162:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_163:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_164:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_165:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_166:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  swift_bridgeObjectRetain_n();
LABEL_134:
  v112 = *a1;
  if (!*a1)
  {
    goto LABEL_166;
  }

  sub_10019E508(&v132, v112, a3, a5, a6);
  if (v123)
  {

LABEL_137:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_10019F624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v27 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    sub_10019FA64();
LABEL_6:
    v25 = v5;
    v26 = v4;
    v24 = v6;
    while (1)
    {
      v28 = v6;

      v7 = StringProtocol.localizedLowercase.getter();
      v9 = v8;
      LegacyLockup.title.getter();
      if (v10 && (StringProtocol.localizedLowercase.getter(), , v11._countAndFlagsBits = v7, v11._object = v9, v12 = String.hasPrefix(_:)(v11), , v12))
      {
        LegacyLockup.title.getter();
        if (!v13)
        {

LABEL_22:
          v20 = v28;
          goto LABEL_29;
        }

        StringProtocol.localizedLowercase.getter();

        v14._countAndFlagsBits = v7;
        v14._object = v9;
        v15 = String.hasPrefix(_:)(v14);

        if (!v15)
        {

          goto LABEL_22;
        }

        type metadata accessor for LegacyEpisodeLockup();
        if (swift_dynamicCastClass())
        {
          v16 = 2;
          goto LABEL_24;
        }
      }

      else
      {
        LegacyLockup.title.getter();
        if (v17)
        {
          StringProtocol.localizedLowercase.getter();

          v18._countAndFlagsBits = v7;
          v18._object = v9;
          v19 = String.hasPrefix(_:)(v18);

          if (v19)
          {
            goto LABEL_4;
          }
        }

        else
        {
        }

        type metadata accessor for LegacyEpisodeLockup();
        if (swift_dynamicCastClass())
        {
          v16 = 2;
          goto LABEL_24;
        }
      }

      type metadata accessor for LegacyChannelLockup();
      v16 = swift_dynamicCastClass() != 0;
LABEL_24:
      if (swift_dynamicCastClass())
      {

        v20 = v28;
        if (v16 >= 2)
        {
          goto LABEL_5;
        }
      }

      else
      {
        type metadata accessor for LegacyChannelLockup();
        if (!swift_dynamicCastClass())
        {
LABEL_4:

LABEL_5:
          v4 = v26 + 1;
          v5 = v25 + 1;
          v6 = v24 - 1;
          if (v26 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v20 = v28;
        if (v16)
        {
          goto LABEL_5;
        }
      }

LABEL_29:
      if (!v27)
      {
        __break(1u);
        return result;
      }

      v21 = *v5;
      *v5 = v5[1];
      v5[1] = v21;
      --v5;
      v22 = __CFADD__(v20, 1);
      v6 = v20 + 1;
      if (v22)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_10019F9A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001D7904(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_10019E6B0(v10, a2, a3);

  specialized ContiguousArray._endMutation()();
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_10019FA64()
{
  result = qword_10057D840;
  if (!qword_10057D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D840);
  }

  return result;
}

uint64_t sub_10019FAE8()
{
  v1 = (type metadata accessor for LibraryDataProvider._Station(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for StationSortOrder();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10019FD34(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100196EB8(a1, a2, v2 + v6, v9, v10, v12, v13);
}

uint64_t sub_10019FDFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10019FE38@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001957E8(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_10019FEF4@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_100195110(a1, v6, a2);
}

unint64_t sub_10019FFC0()
{
  result = qword_1005741C0;
  if (!qword_1005741C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005741C0);
  }

  return result;
}

unint64_t sub_1001A0058()
{
  result = qword_1005741E8;
  if (!qword_1005741E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005741E8);
  }

  return result;
}

uint64_t sub_1001A00AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1001973D4(a1, v6, a2);
}

uint64_t sub_1001A0148(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EpisodeListSettings() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001A0220(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EpisodeListSettings() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001A02E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A0348()
{
  v1 = type metadata accessor for Calendar();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for EpisodeListSettings();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1001A04A8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Calendar() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for EpisodeListSettings() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_1001A05DC(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t sub_1001A05FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A0664(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A06C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001A0728()
{
  result = qword_1005742B8;
  if (!qword_1005742B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005742B8);
  }

  return result;
}

id sub_1001A07B0()
{
  v1 = [*(v0 + 16) importContext];

  return v1;
}

id sub_1001A07E8()
{
  v1 = [*(v0 + 16) privateQueueContext];

  return v1;
}

void sub_1001A08A4()
{
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v2 = &v12[-v1];
  v3 = type metadata accessor for PresentationSource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001A0B84(v13);
  if (v14 != 3)
  {
    if (v14 < 3 || (v13[0] & 1) == 0)
    {
      v7 = &qword_100574578;
      v8 = &qword_100401AB0;
      v9 = v13;
LABEL_8:
      sub_100009104(v9, v7, v8);
      return;
    }

    sub_1000044A0(v0 + 4, v0[7]);
    dispatch thunk of LibraryActionControllerProtocol.unsubscribe(podcast:)();

    swift_beginAccess();
    if (!v0[3])
    {
      sub_100009104(v13, &qword_100574578, &qword_100401AB0);
      (*(v4 + 56))(v2, 1, 1, v3);
      goto LABEL_11;
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_100009104(v13, &qword_100574578, &qword_100401AB0);
LABEL_11:
      v7 = &unk_10057BB90;
      v8 = &unk_100402D60;
      v9 = v2;
      goto LABEL_8;
    }

    (*(v4 + 32))(v6, v2, v3);
    sub_1000044A0(v0 + 10, v0[13]);
    v10 = dispatch thunk of LibraryRemovalControllerProtocol.removalOptionsAfterUnfollow(uuid:)();
    if (v10)
    {
      v11 = v10;
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();
    }

    sub_100009104(v13, &qword_100574578, &qword_100401AB0);
    (*(v4 + 8))(v6, v3);
  }
}

void sub_1001A0B84(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShowOffer();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v22 - v9;
  __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(v1 + 16);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v13 + v14, v10, v15);
    sub_1001A15C4(v10, v12, v16);
    sub_1001A1560(v12, v8, v17);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v4 + 32))(v6, v8, v3);
      ShowOffer.adamId.getter();
      (*(v4 + 8))(v6, v3);
      v27 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    dispatch thunk of PodcastStateMachine.currentState.getter();
    v22 = v25;
    v23 = v24;
    v18 = v26;

    sub_1001A1628(v12, v21);
    v19 = v22;
    v20 = v23;
  }

  else
  {
    v18 = 0;
    v19 = xmmword_100401980;
    v20 = 0uLL;
  }

  *a1 = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = v18;
}

uint64_t sub_1001A0E18()
{

  sub_100004590((v0 + 32));

  sub_100004590((v0 + 80));
  v1 = OBJC_IVAR____TtC8Podcasts31UnsubscribePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsubscribePodcastContextAction(uint64_t a1)
{
  result = qword_100574458;
  if (!qword_100574458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A0F30(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001A1000()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x80000001004664A0;
  v1._countAndFlagsBits = 0xD000000000000015;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001A10C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts31UnsubscribePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001A1138@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.unsubscribe(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001A1214(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1001A12AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1001A1348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001A13A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001A1408()
{
  if (*(v0 + 16))
  {
    sub_1001A0B84(v3);
    if (v4 != 3)
    {
      if (v4 >= 3)
      {
        v1 = v3[0];
        sub_100009104(v3, &qword_100574578, &qword_100401AB0);
        if (v1)
        {
          return 1;
        }
      }

      else
      {
        sub_100009104(v3, &qword_100574578, &qword_100401AB0);
      }
    }
  }

  return 0;
}

uint64_t sub_1001A1494(uint64_t a1)
{
  result = sub_1001A151C(&unk_100582260, &unk_100401A20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A14D8(uint64_t a1)
{
  result = sub_1001A151C(&qword_100574570, &unk_100401A78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A151C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnsubscribePodcastContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A1560(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for PodcastContextActionDataType(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A15C4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for PodcastContextActionDataType(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A1628(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for PodcastContextActionDataType(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A1684@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for RootFlowController();
  swift_allocObject();
  v5 = a2;

  v6 = RootFlowController.init(rootViewController:asPartOf:)();

  result = static RootFlowController.shared.setter();
  *a3 = v6;
  a3[1] = &protocol witness table for BaseFlowController;
  return result;
}

uint64_t sub_1001A171C@<X0>(uint64_t *a2@<X8>)
{
  v3 = objc_allocWithZone(type metadata accessor for LibraryTabGroupManager());

  result = LibraryTabGroupManager.init(asPartOf:)();
  *a2 = result;
  return result;
}

void *sub_1001A1774@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for LibraryTabGroupManager();
  a1[4] = &protocol witness table for LibraryTabGroupManager;
  return BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_1001A17C8@<X0>(void *a2@<X8>)
{
  v3 = objc_allocWithZone(type metadata accessor for MenuBarController());

  v5 = sub_100023468(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1001A1828@<X0>(void *a1@<X8>)
{
  type metadata accessor for MenuBarController();
  BaseObjectGraph.inject<A>(_:)();
  result = sub_1001A22CC(&qword_1005745E8, type metadata accessor for MenuBarController, &unk_100406C18);
  *a1 = v3;
  a1[1] = result;
  return result;
}

void sub_1001A18AC(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [objc_opt_self() _currentTraitCollection];
  if (v5)
  {
    v6 = v5;
    UITraitCollection.interfaceMode.getter();

    type metadata accessor for ParentFlowController();
    swift_allocObject();

    v7 = ParentFlowController.init(asPartOf:interfaceMode:)();
    v8 = (a2 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_flowController);
    swift_beginAccess();
    *v8 = v7;
    v8[1] = &protocol witness table for BaseFlowController;

    swift_unknownObjectRelease();
    ParentFlowController.initializePageContextForMetrics()();
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1001A19A4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TabMenu.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static NavigationTab.== infix(_:_:)())
  {
    type metadata accessor for FlowNavigationController();

    return FlowNavigationController.__allocating_init(asPartOf:)();
  }

  else
  {
    v10 = static TabMenu.viewController(for:interfaceMode:using:asPartOf:)();
    if (v10)
    {
      v11 = v10;
      if ((NavigationTab.isStation.getter() & 1) == 0 && (static NavigationTab.== infix(_:_:)() & 1) == 0)
      {
        v12 = static TabMenu.allItems(group:)();
        v13 = *(v12 + 16);
        if (v13)
        {
          v31 = a1;
          v32 = a2;
          v33 = v11;
          v37 = _swiftEmptyArrayStorage;
          sub_1001A75D0(0, v13, 0);
          v14 = v37;
          v15 = v6 + 16;
          v16 = *(v6 + 16);
          v17 = *(v6 + 80);
          v30[1] = v12;
          v18 = v12 + ((v17 + 32) & ~v17);
          v34 = *(v15 + 56);
          v35 = v16;
          v36 = v15;
          v19 = (v15 - 8);
          do
          {
            v35(v8, v18, v5);
            v20 = TabMenu.Item.navigationTab.getter();
            (*v19)(v8, v5);
            v37 = v14;
            v22 = v14[2];
            v21 = v14[3];
            if (v22 >= v21 >> 1)
            {
              sub_1001A75D0((v21 > 1), v22 + 1, 1);
              v14 = v37;
            }

            v14[2] = v22 + 1;
            v14[v22 + 4] = v20;
            v18 += v34;
            --v13;
          }

          while (v13);

          v11 = v33;
          a1 = v31;
        }

        else
        {

          v14 = _swiftEmptyArrayStorage;
        }

        v37 = a1;
        __chkstk_darwin();
        v30[-2] = &v37;
        v24 = sub_1003ADF8C(sub_1001A2294, &v30[-4], v14);

        if ((v24 & 1) == 0)
        {
          type metadata accessor for FlowNavigationController();

          v25 = FlowNavigationController.__allocating_init(asPartOf:)();
          sub_100168088(&unk_100574680, &qword_100401740);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1004007B0;
          *(v26 + 32) = v11;
          sub_100009F1C(0, &qword_1005745E0, UIViewController_ptr);
          v27 = v25;
          v28 = v11;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v27 setViewControllers:isa];

          return v27;
        }
      }

      return v11;
    }

    else
    {
      v23 = objc_allocWithZone(UIViewController);

      return [v23 init];
    }
  }
}

uint64_t sub_1001A1DA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v29 = type metadata accessor for TabMenu.Item();
  v36 = *(v29 - 8);
  __chkstk_darwin();
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574580, &qword_100401AB8);
  BaseObjectGraph.inject<A>(_:)();
  v9 = v39[0];
  v8 = v39[1];
  v31 = sub_100168088(&qword_1005745B0, &qword_100401AD0);
  BaseObjectGraph.inject<A>(_:)();
  v32 = type metadata accessor for ParentFlowController();
  BaseObjectGraph.inject<A>(_:)();
  v10 = v38[0];
  v11 = &a1[OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_actionRunner];
  swift_beginAccess();
  *v11 = v9;
  *(v11 + 1) = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&a1[OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_objectGraph] = a4;

  v12 = TabMenu.Group.items(for:)();
  v13 = *(v12 + 16);
  if (v13)
  {
    v27[2] = v10;
    v27[3] = v9;
    v28 = a1;
    v38[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = *(v36 + 16);
    v35 = a4;
    v14 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v27[1] = v12;
    v15 = v12 + v14;
    v33 = *(v36 + 72);
    v36 += 16;
    v16 = (v36 - 8);
    v17 = v29;
    do
    {
      v34(v7, v15, v17);
      TabMenu.Item.tab(asPartOf:viewControllerProvider:)();
      (*v16)(v7, v17);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += v33;
      --v13;
    }

    while (v13);

    a1 = v28;
  }

  else
  {
  }

  sub_100009F1C(0, &qword_1005745C0, UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setTabs:isa];

  v19 = [a1 sidebar];
  sub_100004428(v39, v38);
  sub_100168088(&qword_1005745C8, &unk_100401AE8);
  if (swift_dynamicCast())
  {
    v20 = v37;
  }

  else
  {
    v20 = 0;
  }

  [v19 setDelegate:v20];
  swift_unknownObjectRelease();

  sub_100004428(v39, v38);
  sub_100168088(&unk_1005745D0, &qword_100401AF8);
  if (swift_dynamicCast())
  {
    v21 = v37;
  }

  else
  {
    v21 = 0;
  }

  [a1 setDelegate:v21];
  swift_unknownObjectRelease();
  v22 = static TabMenu.defaultTab.getter();
  type metadata accessor for BaseObjectGraph();
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of FlowController.change(tab:execute:popToRoot:userInitiated:suppressMetrics:objectGraph:)();

  sub_10002ACE0(v22);
  v23 = [a1 sidebar];
  v24 = objc_allocWithZone(type metadata accessor for SidebarProfileButton());

  v25 = SidebarProfileButton.init(asPartOf:)();
  [v23 setBottomBarView:v25];
  swift_unknownObjectRelease();

  return sub_100004590(v39);
}

uint64_t sub_1001A22CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MTPodcast.carPlayContentItemChildSortDescriptors.getter()
{
  v1 = [objc_opt_self() sortDescriptorsForPubDateAscending:{objc_msgSend(v0, "sortAscending")}];
  sub_100029528();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void __swiftcall MTPodcast.carPlayContentItemChildPredicate(forContext:)(NSPredicate_optional *__return_ptr retstr, NSManagedObjectContext forContext)
{
  v4 = [v2 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 predicateForAllEpisodesOnPodcastUuid:v5];

    v8 = [v6 predicateForEpisodeTypeFilter:5];
    v9 = [v7 AND:v8];

    v16 = v9;
    v10 = swift_allocObject();
    v10[2].super.isa = v2;
    v10[3].super.isa = forContext.super.isa;
    v10[4].super.isa = &v16;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001A27A0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_10002D7F8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002D904;
    aBlock[3] = &unk_1004E2178;
    v12 = _Block_copy(aBlock);
    v13 = v2;
    v14 = forContext.super.isa;

    [(objc_class *)v14 performBlockAndWait:v12];
    _Block_release(v12);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1001A25B8(void *a1, void *a2, void **a3)
{
  v6 = [a1 nextEpisodeUuid];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();
    v23 = [a2 episodeForUuid:v8];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v23 = 0;
  }

  [a1 hidesPlayedEpisodes];
  if (MTPodcastHidesPlayedEpisodesResolved())
  {
    v9 = *a3;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 predicateForVisuallyPlayed:0];
    v13 = [v11 AND:v12];

    v14 = *a3;
    *a3 = v13;
  }

  else
  {
    v15 = MTPodcast.seasonToShow(episodeToPlay:)();
    if (v16)
    {
      v14 = v23;
    }

    else
    {
      v17 = v15;
      v18 = *a3;
      v19 = objc_opt_self();
      v20 = v18;
      v21 = [v19 predicateForSeasonNumber:v17];
      v22 = [v20 AND:v21];

      v14 = *a3;
      *a3 = v22;
    }
  }
}

char *sub_1001A27AC(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver];

    v16 = 0;
    LODWORD(v6) = [v7 performFetch:&v16];

    v8 = v16;
    if (v6)
    {

      return v8;
    }

    else
    {
      v15[1] = v16;
      v9 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.database.getter();
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "unable to fetch channels %@", v12, 0xCu);
        sub_100009104(v13, &qword_100575B20, &qword_100401F90);
      }

      else
      {
      }

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

id sub_1001A2A68()
{
  [*&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver] setDelegate:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChannelListObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A2B8C(void *a1, uint64_t *a2)
{
  result = [a1 fetchedObjects];
  if (result)
  {
    v4 = result;
    sub_100009F1C(0, &qword_100573B10, MTChannel_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v6 < 0)
        {
          __break(1u);
          return result;
        }

        type metadata accessor for LegacyChannelLockup();
        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          static MetricsDataConfiguration.default.getter();
          sub_100357920(v9, 1, &v10);
          v17 = v10;
          sub_100009104(&v17, &unk_100574650, &unk_1004023C0);
          v16 = v11;
          sub_100009104(&v16, &unk_100573A90, &unk_100401170);
          v15 = v12;
          sub_100009104(&v15, &unk_100574660, &unk_1004023D0);
          sub_1000112B4(v13, v14);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v6 != v7);

        goto LABEL_13;
      }
    }

LABEL_13:
    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t (*sub_1001A2E20())()
{
  v1 = (*v0 + OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001A324C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2, v3);
  return v5;
}

uint64_t sub_1001A2EC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1001A3248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*v2 + OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  return sub_1000112B4(v8, v9);
}

void (*sub_1001A2F6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_1001A3138;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *(v4 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_1001A3044;
}

void sub_1001A3044(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1001A3100;
    }

    else
    {
      v4 = sub_1001A3248;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v2[5] + v2[6]);
  *v7 = v4;
  v7[1] = v6;
  swift_endAccess();

  free(v2);
}

uint64_t sub_1001A3100(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1001A3164()
{
  objc_sync_enter(v0);
  v1 = *&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver];
  v2 = sub_10002F748(v1);

  *&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_currentValue] = v2;

  objc_sync_exit(v0);
  v3 = &v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange];
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 1);
    sub_100013CB4(v5, v6);

    v5(v7);
    sub_1000112B4(v5, v6);
  }

  return result;
}

uint64_t sub_1001A3250(void *a1, int a2, uint64_t a3)
{
  v110 = a3;
  LODWORD(v114) = a2;
  v113 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v111 = v4;
  v112 = v5;
  __chkstk_darwin();
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v107 - v8;
  __chkstk_darwin();
  v107 = &v107 - v9;
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v107 - v12;
  __chkstk_darwin();
  v15 = &v107 - v14;
  __chkstk_darwin();
  v17 = &v107 - v16;
  __chkstk_darwin();
  v109 = &v107 - v18;
  _s27CarPlayEpisodeSubtitleStyleOMa(0);
  __chkstk_darwin();
  v20 = (&v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EpisodePlayState();
  __chkstk_darwin();
  v22 = (&v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A47B0(v3, v22, &type metadata accessor for EpisodePlayState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1001A4668(v22, v13);
        sub_1001A46D8(v13, v11);
        v24 = v111;
        v25 = v112;
        if ((*(v112 + 48))(v11, 1, v111) == 1)
        {
          sub_1001A4748(v13);
          sub_1001A4748(v11);
LABEL_24:
          v34 = _swiftEmptyArrayStorage;
          v30 = v114;
          goto LABEL_53;
        }

        v51 = v108;
        (*(v25 + 32))(v108, v11, v24);
        v115 = Date.friendlyDisplayString.getter();
        v116 = v52;
        sub_1001A0728();
        v53 = Collection.isNotEmpty.getter();

        v30 = v114;
        if (v53)
        {
          (*(v25 + 16))(v7, v51, v24);
          Date.friendlyDisplayString.getter();
          countAndFlagsBits = String.init(playedOn:dateString:)();
          object = v54;
        }

        else
        {
          v72 = [objc_opt_self() mainBundle];
          v118._object = 0xE000000000000000;
          v73._object = 0x80000001004665A0;
          v73._countAndFlagsBits = 0xD000000000000014;
          v74._countAndFlagsBits = 0;
          v74._object = 0xE000000000000000;
          v118._countAndFlagsBits = 0;
          v75 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, 0, v72, v74, v118);
          countAndFlagsBits = v75._countAndFlagsBits;
          object = v75._object;
        }

        v34 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
        v46 = *(v34 + 2);
        v76 = *(v34 + 3);
        v47 = v46 + 1;
        if (v46 >= v76 >> 1)
        {
          v34 = sub_100243134((v76 > 1), v46 + 1, 1, v34);
        }

        (*(v25 + 8))(v51, v24);
        sub_1001A4748(v13);
        goto LABEL_52;
      }

LABEL_23:
      sub_1001A4818(v22, &type metadata accessor for EpisodePlayState);
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_16:
    v38 = v22[1];
    v39 = v38 - *v22;
    if (v39 > 0.0)
    {
      v40 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:v39];
      if (v40)
      {
        v41 = v40;
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v43;

        v34 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
        v46 = *(v34 + 2);
        v45 = *(v34 + 3);
        v47 = v46 + 1;
        v30 = v114;
        if (v46 >= v45 >> 1)
        {
          goto LABEL_78;
        }

        goto LABEL_52;
      }
    }

    v30 = v114;
    if (v38 <= 0.0 || (v48 = [objc_opt_self() prettyShortStringWithDuration:v38]) == 0)
    {
      v34 = _swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    v49 = v48;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v50;

    v34 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
    v46 = *(v34 + 2);
    v45 = *(v34 + 3);
LABEL_51:
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
LABEL_78:
      v34 = sub_100243134((v45 > 1), v47, 1, v34);
    }

LABEL_52:
    *(v34 + 2) = v47;
    v86 = &v34[16 * v46];
    *(v86 + 4) = countAndFlagsBits;
    *(v86 + 5) = object;
    goto LABEL_53;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_23;
  }

  sub_1001A47B0(v110, v20, _s27CarPlayEpisodeSubtitleStyleOMa);
  v26 = swift_getEnumCaseMultiPayload();
  v27 = *v20;
  if (v26 == 1)
  {
    v28 = v20[4];
    v29 = *(v20 + 40);
    v30 = v114;
    if ((v20[3] & 1) != 0 || (v20[1] & 1) != 0 || (type metadata accessor for AlbumStringBuilder(), (*(v112 + 56))(v15, 1, 1, v111), v31 = static AlbumStringBuilder.albumString(podcastTitle:episodeNumber:seasonNumber:isSerialType:pubDate:)(), v33 = v32, sub_1001A4748(v15), !v33))
    {
      v34 = _swiftEmptyArrayStorage;
      if (v29)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v34 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_100243134((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[16 * v36];
      *(v37 + 4) = v31;
      *(v37 + 5) = v33;
      if (v29)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v55 = *(v20 + 8);
    v56 = sub_100168088(&qword_1005812A0, qword_100401BB0);
    v57 = v20 + *(v56 + 64);
    v28 = *v57;
    v58 = v57[8];
    v59 = v109;
    sub_1001A4668(v20 + *(v56 + 48), v109);
    if ((v55 & 1) != 0 || v27 < 1)
    {
      sub_1001A46D8(v59, v17);
      v71 = v111;
      v70 = v112;
      if ((*(v112 + 48))(v17, 1, v111) == 1)
      {
        sub_1001A4748(v59);
        sub_1001A4748(v17);
        v34 = _swiftEmptyArrayStorage;
        v30 = v114;
        if (v58)
        {
          goto LABEL_53;
        }
      }

      else
      {
        (*(v70 + 32))(v107, v17, v71);
        v77 = Date.friendlyDisplayString.getter();
        v79 = v78;
        v34 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
        v81 = *(v34 + 2);
        v80 = *(v34 + 3);
        if (v81 >= v80 >> 1)
        {
          v34 = sub_100243134((v80 > 1), v81 + 1, 1, v34);
        }

        v30 = v114;
        (*(v112 + 8))(v107, v71);
        sub_1001A4748(v59);
        *(v34 + 2) = v81 + 1;
        v82 = &v34[16 * v81];
        *(v82 + 4) = v77;
        *(v82 + 5) = v79;
        if (v58)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v60 = [objc_opt_self() mainBundle];
      v117._object = 0xE000000000000000;
      v61._countAndFlagsBits = 0xD000000000000015;
      v61._object = 0x80000001004665C0;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      v117._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, v60, v62, v117);

      sub_100168088(&unk_100574670, &qword_100400AB0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100400790;
      *(v63 + 56) = &type metadata for Int64;
      *(v63 + 64) = &protocol witness table for Int64;
      *(v63 + 32) = v27;
      v64 = static String.localizedStringWithFormat(_:_:)();
      v66 = v65;

      v34 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
      v68 = *(v34 + 2);
      v67 = *(v34 + 3);
      if (v68 >= v67 >> 1)
      {
        v34 = sub_100243134((v67 > 1), v68 + 1, 1, v34);
      }

      v30 = v114;
      sub_1001A4748(v59);
      *(v34 + 2) = v68 + 1;
      v69 = &v34[16 * v68];
      *(v69 + 4) = v64;
      *(v69 + 5) = v66;
      if (v58)
      {
        goto LABEL_53;
      }
    }
  }

  if (v28 > 0.0)
  {
    v83 = [objc_opt_self() prettyShortStringWithDuration:v28];
    if (v83)
    {
      v84 = v83;
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v85;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100243134(0, *(v34 + 2) + 1, 1, v34);
      }

      v46 = *(v34 + 2);
      v45 = *(v34 + 3);
      goto LABEL_51;
    }
  }

LABEL_53:
  if (v30)
  {
    sub_1000044A0(v113, v113[3]);
    v87 = dispatch thunk of StoreDataProvider.explicitSymbol.getter();
    v89 = v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_77:
      v34 = sub_100243134(0, *(v34 + 2) + 1, 1, v34);
    }

    v91 = *(v34 + 2);
    v90 = *(v34 + 3);
    v92 = (v91 + 1);
    if (v91 >= v90 >> 1)
    {
      v34 = sub_100243134((v90 > 1), v91 + 1, 1, v34);
    }

    *(v34 + 2) = v92;
    v93 = &v34[16 * v91];
    *(v93 + 4) = v87;
    *(v93 + 5) = v89;
  }

  else
  {
    v92 = *(v34 + 2);
    if (!v92)
    {
      v89 = _swiftEmptyArrayStorage;
      goto LABEL_75;
    }
  }

  v94 = 0;
  v95 = v34 + 40;
  v96 = (v92 - 1);
  v89 = _swiftEmptyArrayStorage;
  do
  {
    v87 = &v95[16 * v94];
    v97 = v94;
    while (1)
    {
      if (v97 >= *(v34 + 2))
      {
        __break(1u);
        goto LABEL_77;
      }

      v98 = *(v87 - 1);
      v99 = *v87;
      v100 = !v98 && v99 == 0xE000000000000000;
      if (!v100 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v97 = (v97 + 1);
      v87 += 16;
      if (v92 == v97)
      {
        goto LABEL_75;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v95;
    v115 = v89;
    v113 = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001A7364(0, v89[2] + 1, 1);
      v89 = v115;
    }

    v103 = v89[2];
    v102 = v89[3];
    if (v103 >= v102 >> 1)
    {
      sub_1001A7364((v102 > 1), v103 + 1, 1);
      v89 = v115;
    }

    v94 = (v97 + 1);
    v89[2] = v103 + 1;
    v104 = &v89[2 * v103];
    v104[4] = v98;
    v104[5] = v99;
    v96 = v113;
    v95 = v114;
  }

  while (v113 != v97);
LABEL_75:

  v115 = v89;
  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0, &qword_100403E20);
  sub_1001A4604();
  v105 = BidirectionalCollection<>.joined(separator:)();

  return v105;
}

uint64_t _s27CarPlayEpisodeSubtitleStyleOMa(uint64_t a1)
{
  result = qword_100574708;
  if (!qword_100574708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A3F04(void *a1, uint64_t a2, char a3)
{
  _s27CarPlayEpisodeSubtitleStyleOMa(0);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v45 - v7;
  v9 = type metadata accessor for ShowOffer();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.showOffer.getter();
  ShowOffer.showType.getter();
  (*(v10 + 8))(v12, v9);
  v13 = ShowType.rawValue.getter();
  v15 = v14;
  if (v13 == ShowType.rawValue.getter() && v15 == v16)
  {

    if (a3)
    {
LABEL_7:
      if (EpisodeOffer.contentRating.getter() == 2)
      {
        v19 = 0;
      }

      else
      {
        v28 = ContentRating.rawValue.getter();
        v30 = v29;
        v19 = 1;
        if (v28 != ContentRating.rawValue.getter() || v30 != v31)
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      v32 = EpisodeOffer.seasonNumber.getter();
      v34 = v33;
      v35 = EpisodeOffer.episodeNumber.getter();
      v37 = v36;
      v38 = EpisodeOffer.duration.getter();
      *v8 = v32;
      v8[8] = v34 & 1;
      *(v8 + 2) = v35;
      v8[24] = v37 & 1;
      *(v8 + 4) = v38;
      v8[40] = v39 & 1;
      swift_storeEnumTagMultiPayload();
      v40 = sub_1001A3250(a1, v19 & 1, v8);
      goto LABEL_25;
    }
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18 & 1) != 0 && (a3)
    {
      goto LABEL_7;
    }
  }

  if (EpisodeOffer.contentRating.getter() == 2)
  {
    v20 = 0;
  }

  else
  {
    v21 = ContentRating.rawValue.getter();
    v23 = v22;
    v20 = 1;
    if (v21 != ContentRating.rawValue.getter() || v23 != v24)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v25 = sub_100168088(&qword_1005812A0, qword_100401BB0);
  v26 = *(v25 + 48);
  *v6 = EpisodeOffer.episodeNumber.getter();
  v6[8] = v27 & 1;
  if (EpisodeOffer.releaseDate.getter())
  {
    LazyDate.value.getter();
  }

  else
  {
    v41 = type metadata accessor for Date();
    (*(*(v41 - 8) + 56))(&v6[v26], 1, 1, v41);
  }

  v42 = &v6[*(v25 + 64)];
  *v42 = EpisodeOffer.duration.getter();
  v42[8] = v43 & 1;
  swift_storeEnumTagMultiPayload();
  v40 = sub_1001A3250(a1, v20 & 1, v6);
  v8 = v6;
LABEL_25:
  sub_1001A4818(v8, _s27CarPlayEpisodeSubtitleStyleOMa);
  return v40;
}

uint64_t sub_1001A433C(void *a1, uint64_t a2, char a3)
{
  _s27CarPlayEpisodeSubtitleStyleOMa(0);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = LegacyEpisodeLockup.showTypeIsSerial.getter();
  v8 = LegacyLockup.isExplicit.getter();
  if (v7 & 1) != 0 && (a3)
  {
    v9 = LegacyEpisodeLockup.seasonNumber.getter();
    v11 = v10;
    v12 = LegacyEpisodeLockup.episodeNumber.getter();
    v14 = v13;
    v15 = LegacyEpisodeLockup.duration.getter();
    *v6 = v9;
    v6[8] = v11 & 1;
    *(v6 + 2) = v12;
    v6[24] = v14 & 1;
    *(v6 + 4) = v15;
    v6[40] = v16 & 1;
  }

  else
  {
    v17 = &v6[*(sub_100168088(&qword_1005812A0, qword_100401BB0) + 64)];
    *v6 = LegacyEpisodeLockup.episodeNumber.getter();
    v6[8] = v18 & 1;
    LegacyEpisodeLockup.releaseDate.getter();
    *v17 = LegacyEpisodeLockup.duration.getter();
    v17[8] = v19 & 1;
  }

  swift_storeEnumTagMultiPayload();
  v20 = sub_1001A3250(a1, v8 & 1, v6);
  sub_1001A4818(v6, _s27CarPlayEpisodeSubtitleStyleOMa);
  return v20;
}

uint64_t sub_1001A44D0()
{
  type metadata accessor for EpisodePlayState();
  __chkstk_darwin();
  v2 = (&v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A47B0(v0, v2, &type metadata accessor for EpisodePlayState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1001A4748(v2);
        *&result = 1.0;
        return result;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
LABEL_9:
      sub_1001A4818(v2, &type metadata accessor for EpisodePlayState);
LABEL_10:
      *&result = 0.0;
      return result;
    }

LABEL_7:
    v5 = v2[1];
    v6 = *v2;
    if (v6 < v5)
    {
      *&result = (v6 / v5);
      return result;
    }

    goto LABEL_10;
  }

  *&result = 0.0;
  return result;
}

unint64_t sub_1001A4604()
{
  result = qword_10057A300;
  if (!qword_10057A300)
  {
    sub_100168310(&qword_10057C9C0, &qword_100403E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A300);
  }

  return result;
}

uint64_t sub_1001A4668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574760, &unk_1003FEB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A46D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574760, &unk_1003FEB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A4748(uint64_t a1)
{
  v2 = sub_100168088(&qword_100574760, &unk_1003FEB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A47B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A4818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001A48C8(uint64_t a1)
{
  sub_1001A493C(319);
  if (v1 <= 0x3F)
  {
    sub_1001A49EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001A493C(uint64_t a1)
{
  if (!qword_100574718)
  {
    sub_100168310(&qword_1005741A0, &qword_100401860);
    sub_100168310(&qword_100574760, &unk_1003FEB60);
    sub_100168310(&unk_10057E2F0, &qword_1004059D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100574718);
    }
  }
}

void sub_1001A49EC(uint64_t a1)
{
  if (!qword_100574720)
  {
    sub_100168310(&qword_1005741A0, &qword_100401860);
    sub_100168310(&unk_10057E2F0, &qword_1004059D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100574720);
    }
  }
}

void *sub_1001A4AE4(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v22 = _swiftEmptyArrayStorage;
  result = sub_1001A73F8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = v9;
        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_1001A73F8((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_100018394(a3, a4, &protocol conformance descriptor for LegacyLockup);
        *&v19 = v12;
        v9[2] = v14 + 1;
        sub_1000109E4(&v19, &v9[5 * v14 + 4]);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = v9[2];
        v17 = v9[3];

        if (v18 >= v17 >> 1)
        {
          sub_1001A73F8((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_100018394(a3, a4, &protocol conformance descriptor for LegacyLockup);
        *&v19 = v16;
        v9[2] = v18 + 1;
        sub_1000109E4(&v19, &v9[5 * v18 + 4]);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void *sub_1001A4CE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1001A7478(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A7478((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LegacyLockup();
        v15 = sub_100018394(&qword_1005748C8, &type metadata accessor for LegacyLockup, &protocol conformance descriptor for LegacyLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_1001A7478((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LegacyLockup();
        v15 = sub_100018394(&qword_1005748C8, &type metadata accessor for LegacyLockup, &protocol conformance descriptor for LegacyLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1000109E4(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1001A4F08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1001A7478(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A7478((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LegacyCategoryLockup();
        v15 = sub_100018394(&qword_1005748B0, &type metadata accessor for LegacyCategoryLockup, &protocol conformance descriptor for LegacyLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_1001A7478((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LegacyCategoryLockup();
        v15 = sub_100018394(&qword_1005748B0, &type metadata accessor for LegacyCategoryLockup, &protocol conformance descriptor for LegacyLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1000109E4(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1001A5128(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1001A7630(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001A7630((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10016B7CC(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1001A5250(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1001A7630(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100009F1C(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_1001A7630((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_10016B7CC(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_100009F1C(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_1001A7630((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_10016B7CC(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1001A543C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1001A7630(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_100168088(&qword_100574880, &unk_100401D30);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001A7630((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10016B7CC(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1001A5564(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1001A78BC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A78BC((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Action();
        v15 = sub_100018394(&qword_100578430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_1001A78BC((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Action();
        v15 = sub_100018394(&qword_100578430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1000109E4(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1001A5794()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 importContext];

  type metadata accessor for FetchNonFollowedShows();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = qword_100572820;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static PodcastsStateCoordinator.shared;

  v6 = sub_1001A8AF8(v4, v2, v5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id NonFollowedShowsSyncStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NonFollowedShowsSyncStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NonFollowedShowsSyncStorage.isNonFollowedShowsSyncDirty.getter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  v1 = SyncKeysRepository.isNonFollowedShowsSyncDirty.getter();

  return v1 & 1;
}

void NonFollowedShowsSyncStorage.isNonFollowedShowsSyncDirty.setter(uint64_t a1)
{
  type metadata accessor for SyncKeysRepository();
  v1 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
}

void (*NonFollowedShowsSyncStorage.isNonFollowedShowsSyncDirty.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.isNonFollowedShowsSyncDirty.getter();

  *(a1 + 8) = v3 & 1;
  return sub_1001A5AC8;
}

void sub_1001A5AC8(uint64_t a1)
{
  v1 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
}

uint64_t NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.getter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  Sync = SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();

  return Sync;
}

void NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.setter(uint64_t a1, char a2)
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter();
}

uint64_t (*sub_1001A5BE4(uint64_t *a1))()
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
  *(v2 + 32) = NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.modify(v2);
  return sub_1001A5C4C;
}

void (*NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  Sync = SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();
  v5 = v4;

  *a1 = Sync;
  *(a1 + 8) = v5 & 1;
  return sub_1001A5CC8;
}

void sub_1001A5CC8(uint64_t *a1)
{
  v1 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter();
}

uint64_t (*sub_1001A5D94(uint64_t **a1))()
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
  v2[4] = NonFollowedShowsSyncStorage.syncVersion.modify(v2);
  return sub_1001A90C0;
}

void (*NonFollowedShowsSyncStorage.syncVersion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.nonFollowedShowsSyncVersion.getter();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return sub_1001A5E6C;
}

uint64_t sub_1001A5E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  type metadata accessor for SyncKeysRepository();
  v4 = static SyncKeysRepository.shared.getter();
  v5 = a3();

  return v5;
}

uint64_t sub_1001A5F0C(uint64_t (*a1)(void))
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = a1();

  return v3;
}

void sub_1001A5F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for SyncKeysRepository();
  v8 = static SyncKeysRepository.shared.getter();
  a5(a1, a2);
}

void sub_1001A600C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for SyncKeysRepository();
  v6 = static SyncKeysRepository.shared.getter();
  a3(a1, a2);
}

uint64_t (*sub_1001A6084(uint64_t **a1))()
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
  v2[4] = NonFollowedShowsSyncStorage.podcastsDomainVersion.modify(v2);
  return sub_1001A90C0;
}

void sub_1001A60EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*NonFollowedShowsSyncStorage.podcastsDomainVersion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.podcastsDomainVersion.getter();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return sub_1001A61A4;
}

void sub_1001A61BC(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    v6 = static SyncKeysRepository.shared.getter();
    a3(v5, v4);
  }

  else
  {
    v6 = static SyncKeysRepository.shared.getter();
    a3(v5, v4);
  }
}

Swift::Bool __swiftcall NonFollowedShowsSyncStorage.fetchHasLocalChanges()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Podcasts();
  v33 = v6;
  v34 = sub_100018394(&qword_1005742C0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  v7 = sub_10000E680(aBlock);
  (*(*(v6 - 8) + 104))(v7, enum case for Podcasts.simplifiedSyncDirtyHandling(_:), v6);
  v8 = isFeatureEnabled(_:)();
  sub_100004590(aBlock);
  type metadata accessor for SyncKeysRepository();
  v9 = static SyncKeysRepository.shared.getter();
  v10 = SyncKeysRepository.isNonFollowedShowsSyncDirty.getter();

  v11 = v8 ^ 1 | v10;
  if (v8 & 1) != 0 || (v10)
  {
    return v11 & 1;
  }

  v12 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();

  Date.init(timeIntervalSinceReferenceDate:)();
  v13 = objc_opt_self();
  v14 = [v13 predicateForNonFollowedShowsWithPlayState];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v13 predicateForLastDatePlayedAfterDate:isa];

  v17 = [v14 AND:v16];
  v31 = v2;
  v18 = v17;

  v19 = [v13 predicateForLastDatePlayedNotInTheFuture];
  v20 = [v18 AND:v19];

  v21 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  [v21 setIncludesPropertyValues:0];
  [v21 setIncludesSubentities:0];
  [v21 setFetchLimit:1];
  [v21 setPredicate:v20];
  v36 = 0;
  v22 = *&v1[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_importContext];
  v23 = swift_allocObject();
  v23[2] = v1;
  v23[3] = v21;
  v23[4] = &v36;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1001A7358;
  *(v24 + 24) = v23;
  v34 = sub_10002D7F0;
  v35 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  v33 = &unk_1004E23A8;
  v25 = _Block_copy(aBlock);
  v26 = v1;
  v27 = v21;

  [v22 performBlockAndWait:v25];
  _Block_release(v25);

  (*(v3 + 8))(v5, v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v30 = v36;

    v11 = v30 > 0;
    return v11 & 1;
  }

  __break(1u);
  return result;
}

_OWORD *NonFollowedShowsSyncStorage.fetchNonFollowedShowsDictionaries()()
{
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v61 = &v50 - v1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v6 = [objc_opt_self() predicateForNonFollowedShowsWithPlayState];
  [v5 setPredicate:v6];

  [v5 setResultType:2];
  v7 = static RemoteNonFollowedShow.allSyncKeys.getter();
  sub_1001A5128(v7);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setPropertiesToFetch:isa];

  sub_1000044A0((v0 + OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_fetchNonFollowedShows), *(v0 + OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_fetchNonFollowedShows + 24));
  type metadata accessor for FetchNonFollowedShows();
  v50 = v5;
  v9 = sub_10023DA00(v5);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v69 = _swiftEmptyArrayStorage;
    v12 = v9;
    sub_1001A75F0(0, v10, 0);
    v56 = v69;
    v54 = sub_100168088(&unk_100572CA0, &unk_1003FF2E0);
    result = v12;
    v14 = 0;
    v53 = v12 + 2;
    v57 = (v3 + 8);
    v58 = (v3 + 32);
    v62 = v2;
    v52 = v12;
    v51 = v10;
    v60 = (v3 + 56);
    do
    {
      if (v14 >= *(result + 2))
      {
        goto LABEL_34;
      }

      v55 = v14 + 1;
      v15 = *(v53 + v14);
      v16 = static _DictionaryStorage.copy(original:)();
      v17 = v60;
      v18 = v61;
      v19 = v16;
      v20 = v15 + 64;
      v21 = 1 << *(v15 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & *(v15 + 64);
      v24 = (v21 + 63) >> 6;
      v63 = v16 + 64;
      v64 = v15;

      v25 = 0;
      if (v23)
      {
        while (1)
        {
          v26 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
LABEL_14:
          v29 = v26 | (v25 << 6);
          v30 = *(v64 + 56);
          v31 = (*(v64 + 48) + 16 * v29);
          v32 = v31[1];
          v65 = *v31;
          sub_10001B944(v30 + 32 * v29, v68);
          sub_10001B944(v68, &v66);

          v33 = swift_dynamicCast();
          v34 = *v17;
          if (v33)
          {
            v34(v18, 0, 1, v2);
            v35 = v59;
            (*v58)(v59, v18, v2);
            Date.timeIntervalSinceReferenceDate.getter();
            v67 = &type metadata for Double;
            *&v66 = v36;
            v37 = v35;
            v17 = v60;
            v18 = v61;
            (*v57)(v37, v2);
            sub_100004590(v68);
          }

          else
          {
            v34(v18, 1, 1, v2);
            sub_1001A4748(v18);
            sub_10016B7CC(v68, &v66);
          }

          *(v63 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
          v38 = (v19[6] + 16 * v29);
          *v38 = v65;
          v38[1] = v32;
          result = sub_10016B7CC(&v66, (v19[7] + 32 * v29));
          v39 = v19[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            break;
          }

          v19[2] = v41;
          if (!v23)
          {
            goto LABEL_9;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

LABEL_9:
      v27 = v25;
      while (1)
      {
        v25 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v25 >= v24)
        {
          break;
        }

        v28 = *(v20 + 8 * v25);
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v23 = (v28 - 1) & v28;
          goto LABEL_14;
        }
      }

      v42 = v56;
      v69 = v56;
      v44 = v56[2];
      v43 = v56[3];
      if (v44 >= v43 >> 1)
      {
        sub_1001A75F0((v43 > 1), v44 + 1, 1);
        v42 = v69;
      }

      v42[2] = v44 + 1;
      v56 = v42;
      v42[v44 + 4] = v19;
      v14 = v55;
      result = v52;
    }

    while (v55 != v51);

    v11 = _swiftEmptyArrayStorage;
    v45 = v56[2];
    if (!v45)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v45 = _swiftEmptyArrayStorage[2];
  if (v45)
  {
LABEL_24:
    *&v68[0] = _swiftEmptyArrayStorage;
    sub_1001A75F0(0, v45, 0);
    type metadata accessor for RemoteNonFollowedShow();
    v46 = 32;
    v11 = *&v68[0];
    do
    {

      v47 = Dictionary<>.flatteningUnknownSyncProperties<A>(for:)();

      *&v68[0] = v11;
      v49 = v11[2];
      v48 = v11[3];
      if (v49 >= v48 >> 1)
      {
        sub_1001A75F0((v48 > 1), v49 + 1, 1);
        v11 = *&v68[0];
      }

      v11[2] = v49 + 1;
      v11[v49 + 4] = v47;
      v46 += 8;
      --v45;
    }

    while (v45);

    return v11;
  }

LABEL_30:

  return v11;
}

Swift::Void __swiftcall NonFollowedShowsSyncStorage.unsafeRemoveImplicitFollowsIfNeeded(for:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = (v1 + OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_podcastsStateCoordinator);
    do
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1._rawValue + v4 + 4);
      }

      v7 = v6;
      ++v4;
      sub_1000044A0(v5, v5[3]);
      dispatch thunk of PodcastsStateCoordinatorProtocol.unsafeRemoveImplicitFollowIfNeeded(_:from:)();
    }

    while (v3 != v4);
  }
}

void static NonFollowedShowsSyncStorage.resetNonFollowedShowsSync()()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter();

  v1 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsSyncVersion.setter();

  v2 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
}

uint64_t sub_1001A7170(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v8 = static OS_os_log.cloudSyncSignpost.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
  *a3 = NSManagedObjectContext.count<A>(for:)();
  static os_signpost_type_t.end.getter();
  v10 = static OS_os_log.cloudSyncSignpost.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return (v9)(v7, v4);
}

char *sub_1001A7364(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A79A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A7384(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574878, &qword_100401D28, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1001A73C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A84E8(a1, a2, a3, *v3, &qword_100574828, &qword_100401CE0);
  *v3 = result;
  return result;
}

void *sub_1001A73F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &qword_1005748D8, &qword_100401D80, &qword_1005748E0, &qword_100401D88);
  *v3 = result;
  return result;
}

void *sub_1001A7438(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A7CBC(a1, a2, a3, *v3, &unk_100573FC0, &unk_100401D60, &unk_100574640, &unk_100401730);
  *v3 = result;
  return result;
}

void *sub_1001A7478(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &qword_1005748B8, &unk_100401D70, &qword_1005748C0, qword_1004060D0);
  *v3 = result;
  return result;
}

void *sub_1001A74B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_10057BBA0, qword_100404540, &type metadata accessor for EpisodeOffer);
  *v3 = result;
  return result;
}

void *sub_1001A74FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574848, &qword_100401D00, &type metadata accessor for EpisodePlayState);
  *v3 = result;
  return result;
}

char *sub_1001A7540(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A83CC(a1, a2, a3, *v3, &unk_100574850, &qword_100401D08, &type metadata for EpisodeStateIdentifier);
  *v3 = result;
  return result;
}

char *sub_1001A7578(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A7AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001A7598(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A83CC(a1, a2, a3, *v3, &qword_100574810, &unk_1004066F0, &type metadata for ModernEpisodeDownloadState);
  *v3 = result;
  return result;
}

char *sub_1001A75D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A7BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A75F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A7CBC(a1, a2, a3, *v3, &qword_100574898, &qword_100401D58, &qword_100574880, &unk_100401D30);
  *v3 = result;
  return result;
}

char *sub_1001A7630(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A7DF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A7650(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_1005747B0, &qword_100406700, &type metadata accessor for ArtworkModel);
  *v3 = result;
  return result;
}

void *sub_1001A7694(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574818, &unk_100401CD0, type metadata accessor for DownloadJob);
  *v3 = result;
  return result;
}

char *sub_1001A76D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A7F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A76F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A801C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A7718(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A8150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A7738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A8298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A7758(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574190, &qword_100401850, &type metadata accessor for ModernShelf);
  *v3 = result;
  return result;
}

char *sub_1001A779C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A84E8(a1, a2, a3, *v3, &qword_100574820, &qword_1004066D0);
  *v3 = result;
  return result;
}

char *sub_1001A77CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A83CC(a1, a2, a3, *v3, &qword_1005747A8, &unk_100401C60, &type metadata for ContentID);
  *v3 = result;
  return result;
}

void *sub_1001A7804(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574808, &unk_100401CC0, &type metadata accessor for MediaLibraryPid);
  *v3 = result;
  return result;
}

void *sub_1001A7848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574908, qword_100401DA0, &type metadata accessor for EpisodeEntity);
  *v3 = result;
  return result;
}

char *sub_1001A788C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A84E8(a1, a2, a3, *v3, &qword_100574870, &qword_100401D20);
  *v3 = result;
  return result;
}

void *sub_1001A78BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &unk_1005747F0, &unk_1004091D0, &unk_10057BB70, &qword_100401CB0);
  *v3 = result;
  return result;
}

void *sub_1001A78FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A85E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A791C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &qword_1005748F8, &unk_100401D90, &qword_100574900, &unk_100400AA0);
  *v3 = result;
  return result;
}

void *sub_1001A795C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_1005747D8, &unk_100401CA0, &type metadata accessor for TabMenu.Item);
  *v3 = result;
  return result;
}

char *sub_1001A79A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_100574690, &unk_100401BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A7AAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&unk_10057A0B0, &unk_100401C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}