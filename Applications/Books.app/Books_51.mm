unint64_t sub_10064F824@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10064FA04(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10064F868()
{
  sub_10002B130(v0 + 16);
  sub_10002B130(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_10064F8F0()
{
  result = qword_100AEF4D0;
  if (!qword_100AEF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4D0);
  }

  return result;
}

unint64_t sub_10064F948()
{
  result = qword_100AEF4D8;
  if (!qword_100AEF4D8)
  {
    sub_1001F1234(&qword_100AEF4E0, qword_100838538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4D8);
  }

  return result;
}

unint64_t sub_10064F9B0()
{
  result = qword_100AEF4E8;
  if (!qword_100AEF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4E8);
  }

  return result;
}

unint64_t sub_10064FA04(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10064FA40()
{
  result = qword_100AEF4F0;
  if (!qword_100AEF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4F0);
  }

  return result;
}

uint64_t sub_10064FB08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_10064FBE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

double sub_10064FC90@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a1);

  return result;
}

uint64_t sub_10064FD08()
{
  v29 = sub_10079CAE4();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26 = &v25 - v3;
  v4 = sub_1001F1160(&qword_100AEFA50, &qword_100838CA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__compactPrice;
  v32 = 0;
  v33 = 0;
  sub_1001F1160(&qword_100AD4F30, &unk_100816940);
  sub_10079B964();
  v13 = *(v9 + 32);
  v13(v0 + v12, v11, v8);
  v14 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__frameColor;
  v32 = 0;
  sub_1001F1160(&qword_100AE0900, &qword_1008386D0);
  sub_10079B964();
  (*(v5 + 32))(v0 + v14, v7, v4);
  v15 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__imageName;
  v32 = 0;
  v33 = 0;
  sub_10079B964();
  v13(v0 + v15, v11, v8);
  swift_beginAccess();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v30) = 0;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  v30 = 0;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v30) = 0;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v30) = 0;
  sub_10079B964();
  swift_endAccess();
  v16 = sub_10079DDC4();
  swift_beginAccess();
  v30 = v16;
  sub_10079B964();
  swift_endAccess();
  v17 = sub_10079DDC4();
  swift_beginAccess();
  v30 = v17;
  sub_10079B964();
  swift_endAccess();
  v18 = sub_10079DDC4();
  swift_beginAccess();
  v30 = v18;
  sub_10079B964();
  swift_endAccess();
  v19 = sub_10079DDC4();
  swift_beginAccess();
  v30 = v19;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  v30 = 0;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  v30 = 0;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_10079B964();
  swift_endAccess();
  swift_beginAccess();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_10079B964();
  swift_endAccess();
  v20 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  swift_beginAccess();
  v30 = v20;
  sub_10079B964();
  swift_endAccess();
  v22 = v26;
  v21 = v27;
  v23 = v29;
  (*(v27 + 104))(v26, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v29);
  swift_beginAccess();
  (*(v21 + 16))(v28, v22, v23);
  sub_10079B964();
  (*(v21 + 8))(v22, v23);
  swift_endAccess();
  return v0;
}

uint64_t sub_1006503C4()
{
  v1 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__price;
  v2 = sub_1001F1160(&unk_100ADF120, &qword_100822620);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__compactPrice;
  v5 = sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  v23 = *(*(v5 - 8) + 8);
  v23(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__kind;
  v7 = sub_1001F1160(&qword_100AEFA48, &unk_100838C90);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__viewState;
  v9 = sub_1001F1160(&qword_100AE5E10, &qword_1008291E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__downloadProgress;
  v11 = sub_1001F1160(&qword_100AE3D08, &unk_1008291D0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v3(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__bkaxAccessibilityValue, v2);
  v3(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__bkaxAccessibilityLabel, v2);
  v13 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__enabled;
  v14 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__normalForegroundColor;
  v16 = sub_1001F1160(&qword_100AE3D00, &qword_100838CA0);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v15, v16);
  v17(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__disabledForegroundColor, v16);
  v17(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__normalBackgroundColor, v16);
  v17(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__disabledBackgroundColor, v16);
  v12(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__frameWidth, v11);
  v18 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__frameColor;
  v19 = sub_1001F1160(&qword_100AEFA50, &qword_100838CA8);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v23(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__imageName, v5);
  v12(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__buttonCornerRadius, v11);
  v17(v0 + OBJC_IVAR____TtC5Books18BuyButtonViewModel__progressColor, v16);
  v20 = OBJC_IVAR____TtC5Books18BuyButtonViewModel__maximumContentSizeCategory;
  v21 = sub_1001F1160(&qword_100AEFA58, qword_100838CB0);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  return v0;
}

uint64_t sub_1006507CC()
{
  sub_1006503C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BuyButtonViewModel(uint64_t a1)
{
  result = qword_100AEF5B0;
  if (!qword_100AEF5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100650878(uint64_t a1)
{
  sub_100205C6C(319, &qword_100AD4F38, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100205CB8(319, &qword_100AD4F28, &qword_100AD4F30, &unk_100816940);
    if (v2 <= 0x3F)
    {
      sub_100205C6C(319, &qword_100AEF5C0, &type metadata for BuyButtonViewModel.Kind);
      if (v3 <= 0x3F)
      {
        sub_100205C6C(319, &qword_100AEF5C8, &type metadata for BuyButtonViewState);
        if (v4 <= 0x3F)
        {
          sub_100205C6C(319, &qword_100AE3DF8, &type metadata for CGFloat);
          if (v5 <= 0x3F)
          {
            sub_100205C6C(319, &qword_100AEB4D0, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              sub_100205C6C(319, &qword_100AE3E00, &type metadata for Color);
              if (v7 <= 0x3F)
              {
                sub_100205CB8(319, &qword_100AEF5D0, &qword_100AE0900, &qword_1008386D0);
                if (v8 <= 0x3F)
                {
                  sub_100650B8C(319);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100650B8C(uint64_t a1)
{
  if (!qword_100AEF5D8)
  {
    sub_10079CAE4();
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AEF5D8);
    }
  }
}

unint64_t sub_100650BF8()
{
  result = qword_100AEFA40;
  if (!qword_100AEFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA40);
  }

  return result;
}

uint64_t sub_100650C4C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BuyButtonViewModel(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

void sub_100650D04(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_100650D84(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_100650E20(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_100650F80(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_100651048(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1006510F0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

double sub_100651168@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a2);

  return result;
}

uint64_t sub_1006511E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10079CAE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_10079B9B4();
  return (*(v4 + 8))(v10, v3);
}

void sub_10065137C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1006513FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

double sub_10065148C@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v6);

  result = *&v6;
  *a4 = v6;
  return result;
}

id sub_10065151C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKReadingGoalsShouldClearDataKey];
  *a2 = result;
  return result;
}

Swift::Void __swiftcall NSUserDefaults.set(_:forKey:)(Swift::OpaquePointer_optional _, Swift::String forKey)
{
  if (_.value._rawValue)
  {
    v3.super.isa = sub_1007A2024().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = sub_1007A2214();
  [v2 setValue:v3.super.isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_100651640(char *a1, void *a2, void *a3)
{
  v113 = a3;
  v107 = a1;
  v5 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v5 - 8);
  v98 = &v98 - v6;
  v7 = sub_1001F1160(&qword_100AEF380, &qword_100838148);
  __chkstk_darwin(v7 - 8);
  v111 = &v98 - v8;
  v9 = sub_100798614();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin(v9);
  v108 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v98 - v12;
  v13 = sub_100796BB4();
  v105 = *(v13 - 8);
  v106 = v13;
  __chkstk_darwin(v13);
  v103 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100796D84();
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100796D14();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100796DA4();
  v100 = *(v21 - 8);
  v101 = v21;
  __chkstk_darwin(v21);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_opt_self() defaultStore];
  v165[3] = sub_10000A7C4(0, &qword_100AEFA68, NSUbiquitousKeyValueStore_ptr);
  v165[4] = sub_100653A48(&qword_100AEFB48, &protocol conformance descriptor for NSUbiquitousKeyValueStore);
  v165[0] = v24;
  sub_100009864(v3 + 16, v155);
  sub_100009864(v165, v151);
  v25 = sub_1007985A4();
  swift_allocObject();
  v26 = sub_100798594();
  v157 = &protocol witness table for ReadingGoalsDataStore;
  v156 = v25;
  v155[0] = v26;
  v27 = sub_100798A74();
  swift_allocObject();
  v114 = v26;

  v28 = sub_100798A64();
  v112 = v27;
  v164[3] = v27;
  v164[0] = v28;
  v164[8] = v27;
  v164[9] = &protocol witness table for ReadingGoalsController;
  v164[4] = &protocol witness table for ReadingGoalsController;
  v164[5] = v28;
  v109 = v28;
  v29 = type metadata accessor for BooksFinishedDataSource();
  v30 = objc_allocWithZone(v29);
  swift_retain_n();
  v110 = a2;
  sub_10068F51C(v110);
  v32 = v31;
  v156 = v29;
  v33 = sub_100653A9C(&qword_100AEFB50, type metadata accessor for BooksFinishedDataSource, &protocol conformance descriptor for BooksFinishedDataSource);
  v157 = v33;
  v155[0] = v32;
  (*(v18 + 104))(v20, enum case for Calendar.Identifier.gregorian(_:), v17);
  v34 = v32;
  sub_100796D24();
  (*(v18 + 8))(v20, v17);
  v35 = v99;
  v36 = v102;
  (*(v99 + 104))(v16, enum case for Calendar.Component.year(_:), v102);
  v37 = v103;
  sub_100796BA4();
  sub_100796D94();
  v105[1](v37, v106);
  (*(v35 + 8))(v16, v36);
  (*(v100 + 8))(v23, v101);
  v38 = sub_10079E924();
  swift_allocObject();
  v39 = sub_10079E914();
  v156 = v38;
  v155[0] = v39;
  v159 = v38;
  v160 = &protocol witness table for BooksFinishedController;
  v157 = &protocol witness table for BooksFinishedController;
  v158 = v39;
  v105 = v39;
  v163 = v33;
  v162 = v29;
  v161 = v34;
  v40 = sub_10079EB34();
  swift_allocObject();
  swift_retain_n();
  v41 = sub_10079EB24();
  v42 = v115;
  sub_100798604();
  sub_1000077D8(v164, v151, &qword_100AEF3D8, &unk_100838180);
  v145 = v40;
  v146 = sub_100653A9C(&qword_100AEFB58, &type metadata accessor for ReadingHistoryAppFileSyncManager, &protocol conformance descriptor for ReadingHistoryAppFileSyncManager);
  v144[0] = v41;
  (*(v116 + 16))(v108, v42, v117);
  v43 = *(v104 + 56);
  v44 = objc_allocWithZone(BDSOSTransactionProvider);

  v45 = v43;
  [v44 init];
  v46 = sub_100798624();
  swift_allocObject();
  v47 = sub_1007985F4();
  sub_1000074E0(v154);
  sub_1007985E4(UIApplicationSignificantTimeChangeNotification);
  v152 = v40;
  v153 = sub_100653A9C(&qword_100AEFB60, &type metadata accessor for ReadingHistoryAppFileSyncManager, &protocol conformance descriptor for ReadingHistoryAppFileSyncManager);
  v151[0] = v41;

  sub_1007985D4();
  v106 = v41;
  sub_10079EB14();
  v153 = &protocol witness table for ReadingHistoryDataStore;
  v152 = v46;
  v151[0] = v47;
  v48 = objc_opt_self();
  v108 = v48;
  swift_retain_n();

  v49 = [v48 standardUserDefaults];
  v50 = sub_10079E984();
  swift_allocObject();
  v51 = sub_10079E954();
  v152 = v50;
  v151[0] = v51;
  v154[3] = v50;
  v154[4] = &protocol witness table for ReadingHistoryController;
  v153 = &protocol witness table for ReadingHistoryController;
  v154[0] = v51;
  v154[9] = &protocol witness table for ReadingHistoryDataStore;
  v154[8] = v46;
  v154[5] = v47;
  v52 = objc_opt_self();
  swift_retain_n();

  v53 = [v52 manager];
  v54 = [v53 dynamicRegistry];

  v55 = sub_10079E974();
  sub_10079E7B4();
  sub_10079E7A4();
  v56 = sub_1007A2214();

  [v54 registerProgressProvider:v55 forKind:v56];

  v57 = swift_allocObject();
  v58 = v107;
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v51;
  v146 = &protocol witness table for ReadingHistoryDataStore;
  v145 = v46;
  v144[0] = v47;
  v141[4] = &protocol witness table for ReadingGoalsController;
  v141[3] = v112;
  v141[0] = v109;
  v135 = &protocol witness table for BooksFinishedController;
  v134 = v38;
  v133[0] = v105;
  sub_10079EAF4();
  swift_allocObject();

  v112 = v59;
  v60 = sub_10079EAB4();
  sub_1000077D8(v164, v149, &qword_100AEF3D8, &unk_100838180);
  sub_1000077D8(v155, v144, &qword_100AEF3E8, qword_100838190);
  sub_1000077D8(v151, v141, &qword_100AEF3E0, &unk_100838E80);
  v105 = [objc_opt_self() sharedInstance];
  sub_100009864(v149, v138);
  sub_100009864(v150, &v140);
  sub_100009864(v144, v133);
  sub_100009864(v147, &v136);
  sub_100009864(v148, &v137);
  sub_100009864(v141, v130);
  sub_100009864(v142, &v131);
  sub_100009864(v143, &v132);
  v109 = *&v58[OBJC_IVAR___BKReadingActivityService__setupState];
  sub_100798B74();
  v61 = &v58[OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler];
  v62 = v58;
  v63 = *&v58[OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler];
  v64 = *&v58[OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler + 8];
  v65 = v106;
  *v61 = sub_100653AE4;
  v61[1] = v65;
  sub_100007020(v63, v64);
  v66 = &v62[OBJC_IVAR___BKReadingActivityService_notificationSuppressingEventHandler];
  v67 = *&v62[OBJC_IVAR___BKReadingActivityService_notificationSuppressingEventHandler];
  v68 = *&v62[OBJC_IVAR___BKReadingActivityService_notificationSuppressingEventHandler + 8];
  *v66 = sub_100652FB4;
  v66[1] = 0;

  sub_100007020(v67, v68);
  v69 = *&v62[OBJC_IVAR___BKReadingActivityService_libraryManager];
  v70 = v110;
  *&v62[OBJC_IVAR___BKReadingActivityService_libraryManager] = v110;

  sub_1000077D8(v138, v125, &qword_100AEF3D8, &unk_100838180);
  v71 = OBJC_IVAR___BKReadingActivityService_goalsModule;
  swift_beginAccess();
  v72 = v70;
  sub_1002391EC(v125, &v62[v71], &qword_100AEF3B0, &qword_100838158);
  swift_endAccess();
  sub_1000077D8(v130, v125, &qword_100AEF3E0, &unk_100838E80);
  v73 = OBJC_IVAR___BKReadingActivityService_historyModule;
  swift_beginAccess();
  sub_1002391EC(v125, &v62[v73], &qword_100AEF3C0, qword_100838E90);
  swift_endAccess();
  sub_1000077D8(v133, v125, &qword_100AEF3E8, qword_100838190);
  v74 = OBJC_IVAR___BKReadingActivityService_booksFinishedModule;
  swift_beginAccess();
  sub_1002391EC(v125, &v62[v74], &qword_100AEF3B8, &unk_100838160);
  swift_endAccess();
  *&v62[OBJC_IVAR___BKReadingActivityService_achievementsController] = v60;

  sub_10079E884();
  v110 = v60;

  sub_10079E874();
  sub_10000E3E8(v138, v139);
  v75 = v111;
  sub_100798B44();
  v76 = sub_100798694();
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  sub_10079E824();

  sub_10079E874();
  sub_10079E804();

  v119 = v133;
  sub_10079EB54();

  sub_10079E874();
  sub_10079E834();

  v118 = v130;
  v77 = v105;
  sub_10079EB54();

  sub_10079E874();
  v111 = v113;
  sub_10079E854();

  sub_10079E874();
  sub_10079E864();

  [v77 addSessionObserver:v62];
  sub_10000E3E8(v138, v139);
  sub_100798B34();
  sub_10000E3E8(v125, v126);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100798BF4();

  sub_1000074E0(v125);
  sub_10000E3E8(v133, v134);
  sub_10079E9D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100798934();

  sub_10000E3E8(v130, v130[3]);
  sub_10079EA54();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100798934();

  v78 = [v108 standardUserDefaults];
  v125[0] = v78;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = sub_100796894();

  v80 = *&v62[OBJC_IVAR___BKReadingActivityService_clearDataObservation];
  *&v62[OBJC_IVAR___BKReadingActivityService_clearDataObservation] = v79;

  v81 = objc_opt_self();

  v82 = sub_1007A2214();

  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v127 = sub_10064ECAC;
  v128[0] = v83;
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 1107296256;
  v125[2] = sub_1006412EC;
  v126 = &unk_100A28FB8;
  v84 = _Block_copy(v125);

  [v81 fetchMetadataBoolForKey:v82 completion:v84];
  _Block_release(v84);

  swift_beginAccess();
  sub_10079EB04();
  sub_1000077D8(v138, v123, &qword_100AEF3D8, &unk_100838180);
  sub_1000077D8(v130, v125, &qword_100AEF3E0, &unk_100838E80);
  sub_1000077D8(v133, v120, &qword_100AEF3E8, qword_100838190);
  v85 = sub_10075FD24(v123, v125, v120);
  sub_1000074E0(v122);
  sub_1000074E0(v121);
  sub_1000074E0(v129);
  sub_1000074E0(v128);
  sub_1000074E0(v124);
  v86 = *&v62[OBJC_IVAR___BKReadingActivityService_readingActivityDonor];
  *&v62[OBJC_IVAR___BKReadingActivityService_readingActivityDonor] = v85;

  v87 = [objc_opt_self() books];
  v88 = [v87 userDefaults];

  v89 = [objc_opt_self() dataHasBeenMovedUserDefaultsKey];
  if (!v89)
  {
    sub_1007A2254();
    v89 = sub_1007A2214();
  }

  v90 = [v88 BOOLForKey:v89];

  if ((v90 & 1) == 0)
  {
    v91 = sub_1007A2744();
    v92 = v98;
    (*(*(v91 - 8) + 56))(v98, 1, 1, v91);
    v93 = swift_allocObject();
    v93[2] = 0;
    v93[3] = 0;
    v93[4] = v62;
    v94 = v62;
    sub_1003457A0(0, 0, v92, &unk_1008381F0, v93);
  }

  sub_100798B74();

  sub_100007840(v130, &qword_100AEF3E0, &unk_100838E80);
  sub_100007840(v133, &qword_100AEF3E8, qword_100838190);
  sub_100007840(v138, &qword_100AEF3D8, &unk_100838180);
  sub_1000074E0(v143);
  sub_1000074E0(v142);
  sub_1000074E0(v141);
  sub_1000074E0(v148);
  sub_1000074E0(v147);
  sub_1000074E0(v144);
  sub_1000074E0(v150);
  sub_1000074E0(v149);
  v95 = [v111 engagementManager];
  if (v95)
  {
    v96 = v95;
    sub_100644320(v95);

    (*(v116 + 8))(v115, v117);
  }

  else
  {
    (*(v116 + 8))(v115, v117);
  }

  sub_100007840(v151, &qword_100AEF3E0, &unk_100838E80);
  sub_100007840(v155, &qword_100AEF3E8, qword_100838190);
  sub_100007840(v164, &qword_100AEF3D8, &unk_100838180);
  return sub_1000074E0(v165);
}

void sub_100652C44(uint64_t a1, uint64_t a2)
{
  v3 = sub_10079E6B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1007A29D4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v9 = sub_1007A33C4();
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10080B690;
    v11 = _s5Books22ReadingActivityServiceC19readingGoalsEnabledSbvg_0();
    *(v10 + 56) = &type metadata for Bool;
    *(v10 + 64) = &protocol witness table for Bool;
    *(v10 + 32) = v11 & 1;
    sub_10079AB44(v8, &_mh_execute_header, v9, "Attempting to send reading goals notification, goals enabled: %{public}d", 72, 2, v10);

    if (_s5Books22ReadingActivityServiceC19readingGoalsEnabledSbvg_0())
    {
      v12 = *&v7[OBJC_IVAR___BKReadingActivityService__currentActiveAchievementSheetKind];
      sub_100653AFC(a1, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v14 = swift_allocObject();
      sub_100653B60(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
      *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
      v15 = objc_opt_self();
      v16 = sub_1007A2214();
      v17 = swift_allocObject();
      *(v17 + 16) = 0xD000000000000029;
      *(v17 + 24) = 0x80000001008E28E0;
      *(v17 + 32) = sub_100653BC4;
      *(v17 + 40) = v14;
      *(v17 + 48) = 1;
      aBlock[4] = sub_10064EDDC;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006412EC;
      aBlock[3] = &unk_100A29058;
      v18 = _Block_copy(aBlock);

      [v15 fetchMetadataBoolForKey:v16 completion:v18];
      _Block_release(v18);

      sub_10079E6A4();
      if (sub_10079E684() & 1) != 0 || (sub_10079E6A4(), (sub_10079E684()))
      {
        sub_10079E884();
        sub_10079E874();
        sub_10079E844();

        sub_10064473C();
      }

      sub_10079E964();
    }
  }
}

uint64_t sub_100652FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  return _swift_task_switch(sub_100653008, 0, 0);
}

uint64_t sub_100653008()
{
  sub_10079E9C4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_100653134;
  v2 = swift_continuation_init();
  v3 = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[28] = v3;
  v0[25] = v3;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100298E88;
  v0[21] = &unk_100A290D0;
  v0[22] = v2;
  [ObjCClassFromMetadata clearLocalCachedDataWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100653134()
{

  return _swift_task_switch(sub_100653214, 0, 0);
}

uint64_t sub_100653214()
{
  v1 = v0[28];
  sub_10079EA34();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[10] = v0;
  v0[15] = v0 + 29;
  v0[11] = sub_100653330;
  v3 = swift_continuation_init();
  v0[25] = v1;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100298E88;
  v0[21] = &unk_100A290F8;
  v0[22] = v3;
  [ObjCClassFromMetadata clearDefaultsCachedDataWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100653330()
{

  return _swift_task_switch(sub_100653410, 0, 0);
}

uint64_t sub_100653410()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v1(1, 0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100653638()
{
  sub_1000074E0((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_100653678(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for ReadingActivityService());
  v5 = a1;
  ReadingActivityService.init(serviceCenter:)(v5, v6);
  *a2 = v7;
}

void sub_1006536FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (a1)
  {
    v5.super.isa = sub_1007A2024().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = sub_1007A2214();
  [v4 setDictionary:v5.super.isa forKey:v6];
}

uint64_t sub_1006537AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1007A2214();
  v5 = [v3 dictionaryForKey:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1007A2044();

  return v6;
}

void sub_100653834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (a1)
  {
    v5.super.isa = sub_1007A2024().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = sub_1007A2214();
  [v4 setValue:v5.super.isa forKey:v6];
  swift_unknownObjectRelease();
}

void (*sub_100653980(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1007989F4();
  return sub_100283EC4;
}

uint64_t sub_100653A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000A7C4(255, &qword_100AEFA68, NSUbiquitousKeyValueStore_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100653A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100653AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079E6B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100653B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079E6B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100653BC4(char a1)
{
  v3 = *(sub_10079E6B4() - 8);
  if (a1)
  {
    v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
    type metadata accessor for AchievementsNotificationController();
    static AchievementsNotificationController.notify(_:currentlyShowingSheetKind:)(v1 + v4, v5);
  }
}

uint64_t sub_100653C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_100652FE8(a1, v4, v5, v7, v6);
}

uint64_t sub_100653D5C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B23728);
  sub_100008B98(v0, qword_100B23728);
  return sub_10079ACD4();
}

uint64_t sub_100653DE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10079A734();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_1007990E4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100653F0C, 0, 0);
}

uint64_t sub_100653F0C()
{
  v1 = v0[8];
  v23 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  sub_1005AAE74(v0[2]);
  v22 = v5;
  v0[12] = v5;
  sub_1001F1160(&qword_100AEFC20, &unk_100838F68);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(v3 + 16);
  v8(v7 + v6, v4, v2);
  sub_1003BD93C(0, 1, 0);
  v21 = v6;
  v8(v1, v7 + v6, v2);
  v8(v23, v1, v2);
  v9 = (*(v3 + 88))(v23, v2);
  if (v9 == enum case for Book.MediaType.ebook(_:))
  {
    v10 = &BFMCatalogRequestRelationshipBooks;
  }

  else
  {
    if (v9 != enum case for Book.MediaType.audiobook(_:))
    {
      return sub_1007A38A4();
    }

    v10 = &BFMCatalogRequestRelationshipAudiobooks;
  }

  v11 = v0[8];
  v12 = v0[5];
  v13 = *(v0[6] + 8);
  v14 = *v10;
  v13(v11, v12);
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1003BD93C((v15 > 1), v16 + 1, 1);
  }

  v0[13] = _swiftEmptyArrayStorage;
  v17 = v0[5];
  _swiftEmptyArrayStorage[2] = v16 + 1;
  _swiftEmptyArrayStorage[v16 + 4] = v14;
  swift_setDeallocating();
  v13(v7 + v21, v17);
  swift_deallocClassInstance();
  sub_1007990F4();
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_100654240;
  v19 = v0[11];

  return MCatalogService.fetch(authorIDs:relationships:views:additionalParameters:batchSize:metadata:)(v22, _swiftEmptyArrayStorage, 0, 0, 150, v19);
}

uint64_t sub_100654240(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1006545B4;
  }

  else
  {
    v7 = sub_1006543F4;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1006543F4()
{
  v15 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = *(v1 + 64);
  v13 = _swiftEmptyDictionarySingleton;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v7 = (63 - v5) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v14[0] = *(*(v1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
      v10 = v14[0];
      sub_100655040(&v13, v14);
      if (v2)
      {
        break;
      }

      v6 &= v6 - 1;
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v1 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v11 = v13;

    v12 = v0[1];

    v12(v11);
  }
}

uint64_t sub_1006545B4()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_10065462C()
{
  v1 = sub_1001F1160(&qword_100ADDEB0, &unk_10081D460);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_10079A7A4();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079A714();
  v8 = v0;
  v9 = sub_100654BAC(v7, v8);

  if (v9 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v11 = 0;
    v28 = v9 & 0xFFFFFFFFFFFFFF8;
    v29 = v9 & 0xC000000000000001;
    v25 = (v24 + 32);
    v26 = (v24 + 56);
    v30 = _swiftEmptyArrayStorage;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v12 = sub_1007A3784();
      }

      else
      {
        if (v11 >= *(v28 + 16))
        {
          goto LABEL_16;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = sub_100799554();
      sub_10058249C(v15);
      v17 = v16;

      sub_100368A54(v17, v3);

      (*v26)(v3, 0, 1, v4);
      v18 = *v25;
      (*v25)(v6, v3, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10066B4A8(0, *(v30 + 2) + 1, 1, v30);
      }

      v20 = *(v30 + 2);
      v19 = *(v30 + 3);
      if (v20 >= v19 >> 1)
      {
        v30 = sub_10066B4A8((v19 > 1), v20 + 1, 1, v30);
      }

      v21 = v30;
      *(v30 + 2) = v20 + 1;
      v18(&v21[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20], v6, v4);
      ++v11;
      if (v14 == v27)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_19:

  return v30;
}

uint64_t sub_100654A60()
{
  v1 = OBJC_IVAR____TtC5Books29MediaAPIBooksByAuthorsService_catalogService;
  v2 = sub_100798FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100654B04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002104D8;

  return sub_100653DE0(a1, a2);
}

void *sub_100654BAC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v50 = sub_10079A734();
  v3 = *(v50 - 8);
  v4.n128_f64[0] = __chkstk_darwin(v50);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v48 = *(a1 + 16);
  if (v48)
  {
    v7 = 0;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v47 = v9;
    v46 = (v8 + 72);
    v45 = enum case for Book.MediaType.ebook(_:);
    v39 = enum case for Book.MediaType.audiobook(_:);
    v38 = BFMCatalogRequestRelationshipAudiobooks;
    v43 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v44 = BFMCatalogRequestRelationshipBooks;
    v42 = *(v8 + 56);
    v10 = _swiftEmptyArrayStorage;
    v40 = v8;
    while (1)
    {
      v53 = v7;
      v12 = v49;
      v11 = v50;
      v47(v49, v43 + v42 * v7, v50, v4);
      v13 = (*v46)(v12, v11);
      v14 = v44;
      if (v13 != v45)
      {
        v14 = v38;
        if (v13 != v39)
        {
LABEL_44:
          result = sub_1007A38A4();
          __break(1u);
          return result;
        }
      }

      v15 = v14;
      sub_1007995B4();
      v16 = sub_1007995A4();

      v17 = (v16 ? v16 : _swiftEmptyArrayStorage);
      v18 = v17 >> 62;
      v6 = v17 >> 62 ? sub_1007A38D4() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v10 >> 62;
      if (v10 >> 62)
      {
        v35 = sub_1007A38D4();
        v21 = v6 + v35;
        if (__OFADD__(v35, v6))
        {
LABEL_37:
          __break(1u);
          return v6;
        }
      }

      else
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = v6 + v20;
        if (__OFADD__(v20, v6))
        {
          goto LABEL_37;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v55 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v19)
      {
        goto LABEL_19;
      }

LABEL_20:
      v10 = sub_1007A3794();
      v23 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v18)
      {
        v26 = sub_1007A38D4();
      }

      else
      {
        v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v26)
      {
        if (((v25 >> 1) - v24) < v55)
        {
          goto LABEL_41;
        }

        v52 = v10;
        v27 = v23 + 8 * v24 + 32;
        v41 = v23;
        if (v18)
        {
          if (v26 < 1)
          {
            goto LABEL_43;
          }

          sub_1002CD1B4(&qword_100AEFC40, &qword_100AEFC38, &qword_100838F88);
          for (i = 0; i != v26; ++i)
          {
            sub_1001F1160(&qword_100AEFC38, &qword_100838F88);
            v29 = sub_1002B6B60(v54, i, v17);
            v31 = *v30;
            (v29)(v54, 0);
            *(v27 + 8 * i) = v31;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v10 = v52;
        if (v55 >= 1)
        {
          v32 = *(v41 + 16);
          v33 = __OFADD__(v32, v55);
          v34 = v32 + v55;
          if (v33)
          {
            goto LABEL_42;
          }

          *(v41 + 16) = v34;
        }
      }

      else
      {

        if (v55 > 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      v7 = v53 + 1;
      if (v53 + 1 == v48)
      {
        return v10;
      }
    }

    if (!v19)
    {
      v23 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v21 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_1007A38D4();
    goto LABEL_20;
  }

  return v6;
}

void sub_100655040(uint64_t a1, void **a2)
{
  v3 = sub_1001F1160(&qword_100AED488, &unk_1008352A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v44[-1] - v4;
  v6 = *a2;
  v7 = sub_10065462C();
  if (!*(v7 + 2))
  {

    return;
  }

  v8 = v7;
  v9 = sub_100799574();
  v11 = HIBYTE(v10) & 0xF;
  v12 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_67;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v45 = 0;
    sub_10063E4AC(v9, v10, 10);
    v16 = v39;
    v41 = v40;

    if (v41)
    {
      goto LABEL_67;
    }

LABEL_74:
    v44[0] = v8;
    sub_1001F1160(&qword_100AEFC28, &unk_100838F78);
    sub_1002CD1B4(&qword_100AEFC30, &qword_100AEFC28, &unk_100838F78);
    sub_100798DE4();
    sub_1005EA620(v5, v16);
    return;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v44[0] = v9;
    v44[1] = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v9 == 43)
    {
      if (v11)
      {
        v12 = v11 - 1;
        if (v11 != 1)
        {
          v16 = 0;
          v24 = v44 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              break;
            }

            v19 = __CFADD__(10 * v16, v25);
            v16 = 10 * v16 + v25;
            if (v19)
            {
              break;
            }

            ++v24;
            if (!--v12)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_79:
      __break(1u);
      return;
    }

    if (v9 != 45)
    {
      if (v11)
      {
        v16 = 0;
        v27 = v44;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          if (!is_mul_ok(v16, 0xAuLL))
          {
            break;
          }

          v19 = __CFADD__(10 * v16, v28);
          v16 = 10 * v16 + v28;
          if (v19)
          {
            break;
          }

          v27 = (v27 + 1);
          if (!--v11)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_65;
    }

    if (v11)
    {
      v12 = v11 - 1;
      if (v11 != 1)
      {
        v16 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (!is_mul_ok(v16, 0xAuLL))
          {
            break;
          }

          v19 = 10 * v16 >= v21;
          v16 = 10 * v16 - v21;
          if (!v19)
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_77;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v14 = sub_1007A37B4();
    v12 = v42;
  }

  v15 = *v14;
  if (v15 == 43)
  {
    if (v12 >= 1)
    {
      if (--v12)
      {
        v16 = 0;
        if (v14)
        {
          v22 = v14 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_65;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              goto LABEL_65;
            }

            v19 = __CFADD__(10 * v16, v23);
            v16 = 10 * v16 + v23;
            if (v19)
            {
              goto LABEL_65;
            }

            ++v22;
            if (!--v12)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_65;
    }

    goto LABEL_78;
  }

  if (v15 == 45)
  {
    if (v12 >= 1)
    {
      if (--v12)
      {
        v16 = 0;
        if (v14)
        {
          v17 = v14 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_65;
            }

            if (!is_mul_ok(v16, 0xAuLL))
            {
              goto LABEL_65;
            }

            v19 = 10 * v16 >= v18;
            v16 = 10 * v16 - v18;
            if (!v19)
            {
              goto LABEL_65;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_64:
        LOBYTE(v12) = 0;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v12)
  {
    v16 = 0;
    if (v14)
    {
      while (1)
      {
        v26 = *v14 - 48;
        if (v26 > 9)
        {
          goto LABEL_65;
        }

        if (!is_mul_ok(v16, 0xAuLL))
        {
          goto LABEL_65;
        }

        v19 = __CFADD__(10 * v16, v26);
        v16 = 10 * v16 + v26;
        if (v19)
        {
          goto LABEL_65;
        }

        ++v14;
        if (!--v12)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_65:
  v16 = 0;
  LOBYTE(v12) = 1;
LABEL_66:
  v45 = v12;
  v29 = v12;

  if ((v29 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_67:

  if (qword_100AD1998 != -1)
  {
    swift_once();
  }

  v30 = sub_10079ACE4();
  sub_100008B98(v30, qword_100B23728);
  v31 = sub_1007A29B4();
  v32 = v6;
  v33 = sub_10079ACC4();

  if (os_log_type_enabled(v33, v31))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136315138;
    v36 = sub_100799574();
    v38 = sub_1000070F4(v36, v37, v44);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v33, v31, "failed to create author ID from %s", v34, 0xCu);
    sub_1000074E0(v35);
  }
}

uint64_t sub_100655548(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADDEB0, &unk_10081D460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006555D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10065561C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10065567C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1006556D8(v5, v7) & 1;
}

uint64_t sub_1006556D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  sub_1004A0620(*(a1 + 1), *(a2 + 1));
  if (v5 & 1) == 0 || ((a1[16] ^ a2[16]) & 1) != 0 || ((a1[17] ^ a2[17]) & 1) != 0 || *(a1 + 3) != *(a2 + 3) || ((a1[32] ^ a2[32]) & 1) != 0 || ((a1[33] ^ a2[33]) & 1) != 0 || ((a1[34] ^ a2[34]))
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 5);
  v8 = *(a2 + 5);
  if (v7)
  {
    if (v8)
    {
      sub_1003AA874();
      v9 = v8;
      v10 = v7;
      v11 = sub_1007A3184();

      if (v11)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v8)
  {
LABEL_17:
    v6 = a1[48] ^ a2[48] ^ 1;
    return v6 & 1;
  }

LABEL_10:
  v6 = 0;
  return v6 & 1;
}

uint64_t property wrapper backing initializer of SearchBar.responderState(uint64_t a1)
{
  sub_1007A1214();
  sub_100656D78(&qword_100AEFCF0, &type metadata accessor for SearchBarResponderState, &protocol conformance descriptor for SearchBarResponderState);

  return sub_10079C024();
}

Swift::Void __swiftcall SearchBar.Coordinator.searchBar(_:textDidChange:)(UISearchBar _, Swift::String textDidChange)
{

  sub_1001F1160(&qword_100AEE3F0, &unk_100836DE0);
  sub_10079E1D4();
}

Swift::Void __swiftcall SearchBar.Coordinator.searchBarSearchButtonClicked(_:)(UISearchBar a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_searchAction);

  v2(v3);
}

id SearchBar.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchBar.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id SearchBar.makeCoordinator()()
{
  v1 = v0[1];
  v16 = *v0;
  v17 = v1;
  sub_1001F1160(&qword_100AEE3F0, &unk_100836DE0);
  sub_10079E1F4();
  v11 = v13;
  v2 = v14;
  v3 = v15;
  v5 = *(v0 + 9);
  v4 = *(v0 + 10);
  v6 = type metadata accessor for SearchBar.Coordinator();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_isEditing] = 0;
  v8 = &v7[OBJC_IVAR____TtCV5Books9SearchBar11Coordinator__text];
  *v8 = v11;
  *(v8 + 2) = v2;
  *(v8 + 3) = v3;
  v9 = &v7[OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_searchAction];
  *v9 = v5;
  v9[1] = v4;
  v12.receiver = v7;
  v12.super_class = v6;

  return objc_msgSendSuper2(&v12, "init");
}

id SearchBar.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1001F1160(&qword_100AEFD18, &qword_100839088);
  sub_10079D0C4();
  [v0 setDelegate:v2];

  [v0 setSearchBarStyle:2];
  return v0;
}

void SearchBar.updateUIView(_:context:)(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CA4();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AEFD18, &qword_100839088);
  sub_10079D0C4();
  v10 = *(*&v34[0] + OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_isEditing);

  if ((v10 & 1) == 0)
  {
    v11 = *(v2 + 16);
    v34[0] = *v2;
    v34[1] = v11;
    sub_1001F1160(&qword_100AEE3F0, &unk_100836DE0);
    sub_10079E1C4();
    v12 = sub_1007A2214();

    [a1 setText:v12];
  }

  sub_10079D0C4();
  v13 = *&v34[0];
  v14 = *(v2 + 80);
  v15 = (*&v34[0] + OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_searchAction);
  *v15 = *(v2 + 72);
  v15[1] = v14;

  if (sub_1007A11B4())
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v30 = sub_1007A2D74();
    v16 = swift_allocObject();
    v17 = *(v2 + 48);
    *(v16 + 48) = *(v2 + 32);
    *(v16 + 64) = v17;
    *(v16 + 80) = *(v2 + 64);
    v18 = *(v2 + 80);
    v19 = *(v2 + 16);
    *(v16 + 16) = *v2;
    *(v16 + 32) = v19;
    *(v16 + 96) = v18;
    *(v16 + 104) = a1;
    v39 = sub_100656A68;
    v40 = v16;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1003323D0;
    v38 = &unk_100A29248;
    v20 = _Block_copy(&aBlock);
    sub_1006569C0(v2, v34);
    v21 = a1;

    sub_1007A1C74();
    *&v34[0] = _swiftEmptyArrayStorage;
    sub_100656D78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    v22 = v30;
    sub_1007A2D94();
    _Block_release(v20);

    (*(v33 + 8))(v6, v4);
    (*(v31 + 8))(v9, v32);
  }

  if (sub_1007A11D4())
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v23 = sub_1007A2D74();
    v24 = swift_allocObject();
    v25 = *(v2 + 48);
    *(v24 + 48) = *(v2 + 32);
    *(v24 + 64) = v25;
    *(v24 + 80) = *(v2 + 64);
    v26 = *(v2 + 80);
    v27 = *(v2 + 16);
    *(v24 + 16) = *v2;
    *(v24 + 32) = v27;
    *(v24 + 96) = v26;
    *(v24 + 104) = a1;
    v39 = sub_10065697C;
    v40 = v24;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1003323D0;
    v38 = &unk_100A291F8;
    v28 = _Block_copy(&aBlock);
    sub_1006569C0(v2, v34);
    v29 = a1;

    sub_1007A1C74();
    *&v34[0] = _swiftEmptyArrayStorage;
    sub_100656D78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v28);

    (*(v33 + 8))(v6, v4);
    (*(v31 + 8))(v9, v32);
  }

  sub_100656308(a1);
}

uint64_t sub_1006562AC(uint64_t a1, void *a2, void (*a3)(void), SEL *a4)
{
  a3(0);
  [a2 *a4];
  [a2 isFirstResponder];
  return sub_1007A1204();
}

void sub_100656308(void *a1)
{
  v2 = v1;
  v4 = sub_10079BC44();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  [a1 setBackgroundColor:v10];

  v11 = [a1 searchTextField];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 currentTraitCollection];
  v15 = [v14 horizontalSizeClass];

  if (v15 == 1 || (v16 = [v12 currentTraitCollection], v17 = objc_msgSend(v16, "verticalSizeClass"), v16, v17 == 1))
  {
    sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
    v18 = [v9 secondarySystemBackgroundColor];
    sub_10079DEA4();
    v19 = sub_1007A3144();
  }

  else
  {
    v19 = 0;
  }

  [v13 setBackgroundColor:v19];

  v48 = v2;
  v20 = *(v2 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v13;
  sub_10079B9A4(v8);

  v21 = enum case for ColorScheme.light(_:);
  v22 = v8;
  v24 = v54;
  v23 = v55;
  v25 = v55 + 104;
  v26 = *(v55 + 104);
  v26(v54, enum case for ColorScheme.light(_:), v4);
  v27 = sub_10079BC34();
  v28 = *(v23 + 8);
  v28(v24, v4);
  v28(v22, v4);
  v55 = v23 + 8;
  v47 = v4;
  v52 = v21;
  v50 = v26;
  v51 = v25;
  v49 = v28;
  if (v27)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v29 = sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
  v30 = sub_1007A3144();
  v31 = v53;
  [v53 setTextColor:v30];

  sub_1001F1160(qword_100AEFD60, qword_100836260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = NSForegroundColorAttributeName;
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = NSForegroundColorAttributeName;
  v46 = v20;
  sub_10079B9A4(v22);

  v34 = v54;
  v35 = v47;
  v50(v54, v52, v47);
  sub_10079BC34();
  v36 = v49;
  v49(v34, v35);
  v36(v22, v35);
  sub_10079DE54();
  v37 = sub_1007A3144();
  *(inited + 64) = v29;
  *(inited + 40) = v37;
  sub_1001ED420(inited);
  swift_setDeallocating();
  sub_10039FAF4(inited + 32);
  v38 = objc_allocWithZone(NSAttributedString);
  v39 = sub_1007A2214();
  type metadata accessor for Key(0);
  sub_100656D78(&qword_100AEDDB0, type metadata accessor for Key, &unk_10080E428);
  isa = sub_1007A2024().super.isa;

  v41 = [v38 initWithString:v39 attributes:isa];

  [v31 setAttributedPlaceholder:v41];
  v42 = [v31 leftView];

  if (v42)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v22);

    v50(v34, v52, v35);
    sub_10079BC34();
    v43 = v34;
    v44 = v49;
    v49(v43, v35);
    v44(v22, v35);
    sub_10079DE54();
    v45 = sub_1007A3144();
    [v42 setTintColor:v45];
  }
}

uint64_t sub_1006569F8()
{

  return swift_deallocObject();
}

unint64_t sub_100656AA8()
{
  result = qword_100AEFD20;
  if (!qword_100AEFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFD20);
  }

  return result;
}

void *sub_100656B48@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v6 = *(v1 + 9);
  v5 = *(v1 + 10);
  v19 = *v1;
  v20 = v3;
  v21 = v4;
  sub_1001F1160(&qword_100AEE3F0, &unk_100836DE0);
  sub_10079E1F4();
  v14 = v16;
  v7 = v17;
  v8 = v18;
  v9 = type metadata accessor for SearchBar.Coordinator();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_isEditing] = 0;
  v11 = &v10[OBJC_IVAR____TtCV5Books9SearchBar11Coordinator__text];
  *v11 = v14;
  *(v11 + 2) = v7;
  *(v11 + 3) = v8;
  v12 = &v10[OBJC_IVAR____TtCV5Books9SearchBar11Coordinator_searchAction];
  *v12 = v6;
  v12[1] = v5;
  v15.receiver = v10;
  v15.super_class = v9;

  result = objc_msgSendSuper2(&v15, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100656C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100656D24();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100656C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100656D24();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100656CEC(uint64_t a1)
{
  sub_100656D24();
  sub_10079CC64();
  __break(1u);
}

unint64_t sub_100656D24()
{
  result = qword_100AEFD50;
  if (!qword_100AEFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFD50);
  }

  return result;
}

uint64_t sub_100656D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100656DC8(uint64_t a1)
{
  result = type metadata accessor for ChromeStyle(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_10079ACE4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100656E70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_100657120(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_10079ACE4();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v25 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v9 == v16)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, v7);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v25 + v13 + v14) & ~v14;

      v27(v28, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *a1 = v24;
  }
}

uint64_t sub_1006574A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v36 = a2;
  v38 = a1;
  v39 = a3;
  v5 = sub_10079BC44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1001F1160(&qword_100AEFDE8, &qword_1008393C8);
  __chkstk_darwin(v12 - 8);
  v37 = &v36 - v13;
  v14 = sub_1001F1160(&qword_100AEFDF0, &qword_1008393D0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_1001F1160(&qword_100AEFDF8, &qword_1008393D8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v11);

  (*(v6 + 104))(v8, enum case for ColorScheme.light(_:), v5);
  sub_10079BC34();
  v22 = *(v6 + 8);
  v22(v8, v5);
  v22(v11, v5);
  v23 = sub_10079DE54();
  v24 = v37;
  sub_100657904(v23, &qword_100AEFE08, &qword_100839438, &qword_100AEFDE8, &qword_1008393C8, v37);

  v25 = [objc_opt_self() currentTraitCollection];
  [v25 displayCornerRadius];
  v27 = v26;

  v28 = &v17[*(v15 + 44)];
  v29 = *(sub_10079C3D4() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_10079C9E4();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v27;
  *(v28 + 1) = v27;
  *&v28[*(sub_1001F1160(&qword_100AD97F8, &qword_100816BF0) + 36)] = 256;
  sub_10020B3C8(v24, v17, &qword_100AEFDE8, &qword_1008393C8);
  v32 = sub_10079DE54();
  sub_10020B3C8(v17, v21, &qword_100AEFDF0, &qword_1008393D0);
  v33 = &v21[*(v19 + 44)];
  *v33 = v32;
  *(v33 + 1) = a4;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  LOBYTE(v32) = sub_10079D294();
  v34 = v39;
  sub_10020B3C8(v21, v39, &qword_100AEFDF8, &qword_1008393D8);
  result = sub_1001F1160(&qword_100AEFE00, &qword_100839430);
  *(v34 + *(result + 36)) = v32;
  return result;
}

uint64_t sub_100657904@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = v7;
  sub_10079BCF4();
  v13 = v39;
  v14 = v39 * 0.5;
  v15 = v40;
  v28 = DWORD1(v40);
  v16 = *(&v40 + 1);
  v17 = v41;

  v18 = sub_10079E474();
  v20 = v19;
  *v42 = v39 * 0.5;
  *(v42 + 1) = v39;
  v42[1] = v40;
  *v43 = v41;
  *&v43[16] = a1;
  *&v43[24] = 256;
  v37 = v40;
  *v38 = v41;
  *&v38[10] = *&v43[10];
  v36 = v42[0];
  v46 = *v38;
  v47 = *&v38[16];
  v44 = v42[0];
  v45 = v40;
  *&v48 = v18;
  *(&v48 + 1) = v19;
  v21 = sub_1001F1160(a2, a3);
  (*(*(v21 - 8) + 16))(a6, v10, v21);
  v22 = (a6 + *(sub_1001F1160(a4, a5) + 36));
  v23 = *&v38[16];
  v22[2] = *v38;
  v22[3] = v23;
  v22[4] = v48;
  v24 = v45;
  *v22 = v44;
  v22[1] = v24;
  v49[2] = *v38;
  v49[3] = *&v38[16];
  v49[0] = v36;
  v49[1] = v37;
  v50 = v18;
  v51 = v20;
  sub_1000077D8(v42, v29, &qword_100AEFE10, &unk_100839440);
  sub_1000077D8(&v44, v29, &qword_100AF3700, &qword_100840150);
  sub_100007840(v49, &qword_100AF3700, &qword_100840150);
  *v29 = v14;
  *&v29[1] = v13;
  v30 = v15;
  v31 = v28;
  v32 = v16;
  v33 = v17;
  v34 = a1;
  v35 = 256;
  return sub_100007840(v29, &qword_100AEFE10, &unk_100839440);
}

uint64_t sub_100657B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v25 = a2;
  sub_1001F1234(&unk_100ADB470, &qword_100839340);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v4 = sub_10079E1A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10079C2A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = *(v23 + 24);
  v26 = v3;
  v27 = v15;
  v16 = v24;
  v28 = v24;
  sub_10079E474();
  sub_10079E194();
  v17 = v16[1];
  v31 = *v16;
  v32 = v17;
  WitnessTable = swift_getWitnessTable();
  sub_10079DC04();
  (*(v5 + 8))(v7, v4);
  v19 = sub_100423AF0();
  v29 = WitnessTable;
  v30 = v19;
  swift_getWitnessTable();
  sub_10039232C();
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_10039232C();
  return (v20)(v14, v8);
}

double sub_100657E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v19);

  v11 = v19[0];
  KeyPath = swift_getKeyPath();
  type metadata accessor for PageFramedAndBorderedView(0, a2, a3, v13);
  sub_10039232C();
  v18[0] = KeyPath;
  v18[1] = v11;
  v19[0] = v18;
  (*(v5 + 16))(v7, v10, a2);
  v19[1] = v7;

  v17[0] = sub_1001F1160(&unk_100ADB470, &qword_100839340);
  v17[1] = a2;
  v16[0] = sub_1002AAFC4();
  v16[1] = a3;
  sub_10038FA94(v19, 2uLL, v17);

  v14 = *(v5 + 8);
  v14(v10, a2);
  v14(v7, a2);

  return result;
}

unint64_t sub_10065809C()
{
  result = qword_100AEFE18;
  if (!qword_100AEFE18)
  {
    sub_1001F1234(&qword_100AEFE00, &qword_100839430);
    sub_100658128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFE18);
  }

  return result;
}

unint64_t sub_100658128()
{
  result = qword_100AEFE20;
  if (!qword_100AEFE20)
  {
    sub_1001F1234(&qword_100AEFDF8, &qword_1008393D8);
    sub_1006581B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFE20);
  }

  return result;
}

unint64_t sub_1006581B4()
{
  result = qword_100AEFE28;
  if (!qword_100AEFE28)
  {
    sub_1001F1234(&qword_100AEFDF0, &qword_1008393D0);
    sub_10065826C();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8, &qword_100816BF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFE28);
  }

  return result;
}

unint64_t sub_10065826C()
{
  result = qword_100AEFE30;
  if (!qword_100AEFE30)
  {
    sub_1001F1234(&qword_100AEFDE8, &qword_1008393C8);
    sub_100005920(&qword_100AEFE38, &qword_100AEFE08, &qword_100839438, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&qword_100AEFE40, &qword_100AF3700, &qword_100840150, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFE30);
  }

  return result;
}

void sub_100658350(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  v2 = v6[1];
  v3 = v7;
  v4 = v8;
  v5 = v9;
  *a1 = v6[0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_1006583E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_100658458()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_1006584CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = a3 + 32;
  v6 = _swiftEmptyArrayStorage;
  v21 = a3 + 32;
  v23 = *(a3 + 16);
  do
  {
    v22 = v6;
    v7 = (v5 + 72 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v9 = v7[3];
      v28 = v7[2];
      *v29 = v9;
      *&v29[15] = *(v7 + 63);
      v10 = v7[1];
      v26 = *v7;
      v27 = v10;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      v11 = v29[18];
      if ((v29[18] & 0x80000000) == 0)
      {
        break;
      }

      v12 = v29[17];
      v13 = *v29;
      sub_100529328(&v26, v25);
      sub_100529328(&v26, v25);

      if (v24)
      {
        v14 = v11;
      }

      else
      {
        v14 = v12;
      }

      v3 = v23;
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

      result = sub_10049F8FC(&v26);
      v7 = (v7 + 72);
      if (v4 == v23)
      {
        return v22;
      }
    }

    sub_100529328(&v26, v25);
LABEL_14:
    v6 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    v30 = v22;
    if ((result & 1) == 0)
    {
      result = sub_1003BD7A0(0, v22[2] + 1, 1);
      v6 = v30;
    }

    v5 = v21;
    v16 = v6[2];
    v15 = v6[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1003BD7A0((v15 > 1), v16 + 1, 1);
      v6 = v30;
    }

    v6[2] = v16 + 1;
    v17 = &v6[9 * v16];
    *(v17 + 2) = v26;
    v18 = v27;
    v19 = v28;
    v20 = *v29;
    *(v17 + 95) = *&v29[15];
    *(v17 + 4) = v19;
    *(v17 + 5) = v20;
    *(v17 + 3) = v18;
  }

  while (v4 != v3);
  return v6;
}

__n128 sub_1006586C0@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v7);

  result = v7[1];
  v3 = v7[0];
  v4 = v8;
  v5 = v7[4];
  v6 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v6;
  *(a1 + 64) = v5;
  *(a1 + 80) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

void sub_100658778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a2 + 48;
    do
    {
      v5 = (v4 + 72 * v3);
      for (i = v3; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }

        v7 = *(v5 + 24) | (*(v5 + 50) << 16);
        if (v7 & 0xC00000) == 0x800000 && (v5[6] & 0x100) == 0 && (v5[6])
        {
          break;
        }

        v5 += 9;
        if (v3 == v2)
        {
          return;
        }
      }

      v8 = *(v5 - 1);
      v20 = *(v5 - 2);
      v21 = v4;
      v9 = v5[1];
      v10 = v5[3];
      v18 = v5[2];
      v19 = *v5;
      v11 = v5[4];
      v12 = v5[5];

      v13 = v11;

      v22 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1003BD7A0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_1003BD7A0((v14 > 1), v15 + 1, 1);
        v16 = v15 + 1;
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = &_swiftEmptyArrayStorage[9 * v15];
      v4 = v21;
      v17[4] = v20;
      v17[5] = v22;
      v17[6] = v19;
      v17[7] = v9;
      v17[8] = v18;
      v17[9] = v10;
      v17[10] = v11;
      v17[11] = v12;
      *(v17 + 98) = BYTE2(v7);
      *(v17 + 48) = v7;
    }

    while (v3 != v2);
  }
}

_OWORD *_s5Books16SidebarViewModelC13_modelObjects33_BE2F35C5CD231E1E00E5EBFF782FD36ELL7Combine9PublishedVySayAC4ItemOGGvpfi_0()
{
  sub_1001F1160(&unk_100AE0A60, &unk_100821380);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100812CF0;
  v1 = objc_opt_self();
  sub_10065AA20(0, [v1 bc_booksKeyColor], 0, v30);
  v2 = (v31 | (v32 << 16)) & 0x1010101;
  v3 = v30[1];
  *(v0 + 32) = v30[0];
  *(v0 + 48) = v3;
  v4 = v30[3];
  *(v0 + 64) = v30[2];
  *(v0 + 80) = v4;
  *(v0 + 96) = v2;
  *(v0 + 98) = BYTE2(v2) | 0x80;
  sub_10065AA20(1, [v1 bc_booksKeyColor], 0, v33);
  v5 = v33[1];
  *(v0 + 104) = v33[0];
  v6 = (v34 | (v35 << 16)) & 0x1010101;
  *(v0 + 120) = v5;
  *(v0 + 136) = v33[2];
  *(v0 + 152) = v33[3];
  *(v0 + 168) = v6;
  *(v0 + 170) = BYTE2(v6) | 0x80;
  sub_10065AA20(2, [v1 bc_booksKeyColor], 0, v36);
  v7 = (v37 | (v38 << 16)) & 0x1010101;
  v8 = v36[1];
  *(v0 + 176) = v36[0];
  *(v0 + 192) = v8;
  v9 = v36[3];
  *(v0 + 208) = v36[2];
  *(v0 + 224) = v9;
  *(v0 + 240) = v7;
  *(v0 + 242) = BYTE2(v7) | 0x80;
  v29 = v1;
  sub_10065AA20(4, [v1 bc_booksKeyColor], 0, v39);
  v10 = v39[0];
  v11 = v39[1];
  v12 = v39[2];
  v13 = v39[3];
  v15 = v39[4];
  v14 = v39[5];
  v17 = v39[6];
  v16 = v39[7];
  v18 = (v40 | (v41 << 16)) & 0x10101 | 0xFF800000;
  if (_UISolariumEnabled())
  {
    v19 = *(v0 + 16);
    if (v19 >= *(v0 + 24) >> 1)
    {
      v0 = sub_10066BB24(1, v19 + 1, 1, v0);
    }

    v48[0] = v10;
    v48[1] = v11;
    v48[2] = v12;
    v48[3] = v13;
    v48[4] = v15;
    v48[5] = v14;
    v48[6] = v17;
    v48[7] = v16;
    v49 = v18;
    v50 = BYTE2(v18);
    sub_1002F97B0(0, 0, 1uLL, v48);
    sub_100529134(v39);
  }

  else
  {
    v0 = sub_10066BB24(1, 4, 1, v0);
    *(v0 + 16) = 4;
    *(v0 + 248) = v10;
    *(v0 + 256) = v11;
    *(v0 + 264) = v12;
    *(v0 + 272) = v13;
    *(v0 + 280) = v15;
    *(v0 + 288) = v14;
    *(v0 + 296) = v17;
    *(v0 + 304) = v16;
    *(v0 + 314) = BYTE2(v18);
    *(v0 + 312) = v18;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10080B690;
  result = [v29 _monochromeCellImageTintColor];
  if (result)
  {
    sub_10065AA20(5, result, 0, v42);
    v22 = (v43 | (v44 << 16)) & 0x10101;
    v23 = v42[1];
    *(v20 + 32) = v42[0];
    *(v20 + 48) = v23;
    v24 = v42[3];
    *(v20 + 64) = v42[2];
    *(v20 + 80) = v24;
    *(v20 + 96) = v22;
    *(v20 + 98) = BYTE2(v22) | 0x80;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10080B690;
    result = [v29 _monochromeCellImageTintColor];
    if (result)
    {
      sub_10065AA20(13, result, 0, v45);
      v26 = (v46 | (v47 << 16)) & 0x10101;
      v27 = v45[1];
      *(v25 + 32) = v45[0];
      *(v25 + 48) = v27;
      v28 = v45[3];
      *(v25 + 64) = v45[2];
      *(v25 + 80) = v28;
      *(v25 + 96) = v26;
      *(v25 + 98) = BYTE2(v26) | 0xC0;
      result = swift_allocObject();
      result[1] = xmmword_100812CF0;
      *(result + 4) = 1;
      *(result + 5) = v0;
      *(result + 6) = 1;
      *(result + 98) = 0;
      *(result + 48) = 0;
      *(result + 13) = 2;
      *(result + 14) = v20;
      *(result + 15) = 0;
      *(result + 170) = 0;
      *(result + 84) = 0;
      *(result + 22) = 3;
      *(result + 23) = v25;
      *(result + 24) = 0;
      *(result + 242) = 0;
      *(result + 120) = 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SidebarViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC5Books16SidebarViewModel__programmaticSelection;
  v2 = sub_1001F1160(&unk_100AE8C88, &qword_100839470);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books16SidebarViewModel__modelObjects;
  v4 = sub_1001F1160(&qword_100AEFE68, &qword_100839478);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books16SidebarViewModel__accountInfo;
  v6 = sub_1001F1160(&qword_100AEFE78, &qword_100839480);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Books16SidebarViewModel__editMode;
  v8 = sub_1001F1160(&qword_100AEFE88, &qword_100839488);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t SidebarViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5Books16SidebarViewModel__programmaticSelection;
  v2 = sub_1001F1160(&unk_100AE8C88, &qword_100839470);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books16SidebarViewModel__modelObjects;
  v4 = sub_1001F1160(&qword_100AEFE68, &qword_100839478);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books16SidebarViewModel__accountInfo;
  v6 = sub_1001F1160(&qword_100AEFE78, &qword_100839480);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Books16SidebarViewModel__editMode;
  v8 = sub_1001F1160(&qword_100AEFE88, &qword_100839488);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_100659148()
{
  v1 = sub_1001F1160(&qword_100AEFE88, &qword_100839488);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v21 - v2;
  v21 = sub_1001F1160(&qword_100AEFE78, &qword_100839480);
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v21 - v4;
  v6 = sub_1001F1160(&qword_100AEFE68, &qword_100839478);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_1001F1160(&unk_100AE8C88, &qword_100839470);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC5Books16SidebarViewModel__programmaticSelection;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v29 = xmmword_10080B6C0;
  v30 = 0;
  sub_1001F1160(&qword_100AE8CC0, &qword_100839460);
  sub_10079B964();
  (*(v11 + 32))(v0 + v14, v13, v10);
  v15 = OBJC_IVAR____TtC5Books16SidebarViewModel__modelObjects;
  *&v25 = _s5Books16SidebarViewModelC13_modelObjects33_BE2F35C5CD231E1E00E5EBFF782FD36ELL7Combine9PublishedVySayAC4ItemOGGvpfi_0();
  sub_1001F1160(&qword_100AEFE50, &qword_100839468);
  sub_10079B964();
  (*(v7 + 32))(v0 + v15, v9, v6);
  v16 = OBJC_IVAR____TtC5Books16SidebarViewModel__accountInfo;
  v17 = [objc_allocWithZone(CNContact) init];
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = v17;
  LOBYTE(v27) = 1;
  sub_10079B964();
  (*(v3 + 32))(v0 + v16, v5, v21);
  v18 = OBJC_IVAR____TtC5Books16SidebarViewModel__editMode;
  LOBYTE(v25) = 0;
  v19 = v22;
  sub_10079B964();
  (*(v23 + 32))(v0 + v18, v19, v24);
  return v0;
}

void sub_100659514(uint64_t a1)
{
  sub_100205CB8(319, &qword_100AEFEC8, &qword_100AE8CC0, &qword_100839460);
  if (v1 <= 0x3F)
  {
    sub_100205CB8(319, &qword_100AEFED0, &qword_100AEFE50, &qword_100839468);
    if (v2 <= 0x3F)
    {
      sub_100205C6C(319, &qword_100AEFED8, &type metadata for SidebarViewModel.AccountInfo);
      if (v3 <= 0x3F)
      {
        sub_100205C6C(319, &unk_100AEFEE0, &type metadata for SidebarViewModel.EditMode);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1006596B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_100659728()
{
  v1 = OBJC_IVAR____TtCC5Books16SidebarViewModel16SearchFieldModel__text;
  v2 = sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10065980C(uint64_t a1)
{
  sub_100205CB8(319, &qword_100AD4F28, &qword_100AD4F30, &unk_100816940);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006598BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100659904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100659954(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100659978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 67))
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

uint64_t sub_1006599C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100659A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFFFD && *(a1 + 67))
  {
    return (*a1 + 2097149);
  }

  v3 = ((*(a1 + 66) >> 6) | (4 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFF;
  if (v3 >= 0x1FFFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100659ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 2097149;
    if (a3 >= 0x1FFFFD)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFD)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 66) = (v3 >> 13) & 0xFE;
      *(result + 64) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_100659B6C(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

uint64_t sub_100659B88(uint64_t a1, int a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  v4 = (v3 | (*(result + 2) << 16)) & 0x1010101 | (a2 << 22);
  *result = v3 & 0x101;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_100659BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFFFD && *(a1 + 81))
  {
    return (*a1 + 2097149);
  }

  v3 = ((*(a1 + 66) >> 6) | (4 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFF;
  if (v3 >= 0x1FFFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100659C34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 2097149;
    if (a3 >= 0x1FFFFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 66) = (v3 >> 13) & 0xFE;
      *(result + 64) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

Swift::Int sub_100659CE4(uint64_t a1)
{
  sub_1007A3C04();
  sub_1007A3C14(*v1);
  return sub_1007A3C44();
}

unint64_t sub_100659D24@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10065AA10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100659D60()
{
  v1 = 0x686372616573;
  v2 = 0x7972617262696CLL;
  if (*v0 != 2)
  {
    v2 = 0x697463656C6C6F63;
  }

  if (*v0)
  {
    v1 = 0x6F6F42656C707061;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_100659DE4()
{
  sub_1007A3C04();
  v1 = *v0;
  if ((*(v0 + 66) >> 6) > 1u)
  {
    if (*(v0 + 66) >> 6 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    sub_1007A3C14(v2);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else if (*(v0 + 66) >> 6)
  {
    sub_1007A3C14(1uLL);
    sub_1007A3C14(v1);
  }

  else
  {
    sub_1007A3C14(0);
    sub_1007A3C14(v1);
  }

  return sub_1007A3C44();
}

void sub_100659EA4(uint64_t a1)
{
  v2 = *v1;
  if ((*(v1 + 66) >> 6) > 1u)
  {
    if (*(v1 + 66) >> 6 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    sub_1007A3C14(v4);

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    if (*(v1 + 66) >> 6)
    {
      sub_1007A3C14(1uLL);
      v3 = v2;
    }

    else
    {
      sub_1007A3C14(0);
      v3 = v2;
    }

    sub_1007A3C14(v3);
  }
}

Swift::Int sub_100659F58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 66);
  sub_1007A3C04();
  if ((v3 >> 6) > 1u)
  {
    if (v3 >> 6 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    sub_1007A3C14(v4);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else if (v3 >> 6)
  {
    sub_1007A3C14(1uLL);
    sub_1007A3C14(v2);
  }

  else
  {
    sub_1007A3C14(0);
    sub_1007A3C14(v2);
  }

  return sub_1007A3C44();
}

uint64_t sub_10065A008()
{
  if ((v0[66] >> 6) > 1u)
  {
    v1 = *(v0 + 2);
  }

  else
  {
    v1 = 0x686372616573;
    if (!(v0[66] >> 6))
    {
      v2 = 0x7972617262696CLL;
      if (*v0 != 2)
      {
        v2 = 0x697463656C6C6F63;
      }

      v3 = 0x6F6F42656C707061;
      if (!*v0)
      {
        v3 = 0x686372616573;
      }

      if (*v0 <= 1u)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }
  }

  return v1;
}

BOOL sub_10065A0DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v8[0] = v2;
  *(v8 + 15) = *(a1 + 63);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v10[0] = v4;
  *(v10 + 15) = *(a2 + 63);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10065A7E0(v7, v9);
}

unint64_t sub_10065A13C()
{
  result = qword_100AF0078;
  if (!qword_100AF0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0078);
  }

  return result;
}

unint64_t sub_10065A194()
{
  result = qword_100AF0080;
  if (!qword_100AF0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0080);
  }

  return result;
}

unint64_t sub_10065A1EC()
{
  result = qword_100AF0088;
  if (!qword_100AF0088)
  {
    sub_1001F1234(&qword_100AF0090, qword_100839908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0088);
  }

  return result;
}

unint64_t sub_10065A254()
{
  result = qword_100AF0098;
  if (!qword_100AF0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0098);
  }

  return result;
}

Swift::Int sub_10065A2A8()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

Swift::Int sub_10065A2F4(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

uint64_t sub_10065A33C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 64);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 64);
  v16 = *(a2 + 65);
  v17 = *(a1 + 65);
  v14 = *(a2 + 66);
  v15 = *(a1 + 66);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1007A3AB4() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v9 && v5 == v10)
  {
    result = 0;
    if (v6 != v11)
    {
      return result;
    }

    goto LABEL_14;
  }

  v13 = sub_1007A3AB4();
  result = 0;
  if ((v13 & 1) != 0 && ((v6 ^ v11) & 1) == 0)
  {
LABEL_14:
    if (((v17 ^ v16) & 1) == 0)
    {
      return v15 ^ v14 ^ 1u;
    }
  }

  return result;
}

unint64_t sub_10065A47C()
{
  result = qword_100AF00A0;
  if (!qword_100AF00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF00A0);
  }

  return result;
}

unint64_t sub_10065A4D0(uint64_t a1)
{
  result = sub_10065A4F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10065A4F8()
{
  result = qword_100AF00A8;
  if (!qword_100AF00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF00A8);
  }

  return result;
}

unint64_t sub_10065A550()
{
  result = qword_100AF00B0;
  if (!qword_100AF00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF00B0);
  }

  return result;
}

unint64_t sub_10065A5A4(uint64_t a1)
{
  result = sub_10065A5CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10065A5CC()
{
  result = qword_100AF00B8;
  if (!qword_100AF00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF00B8);
  }

  return result;
}

uint64_t sub_10065A654(uint64_t a1)
{
  result = sub_10065A698(&qword_100AF00C8, &unk_100839B18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10065A698(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SidebarViewModel.SearchFieldModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10065A6DC@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10065A75C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

BOOL sub_10065A7E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 66);
  if ((v5 >> 6) > 1u)
  {
    v7 = a1[1];
    v8 = a1[2];
    v10 = a1[3];
    v9 = a1[4];
    v11 = a1[5];
    v12 = *(a1 + 32) | (*(a1 + 66) << 16);
    if (v5 >> 6 == 2)
    {
      v13 = *(a2 + 64) | (*(a2 + 66) << 16);
      if ((v13 & 0xC00000) == 0x800000)
      {
        if (v14 = *(a2 + 16), v15 = *(a2 + 24), v16 = *(a2 + 32), v17 = *(a2 + 40), v4 == *a2) && v7 == *(a2 + 8) || (sub_1007A3AB4())
        {
          if (v8 == v14 && v10 == v15 || (sub_1007A3AB4()) && (v9 == v16 && v11 == v17 || (sub_1007A3AB4()) && ((v12 ^ v13) & 1) == 0 && ((v12 ^ v13) & 0x100) == 0)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      v13 = *(a2 + 64) | (*(a2 + 66) << 16);
      if (v13 >= 0xC00000)
      {
        if (v18 = *(a2 + 16), v19 = *(a2 + 24), v20 = *(a2 + 32), v21 = *(a2 + 40), v4 == *a2) && v7 == *(a2 + 8) || (sub_1007A3AB4())
        {
          if (v8 == v18 && v10 == v19 || (sub_1007A3AB4()) && (v9 == v20 && v11 == v21 || (sub_1007A3AB4()) && ((v12 ^ v13) & 1) == 0 && ((v12 ^ v13) & 0x100) == 0)
          {
LABEL_33:
            if ((HIWORD(v12) & 1) == (v13 & 0x10000) >> 16)
            {
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  if (v5 >> 6)
  {
    if (((*(a2 + 66) << 16) & 0xC00000) == 0x400000)
    {
      return v4 == *a2;
    }
  }

  else if (((*(a2 + 66) << 16) & 0xC00000) == 0)
  {
    return (*a2 ^ v4) == 0;
  }

  return 0;
}

unint64_t sub_10065AA10(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_10065AA20(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v7 = sub_1001F1160(&qword_100AE8CE0, &qword_10082EC48);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10079B174();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10079B134();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  if (a1 <= 0xFu && ((1 << a1) & 0xE01F) != 0)
  {
    v19 = 0;
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_4;
  }

  v38 = v16;
  if (RootBarItemsProvider.ItemKind.rawValue.getter(a1) == 0x7972617262696CLL && v32 == 0xE700000000000000)
  {

LABEL_24:
    v39 = _swiftEmptyArrayStorage;
    v19 = 1;
    goto LABEL_4;
  }

  v33 = sub_1007A3AB4();

  if (v33)
  {
    goto LABEL_24;
  }

  sub_1001F1160(&qword_100AE8CF8, &unk_10082EC50);
  v34 = *(sub_10079B1B4() - 8);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10080B690;
  (*(v15 + 104))(v18, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v38);
  v36 = sub_10079B144();
  v19 = 1;
  (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  sub_10079B164();
  v39 = v35;
  sub_10079B114();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v18, v38);
LABEL_4:
  v38 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(a1);
  v21 = v20;
  sub_10047E894(a1, v42);
  if (v42[1])
  {
    v22 = v42[2];
    v23 = v42[3];

    sub_100247AE4(v42);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  sub_10047F800(a1, v43);
  if (v44)
  {
    v24 = v45;
    v25 = v46;

    sub_100247AE4(v43);
    if (v19)
    {
LABEL_9:
      if (RootBarItemsProvider.ItemKind.rawValue.getter(a1) == 0x7972617262696CLL && v26 == 0xE700000000000000)
      {

        v27 = 0;
      }

      else
      {
        v28 = sub_1007A3AB4();

        v27 = v28 ^ 1;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v25 = 0xE400000000000000;
    v24 = 1802465122;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
LABEL_15:
  if (RootBarItemsProvider.ItemKind.rawValue.getter(a1) == 0x656C6C6F4377656ELL && v29 == 0xED00006E6F697463)
  {

    v30 = 1;
  }

  else
  {
    v30 = sub_1007A3AB4();
  }

  v31 = v40 & 1;
  *a4 = v38;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 40) = v25;
  *(a4 + 48) = v41;
  *(a4 + 56) = v39;
  *(a4 + 64) = v27 & 1;
  *(a4 + 65) = v31;
  *(a4 + 66) = v30 & 1;
}

void *sub_10065AF40(char a1)
{
  v2 = sub_1001F1160(&qword_100AE8CE0, &qword_10082EC48);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1001F1160(&qword_100AE8CE8, &unk_100839B80);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_10079B1A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10079B134();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xFE) != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001F1160(&qword_100AE8CF8, &unk_10082EC50);
  sub_10079B1B4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080B690;
  (*(v13 + 104))(v15, enum case for UICellAccessory.DisplayedState.always(_:), v12);
  v17 = sub_10079B184();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = sub_10079B144();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_10079B194();
  sub_10079B154();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  return v16;
}

uint64_t sub_10065B2BC(unsigned __int8 a1)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v25[-v7];
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v25[-v14];
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v10 + 16))(v12, v15, v9);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v3 + 16))(v5, v8, v2);
      v19 = sub_1007A22D4(v12, 0, 0, v18, v5, "Library sidebar header", 22, 2);
LABEL_9:
      v16 = v19;
      (*(v3 + 8))(v8, v2);
      (*(v10 + 8))(v15, v9);
      return v16;
    }

    sub_1007A2154();
    sub_100796C94();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for BundleFinder();
    v23 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:v23];
    (*(v3 + 16))(v5, v8, v2);
    v22 = "Collections sidebar header";
LABEL_8:
    v19 = sub_1007A22D4(v12, 0, 0, v21, v5, v22, 26, 2);
    goto LABEL_9;
  }

  if (a1)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for BundleFinder();
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:v20];
    (*(v3 + 16))(v5, v8, v2);
    v22 = "Apple Books sidebar header";
    goto LABEL_8;
  }

  return a1;
}

id sub_10065B730()
{
  v1 = OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView;
  v2 = *(v0 + OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MainToolbarView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10065B844()
{
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, "viewDidLoad");
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 setNavigationBarHidden:1 animated:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC5Books21MainToolbarController_mainContentViewController];
  [v0 addChildViewController:v3];
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v6 addSubview:v5];

  [v3 didMoveToParentViewController:v0];
  v8 = sub_10065B730();
  *&v8[OBJC_IVAR____TtC5Books15MainToolbarView_delegate + 8] = &off_100A297E8;
  swift_unknownObjectWeakAssign();

  v9 = OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView;
  [*&v0[OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  [v10 addSubview:*&v0[v9]];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100815F70;
  v13 = [*&v0[v9] topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v12 + 32) = v17;
  v18 = [*&v0[v9] leadingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v12 + 40) = v22;
  v23 = [*&v0[v9] trailingAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v12 + 48) = v27;
  v28 = [v5 topAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v12 + 56) = v32;
  v33 = [v5 leadingAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v12 + 64) = v37;
  v38 = [v5 trailingAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v12 + 72) = v42;
  v43 = [v5 bottomAnchor];
  v44 = [v0 view];
  if (v44)
  {
    v45 = v44;
    v46 = objc_opt_self();
    v47 = [v45 bottomAnchor];

    v48 = [v43 constraintEqualToAnchor:v47];
    *(v12 + 80) = v48;
    sub_10002267C();
    isa = sub_1007A25D4().super.isa;

    [v46 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_10065BE20()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = sub_10065B730();
      v5 = OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView;
      [*&v0[OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView] bounds];
      [v4 convertRect:v3 toCoordinateSpace:?];
      v7 = v6;

      [v3 frame];
      v9 = *&v0[v5];
      v10 = *&v9[OBJC_IVAR____TtC5Books15MainToolbarView_leadingStackViewConstraint];
      if (v10)
      {
        v11 = v8;
        v12 = v9;
        v13 = v10;
        [v13 setActive:0];
        v14 = 100.0;
        if (v11 != v7)
        {
          v14 = 12.0;
        }

        [v13 setConstant:v14];
        [v13 setActive:1];

        v3 = v12;
      }
    }

    return [*&v0[OBJC_IVAR____TtC5Books21MainToolbarController_syncLayoutController] flush];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10065C14C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF0140);
  sub_100008B98(v0, qword_100AF0140);
  sub_10001389C();
  return sub_1007A33F4();
}

double sub_10065C1C0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;

  return result;
}

id sub_10065C1DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = objc_allocWithZone(type metadata accessor for MicaLayerView());

  return sub_10065C334(v1, v2, 0, v3, v4);
}

uint64_t sub_10065C244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10065CCCC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10065C2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10065CCCC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10065C30C(uint64_t a1)
{
  sub_10065CCCC();
  sub_10079CC64();
  __break(1u);
}

id sub_10065C334(uint64_t a1, unint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v11 = &v6[OBJC_IVAR____TtC5Books13MicaLayerView_mica];
  *v11 = a1;
  v11[1] = a2;
  *&v6[OBJC_IVAR____TtC5Books13MicaLayerView_onTimeEnd] = a4;
  *&v6[OBJC_IVAR____TtC5Books13MicaLayerView_offTimeEnd] = a5;
  *&v6[OBJC_IVAR____TtC5Books13MicaLayerView_timeToStopPlayback] = 0;
  v12 = objc_opt_self();

  v13 = [v12 mainBundle];

  v14 = sub_1007A2214();

  v15 = sub_1007A2214();
  v16 = [v13 pathForResource:v14 ofType:v15];

  if (v16 && (v17 = [objc_allocWithZone(TUIMicaPlayer) initWithPath:v16 retinaScale:2.0], v16, v17))
  {
    result = [v17 rootLayer];
    if (result)
    {
      v19 = result;

      [v19 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      CGAffineTransformMakeScale(&v49, 0.5, 0.5);
      v51.origin.x = v21;
      v51.origin.y = v23;
      v51.size.width = v25;
      v51.size.height = v27;
      v52 = CGRectApplyAffineTransform(v51, &v49);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      v32 = &v6[OBJC_IVAR____TtC5Books13MicaLayerView_micaSize];
      *v32 = v52.size.width;
      v32[1] = v52.size.height;
      *&v6[OBJC_IVAR____TtC5Books13MicaLayerView_player] = v17;
      v6[OBJC_IVAR____TtC5Books13MicaLayerView_isOn] = a3 & 1;
      v33 = v17;
      v34 = v33;
      if (a3)
      {
        [v33 setPlaybackTime:a4];
      }

      v48.receiver = v6;
      v48.super_class = type metadata accessor for MicaLayerView();
      v35 = objc_msgSendSuper2(&v48, "initWithFrame:", x, y, width, height);
      [v34 setDelegate:v35];
      v36 = [v35 layer];
      [v34 addToLayer:v36 onTop:1 gravity:kCAGravityCenter];

      LODWORD(v37) = 1144750080;
      [v35 setContentHuggingPriority:1 forAxis:v37];
      LODWORD(v38) = 1144750080;
      [v35 setContentHuggingPriority:0 forAxis:v38];

      return v35;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100AD19A0 != -1)
    {
      swift_once();
    }

    v39 = sub_10079ACE4();
    sub_100008B98(v39, qword_100AF0140);

    v40 = sub_10079ACC4();
    v41 = sub_1007A29B4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v49.a = v43;
      *v42 = 136315138;
      v44 = sub_1000070F4(a1, a2, &v49);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "failed loading %s", v42, 0xCu);
      sub_1000074E0(v43);
    }

    else
    {
    }

    v45 = &v6[OBJC_IVAR____TtC5Books13MicaLayerView_micaSize];
    *v45 = 0;
    v45[1] = 0;
    v46 = [objc_allocWithZone(TUIMicaPlayer) init];
    *&v6[OBJC_IVAR____TtC5Books13MicaLayerView_player] = v46;
    v6[OBJC_IVAR____TtC5Books13MicaLayerView_isOn] = 0;
    v47 = type metadata accessor for MicaLayerView();
    v50.receiver = v6;
    v50.super_class = v47;
    return objc_msgSendSuper2(&v50, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  }

  return result;
}

id sub_10065C87C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicaLayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10065C924(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books13MicaLayerView_player);
  result = [v3 isPlaying];
  if (result)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result = [a1 playbackTime];
    if (*(v1 + OBJC_IVAR____TtC5Books13MicaLayerView_timeToStopPlayback) <= v6)
    {
      [v3 pause];
      result = [v3 playbackTime];
      if (*(v1 + OBJC_IVAR____TtC5Books13MicaLayerView_offTimeEnd) <= v7)
      {

        return [v3 setPlaybackTime:0.0];
      }
    }
  }

  return result;
}

unint64_t sub_10065CAB0()
{
  result = qword_100AF0218;
  if (!qword_100AF0218)
  {
    sub_1001F1234(&unk_100AF0220, &qword_100839E10);
    sub_1002AB07C();
    sub_10065CB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0218);
  }

  return result;
}

unint64_t sub_10065CB3C()
{
  result = qword_100AF0230;
  if (!qword_100AF0230)
  {
    sub_1001F1234(&qword_100AF0238, &qword_100839E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0230);
  }

  return result;
}

unint64_t sub_10065CBA4()
{
  result = qword_100AF0240;
  if (!qword_100AF0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0240);
  }

  return result;
}

double sub_10065CBF8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC5Books13MicaLayerView_isOn);
  *(a1 + OBJC_IVAR____TtC5Books13MicaLayerView_isOn) = a3;
  if (v3 != (a3 & 1))
  {
    v6 = *(a1 + OBJC_IVAR____TtC5Books13MicaLayerView_player);
    v7 = [v6 isPlaying];
    if (a3)
    {
      if (v7)
      {
        [v6 setPlaybackTime:0.0];
      }

      else
      {
        [v6 play];
      }

      v8 = &OBJC_IVAR____TtC5Books13MicaLayerView_onTimeEnd;
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        [v6 play];
      }

      v8 = &OBJC_IVAR____TtC5Books13MicaLayerView_offTimeEnd;
    }

    result = *(a1 + *v8);
    *(a1 + OBJC_IVAR____TtC5Books13MicaLayerView_timeToStopPlayback) = result;
  }

  return result;
}

unint64_t sub_10065CCCC()
{
  result = qword_100AF0250;
  if (!qword_100AF0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0250);
  }

  return result;
}

uint64_t sub_10065CD28(uint64_t a1, uint64_t a2)
{
  v3 = sub_100796E74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_100796E14();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_10065CE1C()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1007986E4();
  v5 = sub_1007A2214();

  v6 = [v4 integerForKey:v5];

  [v1 setReadingSessionCurrentStartOffset:v6];
  sub_10079AF64();
  LOBYTE(v5) = sub_10079AEE4();
  v7 = type metadata accessor for DebugBoolDefaultSwitch();
  v8 = objc_allocWithZone(v7);
  v33 = sub_10065D374;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10021B6B0;
  v32 = &unk_100A29B60;
  v9 = _Block_copy(&aBlock);

  v10 = [v8 initWithInitialValue:v5 & 1 synchronize:v9 action:0];
  _Block_release(v9);
  [v1 setHotReloadModeSwitch:v10];

  LOBYTE(v10) = sub_10079AF04();
  v11 = objc_allocWithZone(v7);
  v33 = sub_10065D424;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10021B6B0;
  v32 = &unk_100A29B88;
  v12 = _Block_copy(&aBlock);

  v13 = [v11 initWithInitialValue:v10 & 1 synchronize:v12 action:0];
  _Block_release(v12);
  [v1 setLaunchWithBundleJSSwitch:v13];

  LOBYTE(v13) = sub_10079AF24();
  v14 = objc_allocWithZone(v7);
  v33 = sub_10065D458;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10021B6B0;
  v32 = &unk_100A29BB0;
  v15 = _Block_copy(&aBlock);

  v16 = [v14 initWithInitialValue:v13 & 1 synchronize:v15 action:0];
  _Block_release(v15);
  [v1 setAllowUnsignedJetpackSwitch:v16];

  LOBYTE(v4) = sub_10079AF44();
  v17 = objc_allocWithZone(v7);
  v33 = sub_10065D48C;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10021B6B0;
  v32 = &unk_100A29BD8;
  v18 = _Block_copy(&aBlock);

  v19 = [v17 initWithInitialValue:v4 & 1 synchronize:v18 action:0];
  _Block_release(v18);
  [v1 setLoadBundledJetPackFromJSRootSwitch:v19];

  if (qword_100AD1380 != -1)
  {
    swift_once();
  }

  v20 = sub_100008B98(v2, qword_100AD9040);
  v21 = v27;
  v22 = v28;
  (*(v28 + 16))(v27, v20, v2);
  sub_100798EE4();
  (*(v22 + 8))(v21, v2);
  v23 = aBlock;
  v24 = objc_allocWithZone(v7);
  v33 = sub_10065D4C0;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10021B6B0;
  v32 = &unk_100A29C00;
  v25 = _Block_copy(&aBlock);

  v26 = [v24 initWithInitialValue:v23 synchronize:v25 action:0];
  _Block_release(v25);
  [v1 setDontShowDisabledSwitch:v26];
}

void sub_10065D374(uint64_t a1)
{
  v1 = a1;
  sub_10079AF64();
  sub_10079AEF4();
  if ([objc_opt_self() isInternalBuild])
  {
    sub_10079AEC4();
    v2 = sub_10079AEB4();
    if (v1)
    {
      sub_10079AEA4();
    }

    else
    {
      sub_10079AE94();
    }
  }
}

uint64_t sub_10065D4C0(char a1)
{
  v2 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  if (qword_100AD1380 != -1)
  {
    swift_once();
  }

  v6 = sub_100008B98(v2, qword_100AD9040);
  (*(v3 + 16))(v5, v6, v2);
  v8[15] = a1 & 1;
  sub_100798EF4();
  return (*(v3 + 8))(v5, v2);
}

void sub_10065D648()
{
  v3 = sub_100796E74();
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  __chkstk_darwin(v3);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v5;
  v7 = __chkstk_darwin(v6);
  v61 = v1;
  v62 = &v48 - v8;
  v9 = [v1 tableView];
  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = v9;
  v11 = [v9 indexPathForSelectedRow];

  if (!v11)
  {
    return;
  }

  sub_100796E14();

  v12 = sub_100796E34();
  v13 = [v61 sections];
  sub_10000A7C4(0, &unk_100AF0280, off_1009F8558);
  v14 = sub_1007A25E4();

  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_1007A3784();
  }

  else
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v15 = *(v14 + 8 * v12 + 32);
  }

  v0 = v15;

  v16 = [v0 entries];
  sub_10000A7C4(0, &qword_100AD8B50, off_1009F8550);
  v17 = sub_1007A25E4();

  v18 = sub_100796E34();
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v19 = sub_1007A3784();
    goto LABEL_11;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v19 = *(v17 + 8 * v18 + 32);
LABEL_11:
  v20 = v19;
  v50 = v0;

  v49 = v20;
  v21 = [v20 title];
  if (!v21)
  {
    sub_1007A2254();
    v21 = sub_1007A2214();
  }

  v58 = [objc_opt_self() alertControllerWithTitle:v21 message:0 preferredStyle:1];

  v22 = [v61 sessionStartOffsets];
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  v2 = sub_1007A25E4();

  if (!(v2 >> 62))
  {
    v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v23 = sub_1007A38D4();
  if (v23)
  {
LABEL_15:
    aBlock = _swiftEmptyArrayStorage;
    sub_1003BD1D0(0, v23 & ~(v23 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v25 = aBlock;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v26 = sub_1007A3784();
        }

        else
        {
          v26 = *(v2 + 8 * v24 + 32);
        }

        v27 = v26;
        v28 = [v26 integerValue];

        aBlock = v25;
        v30 = v25[2];
        v29 = v25[3];
        if (v30 >= v29 >> 1)
        {
          sub_1003BD1D0((v29 > 1), v30 + 1, 1);
          v25 = aBlock;
        }

        ++v24;
        v25[2] = v30 + 1;
        v25[v30 + 4] = v28;
      }

      while (v23 != v24);

      v31 = v25[2];
      if (!v31)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    goto LABEL_39;
  }

LABEL_31:

  v25 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage[2];
  if (v31)
  {
LABEL_32:
    v32 = objc_opt_self();
    v33 = v25 + 4;
    v53 = v60 + 16;
    v54 = v32;
    v52 = v60 + 32;
    v51 = v66;
    v55 = v25;
    v34 = v61;
    do
    {
      v44 = *v33;
      v63 = v33 + 1;
      if (v44)
      {
        aBlock = 45;
        v65 = 0xE100000000000000;
        v66[4] = v44 / 60;
        v67._countAndFlagsBits = sub_1007A3A74();
        sub_1007A23D4(v67);

        v68._countAndFlagsBits = 1852402976;
        v68._object = 0xE400000000000000;
        sub_1007A23D4(v68);
      }

      v36 = v59;
      v35 = v60;
      v37 = v56;
      (*(v60 + 16))(v56, v62, v59);
      v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v34;
      *(v39 + 24) = v44;
      (*(v35 + 32))(v39 + v38, v37, v36);
      v40 = v34;
      v41 = sub_1007A2214();

      v66[2] = sub_10065FB64;
      v66[3] = v39;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66[0] = sub_100201C54;
      v66[1] = &unk_100A29B38;
      v42 = _Block_copy(&aBlock);

      v43 = [v54 actionWithTitle:v41 style:0 handler:v42];
      _Block_release(v42);

      [v58 addAction:v43];
      --v31;
      v33 = v63;
    }

    while (v31);
  }

LABEL_36:

  v45 = sub_1007A2214();
  v46 = [objc_opt_self() actionWithTitle:v45 style:1 handler:0];

  v47 = v58;
  [v58 addAction:v46];

  [v61 presentViewController:v47 animated:1 completion:0];
  (*(v60 + 8))(v62, v59);
}

void sub_10065DD84(int a1, id a2, uint64_t a3, uint64_t a4)
{
  [a2 setReadingSessionCurrentStartOffset:a3];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [a2 readingSessionCurrentStartOffset];
  sub_1007986E4();
  v8 = sub_1007A2214();

  [v6 setInteger:v7 forKey:v8];

  v9 = [a2 tableView];
  if (v9)
  {
    v10 = v9;
    sub_1001F1160(&qword_100AE1508, &qword_10083AAE0);
    v11 = sub_100796E74();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10080B690;
    (*(v12 + 16))(v14 + v13, a4, v11);
    isa = sub_1007A25D4().super.isa;

    [v10 reloadRowsAtIndexPaths:isa withRowAnimation:100];
  }

  else
  {
    __break(1u);
  }
}

void sub_10065E02C(double a1)
{
  v3 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
  v4 = type metadata accessor for EditDatePickerHeaderViewController();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC5Books34EditDatePickerHeaderViewController_titleString];
  *v6 = 0x206F742065746144;
  *(v6 + 1) = 0xEF3A6F7420646461;
  v7 = &v5[OBJC_IVAR____TtC5Books34EditDatePickerHeaderViewController_imageName];
  *v7 = 0x7261646E656C6163;
  *(v7 + 1) = 0xE800000000000000;
  v21.receiver = v5;
  v21.super_class = v4;
  v8 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  [v3 _setHeaderContentViewController:v8];
  type metadata accessor for EditDatePickerViewController(0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setContentViewController:v9];
  type metadata accessor for EditDatePickerDoneActionViewController();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = a1;
  v20[4] = sub_10065FB10;
  v20[5] = v12;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1002166B8;
  v20[3] = &unk_100A29AE8;
  v13 = _Block_copy(v20);
  v14 = v10;
  v15 = v9;

  v16 = [v11 _actionWithContentViewController:v14 style:0 handler:v13];
  _Block_release(v13);

  if (v16)
  {
    [v3 addAction:v16];
  }

  v17 = sub_1007A2214();
  v18 = [v11 actionWithTitle:v17 style:1 handler:0];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v19 = [objc_opt_self() bc_booksLabelColor];
    [v18 _setTitleTextColor:v19];
  }

  [v3 addAction:v18];
  [v1 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_10065E358(double a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1001F1160(&qword_100AF0260, &qword_100839F00);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = sub_100796594();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100796BB4();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1007986D4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*(a3 + OBJC_IVAR____TtC5Books28EditDatePickerViewController_datePicker) date];
  sub_100796B64();

  sub_1007986C4();
  sub_10065FB1C(&qword_100AF0270, &type metadata accessor for ReadingHistory.Notification.AddFakeSession, &protocol conformance descriptor for ReadingHistory.Notification.AddFakeSession);
  memset(v21, 0, sizeof(v21));
  sub_100799124();
  sub_100007840(v21, &unk_100AD5B40, &unk_100811300);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return sub_100007840(v6, &qword_100AF0260, &qword_100839F00);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v19 = [objc_opt_self() defaultCenter];
    isa = sub_100796554().super.isa;
    [v19 postNotification:isa];

    (*(v8 + 8))(v10, v7);
    return (*(v13 + 8))(v16, v12);
  }
}

void sub_10065E7CC()
{
  v1 = sub_1007A2214();
  v2 = [objc_opt_self() alertControllerWithTitle:0 message:v1 preferredStyle:1];

  v3 = sub_1007A2214();
  v16 = sub_10065EA84;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100201C54;
  v15 = &unk_100A29A70;
  v4 = _Block_copy(&v12);

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v3 style:0 handler:v4];
  _Block_release(v4);

  [v2 addAction:v6];
  v7 = sub_1007A2214();
  v16 = sub_10065EA8C;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100201C54;
  v15 = &unk_100A29A98;
  v8 = _Block_copy(&v12);

  v9 = [v5 actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v2 addAction:v9];
  v10 = sub_1007A2214();
  v11 = [v5 actionWithTitle:v10 style:1 handler:0];

  [v2 addAction:v11];
  [v0 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_10065EA94(uint64_t a1, char a2)
{
  sub_10079E784();
  v3 = sub_10079E774();
  v5[3] = &type metadata for Bool;
  LOBYTE(v5[0]) = a2;
  sub_1007A2254();
  sub_10079E744();

  return sub_1000074E0(v5);
}

void sub_10065EB64()
{
  v1 = sub_1007A2214();
  v2 = sub_1007A2214();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v20 = sub_10065EEC0;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100201C54;
  v19 = &unk_100A299D0;
  v4 = _Block_copy(&v16);
  [v3 addTextFieldWithConfigurationHandler:v4];
  _Block_release(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = v3;
  v7 = sub_1007A2214();
  v20 = sub_10065F840;
  v21 = v5;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100201C54;
  v19 = &unk_100A29A20;
  v8 = _Block_copy(&v16);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v6 addAction:v10];
  v11 = sub_1007A2214();
  v20 = sub_10065F50C;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100201C54;
  v19 = &unk_100A29A48;
  v12 = _Block_copy(&v16);

  v13 = [v9 actionWithTitle:v11 style:2 handler:v12];
  _Block_release(v12);

  [v6 addAction:v13];
  v14 = sub_1007A2214();
  v15 = [v9 actionWithTitle:v14 style:1 handler:0];

  [v6 addAction:v15];
  [v0 presentViewController:v6 animated:1 completion:0];
}

void sub_10065EEC0(void *a1)
{
  [a1 setKeyboardType:4];
  [a1 setClearButtonMode:1];
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1007A2214();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
    sub_1000076D4(v7, v8);
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1007A3894();
    v5 = sub_1007A2214();

    [a1 setText:v5];

    sub_1000074E0(v8);
  }

  else
  {
    v6 = sub_1007A2214();
    [a1 setPlaceholder:v6];
  }
}

void sub_10065F074(int a1, id a2)
{
  v2 = [a2 textFields];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_10000A7C4(0, &qword_100AD8B58, UITextField_ptr);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
    if (sub_1007A38D4())
    {
LABEL_4:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_82;
        }

        v5 = *(v4 + 32);
      }

      v6 = v5;

      v7 = [v6 text];

      if (!v7)
      {
        return;
      }

      v8 = sub_1007A2254();
      v10 = v9;

      v12 = HIBYTE(v10) & 0xF;
      v13 = v8 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v14 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v46 = 0;
          sub_10063DF1C(v8, v10, 10, v11);
          v40 = v44;
          goto LABEL_70;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v45[0] = v8;
          v45[1] = v10 & 0xFFFFFFFFFFFFFFLL;
          if (v8 == 43)
          {
            if (v12)
            {
              if (--v12)
              {
                v29 = 0;
                v30 = v45 + 1;
                while (1)
                {
                  v31 = *v30 - 48;
                  if (v31 > 9)
                  {
                    break;
                  }

                  v32 = 10 * v29;
                  if ((v29 * 10) >> 64 != (10 * v29) >> 63)
                  {
                    break;
                  }

                  v29 = v32 + v31;
                  if (__OFADD__(v32, v31))
                  {
                    break;
                  }

                  ++v30;
                  if (!--v12)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_68;
            }

LABEL_88:
            __break(1u);
            return;
          }

          if (v8 != 45)
          {
            if (v12)
            {
              v36 = 0;
              v37 = v45;
              while (1)
              {
                v38 = *v37 - 48;
                if (v38 > 9)
                {
                  break;
                }

                v39 = 10 * v36;
                if ((v36 * 10) >> 64 != (10 * v36) >> 63)
                {
                  break;
                }

                v36 = v39 + v38;
                if (__OFADD__(v39, v38))
                {
                  break;
                }

                ++v37;
                if (!--v12)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

          if (v12)
          {
            if (--v12)
            {
              v21 = 0;
              v22 = v45 + 1;
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  break;
                }

                v24 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v24 - v23;
                if (__OFSUB__(v24, v23))
                {
                  break;
                }

                ++v22;
                if (!--v12)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v15 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v15 = sub_1007A37B4();
          }

          v16 = *v15;
          if (v16 == 43)
          {
            if (v13 >= 1)
            {
              v12 = v13 - 1;
              if (v13 != 1)
              {
                v25 = 0;
                if (v15)
                {
                  v26 = v15 + 1;
                  while (1)
                  {
                    v27 = *v26 - 48;
                    if (v27 > 9)
                    {
                      goto LABEL_68;
                    }

                    v28 = 10 * v25;
                    if ((v25 * 10) >> 64 != (10 * v25) >> 63)
                    {
                      goto LABEL_68;
                    }

                    v25 = v28 + v27;
                    if (__OFADD__(v28, v27))
                    {
                      goto LABEL_68;
                    }

                    ++v26;
                    if (!--v12)
                    {
                      goto LABEL_69;
                    }
                  }
                }

                goto LABEL_60;
              }

              goto LABEL_68;
            }

            goto LABEL_87;
          }

          if (v16 != 45)
          {
            if (v13)
            {
              v33 = 0;
              if (v15)
              {
                while (1)
                {
                  v34 = *v15 - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_68;
                  }

                  v35 = 10 * v33;
                  if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                  {
                    goto LABEL_68;
                  }

                  v33 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    goto LABEL_68;
                  }

                  ++v15;
                  if (!--v13)
                  {
                    goto LABEL_60;
                  }
                }
              }

              goto LABEL_60;
            }

LABEL_68:
            LOBYTE(v12) = 1;
            goto LABEL_69;
          }

          if (v13 >= 1)
          {
            v12 = v13 - 1;
            if (v13 != 1)
            {
              v17 = 0;
              if (v15)
              {
                v18 = v15 + 1;
                while (1)
                {
                  v19 = *v18 - 48;
                  if (v19 > 9)
                  {
                    goto LABEL_68;
                  }

                  v20 = 10 * v17;
                  if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                  {
                    goto LABEL_68;
                  }

                  v17 = v20 - v19;
                  if (__OFSUB__(v20, v19))
                  {
                    goto LABEL_68;
                  }

                  ++v18;
                  if (!--v12)
                  {
                    goto LABEL_69;
                  }
                }
              }

LABEL_60:
              LOBYTE(v12) = 0;
LABEL_69:
              v46 = v12;
              v40 = v12;
LABEL_70:

LABEL_71:
              v41 = [objc_opt_self() standardUserDefaults];
              if (v40)
              {
                isa = 0;
              }

              else
              {
                isa = sub_1007A2884().super.super.isa;
              }

              v43 = sub_1007A2214();
              [v41 setValue:isa forKey:v43];

              swift_unknownObjectRelease();
              return;
            }

            goto LABEL_68;
          }

          __break(1u);
        }

        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_82:

      v40 = 1;
      goto LABEL_71;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }
}

void sub_10065F50C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  isa = sub_1007A2884().super.super.isa;
  v2 = sub_1007A2214();
  [v0 setValue:isa forKey:v2];
}

uint64_t sub_10065F5BC()
{
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100811390;
  v2 = [objc_opt_self() modelWithAccessoryType:1];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;
  v5 = sub_1007A2214();
  v9[4] = sub_10065F814;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10065CD28;
  v9[3] = &unk_100A299A8;
  v6 = _Block_copy(v9);

  v7 = [objc_opt_self() entryWithTitle:v5 model:v2 action:v6];
  _Block_release(v6);

  *(v1 + 32) = v7;
  return v1;
}

uint64_t sub_10065FB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10065FB64(int a1)
{
  v3 = *(sub_100796E74() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10065DD84(a1, v4, v5, v6);
}

double sub_10065FC38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a3;
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_10065FCC4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF0290);
  sub_100008B98(v0, qword_100AF0290);
  return sub_10079ACD4();
}

id sub_10065FD48()
{
  result = [v0 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  if (result)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
    sub_100007484(v12, v11);
    sub_1001F1160(&qword_100AE6EE0, &unk_10082B008);
    if (swift_dynamicCast())
    {
      sub_1000074E0(v12);
      return v10;
    }

    else
    {
      if (qword_100AD19A8 != -1)
      {
        swift_once();
      }

      v2 = sub_10079ACE4();
      sub_100008B98(v2, qword_100AF0290);
      sub_100007484(v12, v11);
      v3 = sub_10079ACC4();
      v4 = sub_1007A29B4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v5 = 136315394;
        sub_10000E3E8(v11, v11[3]);
        swift_getDynamicType();
        v6 = sub_1007A3D34();
        v8 = v7;
        sub_1000074E0(v11);
        v9 = sub_1000070F4(v6, v8, &v10);

        *(v5 + 4) = v9;
        *(v5 + 12) = 2080;
        *(v5 + 14) = sub_1000070F4(0xD000000000000010, 0x80000001008E40D0, &v10);
        _os_log_impl(&_mh_execute_header, v3, v4, "Invariant violation: im_ancestorFlowController(conformingTo:) returned object of type %s which does not conform to protocol %s", v5, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000074E0(v11);
      }

      sub_1000074E0(v12);
      return 0;
    }
  }

  return result;
}

id sub_10065FFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() hasMultiWindowEnabled];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (!v4)
  {
    v12 = [ObjCClassFromMetadata sceneControllerForViewController:a3];
    if (v12)
    {
      v11 = [v12 newShowAssetTransaction];
      goto LABEL_6;
    }

    return 0;
  }

  v6 = ObjCClassFromMetadata;
  v7 = [ObjCClassFromMetadata sceneManager];
  v8 = sub_1007A2214();
  v9 = [v7 newBookSceneControllerProviderWithRequestAssetID:v8];

  v10 = [v6 currentSceneController];
  if (!v10)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v11 = [v10 newShowAssetTransactionWithTargetSceneDescriptor:v9];
  swift_unknownObjectRelease();
LABEL_6:
  swift_unknownObjectRelease();
  return v11;
}

void sub_1006600E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    aBlock = sub_1007A2254();
    v21 = v12;
    sub_1007A36B4();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = a2;
    *(inited + 80) = a3;

    v13 = sub_100013740(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100AD1E50, &unk_10080B810);
    v28 = v13;
    *&v26 = sub_1007A2254();
    *(&v26 + 1) = v14;
    sub_1007A36B4();
    if (a4)
    {
      ObjectType = swift_getObjectType();
      *&v26 = a4;
      sub_1000076D4(&v26, v19);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002F5754(v19, &aBlock, isUniquelyReferenced_nonNull_native);
      sub_10002899C(&aBlock);
    }

    else
    {
      sub_1002EEF90(&aBlock, &v26);
      sub_100007840(&v26, &unk_100AD5B40, &unk_100811300);
      sub_10002899C(&aBlock);
    }

    isa = sub_1007A2024().super.isa;

    v17 = swift_allocObject();
    *(v17 + 16) = a6;
    v24 = sub_100661334;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10065FC38;
    v23 = &unk_100A29CC0;
    v18 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [a5 showAssetWithTransaction:a4 assetIdentifier:a6 location:0 options:isa completion:v18];
    _Block_release(v18);
  }
}

void sub_10066038C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100AD19A8 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, qword_100AF0290);
    swift_errorRetain();
    swift_unknownObjectRetain();
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v8 = 141558530;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2080;
      v11 = [a4 description];
      v12 = sub_1007A2254();
      v14 = v13;

      v15 = sub_1000070F4(v12, v14, &v34);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2112;
      v16 = sub_1007967C4();
      *(v8 + 24) = v16;
      *v9 = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to open supplemental content %{mask.hash}s. error: %@", v8, 0x20u);
      sub_100007840(v9, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v10);
    }

    else
    {
    }

    return;
  }

  if (a1)
  {
    if (qword_100AD19A8 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AF0290);
    swift_unknownObjectRetain();
    oslog = sub_10079ACC4();
    v18 = sub_1007A29D4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 141558274;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2080;
      v21 = [a4 description];
      v22 = sub_1007A2254();
      v24 = v23;

      v25 = sub_1000070F4(v22, v24, &v34);

      *(v19 + 14) = v25;
      v26 = "Opened supplemental content %{mask.hash}s";
LABEL_18:
      _os_log_impl(&_mh_execute_header, oslog, v18, v26, v19, 0x16u);
      sub_1000074E0(v20);

      return;
    }
  }

  else
  {
    if (qword_100AD19A8 != -1)
    {
      swift_once();
    }

    v27 = sub_10079ACE4();
    sub_100008B98(v27, qword_100AF0290);
    swift_unknownObjectRetain();
    oslog = sub_10079ACC4();
    v18 = sub_1007A29B4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 141558274;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2080;
      v28 = [a4 description];
      v29 = sub_1007A2254();
      v31 = v30;

      v32 = sub_1000070F4(v29, v31, &v34);

      *(v19 + 14) = v32;
      v26 = "Unable to open supplemental content %{mask.hash}s";
      goto LABEL_18;
    }
  }
}

void sub_100660884(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v8[4] = sub_10066133C;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1003323D0;
  v8[3] = &unk_100A29D10;
  v7 = _Block_copy(v8);
  swift_unknownObjectRetain();

  [a1 presentViewController:a2 animated:1 completion:v7];
  _Block_release(v7);
}

void sub_100660978(void *a1)
{
  if (qword_100AD19A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AF0290);
  swift_unknownObjectRetain();
  oslog = sub_10079ACC4();
  v3 = sub_1007A29D4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 141558274;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2080;
    v6 = [a1 description];
    v7 = sub_1007A2254();
    v9 = v8;

    v10 = sub_1000070F4(v7, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Opened supplemental content picker for %{mask.hash}s", v4, 0x16u);
    sub_1000074E0(v5);
  }
}

void sub_100660B18(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

void sub_100660BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30[3] = a3;
  v30[4] = a4;
  v30[1] = a1;
  v30[2] = a2;
  v6 = sub_100796CF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v30 - v11;
  v13 = sub_1007A21D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v30 - v18;
  sub_1007A2154();
  sub_100796C94();
  (*(v14 + 16))(v16, v19, v13);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v7 + 16))(v9, v12, v6);
  sub_1007A22D4(v16, 0, 0, v21, v9, "OK", 2, 2);
  (*(v7 + 8))(v12, v6);
  (*(v14 + 8))(v19, v13);
  v22 = sub_1007A2214();
  v23 = sub_1007A2214();
  v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  v26 = a5;
  v27 = sub_1007A2214();

  aBlock[4] = sub_100661344;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A29D60;
  v28 = _Block_copy(aBlock);

  v29 = [objc_opt_self() actionWithTitle:v27 style:1 handler:v28];
  _Block_release(v28);

  [v24 addAction:v29];
  [v26 presentViewController:v24 animated:1 completion:0];
}

void sub_100660F90(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_10065FD48();
  if (v8)
  {
    v9 = v8;
    sub_10001292C();
    v10 = [a3 permanentOrTemporaryAssetID];
    v11 = sub_1007A2254();
    v13 = v12;

    v14 = sub_10065FFA8(v11, v13, a4);

    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v14;
    v15[5] = v9;
    v15[6] = a3;
    aBlock[4] = sub_10066131C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021B6B0;
    aBlock[3] = &unk_100A29C70;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    [v9 preflightShowAssetWithTransaction:v14 assetIdentifier:a3 completion:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD19A8 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AF0290);
    swift_unknownObjectRetain();
    v18 = a4;
    oslog = sub_10079ACC4();
    v19 = sub_1007A29B4();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v20 = 141558530;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2080;
      v23 = [a3 description];
      v24 = sub_1007A2254();
      v26 = v25;

      v27 = sub_1000070F4(v24, v26, aBlock);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v18;
      *v21 = v18;
      v28 = v18;
      sub_100007840(v21, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v22);
    }

    else
    {
    }
  }
}

id EpubBookParserWrapper.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EpubBookParserWrapper();
  return objc_msgSendSuper2(&v3, "init");
}

id EpubBookParserWrapper.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EpubBookParserWrapper();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t _s5Books21EpubBookParserWrapperC17cachedTocCfiIdMap15bookDatabaseKeySDySSypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_1007A2214();
  v4 = [v2 cachedDataForBookDatabaseKey:v3 cacheKey:kCacheKeyEpubTocCfiIdMap];

  if (v4)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1001F1160(&qword_100AD6710, &unk_10080B890);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000230BC(v9);
    return 0;
  }
}

uint64_t sub_10066153C(void *a1)
{
  v68 = a1;
  v55 = sub_100796CF4();
  v1 = *(v55 - 8);
  __chkstk_darwin(v55);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v48 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  ObjectType = swift_getObjectType();
  v65 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v51 = sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v14 = swift_allocObject();
  v50 = xmmword_100811390;
  *(v14 + 16) = xmmword_100811390;
  v64 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v15 = *(v8 + 16);
  v66 = v8 + 16;
  v67 = v15;
  v15(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = ObjCClassFromMetadata;
  v62 = objc_opt_self();
  v17 = [v62 bundleForClass:ObjCClassFromMetadata];
  v18 = v1;
  v61 = *(v1 + 16);
  v56 = v1 + 16;
  v19 = v3;
  v49 = v3;
  v20 = v3;
  v21 = v55;
  v61(v20, v6, v55);
  sub_1007A22D4(v10, 0, 0, v17, v19, "Help -> Report a Narration Issue", 32, 2);
  v22 = *(v18 + 8);
  v59 = v18 + 8;
  v60 = v22;
  v22(v6, v21);
  v23 = *(v8 + 8);
  v57 = v8 + 8;
  v58 = v23;
  v24 = v7;
  v23(v13, v7);
  v25 = sub_1007A2214();
  v26 = objc_opt_self();
  v48 = v26;
  v27 = [v26 systemImageNamed:v25];

  v69 = 0u;
  v70 = 0u;
  *(v14 + 32) = sub_1007A3414();
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v71.value.super.isa = 0;
  v71.is_nil = 0;
  v28.value = 1;
  isa = sub_1007A30C4(v73, v75, v71, v28, 0xFFFFFFFFFFFFFFFFLL, v14, v46).super.super.isa;
  v53 = UIMenuHelp;
  [v68 insertChildMenu:isa atEndOfMenuForIdentifier:?];

  inited = swift_initStackObject();
  *(inited + 16) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100811360;
  sub_1007A2154();
  sub_100796C94();
  v30 = v10;
  v31 = v24;
  v67(v10, v13, v24);
  v32 = [v62 bundleForClass:v63];
  v33 = v49;
  v34 = v55;
  v61(v49, v6, v55);
  sub_1007A22D4(v30, 0, 0, v32, v33, "Help -> About Books & Privacy", 29, 2);
  v60(v6, v34);
  v58(v13, v31);
  v35 = sub_1007A2214();
  v36 = [v26 _systemImageNamed:v35];

  v69 = 0u;
  v70 = 0u;
  v37 = sub_1007A3414();
  v38 = v51;
  *(v51 + 32) = v37;
  sub_1007A2154();
  sub_100796C94();
  v67(v30, v13, v31);
  v39 = [v62 bundleForClass:v63];
  v61(v33, v6, v34);
  sub_1007A22D4(v30, 0, 0, v39, v33, "Help -> Terms & Conditions", 26, 2);
  v60(v6, v34);
  v58(v13, v31);
  v40 = sub_1007A2214();
  v41 = [v48 systemImageNamed:v40];

  v69 = 0u;
  v70 = 0u;
  *(v38 + 40) = sub_1007A3414();
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  v76.value._countAndFlagsBits = 0;
  v76.value._object = 0;
  v72.value.super.isa = 0;
  v72.is_nil = 0;
  v42.value = 1;
  v43.super.super.isa = sub_1007A30C4(v74, v76, v72, v42, 0xFFFFFFFFFFFFFFFFLL, v38, v47).super.super.isa;
  v44 = inited;
  *(inited + 32) = v43;
  sub_10020B62C(v44, v53);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t *InAppMessagesProvider.shared.unsafeMutableAddressor()
{
  if (qword_100AD19B0 != -1)
  {
    swift_once();
  }

  return &static InAppMessagesProvider.shared;
}

unint64_t sub_100661DF8(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_100796CF4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  sub_1007A2154();
  if (v1)
  {
    v10 = *(v4 + 16);
    v10(v6, v9, v3);
    sub_100796C94();
    v11 = sub_1007A22B4();
    v13 = v12;
    v14 = *(v4 + 8);
    v14(v9, v3);
    sub_1007A2154();
    v10(v6, v9, v3);
    sub_100796C94();
    v15 = sub_1007A22B4();
    v17 = v16;
    v14(v9, v3);
  }

  else
  {
    v18 = *(v4 + 16);
    v18(v6, v9, v3);
    sub_100796C94();
    v11 = sub_1007A22B4();
    v13 = v19;
    v20 = *(v4 + 8);
    v20(v9, v3);
    sub_1007A2154();
    v18(v6, v9, v3);
    sub_100796C94();
    v15 = sub_1007A22B4();
    v17 = v21;
    v20(v9, v3);
  }

  sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 64) = 0x6567617373656DLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = v15;
  *(inited + 88) = v17;
  v23 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920, &unk_100817F60);
  swift_arrayDestroy();
  return v23;
}

unint64_t sub_100662278(char a1)
{
  v2 = sub_100796CF4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  if (a1)
  {
    sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    *(inited + 32) = 0xD000000000000018;
    *(inited + 40) = 0x80000001008E4260;
    sub_1007A2154();
    (*(v4 + 16))(v6, v9, v3);
    sub_100796C94();
    v11 = sub_1007A22B4();
    v13 = v12;
    (*(v4 + 8))(v9, v3);
    *(inited + 48) = v11;
    *(inited + 56) = v13;
    v14 = sub_1001ED994(inited);
    swift_setDeallocating();
    sub_100662CD8(inited + 32);
    return v14;
  }

  else
  {

    return sub_1001ED994(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1006625B4()
{
  type metadata accessor for InAppMessagesProvider();
  result = swift_initStaticObject();
  static InAppMessagesProvider.shared = result;
  return result;
}

uint64_t static InAppMessagesProvider.shared.getter()
{
  type metadata accessor for InAppMessagesProvider();

  return swift_initStaticObject();
}

BOOL sub_100662634(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  v3._rawValue = &off_100A0D660;
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  v4 = sub_1007A3964(v3, v6);

  return v4 < 3;
}

BOOL sub_100662694(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  v3._rawValue = &off_100A0D660;
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  v4 = sub_1007A3964(v3, v6);

  return v4 > 2;
}

void sub_1006626FC(uint64_t a1)
{
  v56 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v46 - v3;
  v62 = sub_1007969B4();
  __chkstk_darwin(v62);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = &v46 - v7;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v53 = (v2 + 8);
  v54 = (v2 + 16);
  v57 = (v6 + 8);
  v58 = (v6 + 32);
  v64 = a1;

  v13 = 0;
  v51 = "rei_bottom_page_tip";
  v52 = _swiftEmptyDictionarySingleton;
  v49 = "w_wtr_price_drop_settings";
  v50 = "reading_now_below_wtr";
  if (v11)
  {
    while (1)
    {
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = (*(v64 + 48) + ((v13 << 10) | (16 * v15)));
      v17 = *v16;
      v18 = v16[1];

      v19._rawValue = &off_100A0CA70;
      v61 = v17;
      v68._countAndFlagsBits = v17;
      v68._object = v18;
      v20 = sub_1007A3964(v19, v68);
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = 0;
          v60 = 1;
        }

        else
        {
          if (v20 != 2)
          {
            goto LABEL_6;
          }

          v21 = 0;
          v60 = 2;
        }
      }

      else
      {
        v60 = 0;
        v21 = 1;
      }

      v22 = [objc_opt_self() mainBundle];
      v23 = sub_1007A2214();

      v24 = sub_1007A2214();
      v25 = [v22 URLForResource:v23 withExtension:v24];

      if (!v25)
      {
        goto LABEL_6;
      }

      v26 = v59;
      sub_100796974();

      (*v58)(v63, v26, v62);
      if (v21)
      {
        if (qword_100AD1388 != -1)
        {
          swift_once();
        }

        v27 = v56;
        v28 = sub_100008B98(v56, qword_100AD9058);
        v29 = v55;
        v30 = *v54;
        (*v54)(v55, v28, v27);
        sub_100798EE4();
        v31 = *v53;
        (*v53)(v29, v27);
        if (v66 != 1)
        {
          v32 = v55;
          v33 = v28;
          v34 = v56;
          v30(v55, v33, v56);
          v65 = 1;
          sub_100798EF4();
          v31(v32, v34);
          goto LABEL_23;
        }

        (*v57)(v63, v62);
LABEL_6:

        if (!v11)
        {
          break;
        }
      }

      else
      {
LABEL_23:
        v48 = objc_opt_self();
        sub_100796944(v35);
        v47 = v36;
        v37 = v60;
        v38 = sub_100661DF8(v60);
        sub_1005813B8(v38);

        isa = sub_1007A2024().super.isa;

        v40 = sub_100662278(v37);
        sub_1005813B8(v40);

        v41 = sub_1007A2024().super.isa;

        v42 = v47;
        v43 = [v48 bk_fromJSONURL:v47 localizedTexts:isa localizedActionTitles:v41];

        v44 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v44;
        sub_1002F5264(v43, v61, v18, isUniquelyReferenced_nonNull_native);

        v52 = v67;
        (*v57)(v63, v62);
        if (!v11)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100662CD8(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AE0920, &unk_100817F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PageTurnLogger()()
{
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v0 = qword_100B23750;

  return sub_10079ACF4();
}

id _PageTurnLog()()
{
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100B23750;

  return v1;
}

uint64_t sub_100662EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(double), double a5)
{
  v6 = sub_10079AB94();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v8);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v11 = qword_100B23750;
  sub_10079AB84();
  sub_10079AB54();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100663018()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100B23750 = result;
  return result;
}

uint64_t sub_1006630A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v7 = sub_1001F1160(&qword_100AF04A8, &qword_10083A090);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  v10 = sub_1001F1160(&qword_100AD8DD8, &qword_1008162B0);
  __chkstk_darwin(v10 - 8);
  v12 = v26 - v11;
  v13 = sub_1001F1160(&qword_100AD1CD8, &unk_10080B710);
  __chkstk_darwin(v13);
  v15 = (v26 - v14);
  v26[2] = a1;
  v26[3] = a2;
  sub_1002060B4();

  if (sub_1007A28A4())
  {
    sub_10079DF24();
    v16 = enum case for Image.TemplateRenderingMode.template(_:);
    v17 = sub_10079DF74();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v12, v16, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
    v19 = sub_10079DF44();

    sub_100007840(v12, &qword_100AD8DD8, &qword_1008162B0);
    KeyPath = swift_getKeyPath();
    v21 = (v15 + *(v13 + 36));
    v22 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
    v23 = enum case for Image.Scale.large(_:);
    v24 = sub_10079DF84();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    *v15 = v19;
    v15[1] = KeyPath;
    v15[2] = a3;
    sub_100663420(v15, v9);
    swift_storeEnumTagMultiPayload();
    sub_1001F1584();

    sub_10079CCA4();
    return sub_100007840(v15, &qword_100AD1CD8, &unk_10080B710);
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    sub_1001F1584();
    return sub_10079CCA4();
  }
}

uint64_t sub_100663420(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD1CD8, &unk_10080B710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100663490()
{
  result = qword_100AF04B0;
  if (!qword_100AF04B0)
  {
    sub_1001F1234(&qword_100AF04B8, &qword_10083A0F8);
    sub_100663514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF04B0);
  }

  return result;
}

unint64_t sub_100663514()
{
  result = qword_100AF04C0;
  if (!qword_100AF04C0)
  {
    sub_1001F1234(&qword_100AF04C8, &unk_10083A100);
    sub_1001F1584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF04C0);
  }

  return result;
}

double sub_1006635CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = sub_10079E474();
  v9 = v8;
  v10 = sub_1001F1160(&qword_100AF04D0, &qword_10083A198);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_1001F1160(&qword_100AF04D8, &unk_10083A1A0) + 36));
  *v11 = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v9;

  return result;
}

unint64_t sub_1006636B0()
{
  result = qword_100AF04E0;
  if (!qword_100AF04E0)
  {
    sub_1001F1234(&qword_100AF04D8, &unk_10083A1A0);
    sub_100005920(&qword_100AF04E8, &qword_100AF04D0, &qword_10083A198, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&qword_100AF04F0, &qword_100AF04F8, qword_10083A1C8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF04E0);
  }

  return result;
}

double sub_1006637B0@<D0>(uint64_t a3@<X8>, double a4@<D0>)
{
  sub_10079BEB4();
  sub_1001F1160(&qword_100AF0500, &qword_10083A220);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100815060;
  swift_retain_n();
  sub_10079DE24();
  *(v6 + 32) = sub_10079E344();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_10079E344();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_10079E344();
  *(v6 + 72) = v9;
  sub_10079DE24();
  *(v6 + 80) = sub_10079E344();
  *(v6 + 88) = v10;
  sub_10079E644();
  sub_10079E654();
  sub_10079E354();
  sub_10079BFE4();
  sub_10079E474();
  sub_10079BE54();
  result = -a4;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 88) = -a4;
  *(a3 + 96) = 0;
  return result;
}

double sub_100663948@<D0>(double (**a1)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = sub_1006639C4;
  a1[1] = v5;

  return result;
}

uint64_t type metadata accessor for CopyLinkActionItem(uint64_t a1)
{
  result = qword_100AF0570;
  if (!qword_100AF0570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100663A44()
{
  *(v1 + 56) = v0;
  sub_1007A26F4();
  *(v1 + 64) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_100663ADC, v3, v2);
}

uint64_t sub_100663ADC()
{
  v1 = v0[7];

  v2 = [objc_opt_self() generalPasteboard];
  sub_10000E3E8((v1 + 40), *(v1 + 64));
  v3 = sub_100797704();
  if (*(v3 + 16))
  {
    sub_100009864(v3 + 32, (v0 + 2));

    sub_10000E3E8(v0 + 2, v0[5]);
    sub_100797654();
    v5 = v4;
    sub_1000074E0(v0 + 2);
    if (v5)
    {
      v6 = sub_1007A2214();

      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 0;
LABEL_6:
  [v2 setString:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100663C1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100663A44();
}

uint64_t sub_100663CA8@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.copyLink(_:);
  v13 = sub_100797144();
  (*(*(v13 - 8) + 104))(a6 + v11, v12, v13);
  sub_1000077C0(a1, a6 + 40);
  sub_1000077C0(a2, a6);
  *(a6 + 80) = a3;

  return sub_1000077C0(a4, a6 + 88);
}

uint64_t sub_100663D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a1;
  sub_1007A26F4();
  v4[10] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_100663E1C, v6, v5);
}

NSObject *sub_100663E1C()
{
  v24 = v0;
  v1 = [*(v0 + 72) primarySceneController];
  v2 = [v1 scene];

  v3 = sub_1007A29D4();
  result = BCAppIntentsLog();
  v5 = result;
  if (!v2)
  {
    if (result)
    {
      v12 = *(v0 + 64);

      sub_100009864(v12, v0 + 16);
      if (os_log_type_enabled(v5, v3))
      {
        v13 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v13 = 136315394;
        *(v13 + 4) = sub_1000070F4(0xD000000000000018, 0x80000001008E4620, &v23);
        *(v13 + 12) = 2080;
        sub_10000E3E8((v0 + 16), *(v0 + 40));
        swift_getDynamicType();
        v14 = sub_1007A3D34();
        v16 = v15;
        sub_1000074E0((v0 + 16));
        v17 = sub_1000070F4(v14, v16, &v23);

        *(v13 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v5, v3, "BooksIntentSceneConfigurator: %s: intent: %s. Returning newScene.", v13, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000074E0((v0 + 16));
      }

      v18 = *(v0 + 56);
      v19 = &enum case for IntentSceneConfiguration.newScene(_:);
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v0 + 64);

  sub_100009864(v6, v0 + 16);
  if (os_log_type_enabled(v5, v3))
  {
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000070F4(0xD000000000000018, 0x80000001008E4620, &v23);
    *(v7 + 12) = 2080;
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    swift_getDynamicType();
    v8 = sub_1007A3D34();
    v10 = v9;
    sub_1000074E0((v0 + 16));
    v11 = sub_1000070F4(v8, v10, &v23);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v3, "BooksIntentSceneConfigurator: %s: intent: %s. Returning existing primaryScene.", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000074E0((v0 + 16));
  }

  v18 = *(v0 + 56);
  *v18 = v2;
  v19 = &enum case for IntentSceneConfiguration.existingScene(_:);
LABEL_12:
  v20 = *v19;
  v21 = sub_100799644();
  (*(*(v21 - 8) + 104))(v18, v20, v21);
  v22 = *(v0 + 8);

  return v22();
}

void sub_1006641E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  v9 = sub_1007A2214();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_1004FA248;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10021B6B0;
  aBlock[3] = &unk_100A29FD8;
  v12 = _Block_copy(aBlock);

  [a3 appLaunchCoordinatorOnConditionMask:4128 blockID:v9 performBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1006643C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002812C;

  return sub_100663D80(a1, v8, a3, v7);
}

uint64_t sub_100664470(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009A34;

  return sub_10066452C(a2, v6, v5);
}

uint64_t sub_10066452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = sub_1007A26F4();
  v3[11] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[12] = v5;
  v3[13] = v4;

  return _swift_task_switch(sub_1006645CC, v5, v4);
}

uint64_t sub_1006645CC(double a1)
{
  v22 = v1;
  v2 = sub_1007A29D4();
  v3 = BCAppIntentsLog();
  if (v3)
  {
    v11 = v3;
    sub_100009864(*(v1 + 56), v1 + 16);
    if (os_log_type_enabled(v11, v2))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008E45E0, &v21);
      *(v12 + 12) = 2080;
      sub_10000E3E8((v1 + 16), *(v1 + 40));
      swift_getDynamicType();
      v13 = sub_1007A3D34();
      v15 = v14;
      sub_1000074E0((v1 + 16));
      v16 = sub_1000070F4(v13, v15, &v21);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v2, "BooksIntentSceneConfigurator: %s: intent: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000074E0((v1 + 16));
    }

    v20 = *(v1 + 64);
    v17 = sub_1007A26E4();
    *(v1 + 112) = v17;
    v18 = swift_task_alloc();
    *(v1 + 120) = v18;
    *(v18 + 16) = v20;
    v3 = swift_task_alloc();
    *(v1 + 128) = v3;
    v3->isa = v1;
    v3[1].isa = sub_100664850;
    v5 = &protocol witness table for MainActor;
    v8 = sub_100664A14;
    v10 = &type metadata for () + 8;
    v4 = v17;
    v6 = 0xD00000000000001CLL;
    v7 = 0x80000001008E45E0;
    v9 = v18;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100664850()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1006649B0, v3, v2);
}

uint64_t sub_1006649B0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100664A24@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a1);

  return result;
}

uint64_t sub_100664A9C@<X0>(uint64_t *a1@<X8>)
{
  sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
  result = sub_1007A0854();
  *a1 = result;
  return result;
}

void (*sub_100664AD8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10079B994();
  return sub_1002E6F80;
}

uint64_t sub_100664B7C()
{
  v1 = OBJC_IVAR____TtC5Books30ThemeOptionsContainerViewModel__themeOptions;
  v2 = sub_1001F1160(&qword_100AE65B8, &unk_10082A4D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100664C4C(uint64_t a1)
{
  sub_100664CDC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100664CDC(uint64_t a1)
{
  if (!qword_100AF05F8)
  {
    sub_1001F1234(&qword_100AE65A8, &qword_10082A450);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF05F8);
    }
  }
}

void sub_100664D88(uint64_t a1)
{
  sub_100664DFC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100664DFC(uint64_t a1)
{
  if (!qword_100AF06E0)
  {
    type metadata accessor for ThemeOptionsView(255);
    sub_100664E60();
    v1 = sub_1007A0884();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF06E0);
    }
  }
}

unint64_t sub_100664E60()
{
  result = qword_100AF06E8;
  if (!qword_100AF06E8)
  {
    type metadata accessor for ThemeOptionsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF06E8);
  }

  return result;
}

unint64_t sub_100664ECC()
{
  result = qword_100AF0718;
  if (!qword_100AF0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0718);
  }

  return result;
}

uint64_t sub_100664F20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_100664F94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v8);

  v7 = v8[0];
  v8[0] = sub_1007A3A74();
  v8[1] = v0;
  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  sub_1007A23D4(v9);
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  v2 = v7;
  *(v1 + 56) = &type metadata for Int;
  *(v1 + 64) = &protocol witness table for Int;
  *(v1 + 32) = v2;
  v3 = sub_1007A2224();
  v5 = v4;

  v10._countAndFlagsBits = v3;
  v10._object = v5;
  sub_1007A23D4(v10);

  return v8[0];
}

uint64_t sub_100665124(char a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v69 = sub_100796CF4();
  v5 = *(v69 - 8);
  __chkstk_darwin(v69);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v71 = v3;
  *(v3 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_goalType) = a1 & 1;
  v70 = v12 + 16;
  v66 = v5;
  sub_1007A2154();
  sub_100796C94();
  v65 = *(v12 + 16);
  v65(v14, v17, v11);
  type metadata accessor for BundleFinder();
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = ObjCClassFromMetadata;
    v63 = objc_opt_self();
    v19 = [v63 bundleForClass:ObjCClassFromMetadata];
    sub_100796C94();
    v20 = sub_1007A22B4();
    v22 = v21;
    v62 = *(v5 + 8);
    v23 = v69;
    v62(v10, v69);
    v61 = *(v12 + 8);
    v61(v17, v11);
    v68 = v12 + 8;
    v24 = (v71 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_labelFormat);
    *v24 = v20;
    v24[1] = v22;
    sub_1007A2154();
    sub_100796C94();
    v65(v14, v17, v11);
    v25 = [v63 bundleForClass:v64];
    sub_100796C94();
    v26 = sub_1007A22B4();
    v28 = v27;
    v62(v10, v23);
    v61(v17, v11);
    v29 = v71;
    v30 = (v71 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_accessibilityLabelFormat);
    *v30 = v26;
    v30[1] = v28;
    sub_1007A2154();
    sub_100796C94();
    v65(v14, v17, v11);
    v31 = [v63 bundleForClass:v64];
    (*(v66 + 16))(v7, v10, v23);
    v32 = sub_1007A22D4(v14, 0, 0, v31, v7, "Title for picker when changing Daily Reading goal", 49, 2);
    v34 = v33;
    v62(v10, v23);
    v61(v17, v11);
    v35 = (v29 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_title);
    *v35 = v32;
    v35[1] = v34;
    v36 = v67 / 60;
    swift_beginAccess();
    v72 = v36;
    sub_10079B964();
    swift_endAccess();
    v37 = 1440;
  }

  else
  {
    v38 = swift_getObjCClassFromMetadata();
    v64 = v38;
    v63 = objc_opt_self();
    v39 = [v63 bundleForClass:v38];
    sub_100796C94();
    v40 = sub_1007A22B4();
    v42 = v41;
    v62 = *(v5 + 8);
    v62(v10, v69);
    v43 = *(v12 + 8);
    v68 = v12 + 8;
    v43(v17, v11);
    v44 = v43;
    v45 = (v71 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_labelFormat);
    *v45 = v40;
    v45[1] = v42;
    sub_1007A2154();
    sub_100796C94();
    v46 = v11;
    v65(v14, v17, v11);
    v47 = [v63 bundleForClass:v64];
    sub_100796C94();
    v48 = sub_1007A22B4();
    v50 = v49;
    v51 = v69;
    v62(v10, v69);
    v44(v17, v46);
    v52 = (v71 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_accessibilityLabelFormat);
    *v52 = v48;
    v52[1] = v50;
    sub_1007A2154();
    sub_100796C94();
    v65(v14, v17, v46);
    v53 = [v63 bundleForClass:v64];
    (*(v66 + 16))(v7, v10, v51);
    v54 = sub_1007A22D4(v14, 0, 0, v53, v7, "Title for picker when changing Books goal", 41, 2);
    v56 = v55;
    v62(v10, v51);
    v44(v17, v46);
    v57 = (v71 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_title);
    *v57 = v54;
    v57[1] = v56;
    swift_beginAccess();
    v36 = v67;
    v72 = v67;
    sub_10079B964();
    swift_endAccess();
    v37 = 365;
  }

  result = v71;
  *(v71 + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_initialGoal) = v36;
  v59 = (result + OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel_valueRange);
  *v59 = 1;
  v59[1] = v37;
  return result;
}

uint64_t sub_1006659F4()
{
  v1 = OBJC_IVAR____TtC5Books24AdjustGoalModalViewModel__currentValue;
  v2 = sub_1001F1160(&unk_100AE1570, &qword_10083A680);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100665B00(uint64_t a1)
{
  sub_100665BC0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100665BC0()
{
  if (!qword_100AD4F50)
  {
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD4F50);
    }
  }
}

uint64_t sub_100665C10@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AdjustGoalModalViewModel(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

double sub_100665E98(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v8 = type metadata accessor for AdjustGoalModalViewController(0);
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectRetain();
  v10 = sub_100666010(a1, a2, a3);
  v11 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10080B690;
  *(v12 + 56) = v8;
  *(v12 + 32) = v10;
  v13 = v10;
  v19._countAndFlagsBits = 0x80000001008E47C0;
  v14.super.isa = a4;
  v18.value._rawValue = v12;
  v18.is_nil = 83;
  v19._object = 108;
  sub_1007A32F4(v14, v18, v19, v15);

  return result;
}

id sub_100666010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for AdjustGoalModalView(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100798654();
  v11 = (v10 == 2) | v10 & 1;
  *(v4 + qword_100AF0880) = v11;
  *(v4 + qword_100AF0888) = a3;
  type metadata accessor for AdjustGoalModalViewModel(0);
  v12 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_100665124(v11, a2);
  *(v4 + qword_100AF0878) = v12;
  swift_unknownObjectRetain();

  sub_1007545D4(a3, v9);
  v13 = sub_10079CBC4();
  [v13 setModalPresentationStyle:2];

  swift_unknownObjectRelease();
  return v13;
}

void sub_100666158(void *a1)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v1 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 sizeToFit];
    [v3 bounds];
    [v1 setPreferredContentSize:{v4, v5}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100666264()
{

  swift_unknownObjectRelease();
  return result;
}

double sub_1006662A4(uint64_t a1)
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1006662F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v7 = sub_1007A1C54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007A1CA4();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017E74();
  v14 = sub_1007A2D74();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = a1;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_100666598;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2A0B8;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v18 = a4;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_1006665AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_100666620()
{
  v1 = OBJC_IVAR____TtC5Books13PublishedBool__value;
  v2 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PublishedBool(uint64_t a1)
{
  result = qword_100AF0910;
  if (!qword_100AF0910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10066671C(uint64_t a1)
{
  sub_1004B6D70();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006667AC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PublishedBool(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for InternalEOBExperienceItem(uint64_t a1)
{
  result = qword_100AF0A38;
  if (!qword_100AF0A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100666860()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AF09C8);
  sub_100008B98(v0, qword_100AF09C8);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_100798F14();
}

uint64_t sub_100666910()
{
  v1[34] = v0;
  v2 = sub_100798F44();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  sub_1007A26F4();
  v1[38] = sub_1007A26E4();
  v4 = sub_1007A2694();

  return _swift_task_switch(sub_100666A04, v4, v3);
}

uint64_t sub_100666A04()
{
  v1 = *(v0 + 272);

  sub_10000E3E8((v1 + 40), *(v1 + 64));
  v2 = sub_100797704();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 288);
    sub_100009864(v2 + 32, v0 + 232);

    sub_1000077C0((v0 + 232), v0 + 192);
    sub_10000E3E8((v0 + 192), *(v0 + 216));
    v4 = sub_100797674();
    v6 = v5;
    sub_10000E3E8((v0 + 192), *(v0 + 216));
    sub_1007976B4();
    v7 = (v3 + 8);
    if (sub_1007972D4())
    {
      sub_100798E84();
      sub_100798E64();
    }

    else
    {
      sub_100799314();
      sub_100799304();
    }

    v8 = *(v0 + 296);
    v9 = *(v0 + 280);
    v10 = sub_100798F34();
    v12 = v11;
    (*v7)(v8, v9);
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100812CF0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x80000001008E4850;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0x644965726F7473;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = v4;
    *(inited + 104) = v6;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 1701869940;
    *(inited + 168) = &type metadata for String;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v10;
    *(inited + 152) = v12;
    v14 = sub_100019158(inited);
    swift_setDeallocating();
    sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
    swift_arrayDestroy();
    sub_10058096C(v14);

    v15 = objc_allocWithZone(BSUIFeedViewController);
    isa = sub_1007A2024().super.isa;

    v17 = [v15 initWithOptions:isa];

    if (v17)
    {
      sub_10000E3E8(*(v0 + 272), *(*(v0 + 272) + 24));
      sub_100796EC4();
    }

    sub_1000074E0((v0 + 192));
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100666D18()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-v2];
  if ((sub_100798F24() & 1) == 0)
  {
    return 0;
  }

  if (qword_100AD19C0 != -1)
  {
    swift_once();
  }

  v4 = sub_100008B98(v0, qword_100AF09C8);
  (*(v1 + 16))(v3, v4, v0);
  sub_100798EE4();
  (*(v1 + 8))(v3, v0);
  return v6[15];
}

uint64_t sub_100666E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100666910();
}

uint64_t sub_100666EE8@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.internalEOBExperience(_:);
  v13 = sub_100797144();
  (*(*(v13 - 8) + 104))(a6 + v11, v12, v13);
  sub_1000077C0(a1, a6 + 40);
  sub_1000077C0(a2, a6);
  *(a6 + 80) = a3;

  return sub_1000077C0(a4, a6 + 88);
}

uint64_t sub_100667018@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v46 = sub_1001F1160(&qword_100AF0A98, &qword_10083A890);
  v33 = *(v46 - 8);
  v4 = v33;
  __chkstk_darwin(v46);
  v6 = &v30 - v5;
  v7 = sub_1001F1160(&qword_100AF0AA0, &qword_10083A898);
  __chkstk_darwin(v7 - 8);
  v48 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  sub_10079E474();
  sub_10079BE54();
  v45 = v49;
  v44 = v51;
  v43 = v53;
  v42 = v54;
  v69 = 1;
  v68 = v50;
  v67 = v52;
  *v11 = sub_10079C8F4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v41 = v11;
  v12 = &v11[*(sub_1001F1160(&qword_100AF0AA8, &qword_10083A8A0) + 44)];
  sub_10079E474();
  sub_10079BE54();
  v40 = v55;
  v13 = v57;
  v39 = v59;
  v38 = v60;
  v72 = 1;
  v71 = v56;
  v70 = v58;
  sub_10079E474();
  sub_10079BE54();
  v37 = v61;
  v36 = v63;
  v35 = v65;
  v34 = v66;
  v75 = 1;
  v74 = v62;
  v73 = v64;
  LOBYTE(v11) = v72;
  v14 = v71;
  v15 = v70;
  v16 = *(v4 + 16);
  v17 = v46;
  v16(v6, v47, v46);
  v31 = v75;
  v32 = v74;
  LODWORD(v47) = v73;
  *v12 = 0;
  v12[8] = v11;
  *(v12 + 2) = v40;
  v12[24] = v14;
  *(v12 + 4) = v13;
  v12[40] = v15;
  v18 = v38;
  *(v12 + 6) = v39;
  *(v12 + 7) = v18;
  v19 = sub_1001F1160(&qword_100AF0AB0, &qword_10083A8A8);
  v16(&v12[*(v19 + 48)], v6, v17);
  v20 = &v12[*(v19 + 64)];
  *v20 = 0;
  v20[8] = v31;
  *(v20 + 2) = v37;
  v20[24] = v32;
  *(v20 + 4) = v36;
  v20[40] = v47;
  v21 = v34;
  *(v20 + 6) = v35;
  *(v20 + 7) = v21;
  (*(v33 + 8))(v6, v17);
  LOBYTE(v11) = v69;
  v22 = v68;
  v23 = v67;
  v24 = v41;
  v25 = v48;
  sub_1006675C0(v41, v48);
  *a3 = 0;
  *(a3 + 8) = v11;
  *(a3 + 16) = v45;
  *(a3 + 24) = v22;
  *(a3 + 32) = v44;
  *(a3 + 40) = v23;
  v26 = v42;
  *(a3 + 48) = v43;
  *(a3 + 56) = v26;
  v27 = sub_1001F1160(&qword_100AF0AB8, &qword_10083A8B0);
  sub_1006675C0(v25, a3 + *(v27 + 48));
  v28 = a3 + *(v27 + 64);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_100667630(v24);
  return sub_100667630(v25);
}

uint64_t sub_1006674E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *v2;
  *a2 = sub_10079CB24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1001F1160(&qword_100AF0A80, &qword_10083A878);
  sub_100667018(a1, a2 + *(v5 + 44));
  LOBYTE(a1) = sub_10079D294();
  v6 = a2 + *(sub_1001F1160(&qword_100AF0A88, &qword_10083A880) + 36);
  *v6 = v9;
  *(v6 + 8) = a1;

  v7 = sub_10079D294();
  result = sub_1001F1160(&qword_100AF0A90, &qword_10083A888);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_1006675C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF0AA0, &qword_10083A898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100667630(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF0AA0, &qword_10083A898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100667698()
{
  result = qword_100AF0AC0;
  if (!qword_100AF0AC0)
  {
    sub_1001F1234(&qword_100AF0A90, &qword_10083A888);
    sub_100667724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0AC0);
  }

  return result;
}

unint64_t sub_100667724()
{
  result = qword_100AF0AC8;
  if (!qword_100AF0AC8)
  {
    sub_1001F1234(&qword_100AF0A88, &qword_10083A880);
    sub_100005920(&qword_100AF0AD0, &qword_100AF0AD8, &qword_10083A8B8, &protocol conformance descriptor for VStack<A>);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0AC8);
  }

  return result;
}

void sub_100667808(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1007967C4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_100667878(void *a1)
{
  v1 = [a1 primaryAnalyticsController];
  sub_100797D04();
}

id sub_100667930@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for WidgetService());
  result = WidgetService.init(serviceCenter:)(a1);
  *a2 = result;
  return result;
}

double sub_100667978(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  WidgetService.setupService(libraryManager:onWidgetConfigurationChangeCallback:)(a2, sub_1005F8ED8, v5);

  return result;
}

unint64_t sub_100667A08(uint64_t a1)
{
  sub_1007A3454();
  result = sub_10079E224();
  if (v2 <= 0x3F)
  {
    result = sub_100247D20();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100667AB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 23;
  if (!v5)
  {
    v9 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_100667C3C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void *sub_100667F00()
{
  sub_1007A3454();
  sub_10079E224();

  return sub_10079E1F4();
}

uint64_t sub_100667F4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v20 = a3;
  swift_getWitnessTable();
  sub_10079CE54();
  v4 = a2[2];
  v6 = a2[4];
  v7 = a2[5];
  v27[0] = a2[3];
  v5 = v27[0];
  v27[1] = v4;
  v27[2] = v7;
  v27[3] = v6;
  type metadata accessor for HalfSheet(255, v27);
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E1A4();
  swift_getWitnessTable();
  v8 = sub_10079CCE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v18;
  v26 = v19;
  sub_10079CCD4();
  swift_getWitnessTable();
  sub_10039232C();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_10039232C();
  return (v15)(v14, v8);
}

uint64_t sub_1006681B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a7;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  type metadata accessor for HalfSheetModifier(255, &v30);
  swift_getWitnessTable();
  sub_10079CE54();
  v30 = a4;
  v31 = a3;
  v32 = a6;
  v33 = a5;
  type metadata accessor for HalfSheet(255, &v30);
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v11 = sub_10079E1A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = v21;
  v29 = v22;
  sub_10079E474();
  sub_10079E194();
  swift_getWitnessTable();
  sub_10039232C();
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_10039232C();
  return (v18)(v17, v11);
}

uint64_t sub_100668400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a1;
  v53 = a7;
  sub_1007A3454();
  v12 = sub_10079E224();
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v57 = a4;
  v58 = a3;
  v15 = a4;
  v48 = *&a4;
  v49 = a3;
  v59 = a6;
  v60 = a5;
  v16 = a6;
  v17 = a5;
  v47 = a5;
  v18 = type metadata accessor for HalfSheet(0, &v57);
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v50 = &v43 - v22;
  v57 = a3;
  v58 = v15;
  v59 = v17;
  v60 = v16;
  v23 = v16;
  v24 = type metadata accessor for HalfSheetModifier(255, &v57);
  swift_getWitnessTable();
  v25 = sub_10079CE54();
  v43 = *(v25 - 8);
  v26 = v43;
  __chkstk_darwin(v25);
  v46 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v44 = &v43 - v29;
  WitnessTable = swift_getWitnessTable();
  sub_10039232C();
  sub_100667F00();
  v30 = *(a2 + v24[13]);
  LODWORD(v16) = *(a2 + v24[14]);
  v31 = (a2 + v24[15]);
  v32 = *v31;
  v33 = v31[1];

  sub_10026C588(v14, v30, v16, v32, v33, v48, v49, v23, v20, v47);
  v34 = swift_getWitnessTable();
  v35 = v50;
  sub_10039232C();
  v36 = v52;
  v37 = *(v52 + 8);
  v37(v20, v18);
  v38 = *(v26 + 16);
  v39 = v46;
  v40 = v44;
  v38(v46, v44, v25);
  v57 = v39;
  (*(v36 + 16))(v20, v35, v18);
  v58 = v20;
  v56[0] = v25;
  v56[1] = v18;
  v54 = WitnessTable;
  v55 = v34;
  sub_10038FA94(&v57, 2uLL, v56);
  v37(v35, v18);
  v41 = *(v43 + 8);
  v41(v40, v25);
  v37(v20, v18);
  return (v41)(v39, v25);
}

void static AchievementsNotificationController.notify(_:currentlyShowingSheetKind:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079E6B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_10079E6A4();
  if (sub_10079E694() == a2)
  {
    v11 = sub_1007A2994();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v12 = sub_1007A33C4();
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10080B690;
    sub_100653AFC(a1, v10);
    v14 = sub_1007A22F4();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10000E4C4();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_10079AB44(v11, &_mh_execute_header, v12, "AchievementsNotificationController: Skipping notification for achievement due to sheet already being visible: %@", 112, 2, v13);
  }

  else if (qword_100AF0CC8)
  {
    v17 = sub_1007A29D4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v18 = sub_1007A33C4();
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10080B690;
    sub_100653AFC(a1, v10);
    v20 = sub_1007A22F4();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10000E4C4();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_10079AB44(v17, &_mh_execute_header, v18, "AchievementsNotificationController: Suppressing notification for achievement: %@", 80, 2, v19);

    if (qword_100AD19D0 != -1)
    {
      swift_once();
    }

    sub_100653AFC(a1, v7);
    swift_beginAccess();
    v23 = off_100AF0CD0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    off_100AF0CD0 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_10066CAB4(0, v23[2] + 1, 1, v23, &qword_100AF0E68, &qword_10083AC38, &type metadata accessor for Achievement);
      off_100AF0CD0 = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_10066CAB4((v25 > 1), v26 + 1, 1, v23, &qword_100AF0E68, &qword_10083AC38, &type metadata accessor for Achievement);
    }

    v23[2] = v26 + 1;
    sub_100653B60(v7, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26);
    off_100AF0CD0 = v23;
    swift_endAccess();
  }

  else
  {

    sub_100669A5C(a1);
  }
}

uint64_t *NSNotificationName.achievementNotification.unsafeMutableAddressor()
{
  if (qword_100AD19C8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.achievementNotification;
}

void static AchievementsNotificationController.handleNotificationSuppressingEvent(_:)(uint64_t a1)
{
  v1 = qword_100AF0CC8;
  if (a1)
  {
    v1 = qword_100AF0CC8 - 1;
    if (!__OFSUB__(qword_100AF0CC8, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (__OFADD__(v1++, 1))
  {
    __break(1u);
    return;
  }

LABEL_6:
  qword_100AF0CC8 = v1;
  v3 = sub_1007A2994();
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  v4 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  v6 = sub_1007A3A74();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10000E4C4();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_10079AB44(v3, &_mh_execute_header, v4, "Notification Suppression Counter:%{public}@", 43, 2, v5);

  if (!qword_100AF0CC8)
  {
    sub_100668F2C();
  }
}

NSString sub_100668E1C()
{
  result = sub_1007A2214();
  static NSNotificationName.achievementNotification = result;
  return result;
}

id static NSNotificationName.achievementNotification.getter()
{
  if (qword_100AD19C8 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.achievementNotification;

  return v1;
}

void sub_100668F2C()
{
  v44 = sub_1007A1C54();
  v0 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1007A1CA4();
  v2 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10079E6B4();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v5;
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  if (qword_100AD19D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_100AF0CD0;
  off_100AF0CD0 = _swiftEmptyArrayStorage;
  v11 = v10[2];
  if (v11)
  {
    v12 = *(v4 + 80);
    v30[1] = v10;
    v13 = v10 + ((v12 + 32) & ~v12);
    v37 = sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v36 = *(v4 + 72);
    v38 = v12;
    v35 = (v12 + 24) & ~v12;
    v34 = v49;
    v33 = (v0 + 8);
    v32 = (v2 + 8);
    v31 = xmmword_10080B690;
    do
    {
      sub_100653AFC(v13, v9);
      v14 = sub_1007A2994();
      v15 = sub_1007A33C4();
      sub_1001F1160(&unk_100AD5090, &unk_100815670);
      v16 = swift_allocObject();
      *(v16 + 16) = v31;
      sub_100653AFC(v9, v6);
      v17 = sub_1007A22F4();
      v19 = v18;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_10000E4C4();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      sub_10079AB44(v14, &_mh_execute_header, v15, "UNUserNotificationCenter: Scheduling notification for achievement %@", 68, 2, v16);

      if (qword_100AD19D8 != -1)
      {
        swift_once();
      }

      v46 = qword_100AF0CD8;
      sub_100653AFC(v9, v6);
      v20 = v35;
      v21 = swift_allocObject();
      *(v21 + 16) = v45;
      sub_100653B60(v6, v21 + v20);
      v49[2] = sub_10066D0A4;
      v49[3] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v49[0] = sub_1003323D0;
      v49[1] = &unk_100A2A240;
      v22 = _Block_copy(aBlock);
      v23 = v9;
      v24 = v41;
      sub_1007A1C74();
      v47 = _swiftEmptyArrayStorage;
      sub_100022AEC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100609AA4(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20);
      v25 = v6;
      v26 = v43;
      v27 = v44;
      sub_1007A3594();
      sub_1007A2D94();
      _Block_release(v22);
      v28 = v26;
      v6 = v25;
      (*v33)(v28, v27);
      v29 = v24;
      v9 = v23;
      (*v32)(v29, v42);

      sub_1003C2EB4(v23);
      v13 += v36;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_10066950C()
{
  v7 = sub_1007A2D64();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A2CF4();
  __chkstk_darwin(v3);
  v4 = sub_1007A1CA4();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  sub_1007A1C84();
  v8 = _swiftEmptyArrayStorage;
  sub_100022AEC(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20, &qword_100824350);
  sub_100609AA4(&qword_100AE8230, &unk_100AD1E20, &qword_100824350);
  sub_1007A3594();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_1007A2DA4();
  qword_100AF0CD8 = result;
  return result;
}

id sub_1006697A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1007A2044();
  a4();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1006698A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1007A2214();

  sub_100796944(v7);
  v9 = v8;
  if (a4)
  {
    v10.super.isa = sub_1007A2024().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v19 = 0;
  v11 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v9 options:v10.super.isa error:&v19];

  v12 = v19;
  if (v11)
  {
    v13 = sub_1007969B4();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a3, v13);
  }

  else
  {
    v16 = v19;
    sub_1007967D4();

    swift_willThrow();
    v17 = sub_1007969B4();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  return v11;
}

double sub_100669A5C(uint64_t a1)
{
  v23 = sub_1007A1C54();
  v27 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079E6B4();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v9 = sub_1007A2994();
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  v10 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10080B690;
  v12 = a1;
  sub_100653AFC(a1, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1007A22F4();
  v15 = v14;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10000E4C4();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_10079AB44(v9, &_mh_execute_header, v10, "UNUserNotificationCenter: Scheduling notification for achievement %@", 68, 2, v11);

  if (qword_100AD19D8 != -1)
  {
    swift_once();
  }

  sub_100653AFC(v12, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v24;
  sub_100653B60(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_10066ED9C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2A2E0;
  v18 = _Block_copy(aBlock);
  sub_1007A1C74();
  v28 = _swiftEmptyArrayStorage;
  sub_100022AEC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100609AA4(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20);
  v19 = v23;
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v18);
  (*(v27 + 8))(v3, v19);
  (*(v25 + 8))(v6, v26);

  return result;
}

void sub_100669EBC(uint64_t a1, UIImage *a2)
{
  v30 = a1;
  v3 = sub_10079E6B4();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100796C04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10066D788(a2);
  v10 = [objc_opt_self() triggerWithTimeInterval:0 repeats:0.1];
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  sub_100796BC4();
  (*(v6 + 8))(v8, v5);
  v11 = v9;
  v12 = v10;
  v13 = sub_1007A2214();

  v14 = [objc_opt_self() requestWithIdentifier:v13 content:v11 trigger:v12];

  v15 = [objc_opt_self() currentNotificationCenter];
  sub_100653AFC(a2, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v17 = swift_allocObject();
  sub_100653B60(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_10066EBB8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100641374;
  aBlock[3] = &unk_100A2A290;
  v18 = _Block_copy(aBlock);

  [v15 addNotificationRequest:v14 withCompletionHandler:v18];
  _Block_release(v18);
  v33 = 0x656C746974;
  v34 = 0xE500000000000000;
  sub_1007A36B4();
  v19 = [v11 title];
  v20 = sub_1007A2254();
  v22 = v21;

  v35 = &type metadata for String;
  v33 = v20;
  v34 = v22;
  sub_1000076D4(&v33, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = _swiftEmptyDictionarySingleton;
  sub_1002F5754(v32, aBlock, isUniquelyReferenced_nonNull_native);
  sub_10002899C(aBlock);
  v24 = [objc_opt_self() defaultCenter];
  if (qword_100AD19C8 != -1)
  {
    swift_once();
  }

  v25 = static NSNotificationName.achievementNotification;
  aBlock[0] = v30;
  sub_1001F1160(&qword_100AF0E18, &qword_10083ABD8);
  v26 = sub_1007A3B04();
  isa = sub_1007A2024().super.isa;

  [v24 postNotificationName:v25 object:v26 userInfo:isa];

  swift_unknownObjectRelease();
}