double sub_1A43334AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4(0xD00000000000001DLL);
  v6 = v5;
  sub_1A4335E5C(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v7 = sub_1A5244EE4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x1E69C12A8], v7);
  v11 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  v13 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(a2, 0, 1, v13);

  return result;
}

uint64_t sub_1A4333684(void **a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69C12B0], v4, v6);
  v10 = sub_1A4331DF4(v9, a2, v8, 0, 1);
  (*(v5 + 8))(v8, v4);
  return v10;
}

double sub_1A4333798@<D0>(_OWORD *a1@<X8>)
{

  sub_1A46BE164(v2, 0, v5, 14.0, 0.0, 0.0, 0.0);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v6[0];
  result = *(v6 + 9);
  *(a1 + 41) = *(v6 + 9);
  return result;
}

uint64_t sub_1A4333818(uint64_t a1)
{
  result = PhotosObservableTrip<>.title.getter(a1);
  if (!v2)
  {
    return sub_1A3C38BD4(0xD00000000000001BLL);
  }

  return result;
}

uint64_t sub_1A433385C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A433AD30();

  return sub_1A4201830(a1, a2, a3, v6);
}

void sub_1A43338D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A4332AAC(*a1, *v3, *(v3 + 8), *(v3 + 16), &v7 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
}

unint64_t sub_1A4333A3C(uint64_t a1)
{
  v2 = sub_1A3C441B4();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A4333A78()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 tripsCollection];

  return v2;
}

double sub_1A4333AD4()
{
  v1 = *(*v0 + 40);

  return result;
}

uint64_t sub_1A4333B0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  if (static LemonadePhotoLibraryContext.== infix(_:_:)(*a1, *a2) & 1) == 0 || ((*(a1 + 8) ^ *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1A524EAB4() & 1) == 0 || (sub_1A4333BDC(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A4333BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A4335DB4(&qword_1EB1385D8, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D8]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4333DF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A4335DB4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524ECB4();
  sub_1A524C794();
  v3 = *(v2 + 32);
  v4 = *(v3 + 16);
  MEMORY[0x1A590A010](v4);
  if (v4)
  {
    v5 = *(sub_1A5244EE4() - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1A4335DB4(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
    do
    {
      sub_1A524C4B4();
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  return sub_1A524C794();
}

uint64_t sub_1A4333F80()
{
  sub_1A524EC94();
  sub_1A4333DF0(v2, v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A4333FC4(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A4333DF0(v3, v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4334000(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v16 = a1[6];
  v17 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 40);
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  v12 = static LemonadePhotoLibraryContext.== infix(_:_:)(v2, v7);
  result = 0;
  if ((v12 & 1) != 0 && ((v3 ^ v8) & 1) == 0)
  {
    if (v4 == v10 && v5 == v9 || (sub_1A524EAB4()) && (sub_1A4333BDC(v6, v11))
    {
      if (v17 == v15 && v16 == v14)
      {
        return 1;
      }

      else
      {

        return sub_1A524EAB4();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A4334140(uint64_t a1)
{
  sub_1A4338EAC(0);
  swift_allocObject();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43341E0(_OWORD *a1, void *a2)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v9 = a2;
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v7 = a1[3];
  v5[3] = a1[2];
  v5[4] = v7;
  sub_1A433B3F4(v10, v8);
  sub_1A4335DB4(&qword_1EB124AF0, sub_1A4338E18, off_1E77210F0);
  sub_1A5245F44();
}

void sub_1A43342E4(uint64_t a1, uint64_t a2)
{
  sub_1A4335E5C(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A5242D94();
  sub_1A5246544();
}

void sub_1A43344E4(uint64_t a1)
{
  sub_1A43390C4(0, &qword_1EB127F50, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  v11 = type metadata accessor for LemonadePlaceholderView(0);
  MEMORY[0x1EEE9AC00](v11);
  v5 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  [v5 isCloudPhotoLibraryEnabled];
  v6 = sub_1A524C634();
  v7 = PXLemonadeLocalizedString(v6);

  sub_1A524C674();
  v8 = sub_1A524C634();

  v9 = PXLemonadeLocalizedString(v8);

  sub_1A524C674();
  sub_1A3C38BD4(0xD000000000000026);
  v10 = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43348A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A433A090(0, &qword_1EB1356A0, type metadata accessor for LemonadeFeatureAvailabilityProcessingView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-v7];
  type metadata accessor for LemonadeFeatureAvailabilityMonitor(0);
  v19 = 4;
  v9 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v19, v9);
  v11 = v10;

  v12 = v11;
  v13 = sub_1A3C5A374();
  v14 = sub_1A3C5A374();
  v18[12] = 1;
  sub_1A4092D8C(v12, 0x100000000, 2, 0, 0, 0, 0, v13 & 1, v8, v14 & 1, 0, 0);
  v15 = sub_1A524A074();

  v16 = &v8[*(v5 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  sub_1A4208E70(v8, a2);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

void sub_1A4334B04()
{
  sub_1A433AE94();

    ;
  }
}

void sub_1A4334B40()
{
  sub_1A433AE94();

    ;
  }
}

void sub_1A4334B7C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1A43362AC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A4334D08@<X0>(uint64_t a2@<X8>)
{
  if (*(v2 + 56))
  {
    v4 = sub_1A437C79C();
  }

  else
  {
    if (qword_1EB16B000 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v4 = __swift_project_value_buffer(v5, qword_1EB1EBCB8);
  }

  return sub_1A433B638(v4, a2, type metadata accessor for LemonadeFeedBodyStyle);
}

uint64_t sub_1A4334D98(uint64_t a1)
{
  sub_1A433A090(0, &qword_1EB138550, sub_1A433A0FC, &type metadata for LemonadeTripsCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v16 - v4);
  sub_1A433A0FC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 56);
  if (v11)
  {
    v12 = v11;
    sub_1A4335048(a1, v12);
    (*(v8 + 16))(v5, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1A4335DB4(&qword_1EB138560, sub_1A433A0FC, MEMORY[0x1E69C20C8]);
    sub_1A433A1E8();
    sub_1A5249744();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {

    sub_1A46BE164(v14, 1, v16, 14.0, 0.0, 0.0, 0.0);
    v15 = v16[1];
    *v5 = v16[0];
    v5[1] = v15;
    v5[2] = v17[0];
    *(v5 + 41) = *(v17 + 9);
    swift_storeEnumTagMultiPayload();
    sub_1A4335DB4(&qword_1EB138560, sub_1A433A0FC, MEMORY[0x1E69C20C8]);
    sub_1A433A1E8();
    return sub_1A5249744();
  }
}

uint64_t sub_1A4335048(uint64_t a1, void *a2)
{
  v4 = sub_1A5243284();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x540))(v6);
  v11[1] = a1;

  PhotosObservableTrip<>.title.getter(v9);
  (*(v5 + 104))(v8, *MEMORY[0x1E69C23E0], v4);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A40F3878(0);
  sub_1A5243EC4();
  sub_1A4335DB4(&qword_1EB129290, sub_1A40F3878, MEMORY[0x1E69C22B8]);
  sub_1A4335DB4(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  return sub_1A5242AA4();
}

uint64_t sub_1A4335290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    v6 = *(a1 + 16);
    v7 = *(a2 + 40);
    if (v7)
    {
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0))(v6);
    }

    else
    {
      v10 = v6;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a3);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 40);
    if (v9)
    {
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x2D0))();
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A433541C(uint64_t a1)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4335474(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A43353F4(v3, *v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A43354DC()
{
  PXDisplayCollectionDetailedCountsMake();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4335534(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1A3C47918();
}

id sub_1A4335588()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6978840]);

  return [v0 init];
}

uint64_t sub_1A43355C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v30 = a5;
  v8 = sub_1A5244EE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(v9 + 16);
  v16(&v29 - v14, a2, v8, v13);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A4338F3C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v18 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v19 = v18;
  if ((a4 & 1) == 0)
  {
    [v18 setFetchLimit_];
  }

  v20 = [v17 tripsSource];
  if (v20 == 2)
  {
    (v16)(v11, v15, v8);
    sub_1A5244EF4();
    swift_allocObject();
    v21 = v19;
    v24 = v30;
    sub_1A5244ED4();
    sub_1A5244B94();
    v23 = sub_1A5244B84();
    goto LABEL_7;
  }

  if (v20 == 1)
  {
    (v16)(v11, v15, v8);
    sub_1A5244EF4();
    swift_allocObject();
    v21 = v19;
    v22 = v30;
    sub_1A5244ED4();
    sub_1A5244D04();
    v23 = sub_1A5245014();
LABEL_7:
    v25 = v23;

LABEL_10:
    (*(v9 + 8))(v15, v8);
    return v25;
  }

  if (!v20)
  {
    (v16)(v11, v15, v8);
    sub_1A5244EF4();
    swift_allocObject();
    v26 = v19;
    v27 = v30;
    sub_1A5244ED4();
    sub_1A52445A4();
    v25 = sub_1A5244594();

    goto LABEL_10;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A433596C()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 tripsCollection];

  return v2;
}

uint64_t sub_1A43359C4()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for LemonadeFeedBodyStyle(0);
  __swift_allocate_value_buffer(v3, qword_1EB1EBCB8);
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBCB8);
  v5 = sub_1A3C52D68();
  v7 = v6;
  v9 = v8;
  v10 = sub_1A3C4ED50(v5);
  v14[8] = 1;
  *v2 = sub_1A4335B14;
  *(v2 + 1) = 0;
  v2[16] = 2;
  *(v2 + 3) = 9;
  v2[32] = 1;
  *(v2 + 5) = sub_1A433B94C;
  *(v2 + 6) = 0;
  *(v2 + 7) = sub_1A4335C44;
  *(v2 + 8) = 0;
  *(v2 + 9) = v5;
  *(v2 + 10) = v7;
  v2[88] = v9;
  v2[89] = v10;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v2, 3, v11, v12 & 1, v4);
}

uint64_t sub_1A4335B14(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  if (shouldUseNewCollectionsLayout()())
  {
    v7 = 41;
  }

  else
  {
    v7 = 14;
  }

  (*(v3 + 8))(v6, v2);
  return v7;
}

double sub_1A4335C48(uint64_t a1, unsigned __int8 *a2)
{
  sub_1A433B7C4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v9 = *(v8 + 56);
  v10 = sub_1A5242D14();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a1, v10);
  v6[v9] = v7;
  v12 = (*(v11 + 88))(v6, v10);
  if (v12 == *MEMORY[0x1E69C2200] || (v12 == *MEMORY[0x1E69C21F8] ? (v13 = (v7 - 4) >= 3) : (v13 = 0), v13))
  {
    (*(v11 + 8))(v6, v10);
    return 24.0;
  }

  else
  {
    sub_1A4335DFC(v6, sub_1A433B7C4);
    return 32.0;
  }
}

uint64_t sub_1A4335DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4335DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4335E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4335EC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A52413B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  v33 = a2;
  v11 = sub_1A524C4A4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A4335DB4(&unk_1EB146170, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
      v21 = sub_1A524C594();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A4337914(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

double sub_1A43361A0@<D0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A3CAB9BC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4337440();
      v9 = v15;
    }

    v10 = (*(v9 + 56) + (v7 << 6));
    v11 = v10[1];
    *a2 = *v10;
    a2[1] = v11;
    v12 = v10[2];
    v13 = v10[3];
    a2[2] = v12;
    a2[3] = v13;
    sub_1A4337170(v7, v9, v12);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1A4336240(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A4338278(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1A433646C(v4);
  *a1 = v2;
}

char *sub_1A43362AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37150(0, &qword_1EB120378, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A43363D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C37150(0, &qword_1EB120378, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void sub_1A433646C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A524CAC4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1A433664C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A4336564(0, v2, 1, a1);
  }
}

uint64_t sub_1A4336564(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + (a3 << 6);
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = (v10 - 64);
      result = *(v10 - 64);
      v12 = result == *v10 && *(v10 - 56) == *(v10 + 8);
      if (v12 || (result = sub_1A524EAB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 64;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v16 = *v10;
      v15 = *(v10 + 16);
      v17 = *(v10 - 48);
      *v10 = *v11;
      *(v10 + 16) = v17;
      v18 = *(v10 - 16);
      *(v10 + 32) = *(v10 - 32);
      *(v10 + 48) = v18;
      *v11 = v16;
      *(v10 - 48) = v15;
      v10 -= 64;
      v11[2] = v14;
      v11[3] = v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1A433664C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1A3D86884(v8);
    }

    v94 = v8 + 16;
    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v8[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_1A4336C40((*a3 + (*v96 << 6)), (*a3 + (*v98 << 6)), (*a3 + (v99 << 6)), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v99 < v97)
        {
          goto LABEL_130;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_131;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_132;
        }

        v95 = *v94 - 1;
        memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + (v7 << 6));
      v11 = (*a3 + (v9 << 6));
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1A524EAB4();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 9;
        v15 = v11 + 9;
        do
        {
          v17 = v15[8];
          v15 += 8;
          v16 = v17;
          if (*(v14 - 1) == v14[7] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1A524EAB4()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = (v7 << 6) - 64;
          v20 = v9 << 6;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v32 + v20);
              v24 = (v32 + v19);
              v26 = v23[2];
              v25 = v23[3];
              v28 = *v23;
              v27 = v23[1];
              v29 = v24[3];
              v31 = *v24;
              v30 = v24[1];
              v23[2] = v24[2];
              v23[3] = v29;
              *v23 = v31;
              v23[1] = v30;
              *v24 = v28;
              v24[1] = v27;
              v24[2] = v26;
              v24[3] = v25;
            }

            ++v22;
            v19 -= 64;
            v20 += 64;
          }

          while (v22 < v21);
        }
      }
    }

    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A3D8598C(0, *(v8 + 2) + 1, 1, v8);
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v8 = sub_1A3D8598C((v48 > 1), v49 + 1, 1, v8);
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_75:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_89:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_96:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v9 = *&v8[16 * v91 + 32];
        v92 = *&v8[16 * v53 + 40];
        sub_1A4336C40((*a3 + (v9 << 6)), (*a3 + (*&v8[16 * v53 + 32] << 6)), (*a3 + (v92 << 6)), v52);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v92 < v9)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D86884(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v91];
        *(v93 + 4) = v9;
        *(v93 + 5) = v92;
        sub_1A3D867F8(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v102 = v5;
  if (v9 + a4 >= v33)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v102;
    goto LABEL_55;
  }

  v34 = *a3;
  v35 = *a3 + (v7 << 6);
  v101 = v9;
  v36 = (v9 - v7);
LABEL_43:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = (v38 - 64);
    v40 = *(v38 - 64) == *v38 && *(v38 - 56) == *(v38 + 8);
    if (v40 || (sub_1A524EAB4() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v35 += 64;
      --v36;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v101;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 32);
    v41 = *(v38 + 48);
    v44 = *v38;
    v43 = *(v38 + 16);
    v45 = *(v38 - 48);
    *v38 = *v39;
    *(v38 + 16) = v45;
    v46 = *(v38 - 16);
    *(v38 + 32) = *(v38 - 32);
    *(v38 + 48) = v46;
    *v39 = v44;
    *(v38 - 48) = v43;
    v38 -= 64;
    v39[2] = v42;
    v39[3] = v41;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1A4336C40(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v19 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v19 && (sub_1A524EAB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v19 = v7 == v4;
      v4 += 64;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v19 = v7 == v6;
    v6 += 64;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v18;
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 64;
    v5 -= 64;
    v21 = v14;
    do
    {
      v22 = *(v21 - 8);
      v23 = *(v21 - 7);
      v21 -= 64;
      v24 = *(v6 - 8) == v22 && *(v6 - 7) == v23;
      if (!v24 && (sub_1A524EAB4() & 1) != 0)
      {
        if (v5 + 64 != v6)
        {
          v28 = *v20;
          v29 = *(v6 - 3);
          v30 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v30;
          *v5 = v28;
          *(v5 + 1) = v29;
        }

        if (v14 <= v4 || (v6 -= 64, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 64 != v14)
      {
        v25 = *v21;
        v26 = *(v21 + 1);
        v27 = *(v21 + 3);
        *(v5 + 2) = *(v21 + 2);
        *(v5 + 3) = v27;
        *v5 = v25;
        *(v5 + 1) = v26;
      }

      v5 -= 64;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

void sub_1A4336E80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A433B4E4();
  v38 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + (v20 << 6);
      if (v38)
      {
        v23 = *(v22 + 8);
        v24 = *(v22 + 24);
        v40 = *v22;
        v41 = *(v22 + 16);
        v39 = *(v22 + 40);
        v42 = *(v22 + 32);
        v43 = *(v22 + 56);
      }

      else
      {
        v25 = *v22;
        v26 = *(v22 + 16);
        v27 = *(v22 + 48);
        *v46 = *(v22 + 32);
        *&v46[16] = v27;
        v45[0] = v25;
        v45[1] = v26;
        v24 = *(&v26 + 1);
        v42 = *v46;
        v43 = *(&v27 + 1);
        v39 = *&v46[8];
        v23 = *(&v25 + 1);
        v40 = v25;
        v41 = v26;
        sub_1A433B3F4(v45, v44);
      }

      v28 = sub_1A524EC84();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + (v15 << 6);
      *v16 = v40;
      *(v16 + 8) = v23;
      *(v16 + 16) = v41;
      *(v16 + 24) = v24;
      *(v16 + 32) = v42;
      *(v16 + 40) = v39;
      *(v16 + 56) = v43;
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

    if (v38)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1A4337170(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1A524E244() + 1) & ~v6;
    do
    {
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v7);
      result = sub_1A524EC84();
      v15 = result & v8;
      if (v4 >= v9)
      {
        if (v15 >= v9 && v4 >= v15)
        {
LABEL_15:
          v18 = (v13 + 8 * v4);
          if (v4 != v7 || v18 >= v14 + 1)
          {
            *v18 = *v14;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + (v4 << 6));
          v21 = (v19 + (v7 << 6));
          if (v4 != v7 || v20 >= v21 + 4)
          {
            v10 = *v21;
            v11 = v21[1];
            v12 = v21[3];
            v20[2] = v21[2];
            v20[3] = v12;
            *v20 = v10;
            v20[1] = v11;
            v4 = v7;
          }
        }
      }

      else if (v15 >= v9 || v4 >= v15)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A43372E8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3CAB9BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A4336E80(v14, a3 & 1);
      result = sub_1A3CAB9BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A4337440();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = (v19[7] + (result << 6));
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[3];
    v21[2] = a1[2];
    v21[3] = v24;
    *v21 = v22;
    v21[1] = v23;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + (result << 6);

  return sub_1A433B4AC(a1, v20);
}

void sub_1A4337440()
{
  v1 = v0;
  sub_1A433B4E4();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[3];
        v30 = v19[2];
        v31 = v22;
        v28 = v21;
        v29 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v28;
        v25 = v29;
        v26 = v31;
        v23[2] = v30;
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        sub_1A433B3F4(&v28, &v27);
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A43375C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1A52413B4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1A433B544(0);
  v6 = sub_1A524E3B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v21 = sub_1A524C4A4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

uint64_t sub_1A4337914(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1A52413B4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A43375C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1A4337BB8();
      goto LABEL_12;
    }

    sub_1A4337DE0(v11 + 1);
  }

  v13 = *v3;
  sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  v14 = sub_1A524C4A4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1A4335DB4(&unk_1EB146170, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
      v22 = sub_1A524C594();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void sub_1A4337BB8()
{
  v1 = v0;
  v2 = sub_1A52413B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A433B544(0);
  v6 = *v0;
  v7 = sub_1A524E3A4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }
}

void sub_1A4337DE0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1A52413B4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1A433B544(0);
  v7 = sub_1A524E3B4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v21 = sub_1A524C4A4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void *sub_1A43380F0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_1A433B3F4(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_1A433B3F4(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_1A433828C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37150(0, &qword_1EB120378, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A43383B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1A3CA1BC0(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4335DFC(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v11 & 1) == 0)
  {
    v14 = objc_opt_self();
    v15 = sub_1A524CA14();
    v16 = sub_1A524C634();
    v17 = [v14 transientCollectionListWithCollections:v15 title:v16 identifier:0 photoLibrary:*(a2 + 16)];
    v29[0] = v9;
    v18 = v17;

    v19 = *(a2 + 24);
    sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v29[1] = v20;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 2;
    v21 = v18;
    v22 = v19;
    sub_1A3C6C180(&v30);
    v38 = v30;
    v39 = v31;
    sub_1A3C6C18C(&v36);
    v34 = v36;
    v35 = v37;
    LOBYTE(v18) = sub_1A3C5A374();
    v23 = sub_1A3C30368();
    LOBYTE(v15) = sub_1A3C5A374();
    v24 = sub_1A3C5A374();
    v25 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v38, 0, &unk_1F1706C28, 0, 1, &v34, v18 & 1, &v40, v33, v23, v15 & 1, v24 & 1, v25 & 1, 0);
    v31 = 0;
    v30 = 0;
    v32 = 0;
    sub_1A433B638(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v26 = (*(v29[0] + 80) + 24) & ~*(v29[0] + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    sub_1A3CA2628(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for LemonadeBookmark.CollectionIdentifier);

    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v21, v19, v41, v33, &v30, sub_1A433B6A0, v27);
  }

  v12 = *(a2 + 16);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C12B0], v4);
  v13 = sub_1A4331DF4(v12, a2, v7, 1, 0);
  (*(v5 + 8))(v7, v4);
  return v13;
}

void sub_1A43387EC(uint64_t a1, double a2)
{
  sub_1A433ADB4(0, &qword_1EB124AB8, off_1E7721160, a2);
  v13[1] = *(v3 - 8);
  v13[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1A433AF5C(0, &qword_1EB124AD8, off_1E7721110);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A5244EE4();
  v6 = *(v5 - 8);
  v13[4] = v5;
  v13[5] = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x1E69C12A8];
  v12 = *(v11 + 104);
  v13[3] = v9;
  v12(v9, v10, v7);
  v13[0] = a1;
  sub_1A4331DF4(*(a1 + 16), a1, v9, 0, 1);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524D474();
  sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C37908();
  sub_1A433AE94();
  sub_1A5245F24();
}

void sub_1A4338D2C(uint64_t a1)
{
  if (!qword_1EB12A2E0)
  {
    sub_1A4338E18(255);
    v3 = v2;
    v4 = sub_1A4335DB4(&unk_1EB128CF0, sub_1A4338E18, off_1E77210F8);
    v5 = sub_1A433A748(&qword_1EB128E28, sub_1A4338EAC, sub_1A4339028, off_1E7721018);
    v6 = type metadata accessor for LemonadeTripsFeature.FeedProvider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12A2E0);
    }
  }
}

void sub_1A4338E18(uint64_t a1)
{
  if (!qword_1EB128CE8)
  {
    sub_1A4338EAC(255);
    sub_1A4335DB4(&qword_1EB128E20, sub_1A4338EAC, off_1E7721020);
    sub_1A5245EF4();
  }
}

void sub_1A4338EAC(uint64_t a1)
{
  if (!qword_1EB128E18)
  {
    sub_1A4338F3C(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A4338FA4();
    sub_1A5245A54();
  }
}

void sub_1A4338F3C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A4338FA4()
{
  result = qword_1EB129750;
  if (!qword_1EB129750)
  {
    sub_1A4338F3C(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129750);
  }

  return result;
}

unint64_t sub_1A4339028()
{
  result = qword_1EB129758;
  if (!qword_1EB129758)
  {
    sub_1A4338F3C(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129758);
  }

  return result;
}

void sub_1A43390C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadeShelfPlaceholderView(255);
    v7 = type metadata accessor for LemonadePlaceholderView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4339134(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1A59082D0](v2, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A3F91438(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1A43391A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A433B4E4();
  v3 = sub_1A524E794();
  v4 = *(a1 + 48);
  *v21 = *(a1 + 32);
  *&v21[16] = v4;
  v5 = *(a1 + 80);
  *&v21[32] = *(a1 + 64);
  *&v21[48] = v5;
  *&v21[64] = *(a1 + 96);
  v6 = *v21;
  result = sub_1A3CAB9BC(*v21);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1A433B638(v21, v20, sub_1A433B5D8);
    return v3;
  }

  v9 = a1 + 104;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v6;
    v10 = (v3[7] + (result << 6));
    v11 = *&v21[8];
    v12 = *&v21[24];
    v13 = *&v21[56];
    v10[2] = *&v21[40];
    v10[3] = v13;
    *v10 = v11;
    v10[1] = v12;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1A433B638(v21, v20, sub_1A433B5D8);
    v17 = *(v9 + 16);
    *v21 = *v9;
    *&v21[16] = v17;
    v18 = *(v9 + 48);
    *&v21[32] = *(v9 + 32);
    *&v21[48] = v18;
    *&v21[64] = *(v9 + 64);
    v6 = *v21;
    result = sub_1A3CAB9BC(*v21);
    v9 += 72;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1A433931C(uint64_t a1)
{
  v21 = sub_1A52413B4();
  v24 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v20 = v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v19 = v16 - v3;
  v17 = sub_1A5240664();
  v31 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v29 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A5241144();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v30 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v18 = v16 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v28 = v16 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v27 = v16 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v22 = v16 - v13;
  v32 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v32);
  v14 = sub_1A52413D4();
  v16[0] = *(v14 - 8);
  v16[1] = v14;
  MEMORY[0x1EEE9AC00](v14);
  v25 = v16 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = "tureFeedTabsBarTitle";
  sub_1A3C38BD4(0xD000000000000023);
  sub_1A3C38BD4(0xD00000000000001CLL);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4339FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A524C634();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246344();
}

void sub_1A433A090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A433A0FC(uint64_t a1)
{
  if (!qword_1EB138558)
  {
    sub_1A40F3878(255);
    sub_1A5243EC4();
    sub_1A4335DB4(&qword_1EB129290, sub_1A40F3878, MEMORY[0x1E69C22B8]);
    sub_1A4335DB4(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138558);
    }
  }
}

unint64_t sub_1A433A1E8()
{
  result = qword_1EB125A88;
  if (!qword_1EB125A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125A88);
  }

  return result;
}

unint64_t sub_1A433A2A8(uint64_t a1)
{
  result = sub_1A3C441B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A433A310()
{
  result = qword_1EB138570;
  if (!qword_1EB138570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138570);
  }

  return result;
}

unint64_t sub_1A433A368()
{
  result = qword_1EB1259E8;
  if (!qword_1EB1259E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1259E8);
  }

  return result;
}

unint64_t sub_1A433A3F4(uint64_t a1)
{
  result = sub_1A433A41C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A433A41C()
{
  result = qword_1EB12A2C8;
  if (!qword_1EB12A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A2C8);
  }

  return result;
}

unint64_t sub_1A433A4DC()
{
  result = qword_1EB128C40;
  if (!qword_1EB128C40)
  {
    sub_1A4335E5C(255, &qword_1EB128C38, sub_1A4338D2C, off_1E7721230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128C40);
  }

  return result;
}

unint64_t sub_1A433A568()
{
  result = qword_1EB1259F0;
  if (!qword_1EB1259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1259F0);
  }

  return result;
}

uint64_t sub_1A433A60C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A433A650(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A433A650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A4335E5C(255, &qword_1EB128C38, sub_1A4338D2C, off_1E7721230);
    v7 = v6;
    v8 = sub_1A433A4DC();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A433A748(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A433A7B8(uint64_t a1)
{
  if (!qword_1EB138580)
  {
    sub_1A43390C4(255, &qword_1EB127DE8, MEMORY[0x1E697F960]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138580);
    }
  }
}

uint64_t sub_1A433A8AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A433A96C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A433AA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1A433AA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A433AB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A433AB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A433ABB4(uint64_t a1)
{
  if (!qword_1EB138590)
  {
    sub_1A4338D2C(255);
    v3 = v2;
    v4 = sub_1A4335DB4(&qword_1EB138548, sub_1A4338D2C, &unk_1A5330CAC);
    v6 = type metadata accessor for LemonadeFeedContents(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB138590);
    }
  }
}

unint64_t sub_1A433AC48()
{
  result = qword_1EB138598;
  if (!qword_1EB138598)
  {
    sub_1A433A090(255, &qword_1EB1385A0, sub_1A433A0FC, &type metadata for LemonadeTripsCell, MEMORY[0x1E697F960]);
    sub_1A4335DB4(&qword_1EB138560, sub_1A433A0FC, MEMORY[0x1E69C20C8]);
    sub_1A433A1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138598);
  }

  return result;
}

unint64_t sub_1A433AD30()
{
  result = qword_1EB125C60;
  if (!qword_1EB125C60)
  {
    sub_1A4338F3C(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C60);
  }

  return result;
}

void sub_1A433ADB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), double a4)
{
  if (!*a2)
  {
    sub_1A433AF5C(255, &qword_1EB124AC8, off_1E7721118);
    v8 = v7;
    sub_1A4338E18(255);
    v13[0] = v8;
    v13[1] = v10;
    v13[2] = sub_1A433AEE8(v9);
    v13[3] = sub_1A4335DB4(&unk_1EB128CF0, sub_1A4338E18, off_1E77210F8);
    v11 = a3(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1A433AE94()
{
  result = qword_1EB16BA50;
  if (!qword_1EB16BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16BA50);
  }

  return result;
}

unint64_t sub_1A433AEE8(double a1)
{
  result = qword_1EB124AD0;
  if (!qword_1EB124AD0)
  {
    sub_1A433AF5C(255, &qword_1EB124AC8, off_1E7721118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124AD0);
  }

  return result;
}

void sub_1A433AF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A4338F3C(255, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v9[0] = v6;
    v9[1] = &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem;
    v9[2] = sub_1A3C37908();
    v9[3] = sub_1A433AE94();
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A433B244(uint64_t a1)
{
  if (!qword_1EB1385A8)
  {
    sub_1A433AF5C(255, &qword_1EB124AC8, off_1E7721118);
    sub_1A4338E18(255);
    sub_1A433AEE8(v1);
    sub_1A4335DB4(&unk_1EB128CF0, sub_1A4338E18, off_1E77210F8);
    sub_1A433AE94();
    sub_1A52460A4();
  }
}

void sub_1A433B36C()
{
  sub_1A4338EAC(0);
  swift_allocObject();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433B42C(uint64_t a1)
{
  sub_1A3C37150(0, &qword_1EB1385C0, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A433B4E4()
{
  if (!qword_1EB1385C8)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1385C8);
    }
  }
}

void sub_1A433B544(uint64_t a1)
{
  if (!qword_1EB146160)
  {
    sub_1A52413B4();
    sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146160);
    }
  }
}

void sub_1A433B5D8()
{
  if (!qword_1EB1385D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1385D0);
    }
  }
}

uint64_t sub_1A433B638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A433B6A0(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1A4332E60(a1, v4, v5);
}

uint64_t sub_1A433B714(uint64_t a1)
{
  v3 = *(sub_1A5244EE4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v6 + 8);

  return sub_1A43355C0(a1, v1 + v4, v7, v9, v8);
}

void sub_1A433B7C4(uint64_t a1)
{
  if (!qword_1EB1385E0)
  {
    sub_1A5242D14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1385E0);
    }
  }
}

unint64_t sub_1A433B840()
{
  result = qword_1EB16BA60;
  if (!qword_1EB16BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16BA60);
  }

  return result;
}

unint64_t sub_1A433B898()
{
  result = qword_1EB16BA68[0];
  if (!qword_1EB16BA68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16BA68);
  }

  return result;
}

unint64_t sub_1A433B8F0()
{
  result = qword_1EB16BA40;
  if (!qword_1EB16BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16BA40);
  }

  return result;
}

uint64_t sub_1A433B95C()
{
  v1 = *(v0 + 144);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  return v2;
}

uint64_t sub_1A433B9A4()
{
  sub_1A433BDAC(0, &qword_1EB1264F8, MEMORY[0x1E69E6530]);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1EB165D98 = result;
  return result;
}

uint64_t sub_1A433B9EC(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1A433BA3C(a1, a2);
  return v4;
}

void sub_1A433BA3C(uint64_t a1, void *a2)
{
  *(v2 + 72) = 0;
  *(v2 + 76) = 1;
  sub_1A433BDAC(0, &qword_1EB126500, MEMORY[0x1E69E6370]);
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 121) = 0u;
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 0;
  *(v2 + 144) = v5;
  v6 = *a1;
  v17 = *(a1 + 32);
  v7 = v17;
  v8 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  *(v2 + 48) = v7;
  *(v2 + 56) = a2;
  v9 = v6;
  sub_1A433BB7C(&v17, &v16);
  v10 = qword_1EB165D90;
  v11 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB165D98;

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v14;
    os_unfair_lock_unlock((v12 + 24));

    sub_1A3F2D650(&v17, v15);

    *(v2 + 64) = v14;
  }
}

uint64_t sub_1A433BB7C(uint64_t a1, uint64_t a2)
{
  sub_1A3F2D6AC(0, a2);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A433BBE0()
{
  v1 = *(v0 + 144);

  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));

  swift_beginAccess();
  if ((*(v0 + 76) & 1) == 0)
  {
    [*(v0 + 56) cancelImageRequest_];
  }
}

uint64_t sub_1A433BC60@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a7;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_1A433BC74()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1A433BD08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A433BD50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A433BDAC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_1A524E4E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *sub_1A433BE0C(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A4357F7C(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A433BEB8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A433D92C(a1);
  return v2;
}

double sub_1A433BEF8()
{
  v1 = *v0;
  v21 = *(*v0 + 88);
  v2 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v20 - v6;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = *(v0 + *(*v0 + 104));
  (*(v4 + 16))(v7, v0 + *(*v0 + 96), AssociatedTypeWitness);
  v13 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v21;
  *(v15 + 4) = v2;
  *(v15 + 5) = v16;
  (*(v4 + 32))(&v15[v13], v7, AssociatedTypeWitness);
  *&v15[v14] = v12;

  v17 = sub_1A3D4D930(0, 0, v10, &unk_1A5331168, v15);
  v18 = sub_1A3EE1368(v17, MEMORY[0x1E69E7CA8] + 8);

  *(v0 + *(*v0 + 112)) = v18;

  return result;
}

double sub_1A433C198()
{
  v1 = v0;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 112);
  if (*(v0 + v5))
  {

    sub_1A5247884();
  }

  *(v0 + v5) = 0;

  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_1A3D4D930(0, 0, v4, &unk_1A5331178, v7);

  return result;
}

uint64_t sub_1A433C300()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 104));
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A433C338, v1, 0);
}

uint64_t sub_1A433C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5.n128_f64[0] = sub_1A433C398(a1, a2, a3, a4);
  v6 = *(v4 + 8);

  return v6(v5);
}

double sub_1A433C398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  v7 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry(255, v5, v6, a4);
  v8 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v9 = sub_1A524CAB4();
  v10 = MEMORY[0x1E69E6168];
  v11 = sub_1A3C3DFB4(v9, v8, v7, MEMORY[0x1E69E6168]);

  swift_beginAccess();
  v4[15] = v11;

  v13 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry(255, v5, v6, v12);
  swift_getTupleTypeMetadata2();
  v14 = sub_1A524CAB4();
  v15 = sub_1A3C3DFB4(v14, v8, v13, v10);

  swift_beginAccess();
  v4[16] = v15;

  v17 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry(255, v5, v6, v16);
  swift_getTupleTypeMetadata2();
  v18 = sub_1A524CAB4();
  v19 = sub_1A3C3DFB4(v18, v8, v17, v10);

  swift_beginAccess();
  v4[17] = v19;

  return result;
}

uint64_t sub_1A433C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = swift_getAssociatedTypeWitness();
  v5[6] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  v6 = sub_1A524CD54();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1A524CD44();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433C74C, 0, 0);
}

uint64_t sub_1A433C74C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = *(v4 + 48);
  v6 = swift_checkMetadataState();
  v5(v6, v4);
  sub_1A524CD24();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1A433C86C;
  v8 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1A433C86C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A433C968, 0, 0);
}

uint64_t sub_1A433C968()
{
  v1 = v0[2];
  v0[14] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1A433CA64;

    return sub_1A433CBF0(v1);
  }

  else
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A433CA64()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v2;
  v3[1] = sub_1A433C86C;
  v4 = *(v1 + 80);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v4);
}

uint64_t sub_1A433CBF0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *v1;
  v4 = sub_1A52411C4();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = *(v3 + 88);
  v2[11] = *(v3 + 80);
  v2[12] = swift_getAssociatedTypeWitness();
  v2[13] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[14] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v2[15] = v6;
  v2[16] = *(v6 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433CDD4, v1, 0);
}

void sub_1A433CDD4()
{
  v1 = *(v0[2].i64[1] + 112);
  v0[1].i64[0] = v0[2].i64[0];
  v0[9].i64[1] = v1;
  *(swift_task_alloc() + 16) = vextq_s8(v0[5], v0[5], 8uLL);
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433D2D8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A433D3E8, v1, 0);
}

uint64_t sub_1A433D3E8()
{
  v1 = v0[20];
  (*(v0[15] + 8))(v0[17], v0[14]);
  if (v1 == sub_1A524CAF4())
  {
LABEL_2:

    v2 = v0[1];

    return v2();
  }

  else
  {
    while (1)
    {
      v4 = v0[20];
      v5 = sub_1A524CAD4();
      sub_1A524CA64();
      if (v5)
      {
        result = (*(v0[15] + 16))(v0[18], v0[4] + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v4, v0[14]);
      }

      else
      {
        v22 = v0[16];
        result = sub_1A524E474();
        if (v22 != 8)
        {
          goto LABEL_22;
        }

        v23 = v0[18];
        v24 = v0[14];
        v25 = v0[15];
        v0[3] = result;
        (*(v25 + 16))(v23, v0 + 3, v24);
        result = swift_unknownObjectRelease();
      }

      v0[20] = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v6 = v0[19];
      (*(v0[15] + 32))(v0[17], v0[18], v0[14]);
      swift_getAssociatedConformanceWitness();
      sub_1A524E424();
      if (!*(v6 + 16))
      {
        break;
      }

      v7 = v0[19];
      sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v8 = sub_1A524C4A4();
      v9 = -1 << *(v7 + 32);
      v10 = v8 & ~v9;
      if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
      {
        break;
      }

      v11 = ~v9;
      v12 = v0[7];
      v13 = *(v12 + 72);
      v14 = *(v12 + 16);
      v15 = v0[19];
      while (1)
      {
        v16 = v0[8];
        v18 = v0[6];
        v17 = v0[7];
        v14(v16, *(v15 + 48) + v10 * v13, v18);
        sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v19 = sub_1A524C594();
        v20 = *(v17 + 8);
        v20(v16, v18);
        if (v19)
        {
          break;
        }

        v15 = v0[19];
        v10 = (v10 + 1) & v11;
        if (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v20(v0[9], v0[6]);
      v21 = v0[20];
      (*(v0[15] + 8))(v0[17], v0[14]);
      if (v21 == sub_1A524CAF4())
      {
        goto LABEL_2;
      }
    }

LABEL_18:
    (*(v0[7] + 8))(v0[9], v0[6]);
    v26 = swift_task_alloc();
    v0[21] = v26;
    *v26 = v0;
    v26[1] = sub_1A433D2D8;
    v27 = v0[17];

    return sub_1A433DD4C(v27);
  }
}

BOOL sub_1A433D840(_BOOL8 result)
{
  if (v1[4])
  {
    return 1;
  }

  if (*(result + 32))
  {
    return 0;
  }

  if (*(v1 + 33))
  {
    return 1;
  }

  if (*(result + 33))
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v2 = 0;
      goto LABEL_19;
    }

    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v2 = v6 - v5;
    if (!v8)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v2 = BYTE6(v3);
    goto LABEL_19;
  }

  v8 = __OFSUB__(HIDWORD(v2), v2);
  LODWORD(v2) = HIDWORD(v2) - v2;
  if (v8)
  {
    __break(1u);
    goto LABEL_31;
  }

  v2 = v2;
LABEL_19:
  v9 = *result;
  v10 = *(result + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v9 = 0;
      return v9 < v2;
    }

    v14 = v9 + 16;
    v12 = *(v9 + 16);
    v13 = *(v14 + 8);
    v8 = __OFSUB__(v13, v12);
    v9 = v13 - v12;
    if (!v8)
    {
      return v9 < v2;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v9 = BYTE6(v10);
    return v9 < v2;
  }

  v8 = __OFSUB__(HIDWORD(v9), v9);
  LODWORD(v9) = HIDWORD(v9) - v9;
  if (!v8)
  {
    v9 = v9;
    return v9 < v2;
  }

LABEL_31:
  __break(1u);
  return result;
}

char *sub_1A433D92C(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = MEMORY[0x1E69E7CD0];
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v7 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry(255, v4, v5, v6);
  v8 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v9 = sub_1A524CAB4();
  v10 = MEMORY[0x1E69E6168];
  v11 = sub_1A3C3DFB4(v9, v8, v7, MEMORY[0x1E69E6168]);

  *(v1 + 15) = v11;
  v13 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry(255, v4, v5, v12);
  swift_getTupleTypeMetadata2();
  v14 = sub_1A524CAB4();
  v15 = sub_1A3C3DFB4(v14, v8, v13, v10);

  *(v1 + 16) = v15;
  v17 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry(255, v4, v5, v16);
  swift_getTupleTypeMetadata2();
  v18 = sub_1A524CAB4();
  v19 = sub_1A3C3DFB4(v18, v8, v17, v10);

  *(v1 + 17) = v19;
  v20 = *(*v1 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v1[v20], a1, AssociatedTypeWitness);
  return v1;
}

uint64_t sub_1A433DB34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A52411C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_1A524C4A4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1A524C594();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1A433DD4C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getAssociatedTypeWitness();
  v2[15] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[16] = AssociatedTypeWitness;
  v2[17] = *(AssociatedTypeWitness - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_1A52411C4();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433DF2C, v1, 0);
}

void sub_1A433DF2C()
{
  *(v0 + 200) = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1A524E424();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433E2B8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1A433EB6C;
  }

  else
  {
    v4 = sub_1A433E3E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A433E3E4()
{
  v31 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 88);
  v7 = sub_1A524D264();
  v8 = *v2;
  v1(v4, v3, v5);
  v9 = os_log_type_enabled(v8, v7);
  v10 = *(v0 + 208);
  v11 = *(v0 + 168);
  v12 = *(v0 + 152);
  if (v9)
  {
    v8;
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136446466;
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1A524EA44();
    v16 = v15;
    v10(v11, v12);
    sub_1A3C2EF94(v14, v16, &v30);
  }

  v10(*(v0 + 168), *(v0 + 152));
  v17 = *(v0 + 32);
  if (v17 == 2)
  {
    v21 = swift_task_alloc();
    *(v0 + 272) = v21;
    *v21 = v0;
    v21[1] = sub_1A433E94C;
    v22 = *(v0 + 96);

    return sub_1A433FDCC(v22, v0 + 16);
  }

  else if (v17 == 3)
  {
    v18 = swift_task_alloc();
    *(v0 + 280) = v18;
    *v18 = v0;
    v18[1] = sub_1A433EA5C;
    v19 = *(v0 + 96);

    return sub_1A434026C(v19, v0 + 16);
  }

  else
  {
    v23 = *(v0 + 34);
    v24 = *(v0 + 33);
    v25 = swift_task_alloc();
    *(v0 + 264) = v25;
    if (v23)
    {
      v26 = 0x10000;
    }

    else
    {
      v26 = 0;
    }

    if (v24)
    {
      v27 = 256;
    }

    else
    {
      v27 = 0;
    }

    v28 = v26 & 0xFFFFFFFE | v17 & 1;
    *v25 = v0;
    v25[1] = sub_1A433E78C;
    v29 = *(v0 + 96);

    return sub_1A433F8A4(v29, v0 + 16, v28 | v27);
  }
}

uint64_t sub_1A433E78C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A433E89C, v1, 0);
}

uint64_t sub_1A433E89C()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[19];
  sub_1A435BFA0((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A433E94C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A435CD3C, v1, 0);
}

uint64_t sub_1A433EA5C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A435CD3C, v1, 0);
}

uint64_t sub_1A433EB6C(uint64_t a1)
{
  v30 = v1;
  v2 = v1[28];
  v4 = v1[17];
  v3 = v1[18];
  v5 = v1[16];
  v6 = v1[12];
  v7 = sub_1A524D244();
  v8 = *v2;
  (*(v4 + 16))(v3, v6, v5);
  v9 = os_log_type_enabled(v8, v7);
  v28 = v1[32];
  v10 = v1[26];
  if (v9)
  {
    v11 = v1[23];
    v12 = v1[18];
    v27 = v1[19];
    v14 = v1[16];
    v13 = v1[17];
    v8;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 136446466;
    sub_1A524E424();
    (*(v13 + 8))(v12, v14);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    v10(v11, v27);
    sub_1A3C2EF94(v16, v18, &v29);
  }

  v19 = v1[24];
  v21 = v1[18];
  v20 = v1[19];
  v22 = v1[16];
  v23 = *(v1[17] + 8);
  v24 = v8;
  v23(v21, v22);

  v10(v19, v20);

  v25 = v1[1];

  return v25();
}

void sub_1A433EE84(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry(255, *(v3 + 80), *(v3 + 88), v4);
  sub_1A524C454();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A433F04C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A435C2D8(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A6E8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1A435C808(a1, sub_1A435C2D8);
    v15 = sub_1A3CAB9BC(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A4357048(sub_1A435A6E8, sub_1A435A750);
        v19 = v24;
      }

      v20.n128_f64[0] = (*(v11 + 32))(v8, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_1A4356C58(v17, v19, sub_1A435A6E8, v20);
      *v3 = v19;
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v8, 1, 1, v10);
    }

    return sub_1A435C808(v8, sub_1A435C2D8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    result = sub_1A4356E0C(v14, a2, v21, sub_1A435A6E8, sub_1A435A750, sub_1A435A6E8);
    *v3 = v24;
  }

  return result;
}

uint64_t sub_1A433F314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A435AC30(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A544(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1A435C808(a1, sub_1A435AC30);
    v15 = sub_1A3CAB9BC(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A4357048(sub_1A435A544, sub_1A435A5C4);
        v19 = v24;
      }

      v20.n128_f64[0] = (*(v11 + 32))(v8, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_1A4356C58(v17, v19, sub_1A435A544, v20);
      *v3 = v19;
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v8, 1, 1, v10);
    }

    return sub_1A435C808(v8, sub_1A435AC30);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    result = sub_1A4356E0C(v14, a2, v21, sub_1A435A544, sub_1A435A5C4, sub_1A435A544);
    *v3 = v24;
  }

  return result;
}

uint64_t sub_1A433F5DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A435AA6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4359E34(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1A435C808(a1, sub_1A435AA6C);
    v15 = sub_1A3CAB9BC(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A4357048(sub_1A4359E34, sub_1A4359ED4);
        v19 = v24;
      }

      v20.n128_f64[0] = (*(v11 + 32))(v8, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_1A4356C58(v17, v19, sub_1A4359E34, v20);
      *v3 = v19;
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v8, 1, 1, v10);
    }

    return sub_1A435C808(v8, sub_1A435AA6C);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    result = sub_1A4356E0C(v14, a2, v21, sub_1A4359E34, sub_1A4359ED4, sub_1A4359E34);
    *v3 = v24;
  }

  return result;
}

uint64_t sub_1A433F8A4(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1A52411C4();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_getAssociatedTypeWitness();
  *(v4 + 72) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 80) = AssociatedTypeWitness;
  *(v4 + 88) = *(AssociatedTypeWitness - 8);
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433FA68, v3, 0);
}

void sub_1A433FA68()
{
  v19 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  v5 = sub_1A524D264();
  v6 = *sub_1A486DB9C();
  (*(v1 + 16))(v2, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 80);
  if (v7)
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v17 = *(v0 + 40);
    v6;
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136446210;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v9 + 8))(v8, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1A524EA44();
    v16 = v15;
    (*(v11 + 8))(v12, v17);
    sub_1A3C2EF94(v14, v16, &v18);
  }

  (*(v9 + 8))(*(v0 + 96), *(v0 + 80));
  sub_1A434070C(**(v0 + 24), *(*(v0 + 24) + 8));
}

uint64_t sub_1A433FD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A433FDCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A52411C4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A433FF8C, v2, 0);
}

void sub_1A433FF8C()
{
  v19 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  v5 = sub_1A524D264();
  v6 = *sub_1A486DB9C();
  (*(v1 + 16))(v2, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 80);
  if (v7)
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v17 = *(v0 + 40);
    v6;
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136446210;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v9 + 8))(v8, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1A524EA44();
    v16 = v15;
    (*(v11 + 8))(v12, v17);
    sub_1A3C2EF94(v14, v16, &v18);
  }

  (*(v9 + 8))(*(v0 + 96), *(v0 + 80));
  sub_1A43481AC(**(v0 + 24), *(*(v0 + 24) + 8));
}

uint64_t sub_1A434026C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A52411C4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434042C, v2, 0);
}

void sub_1A434042C()
{
  v19 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  v5 = sub_1A524D264();
  v6 = *sub_1A486DB9C();
  (*(v1 + 16))(v2, v4, v3);
  v7 = os_log_type_enabled(v6, v5);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 80);
  if (v7)
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v17 = *(v0 + 40);
    v6;
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136446210;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v9 + 8))(v8, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1A524EA44();
    v16 = v15;
    (*(v11 + 8))(v12, v17);
    sub_1A3C2EF94(v14, v16, &v18);
  }

  (*(v9 + 8))(*(v0 + 96), *(v0 + 80));
  sub_1A4350A5C(**(v0 + 24), *(*(v0 + 24) + 8));
}

uint64_t sub_1A434069C()
{
  v1 = *(v0 + 32);
  sub_1A4350BB8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1A435CD1C, v1, 0);
}

void sub_1A434070C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry(0, *(v3 + 80), *(v3 + 88), v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4340868(uint64_t a1, _OWORD *a2, int a3, uint64_t a4)
{
  v18 = a3;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v16 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry.ImageAttachment(0, v7, v8, a4);
  MEMORY[0x1EEE9AC00](v16);
  v15[11] = v15 - v9;
  v10 = sub_1A52411C4();
  v15[8] = *(v10 - 8);
  v15[9] = v10;
  MEMORY[0x1EEE9AC00](v10);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15[10] = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  swift_beginAccess();
  if (!*(v4[22] + 16))
  {
    swift_beginAccess();
    v15[7] = a2;
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, v7, v8, v14);
    sub_1A3DBD9A0();
    sub_1A524CBF4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4342B10(a1, a2, v18 & 0x10101);
}

uint64_t sub_1A4340ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4340EFC, v3, 0);
}

uint64_t sub_1A4340EFC()
{
  v1 = [*(v0 + 24) uuid];
  if (v1)
  {
    v4 = v1;
    v5 = sub_1A524C674();
    v7 = v6;

    sub_1A434070C(v5, v7);
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](0, v2, v3);
}

uint64_t sub_1A4340FB8()
{
  v1 = *(v0 + 40);
  sub_1A4341088(*(v0 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1A4341028, v1, 0);
}

uint64_t sub_1A4341028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4341088(uint64_t a1)
{
  sub_1A435C30C(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v9 = v1;
  v10 = a1;
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69E8790], v4);
  return sub_1A524CEC4();
}

uint64_t sub_1A4341188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43411AC, v2, 0);
}

uint64_t sub_1A43411AC()
{
  v1 = [*(v0 + 16) uuid];
  if (v1)
  {
    v4 = v1;
    v5 = sub_1A524C674();
    v7 = v6;

    sub_1A434070C(v5, v7);
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](0, v2, v3);
}

uint64_t sub_1A4341268()
{
  v1 = *(v0 + 32);
  sub_1A43412D4(*(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1A3E8D0BC, v1, 0);
}

uint64_t sub_1A43412D4(uint64_t a1)
{
  sub_1A435C2D8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A6E8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  swift_beginAccess();
  v14 = *(v1 + 176);
  if (!*(v14 + 16))
  {
    return swift_endAccess();
  }

  v15 = sub_1A3CAB9BC(a1);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v8 + 16))(v10, *(v14 + 56) + *(v8 + 72) * v15, v7);
  (*(v8 + 32))(v13, v10, v7);
  swift_endAccess();
  (*(v8 + 56))(v5, 1, 1, v7);
  swift_beginAccess();
  sub_1A433F04C(v5, a1);
  swift_endAccess();
  v18[1] = 0;
  sub_1A524CE84();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1A43414F8(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 51) = a4;
  *(v6 + 50) = a3;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4341524, v5, 0);
}

id sub_1A4341524()
{
  result = [*(v0 + 64) uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();
    v5 = v4;

    sub_1A434070C(v3, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4341620()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1A43417C4;
  }

  else
  {
    v4 = sub_1A434174C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A434174C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = v2;
  *(v1 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A43417C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4341828(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 51) = a3;
  *(v5 + 50) = a2;
  *(v5 + 56) = a1;
  *(v5 + 80) = *v4;
  *(v5 + 88) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1A43418A4, v4, 0);
}

uint64_t sub_1A43418A4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 51);
  v5 = *(v0 + 50);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  *(v6 + 33) = v4;
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = *(v1 + 80);
  v8[2] = v9;
  v10 = *(v1 + 88);
  v8[3] = v10;
  v8[4] = v7;
  v8[5] = v3;
  WitnessTable = swift_getWitnessTable();
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v14 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(0, v9, v10, v13);
  *v12 = v0;
  v12[1] = sub_1A4341A38;

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_1A53317E8, v6, sub_1A435B910, v8, v2, WitnessTable, v14);
}

uint64_t sub_1A4341A38()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1A4341BB0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1A4341B7C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A4341B7C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1A4341BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4341C28(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  swift_defaultActor_initialize();
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 128) = MEMORY[0x1E69E7CC0];
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 16711680;
  *(v4 + 176) = sub_1A4359C40(v6, sub_1A435A664, sub_1A435A750, sub_1A435A7B8, sub_1A435A6E8);
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, v7, v8, v9);
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v12 = sub_1A524CAB4();
  v13 = sub_1A3C3DFB4(v12, v11, TupleTypeMetadata3, MEMORY[0x1E69E6540]);

  *(v4 + 184) = v13;
  *(v4 + 192) = v6;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry.ImageAttachment(0, v7, v8, v14);
  *(v4 + 200) = sub_1A524CAB4();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  return v4;
}

void sub_1A4341E08(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = a3;
  v16 = *MEMORY[0x1E69E9840];
  v12 = sub_1A52411C4();
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1A5240E64();
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v5);
  v11[3] = v11 - v6;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = [objc_opt_self() defaultManager];
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, *(v3 + 80), *(v3 + 88), v8);
  swift_getWitnessTable();
  swift_allocError();
  *v10 = 3;
  swift_willThrow();
}

void sub_1A4342370()
{
  v31 = *v0;
  sub_1A435A7D0(0);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v32 = v0;
  v4 = v0[22];
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(v0[22] + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v36 = v0[22];
  swift_bridgeObjectRetain_n();
  v12 = 0;
  *&v13 = 134349056;
  v33 = v13;
  v34 = v3;
  while (v10)
  {
LABEL_10:
    v15 = __clz(__rbit64(v10)) | (v12 << 6);
    v16 = *(v36 + 56);
    v17 = *(*(v36 + 48) + 8 * v15);
    sub_1A435A6E8(0);
    (*(*(v18 - 8) + 16))(v3 + *(v35 + 48), v16 + *(*(v18 - 8) + 72) * v15, v18);
    *v3 = v17;
    v19 = sub_1A524D264();
    v20 = *sub_1A486DB9C();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = v20;
      v22 = swift_slowAlloc();
      *v22 = v33;
      *(v22 + 4) = v17;
      _os_log_impl(&dword_1A3C1C000, v21, v19, "Journal: [%{public}ld] Cancel from deinit for image", v22, 0xCu);
      MEMORY[0x1A590EEC0](v22, -1, -1);
    }

    v10 &= v10 - 1;
    v38 = 0;
    v3 = v34;
    sub_1A524CE84();
    sub_1A435C808(v3, sub_1A435A7D0);
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v23 = v32;
      v24 = swift_beginAccess();
      v37 = v23[23];
      MEMORY[0x1EEE9AC00](v24);
      v25 = *(v31 + 88);
      *(&v31 - 2) = *(v31 + 80);
      *(&v31 - 1) = v25;
      MEMORY[0x1EEE9AC00](v26);
      *(&v31 - 4) = v27;
      *(&v31 - 3) = v28;
      *(&v31 - 2) = sub_1A435A858;
      *(&v31 - 1) = v29;
      type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, v27, v28, v30);
      sub_1A3DBD9A0();
      sub_1A524CBF4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v10 = *(v6 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1A43427A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, a5, a6, a4);
  sub_1A3DBD9A0();
  v12 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = *(TupleTypeMetadata3 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v17 = v26 - v16;
  (*(*(v12 - 8) + 16))(v26 - v16, a2, v12, v15);
  v17[*(TupleTypeMetadata3 + 48)] = a3;
  v17[*(TupleTypeMetadata3 + 64)] = v8;
  v18 = sub_1A524D264();
  v19 = *sub_1A486DB9C();
  if (os_log_type_enabled(v19, v18))
  {
    v21 = v19;
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v21, v18, "Journal: [%{public}ld] Cancel from deinit for image data", v22, 0xCu);
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, a5, a6, v20);
  swift_getWitnessTable();
  v23 = swift_allocError();
  *v24 = 0;
  v26[1] = v23;
  sub_1A524CBD4();
  return (*(v14 + 8))(v17, TupleTypeMetadata3);
}

uint64_t sub_1A4342A00(char *a1, uint64_t (*a2)(uint64_t, char *, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, a4, a5, a4);
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)], a1[*(TupleTypeMetadata2 + 48) + *(TupleTypeMetadata3 + 48)], a1[*(TupleTypeMetadata2 + 48) + *(TupleTypeMetadata3 + 64)]);
}

uint64_t sub_1A4342AE4()
{
  sub_1A4342370();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1A4342B10(uint64_t a1, _OWORD *a2, int a3)
{
  v32 = a3;
  v33 = a2;
  v5 = *v3;
  v31 = *(*v3 + 88);
  v30 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v27 - v9;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v13;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v28 = v3;
  swift_weakInit();
  v16 = v3[15];
  v27 = v3[14];
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 26) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v31;
  *(v20 + 4) = v30;
  *(v20 + 5) = v21;
  (*(v7 + 32))(&v20[v17], v10, AssociatedTypeWitness);
  v22 = &v20[v18];
  *v22 = v27;
  *(v22 + 1) = v16;
  v23 = v32;
  v22[16] = v32 & 1;
  v22[17] = BYTE1(v23) & 1;
  v22[18] = BYTE2(v23) & 1;
  *&v20[v19] = v15;
  v24 = &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  v25 = v33;
  v26 = v33[1];
  *v24 = *v33;
  *(v24 + 1) = v26;
  *(v24 + 4) = *(v25 + 4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4342EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 296) = a8;
  *(v8 + 304) = v13;
  *(v8 + 536) = a7;
  *(v8 + 280) = a5;
  *(v8 + 288) = a6;
  *(v8 + 272) = a4;
  v9 = sub_1A52411C4();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_getAssociatedTypeWitness();
  *(v8 + 344) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 352) = AssociatedTypeWitness;
  *(v8 + 360) = *(AssociatedTypeWitness - 8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4343080, 0, 0);
}

uint64_t sub_1A4343080()
{
  v28 = v0;
  v1 = v0[48];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[34];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  v0[49] = v6;
  v7 = *v6;
  v8 = *(v2 + 16);
  v0[50] = v8;
  v0[51] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v3);
  v9 = os_log_type_enabled(v7, v5);
  v10 = v0[48];
  v12 = v0[44];
  v11 = v0[45];
  if (v9)
  {
    v14 = v0[40];
    v13 = v0[41];
    v25 = v0[39];
    v7;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v11 + 8))(v10, v12);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    (*(v14 + 8))(v13, v25);
    sub_1A3C2EF94(v16, v18, &v27);
  }

  v19 = *(v11 + 8);
  v19(v0[48], v0[44]);
  v0[52] = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[53] = AssociatedConformanceWitness;
  v26 = (*(AssociatedConformanceWitness + 16) + **(AssociatedConformanceWitness + 16));
  v21 = swift_task_alloc();
  v0[54] = v21;
  v22 = sub_1A435C204();
  *v21 = v0;
  v21[1] = sub_1A434340C;
  v23 = v0[44];

  return v26(v0 + 31, &type metadata for OneUpSharePlayImageDataItem, &type metadata for OneUpSharePlayImageDataItem, v22, v23, AssociatedConformanceWitness);
}

uint64_t sub_1A434340C()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1A4344798;
  }

  else
  {
    v2 = sub_1A4343520;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4343520(uint64_t a1)
{
  v60 = v1;
  v2 = *(v1 + 440);
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  *(v1 + 448) = v3;
  *(v1 + 456) = v4;
  sub_1A524CDD4();
  *(v1 + 464) = v2;
  if (v2)
  {
    v5 = v3;
    v6 = v4;
LABEL_10:
    sub_1A3C59280(v5, v6);
    *(v1 + 512) = v2;
    v27 = *(v1 + 400);
    v28 = *(v1 + 392);
    v29 = *(v1 + 368);
    v30 = *(v1 + 352);
    v31 = *(v1 + 272);
    v32 = sub_1A524D244();
    v33 = *v28;
    v27(v29, v31, v30);
    if (os_log_type_enabled(v33, v32))
    {
      v34 = *(v1 + 368);
      v56 = *(v1 + 416);
      v35 = *(v1 + 352);
      v37 = *(v1 + 320);
      v36 = *(v1 + 328);
      v38 = *(v1 + 312);
      v33;
      v39 = swift_slowAlloc();
      swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v39 = 136446722;
      sub_1A524E424();
      v56(v34, v35);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v40 = sub_1A524EA44();
      v42 = v41;
      (*(v37 + 8))(v36, v38);
      sub_1A3C2EF94(v40, v42, v59);
    }

    (*(v1 + 416))(*(v1 + 368), *(v1 + 352));
    if (*(v1 + 536))
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      *(v1 + 520) = Strong;
      if (Strong)
      {
        v26 = Strong;
        v47 = sub_1A4344364;
LABEL_22:
        v25 = v47;
        goto LABEL_23;
      }

      swift_beginAccess();
      v48 = swift_weakLoadStrong();
      *(v1 + 528) = v48;
      if (v48)
      {
        v26 = v48;
        v47 = sub_1A4344684;
        goto LABEL_22;
      }

      v43 = *(v1 + 512);
    }

    else
    {
      v43 = v2;
    }

    goto LABEL_14;
  }

  v7 = *(v1 + 400);
  v8 = *(v1 + 392);
  v9 = *(v1 + 376);
  v10 = *(v1 + 352);
  v11 = *(v1 + 272);
  v12 = sub_1A524D264();
  v13 = *v8;
  v7(v9, v11, v10);
  if (os_log_type_enabled(v13, v12))
  {
    v14 = *(v1 + 376);
    v15 = *(v1 + 352);
    v17 = *(v1 + 320);
    v16 = *(v1 + 328);
    v57 = *(v1 + 416);
    v58 = *(v1 + 312);
    v13;
    v18 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v18 = 136446466;
    sub_1A524E424();
    v57(v14, v15);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v19 = sub_1A524EA44();
    v21 = v20;
    (*(v17 + 8))(v16, v58);
    sub_1A3C2EF94(v19, v21, v59);
  }

  (*(v1 + 416))(*(v1 + 376), *(v1 + 352));
  if (*(v1 + 536))
  {
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    *(v1 + 472) = v22;
    if (v22)
    {
      v23 = v22;
      v24 = *(v1 + 304);
      *(v1 + 480) = *(v24 + 24);
      *(v1 + 488) = *(v24 + 32);
      sub_1A3D602A8(v3, v4);
      v25 = sub_1A4343C48;
      v26 = v23;
LABEL_23:

      return MEMORY[0x1EEE6DFA0](v25, v26, 0);
    }
  }

  v2 = *(v1 + 464);
  sub_1A524CDD4();
  if (v2)
  {
    v5 = *(v1 + 448);
    v6 = *(v1 + 456);
    goto LABEL_10;
  }

  swift_beginAccess();
  v49 = swift_weakLoadStrong();
  *(v1 + 496) = v49;
  v50 = *(v1 + 448);
  v51 = *(v1 + 456);
  if (!v49)
  {
    sub_1A3C59280(v50, v51);
LABEL_14:

    v44 = *(v1 + 8);

    return v44();
  }

  v52 = *(v1 + 536);
  sub_1A3D602A8(v50, v51);
  v53 = swift_task_alloc();
  *(v1 + 504) = v53;
  *v53 = v1;
  v53[1] = sub_1A4344180;
  v55 = *(v1 + 448);
  v54 = *(v1 + 456);

  return sub_1A43450D4(v55, v54, v52 & 1, BYTE1(v52) & 1);
}

uint64_t sub_1A4343CE8(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 464);
  sub_1A524CDD4();
  if (v2)
  {
    sub_1A3C59280(*(v1 + 448), *(v1 + 456));
    *(v1 + 512) = v2;
    v3 = *(v1 + 400);
    v4 = *(v1 + 392);
    v5 = *(v1 + 368);
    v6 = *(v1 + 352);
    v7 = *(v1 + 272);
    v8 = sub_1A524D244();
    v9 = *v4;
    v3(v5, v7, v6);
    if (os_log_type_enabled(v9, v8))
    {
      v10 = *(v1 + 368);
      v33 = *(v1 + 416);
      v11 = *(v1 + 352);
      v13 = *(v1 + 320);
      v12 = *(v1 + 328);
      v14 = *(v1 + 312);
      v9;
      v15 = swift_slowAlloc();
      swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446722;
      sub_1A524E424();
      v33(v10, v11);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1A524EA44();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      sub_1A3C2EF94(v16, v18, &v34);
    }

    (*(v1 + 416))(*(v1 + 368), *(v1 + 352));
    if (*(v1 + 536))
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      *(v1 + 520) = Strong;
      if (Strong)
      {
        v29 = Strong;
        v30 = sub_1A4344364;
LABEL_19:

        return MEMORY[0x1EEE6DFA0](v30, v29, 0);
      }

      swift_beginAccess();
      v32 = swift_weakLoadStrong();
      *(v1 + 528) = v32;
      if (v32)
      {
        v29 = v32;
        v30 = sub_1A4344684;
        goto LABEL_19;
      }

      v19 = *(v1 + 512);
    }

    else
    {
      v19 = v2;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  *(v1 + 496) = v20;
  v21 = *(v1 + 448);
  v22 = *(v1 + 456);
  if (!v20)
  {
    sub_1A3C59280(v21, v22);
LABEL_14:

    v31 = *(v1 + 8);

    return v31();
  }

  v23 = *(v1 + 536);
  sub_1A3D602A8(v21, v22);
  v24 = swift_task_alloc();
  *(v1 + 504) = v24;
  *v24 = v1;
  v24[1] = sub_1A4344180;
  v26 = *(v1 + 448);
  v25 = *(v1 + 456);

  return sub_1A43450D4(v26, v25, v23 & 1, BYTE1(v23) & 1);
}

uint64_t sub_1A4344180()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);

  sub_1A3C59280(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1A43442D4, 0, 0);
}

uint64_t sub_1A43442D4()
{
  sub_1A3C59280(v0[56], v0[57]);

  v1 = v0[1];

  return v1();
}

void sub_1A4344364(__n128 a1)
{
  v2 = v1[65];
  v3 = v1[64];
  v4 = *v2;
  v5 = v2[17];
  v6 = v2[18];
  v7 = v2[19];
  v8 = v2[20];
  v9 = *(v2 + 84) | (*(v2 + 170) << 16);
  v2[17] = v3;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  *(v2 + 84) = 0;
  *(v2 + 170) = 1;
  sub_1A435A880(v5, v6, v7, v8, v9);
  swift_beginAccess();
  v1[33] = v2[23];
  v10 = *(v4 + 80);
  v1[10] = v10;
  v11 = *(v4 + 88);
  v1[11] = v11;
  v1[12] = v3;
  v1[4] = v10;
  v1[5] = v11;
  v1[6] = sub_1A435C2CC;
  v1[7] = v1 + 8;
  v12 = v3;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, v10, v11, v13);
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4344590()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 528) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4344684, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1A4344684()
{
  sub_1A4346224(*(v0 + 512), 1, 1, BYTE1(*(v0 + 536)) & 1);

  return MEMORY[0x1EEE6DFA0](sub_1A4344708, 0, 0);
}

uint64_t sub_1A4344708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4344798(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 440);
  *(v1 + 512) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  v5 = *(v1 + 368);
  v6 = *(v1 + 352);
  v7 = *(v1 + 272);
  v8 = sub_1A524D244();
  v9 = *v4;
  v3(v5, v7, v6);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = *(v1 + 368);
    v25 = *(v1 + 416);
    v11 = *(v1 + 352);
    v13 = *(v1 + 320);
    v12 = *(v1 + 328);
    v14 = *(v1 + 312);
    v9;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136446722;
    sub_1A524E424();
    v25(v10, v11);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    sub_1A3C2EF94(v16, v18, &v26);
  }

  (*(v1 + 416))(*(v1 + 368), *(v1 + 352));
  if (*(v1 + 536))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v1 + 520) = Strong;
    if (Strong)
    {
      v20 = Strong;
      v21 = sub_1A4344364;
LABEL_8:

      return MEMORY[0x1EEE6DFA0](v21, v20, 0);
    }

    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    *(v1 + 528) = v22;
    if (v22)
    {
      v20 = v22;
      v21 = sub_1A4344684;
      goto LABEL_8;
    }

    v2 = *(v1 + 512);
  }

  v23 = *(v1 + 8);

  return v23();
}

void sub_1A4344B5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = *(*v6 + 80);
  v16 = *(v14 + 88);
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v24 = a5;
  v25 = a6;
  v17 = v7[18];
  v18 = v7[19];
  v19 = v7[20];
  v20 = *(v7 + 84);
  if (*(v7 + 170) != 255 && ((*(v7 + 170) << 16) & 0x10000) == 0)
  {
    v26 = v7[17];
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20 & 0x101;
    if (sub_1A433D840(v23))
    {
      type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(0, v15, v16, v21);
      sub_1A3D602A8(a1, a2);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  if (a6)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v7[17] = a1;
  v7[18] = a2;
  v7[19] = a3;
  v7[20] = a4;
  *(v7 + 170) = 0;
  *(v7 + 84) = v22 & 0xFFFE | a5 & 1;
  sub_1A3D602A8(a1, a2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43450D4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 49) = a4;
  *(v5 + 48) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1A4345128, v4, 0);
}

uint64_t sub_1A4345128()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v2 = sub_1A5240E84();
  v3 = [v1 initWithData_];

  v5 = *(v0 + 49);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = v3;
    sub_1A4346224(v3, 0, v6, v5);
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, *(*(v0 + 40) + 80), *(*(v0 + 40) + 88), v4);
    swift_getWitnessTable();
    v7 = swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v7;
    sub_1A4346224(v7, 1, v6, v5);
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_1A4345294()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7[8] = v7 - v3;
  v5 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry.ImageAttachment(0, v2, v1, v4);
  v9 = *(v5 - 8);
  v7[0] = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v7 - v6;
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43456D0(void (*a1)(void, void), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char **a6, uint64_t a7, uint64_t a8)
{
  v73 = a6;
  v74 = a1;
  v9 = a4;
  v12 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, a7, a8, a4);
  sub_1A3DBD9A0();
  v75 = v12;
  v13 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v76 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v72 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65[-v20];
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v25 = &v65[-v24];
  v26 = *(v13 - 8);
  (*(v26 + 16))(&v65[-v24], a2, v13, v23);
  v25[*(TupleTypeMetadata3 + 48)] = a3;
  v27 = TupleTypeMetadata3;
  v25[*(TupleTypeMetadata3 + 64)] = v9;
  if (*(a5 + 32))
  {
    v28 = sub_1A524D264();
    v29 = *sub_1A486DB9C();
    v30 = os_log_type_enabled(v29, v28);
    v31 = v74;
    v32 = TupleTypeMetadata3;
    if (v30)
    {
      v33 = v29;
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = v31;
      v35 = "Journal: [%{public}ld] Image data request immediately available via spatial data";
      v36 = v28;
LABEL_12:
      _os_log_impl(&dword_1A3C1C000, v33, v36, v35, v34, 0xCu);
      MEMORY[0x1A590EEC0](v34, -1, -1);
    }
  }

  else if (*(a5 + 33) & 1) == 0 || (a3)
  {
    v70 = *(a5 + 33);
    v71 = sub_1A524D264();
    v40 = sub_1A486DB9C();
    v41 = *v40;
    if (v9 & 1) != 0 || (a3)
    {
      v52 = *(v76 + 16);
      v52(v21, v25, v27);
      v53 = v18;
      v54 = v27;
      v73 = v53;
      v69 = v52;
      (v52)();
      if (os_log_type_enabled(v41, v71))
      {
        v67 = *(v75 - 8);
        (*(v67 + 16))(v78, a5, v75);
        v68 = v41;
        v55 = swift_slowAlloc();
        *v55 = 134350080;
        *(v55 + 4) = v74;
        *(v55 + 12) = 1024;
        *(v55 + 14) = 0;
        *(v55 + 18) = 1024;
        v56 = v72;
        v69(v72, v21, v54);
        v66 = v56[*(v54 + 48)];
        v74 = *(v26 + 8);
        v74(v56, v13);
        v76 = *(v76 + 8);
        (v76)(v21, v54);
        *(v55 + 20) = v66;
        *(v55 + 24) = 1024;
        *(v55 + 26) = v70 & 1;
        (*(v67 + 8))(a5, v75);
        *(v55 + 30) = 1024;
        v57 = v73;
        v69(v56, v73, v54);
        v58 = v56[*(v54 + 64)];
        v74(v56, v13);
        v59 = v76;
        (v76)(v57, v54);
        *(v55 + 32) = v58;
        v60 = v68;
        _os_log_impl(&dword_1A3C1C000, v68, v71, "Journal: [%{public}ld] New image data does not satisfy request: [isSpatial=%{BOOL}d, request=%{BOOL}d] [isFull=%{BOOL}d, request=%{BOOL}d]", v55, 0x24u);
        MEMORY[0x1A590EEC0](v55, -1, -1);

        return v59(v25, v54);
      }

      else
      {
        v61 = *(v75 - 8);
        v62 = v75;
        (*(v61 + 16))(v78, a5, v75);
        v63 = *(v76 + 8);
        v64 = v41;
        v63(v73, v54);
        v63(v21, v54);
        (*(v61 + 8))(a5, v62);

        return (v63)(v25, v54);
      }
    }

    v42 = os_log_type_enabled(*v40, v71);
    v31 = v74;
    v32 = v27;
    if (v42)
    {
      v33 = v41;
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = v31;
      v35 = "Journal: [%{public}ld] Image data request immediately available via high quality data";
      v36 = v71;
      goto LABEL_12;
    }
  }

  else
  {
    v37 = sub_1A524D264();
    v38 = *sub_1A486DB9C();
    v39 = os_log_type_enabled(v38, v37);
    v31 = v74;
    v32 = TupleTypeMetadata3;
    if (v39)
    {
      v33 = v38;
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = v31;
      v35 = "Journal: [%{public}ld] Image data request immediately available via mono data";
      v36 = v37;
      goto LABEL_12;
    }
  }

  v43 = *(a5 + 16);
  v78[0] = *a5;
  v78[1] = v43;
  v79 = *(a5 + 32);
  (*(*(v75 - 8) + 16))(v77, a5);
  sub_1A524CBE4();
  v44 = v73;
  v45 = *v73;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v44 = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_1A3DD6690(0, *(v45 + 2) + 1, 1, v45);
    *v44 = v45;
  }

  v47 = v76;
  v49 = *(v45 + 2);
  v48 = *(v45 + 3);
  if (v49 >= v48 >> 1)
  {
    *v44 = sub_1A3DD6690((v48 > 1), v49 + 1, 1, v45);
  }

  result = (*(v47 + 8))(v25, v32);
  v51 = *v44;
  *(v51 + 2) = v49 + 1;
  *&v51[8 * v49 + 32] = v31;
  return result;
}

uint64_t sub_1A4345E2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, *(*a2 + 80), *(*a2 + 88), a4);
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = sub_1A524DF24();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  (*(*(TupleTypeMetadata3 - 8) + 56))(&v11[-v8], 1, 1, TupleTypeMetadata3, v7);
  v12 = v9;
  swift_beginAccess();
  sub_1A524C454();
  sub_1A524C494();
  return swift_endAccess();
}

uint64_t sub_1A4345FB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, a6, a7, a4);
  sub_1A3DBD9A0();
  v12 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = *(TupleTypeMetadata3 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v17 = v27 - v16;
  (*(*(v12 - 8) + 16))(v27 - v16, a2, v12, v15);
  v17[*(TupleTypeMetadata3 + 48)] = a3;
  v17[*(TupleTypeMetadata3 + 64)] = v8;
  v18 = sub_1A524D244();
  v19 = *sub_1A486DB9C();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = v19;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 134349314;
    *(v21 + 4) = a1;
    *(v21 + 12) = 2112;
    v23 = a5;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1A3C1C000, v20, v18, "Journal: [%{public}ld] Image data request failure: %@", v21, 0x16u);
    sub_1A435C808(v22, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    MEMORY[0x1A590EEC0](v21, -1, -1);
  }

  v27[1] = a5;
  v25 = a5;
  sub_1A524CBD4();
  return (*(v14 + 8))(v17, TupleTypeMetadata3);
}

void sub_1A4346224(void *a1, char a2, int a3, char a4)
{
  v5 = v4;
  LOBYTE(v6) = a4;
  LODWORD(v7) = a3;
  v10 = 0;
  sub_1A435C264(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  *&v108 = &v95[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A435A7D0(0);
  v110 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v95[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v95[-v18];
  v101 = v5;
  if ((a2 & 1) == 0)
  {
    v105 = v13;
    v99 = a1;
    v24 = sub_1A524D264();
    v104 = sub_1A486DB9C();
    v25 = os_log_type_enabled(*v104, v24);
    v100 = v12;
    if (v25)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if ((v7 & 1) == 0)
    {
      v30 = v99;
      sub_1A4317410(v99);
      LODWORD(v107) = 0;
      goto LABEL_19;
    }

    swift_beginAccess();
    v26 = *(v5 + 128);
    v29 = *(v26 + 16);
    v27 = v26 + 16;
    v28 = v29;
    v30 = v99;
    if (v29)
    {
      v31 = v27 + 16 * v28;
      v32 = *v31;
      v33 = *(v31 + 8);
      sub_1A4317410(v99);
      if (v33)
      {
        v34 = v6;
        v6 = v32;
        [v30 size];
        v36 = v35;
        [v30 size];
        v38 = v36 * v37;
        [v6 size];
        v40 = v39;
        [v6 size];
        v42 = v40 * v41;
        v43 = sub_1A524D264();
        v44 = *v104;
        if (v42 < v38)
        {
          sub_1A5246DF4(v43, &dword_1A3C1C000, v44, "Journal: Updating for new highest quality image", 47, 2, MEMORY[0x1E69E7CC0]);

          v45 = *(v5 + 128);
          v46 = *(v45 + 2);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + 128) = v45;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v46)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v45 = sub_1A4357F68(v45);
            if (v46)
            {
LABEL_14:
              if (v46 <= *(v45 + 2))
              {
                v45[16 * v46 + 24] = 0;
                *(v5 + 128) = v45;
                swift_endAccess();

                LODWORD(v107) = 1;
                LOBYTE(v6) = v34;
                goto LABEL_19;
              }

LABEL_53:
              __break(1u);
              return;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        sub_1A5246DF4(v43, &dword_1A3C1C000, v44, "Journal: Unmarking new image as highest quality since already available image is larger resolution", 98, 2, MEMORY[0x1E69E7CC0]);

        LODWORD(v107) = 0;
        LOBYTE(v6) = v34;
LABEL_19:
        swift_beginAccess();
        v48 = *(v5 + 128);
        v106 = v30;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 128) = v48;
        if (v49)
        {
          goto LABEL_20;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_1A4317410(v99);
    }

    LODWORD(v107) = 1;
    goto LABEL_19;
  }

  LOBYTE(v6) = sub_1A524D244();
  v19 = *sub_1A486DB9C();
  if (os_log_type_enabled(v19, v6))
  {
    v20 = v19;
    v21 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v21 = 136315138;
    swift_getErrorValue();
    v22 = sub_1A524EBE4();
    sub_1A3C2EF94(v22, v23, &v113);
  }

  if (v7)
  {
    do
    {
      v97 = v10;
      v48 = 1;
      *(v5 + 171) = 1;
      swift_beginAccess();
      v76 = *(v5 + 176);
      v77 = v76 + 64;
      v78 = 1 << v76[32];
      v79 = -1;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      v10 = v79 & *(v76 + 8);
      v5 = (v78 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v7 = 0;
      *&v80 = 134349056;
      v108 = v80;
      v111 = v76;
      while (v10)
      {
LABEL_43:
        v83 = __clz(__rbit64(v10)) | (v7 << 6);
        v84 = *(v76 + 7);
        v6 = *(*(v76 + 6) + 8 * v83);
        sub_1A435A6E8(0);
        v12 = v85;
        v86 = *(v85 - 8);
        v87 = v84 + *(v86 + 72) * v83;
        v88 = v109;
        v89 = *(v110 + 48);
        (*(v86 + 16))(&v109[v89], v87, v85);
        *v88 = v6;
        v90 = sub_1A524D264();
        v91 = *sub_1A486DB9C();
        if (os_log_type_enabled(v91, v90))
        {
          v92 = v91;
          v93 = swift_slowAlloc();
          *v93 = v108;
          *(v93 + 4) = v6;
          _os_log_impl(&dword_1A3C1C000, v92, v90, "Journal: [%{public}ld] All image candidates vended", v93, 0xCu);
          v94 = v93;
          v76 = v111;
          MEMORY[0x1A590EEC0](v94, -1, -1);
        }

        v10 &= v10 - 1;
        v112 = 0;
        v81 = v109;
        v48 = &v109[v89];
        sub_1A524CE84();
        sub_1A435C808(v81, sub_1A435A7D0);
      }

      while (1)
      {
        v82 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v82 >= v5)
        {

          *(v101 + 176) = MEMORY[0x1E69E7CC8];

          return;
        }

        v10 = *&v77[8 * v82];
        ++v7;
        if (v10)
        {
          v7 = v82;
          goto LABEL_43;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      v48 = sub_1A43559F4(0, *(v48 + 16) + 1, 1, v48);
      *(v5 + 128) = v48;
LABEL_20:
      v50 = v105;
      v52 = *(v48 + 16);
      v51 = *(v48 + 24);
      v96 = v7;
      if (v52 >= v51 >> 1)
      {
        v48 = sub_1A43559F4((v51 > 1), v52 + 1, 1, v48);
      }

      *(v48 + 16) = v52 + 1;
      v53 = v48 + 16 * v52;
      *(v53 + 32) = v106;
      *(v53 + 40) = v107;
      v103 = v6 & 1;
      *(v53 + 41) = v6 & 1;
      *(v5 + 128) = v48;
      swift_endAccess();
      swift_beginAccess();
      sub_1A4346D30((v5 + 128));
      v97 = v10;
      swift_endAccess();
      swift_beginAccess();
      v54 = *(v5 + 176);
      v6 = (v54 + 64);
      v55 = 1 << *(v54 + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v7 = v56 & *(v54 + 64);
      v5 = (v55 + 63) >> 6;
      v102 = (v50 + 8);
      v105 = v54;
      swift_bridgeObjectRetain_n();
      v57 = 0;
      *&v58 = 134349056;
      v98 = v58;
      while (v7)
      {
LABEL_31:
        v63 = __clz(__rbit64(v7)) | (v57 << 6);
        v64 = *(v105 + 56);
        v65 = *(*(v105 + 48) + 8 * v63);
        sub_1A435A6E8(0);
        v10 = v66;
        v67 = *(v66 - 8);
        v68 = v64 + *(v67 + 72) * v63;
        v69 = v111;
        v70 = *(v110 + 48);
        (*(v67 + 16))(&v111[v70], v68, v66);
        *v69 = v65;
        v71 = sub_1A524D264();
        v72 = *v104;
        if (os_log_type_enabled(*v104, v71))
        {
          v73 = v72;
          v74 = swift_slowAlloc();
          *v74 = v98;
          *(v74 + 4) = v65;
          _os_log_impl(&dword_1A3C1C000, v73, v71, "Journal: [%{public}ld] Yielding image candidate", v74, 0xCu);
          v75 = v74;
          v12 = v100;
          MEMORY[0x1A590EEC0](v75, -1, -1);
        }

        v113 = v106;
        v7 &= v7 - 1;
        v114 = v107;
        v115 = v103;
        v59 = v106;
        v60 = v111;
        v48 = &v111[v70];
        v61 = v108;
        sub_1A524CE74();
        (*v102)(v61, v12);
        sub_1A435C808(v60, sub_1A435A7D0);
      }

      while (1)
      {
        v62 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v62 >= v5)
        {
          break;
        }

        v7 = *(v6 + v62);
        ++v57;
        if (v7)
        {
          v57 = v62;
          goto LABEL_31;
        }
      }

      sub_1A400B3A8(v99);
      v5 = v101;
      v10 = v97;
    }

    while ((v96 & 1) != 0);
  }
}

void sub_1A4346D30(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A4357F68(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1A43572B0(v4);
  *a1 = v2;
}

uint64_t sub_1A4346DA0(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 73) = a5;
  *(v5 + 72) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4346DF0, a2, 0);
}

uint64_t sub_1A4346DF0(uint64_t a1)
{
  sub_1A524CDD4();
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 73);
  v5 = *(v1 + 72);
  v6 = *(v1 + 24);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageEntry(255, v7, v8, v9);
  WitnessTable = swift_getWitnessTable();
  v11 = swift_task_alloc();
  *(v1 + 48) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v3;
  *(v11 + 32) = v5;
  *(v11 + 33) = v4;
  v12 = swift_task_alloc();
  *(v1 + 56) = v12;
  v14 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(0, v7, v8, v13);
  *v12 = v1;
  v12[1] = sub_1A4346FA4;
  v15 = *(v1 + 16);

  return MEMORY[0x1EEE6DE38](v15, v6, WitnessTable, 0xD000000000000045, 0x80000001A53D2C80, sub_1A435B9EC, v11, v14);
}

uint64_t sub_1A4346FA4()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1A43470E0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A43470E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4347144(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a4;
  v19 = a1;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A3DBD9A0();
  v8 = sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = *(TupleTypeMetadata3 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v18 - v16;
  (*(*(v8 - 8) + 16))(&v18 - v16, a2, v8, v15);
  v17[*(TupleTypeMetadata3 + 48)] = a3;
  v17[*(TupleTypeMetadata3 + 64)] = v5;
  (*(v13 + 16))(v12, v17, TupleTypeMetadata3);
  (*(v13 + 56))(v12, 0, 1, TupleTypeMetadata3);
  v20 = v19;
  swift_beginAccess();
  sub_1A524C454();
  sub_1A524C494();
  swift_endAccess();
  sub_1A4345294();
}

uint64_t sub_1A43473C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43473E4, 0, 0);
}

uint64_t sub_1A43473E4()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Cancelling image data request", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A434752C, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A434752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A4347598(*(v4 + 40), a2, a3, a4);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1A4347598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  swift_beginAccess();
  v20[0] = a1;
  sub_1A524C484();
  if ((*(v14 + 48))(v13, 1, TupleTypeMetadata3) == 1)
  {
    (*(v8 + 8))(v13, v7);
    return swift_endAccess();
  }

  else
  {
    (*(v14 + 32))(v17, v13, TupleTypeMetadata3);
    swift_endAccess();
    (*(v14 + 56))(v10, 1, 1, TupleTypeMetadata3);
    v20[0] = a1;
    swift_beginAccess();
    sub_1A524C454();
    sub_1A524C494();
    swift_endAccess();
    sub_1A524CC04();
    sub_1A435C7C0(&qword_1EB138668, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v19 = swift_allocError();
    sub_1A524C394();
    v20[1] = v19;
    sub_1A524CBD4();
    return (*(v14 + 8))(v17, TupleTypeMetadata3);
  }
}

void sub_1A4347918(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  sub_1A435C264(0);
  v16[8] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v16[7] = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 171) & 1) == 0)
  {
    v9 = sub_1A524D264();
    v10 = *sub_1A486DB9C();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = v10;
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      *(v12 + 4) = a3;
      _os_log_impl(&dword_1A3C1C000, v11, v9, "Journal: [%{public}ld] Queuing image request", v12, 0xCu);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    sub_1A4347D2C(a3, a1);
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = *(v6 + 80);
  v14[3] = *(v6 + 88);
  v14[4] = v13;
  v16[5] = a3;
  v14[5] = a3;
  sub_1A435A6E8(0);
  v16[9] = v15;
  sub_1A524CE54();
  swift_beginAccess();
  v16[1] = a2;
  v16[10] = a2[16];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4347D2C(uint64_t a1, uint64_t a2)
{
  sub_1A435C2D8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A6E8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, a2, v7);
  (*(v9 + 56))(v6, 0, 1, v8);
  swift_beginAccess();
  sub_1A433F04C(v6, a1);
  swift_endAccess();
  sub_1A4345294();
}

double sub_1A4347E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a2;
  v16[7] = v15;
  sub_1A3D4D930(0, 0, v13, a7, v16);

  return result;
}

uint64_t sub_1A4347FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A4347FD4, 0, 0);
}

uint64_t sub_1A4347FD4()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Removing image request due to termination", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A434811C, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A434811C()
{
  sub_1A43412D4(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A43481AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry(0, *(v3 + 80), *(v3 + 88), v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4348308(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A434832C, v2, 0);
}

id sub_1A434832C()
{
  result = [*(v0 + 16) uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();
    v5 = v4;

    sub_1A43481AC(v3, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A434841C(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_1A43485C0;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_1A4348558;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A4348558()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1A43485C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4348624(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A4348694, v1, 0);
}

uint64_t sub_1A4348694()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  v0[8] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = *(v1 + 80);
  v6[3] = *(v1 + 88);
  v6[4] = v5;
  v6[5] = v3;
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_1A3C52C70(0, &qword_1EB138628, 0x1E69880B0);
  *v8 = v0;
  v8[1] = sub_1A4348820;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1A5331770, v4, sub_1A435AB54, v6, v2, WitnessTable, v9);
}

uint64_t sub_1A4348820()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A435CD20;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A435CD40;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

char *sub_1A4348964(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  swift_defaultActor_initialize();
  v6 = qword_1EB1B8710;
  v7 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = *(*v4 + 120);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(255, *(v5 + 80), *(v5 + 88), v9);
  sub_1A3DBD9A0();
  v10 = sub_1A524ECF4();
  (*(*(v10 - 8) + 56))(&v4[v8], 1, 1, v10);
  v11 = *(*v4 + 128);
  *&v4[v11] = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);
  *&v4[*(*v4 + 136)] = 0;
  *(v4 + 14) = a1;
  *(v4 + 15) = a2;
  return v4;
}

void sub_1A4348B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v55 = *(*v4 + 88);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(255, v6, v55, a4);
  sub_1A3DBD9A0();
  sub_1A524ECF4();
  v7 = sub_1A524DF24();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = v45 - v8;
  sub_1A435A644(0);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v5 + 128);
  swift_beginAccess();
  v49 = v4;
  v45[1] = v12;
  v13 = *(v4 + v12);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v54 = v13;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  *&v20 = 134349056;
  v50 = v20;
  v52 = v11;
  while (v17)
  {
LABEL_10:
    v24 = __clz(__rbit64(v17)) | (v19 << 6);
    v25 = *(v54 + 56);
    v26 = *(*(v54 + 48) + 8 * v24);
    sub_1A435A544(0);
    v28 = *(v27 - 8);
    v29 = v25 + *(v28 + 72) * v24;
    v30 = *(v53 + 48);
    (*(v28 + 16))(v11 + v30, v29, v27);
    *v11 = v26;
    v31 = sub_1A524D264();
    v32 = *sub_1A486DB9C();
    if (os_log_type_enabled(v32, v31))
    {
      v34 = v32;
      v35 = swift_slowAlloc();
      v51 = v30;
      v36 = v6;
      v37 = v35;
      *v35 = v50;
      *(v35 + 4) = v26;
      _os_log_impl(&dword_1A3C1C000, v34, v31, "Journal: [%{public}ld] Cancel from deinit for player item", v35, 0xCu);
      v38 = v37;
      v6 = v36;
      MEMORY[0x1A590EEC0](v38, -1, -1);
    }

    v17 &= v17 - 1;
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, v6, v55, v33);
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v22 = 0;
    v56 = v21;
    v11 = v52;
    sub_1A524CBD4();
    sub_1A435C808(v11, sub_1A435A644);
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v18)
    {

      v39 = v49;
      v40 = *(*v49 + 120);
      swift_beginAccess();
      v42 = v46;
      v41 = v47;
      v43 = v48;
      (*(v47 + 16))(v46, v39 + v40, v48);
      sub_1A43596F8(v42, v6, v55);
      v44 = *(v41 + 8);
      v44(v42, v43);

      sub_1A435C808(v39 + qword_1EB1B8710, sub_1A43588E0);
      v44(v39 + v40, v43);

      swift_defaultActor_destroy();
      return;
    }

    v17 = *(v14 + 8 * v23);
    ++v19;
    if (v17)
    {
      v19 = v23;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1A4348FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A4348B34(a1, a2, a3, a4);

  return MEMORY[0x1EEE6DEF0](v4);
}

uint64_t sub_1A4348FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v8[12] = type metadata accessor for OneUpSharePlayStreamingVideoItem(0);
  v8[13] = swift_task_alloc();
  v9 = sub_1A52411C4();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_getAssociatedTypeWitness();
  v8[18] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v8[20] = *(AssociatedTypeWitness - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43491D8, 0, 0);
}

uint64_t sub_1A43491D8()
{
  v27 = v0;
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[8];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  v0[24] = v6;
  v7 = *v6;
  v8 = *(v2 + 16);
  v0[25] = v8;
  v0[26] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v3);
  v9 = os_log_type_enabled(v7, v5);
  v10 = v0[23];
  v12 = v0[19];
  v11 = v0[20];
  if (v9)
  {
    v14 = v0[15];
    v13 = v0[16];
    v24 = v0[14];
    v7;
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136446466;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v11 + 8))(v10, v12);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    (*(v14 + 8))(v13, v24);
    sub_1A3C2EF94(v16, v18, &v26);
  }

  v19 = *(v11 + 8);
  v19(v0[23], v0[19]);
  v0[27] = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[28] = AssociatedConformanceWitness;
  v25 = (*(AssociatedConformanceWitness + 16) + **(AssociatedConformanceWitness + 16));
  v21 = swift_task_alloc();
  v0[29] = v21;
  sub_1A435C7C0(&unk_1EB1391C0, type metadata accessor for OneUpSharePlayStreamingVideoItem, &unk_1A5365E48);
  *v21 = v0;
  v21[1] = sub_1A434958C;
  v22 = v0[13];

  return v25(v22);
}

uint64_t sub_1A434958C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1A4349FE8;
  }

  else
  {
    v2 = sub_1A43496A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A43496A0(uint64_t a1)
{
  v45 = v1;
  v2 = v1[30];
  sub_1A524CDD4();
  if (v2)
  {
    sub_1A435C808(v1[13], type metadata accessor for OneUpSharePlayStreamingVideoItem);
    v1[34] = v2;
    v3 = v1[25];
    v4 = v1[24];
    v5 = v1[21];
    v6 = v1[19];
    v7 = v1[8];
    v8 = sub_1A524D244();
    v9 = *v4;
    v3(v5, v7, v6);
    if (os_log_type_enabled(v9, v8))
    {
      v10 = v1[21];
      v42 = v1[27];
      v11 = v1[19];
      v13 = v1[15];
      v12 = v1[16];
      v14 = v1[14];
      v9;
      v15 = swift_slowAlloc();
      swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446722;
      sub_1A524E424();
      v42(v10, v11);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1A524EA44();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      sub_1A3C2EF94(v16, v18, v44);
    }

    (v1[27])(v1[21], v1[19]);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v1[35] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1A4349EDC, Strong, 0);
    }

    goto LABEL_16;
  }

  v19 = v1[25];
  v20 = v1[24];
  v21 = v1[22];
  v22 = v1[19];
  v23 = v1[8];
  v24 = sub_1A524D264();
  v25 = *v20;
  v19(v21, v23, v22);
  if (os_log_type_enabled(v25, v24))
  {
    v26 = v1[22];
    v27 = v1[19];
    v43 = v1[27];
    v28 = v1[15];
    v29 = v1[16];
    v30 = v1[14];
    v25;
    v31 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v31 = 136446466;
    sub_1A524E424();
    v43(v26, v27);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v32 = sub_1A524EA44();
    v34 = v33;
    (*(v28 + 8))(v29, v30);
    sub_1A3C2EF94(v32, v34, v44);
  }

  (v1[27])(v1[22], v1[19]);
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  v1[31] = v36;
  if (!v36)
  {
    sub_1A435C808(v1[13], type metadata accessor for OneUpSharePlayStreamingVideoItem);
LABEL_16:

    v40 = v1[1];

    return v40();
  }

  v37 = swift_task_alloc();
  v1[32] = v37;
  *v37 = v1;
  v37[1] = sub_1A4349CF8;
  v39 = v1[13];

  return sub_1A434A704(v39, v38);
}

uint64_t sub_1A4349CF8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1A434A368;
  }

  else
  {
    v2 = sub_1A4349E2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4349E2C()
{
  sub_1A435C808(*(v0 + 104), type metadata accessor for OneUpSharePlayStreamingVideoItem);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4349EDC(double a1)
{
  sub_1A434B674(*(v1 + 272), a1);

  return MEMORY[0x1EEE6DFA0](sub_1A4349F4C, 0, 0);
}

uint64_t sub_1A4349F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4349FE8(uint64_t a1)
{
  v24 = v1;
  v2 = v1[30];
  v1[34] = v2;
  v3 = v1[25];
  v4 = v1[24];
  v5 = v1[21];
  v6 = v1[19];
  v7 = v1[8];
  v8 = sub_1A524D244();
  v9 = *v4;
  v3(v5, v7, v6);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = v1[21];
    v22 = v1[27];
    v11 = v1[19];
    v13 = v1[15];
    v12 = v1[16];
    v14 = v1[14];
    v9;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v15 = 136446722;
    sub_1A524E424();
    v22(v10, v11);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    sub_1A3C2EF94(v16, v18, &v23);
  }

  (v1[27])(v1[21], v1[19]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4349EDC, Strong, 0);
  }

  else
  {

    v20 = v1[1];

    return v20();
  }
}

uint64_t sub_1A434A368()
{
  v23 = v0;
  sub_1A435C808(v0[13], type metadata accessor for OneUpSharePlayStreamingVideoItem);
  v1 = v0[33];
  v0[34] = v1;
  v2 = v0[25];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[8];
  v7 = sub_1A524D244();
  v8 = *v3;
  v2(v4, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[21];
    v21 = v0[27];
    v10 = v0[19];
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v14 = 136446722;
    sub_1A524E424();
    v21(v9, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1A524EA44();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94(v15, v17, &v22);
  }

  (v0[27])(v0[21], v0[19]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4349EDC, Strong, 0);
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1A434A704(uint64_t a1, double a2)
{
  v3[21] = a1;
  v3[22] = v2;
  v4 = *v2;
  sub_1A435A644(0);
  v3[23] = v5;
  v3[24] = swift_task_alloc();
  v7 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(255, *(v4 + 80), *(v4 + 88), v6);
  v3[25] = v7;
  sub_1A3DBD9A0();
  v3[26] = sub_1A524ECF4();
  v8 = sub_1A524DF24();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v9 = sub_1A5240E64();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  sub_1A43588E0(0);
  v3[35] = swift_task_alloc();
  v10 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  v3[36] = v10;
  v3[37] = *(v10 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434A998, v2, 0);
}

void sub_1A434A998()
{
  sub_1A4359F74(v0[21].isa, v0[39].isa, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  isa = v0[39].isa;
  if (EnumCaseMultiPayload)
  {
    sub_1A435C808(isa, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  }

  else
  {
    v4 = *isa;
    v3 = *(isa + 8);
    if ((*(isa + 48) & 1) == 0)
    {
      v5 = v0[22].isa;
      v6 = *(*v5 + 128);
      swift_beginAccess();
      if (!*(*(v5 + v6) + 16))
      {
        v52 = sub_1A524D264();
        v53 = sub_1A486DB9C();
        if (os_log_type_enabled(*v53, v52))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A3C59280(v4, v3);

        v54 = v0[36].isa;
        v55 = v0[37].isa;
        v56 = v0[35].isa;
        v57 = v0[22].isa;
        sub_1A4359F74(v0[21].isa, v56, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
        (*(v55 + 7))(v56, 0, 1, v54);
        v58 = qword_1EB1B8710;
        swift_beginAccess();
        sub_1A435CBFC(v56, v57 + v58, sub_1A43588E0);
        swift_endAccess();
LABEL_23:

        v49 = v0[1].isa;

        v49();
        return;
      }
    }

    sub_1A3C59280(v4, v3);
  }

  sub_1A4359F74(v0[21].isa, v0[38].isa, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7)
  {
    if (v7 == 1)
    {
      (*(v0[31].isa + 4))(v0[34].isa, v0[38].isa, v0[30].isa);
    }
  }

  else
  {
    v8 = v0[38].isa;
    v10 = *(v8 + 1);
    v9 = *(v8 + 2);
    v11 = *v8;
    LOBYTE(v0[8].isa) = *(v8 + 48);
    *&v0[4].isa = v10;
    *&v0[6].isa = v9;
    *&v0[2].isa = v11;
    if ((v0[8].isa & 1) == 0)
    {
      v50 = swift_task_alloc();
      v0[40].isa = v50;
      *v50 = v0;
      *(v50 + 1) = sub_1A434B0B4;
      v51 = v0[32].isa;

      sub_1A434BB58(v51, &v0[2]);
      return;
    }

    v12 = v0[34].isa;
    v13 = *v8;
    v14 = *(v8 + 1);
    v15 = *(v8 + 2);
    *(v12 + 48) = *(v8 + 48);
    *(v12 + 1) = v14;
    *(v12 + 2) = v15;
    *v12 = v13;
  }

  v17 = v0[33].isa;
  v16 = v0[34].isa;
  v19 = v0[28].isa;
  v18 = v0[29].isa;
  v21 = v0[26].isa;
  v20 = v0[27].isa;
  v22 = v0[25].isa;
  v23 = v0[22].isa;
  v61 = v0[23].isa;
  swift_storeEnumTagMultiPayload();
  (*(v17 + 2))(v18, v16, v22);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 1) + 56))(v18, 0, 1, v21);
  v24 = *(*v23 + 120);
  swift_beginAccess();
  (*(v19 + 5))(v23 + v24, v18, v20);
  swift_endAccess();
  v25 = *(*v23 + 128);
  log = v0;
  swift_beginAccess();
  v59 = v25;
  v60 = v23;
  v26 = *(v23 + v25);
  v27 = v26 + 64;
  v28 = -1;
  v29 = -1 << *(v26 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v26 + 64);
  v31 = (63 - v29) >> 6;
  v62 = v26;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  while (v30)
  {
    v33 = v32;
    v0 = log;
LABEL_20:
    v34 = v0[34].isa;
    v35 = v0[24].isa;
    v36 = v0[22].isa;
    v37 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v38 = v37 | (v33 << 6);
    v39 = *(v62 + 56);
    v40 = *(*(v62 + 48) + 8 * v38);
    sub_1A435A544(0);
    v42 = *(v41 - 8);
    v43 = v39 + *(v42 + 72) * v38;
    v44 = *(v61 + 12);
    v45 = (*(v42 + 16))(v35 + v44, v43, v41);
    *v35 = v40;
    sub_1A434C490(v40, v35 + v44, v36, v34, v45);
    sub_1A435C808(v35, sub_1A435A644);
  }

  v0 = log;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
      v47 = log[33].isa;
      v46 = log[34].isa;
      v48 = log[25].isa;

      *(v60 + v59) = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);

      (*(v47 + 1))(v46, v48);
      goto LABEL_23;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_1A434B0B4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A434B5AC;
  }

  else
  {
    v4 = sub_1A434B1E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1A434B1E0()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  sub_1A435AE04((v0 + 2));
  (*(v3 + 32))(v1, v2, v4);
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  v12 = v0[22];
  v41 = v0[23];
  swift_storeEnumTagMultiPayload();
  (*(v6 + 16))(v7, v5, v11);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v13 = *(*v12 + 120);
  swift_beginAccess();
  (*(v8 + 40))(v12 + v13, v7, v9);
  swift_endAccess();
  v14 = *(*v12 + 128);
  v43 = v0;
  swift_beginAccess();
  v39 = v14;
  v40 = v12;
  v15 = *(v12 + v14);
  v16 = v15 + 64;
  v17 = -1;
  v18 = -1 << *(v15 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 64);
  v20 = (63 - v18) >> 6;
  v42 = v15;
  swift_bridgeObjectRetain_n();
  v21 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_9:
      v23 = v43[34];
      v24 = v43[24];
      v25 = v43[22];
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v22 << 6);
      v28 = *(v42 + 56);
      v29 = *(*(v42 + 48) + 8 * v27);
      sub_1A435A544(0);
      v31 = *(v30 - 8);
      v32 = v28 + *(v31 + 72) * v27;
      v33 = *(v41 + 48);
      v34 = (*(v31 + 16))(v24 + v33, v32, v30);
      *v24 = v29;
      sub_1A434C490(v29, v24 + v33, v25, v23, v34);
      sub_1A435C808(v24, sub_1A435A644);
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  v36 = v43[33];
  v35 = v43[34];
  v37 = v43[25];

  *(v40 + v39) = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);

  (*(v36 + 8))(v35, v37);

  v38 = v43[1];

  v38();
}

uint64_t sub_1A434B5AC()
{
  sub_1A435AE04(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A434B674(void *a1, double a2)
{
  v4 = *v2;
  sub_1A435A644(0);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(255, *(v4 + 80), *(v4 + 88), v8);
  sub_1A3DBD9A0();
  v9 = sub_1A524ECF4();
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  *(&v43 - v12) = a1;
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
  v14 = *(*v2 + 120);
  swift_beginAccess();
  v51 = a1;
  v15 = a1;
  (*(v11 + 40))(v2 + v14, v13, v10);
  swift_endAccess();
  v16 = *(*v2 + 128);
  swift_beginAccess();
  v43 = v16;
  v44 = v2;
  v17 = *(v2 + v16);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v2 + v16) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v50 = *(v2 + v16);
  swift_bridgeObjectRetain_n();
  v25 = 0;
  *&v26 = 134349314;
  v45 = v26;
  v46 = v7;
  while (v23)
  {
LABEL_10:
    v29 = __clz(__rbit64(v23)) | (v25 << 6);
    v30 = *(v50 + 56);
    v31 = *(*(v50 + 48) + 8 * v29);
    sub_1A435A544(0);
    v33 = *(v32 - 8);
    v34 = v30 + *(v33 + 72) * v29;
    v35 = *(v49 + 48);
    (*(v33 + 16))(v7 + v35, v34, v32);
    *v7 = v31;
    v36 = sub_1A524D244();
    v37 = *sub_1A486DB9C();
    if (os_log_type_enabled(v37, v36))
    {
      v47 = v37;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v35;
      v52 = v39;
      *v38 = v45;
      *(v38 + 4) = v31;
      *(v38 + 12) = 2080;
      swift_getErrorValue();
      v40 = sub_1A524EBE4();
      sub_1A3C2EF94(v40, v41, &v52);
    }

    v23 &= v23 - 1;
    v52 = v51;
    v27 = v51;
    sub_1A524CBD4();
    sub_1A435C808(v7, sub_1A435A644);
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      v42 = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A435A524, sub_1A435A5C4, sub_1A435A62C, sub_1A435A544);
      *(v44 + v43) = v42;

      return;
    }

    v23 = *(v19 + 8 * v28);
    ++v25;
    if (v23)
    {
      v25 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1A434BB58(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v3[7] = *v2;
  v4 = sub_1A5240E64();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1A5246D14();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434BCF4, v2, 0);
}

uint64_t sub_1A434BCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = v4;
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = v4[12];
  v5 = v4[13];
  v7 = v4[11];
  v8 = v4[3];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library(0, *(v4[7] + 80), *(v4[7] + 88), a4);
  sub_1A5246C04();
  sub_1A5246BF4();
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  sub_1A4341E08(v10, v8);
  v12 = v4[9];
  v11 = v4[10];
  v13 = v4[8];
  v14 = v4[5];
  v15 = v4[3];

  v17 = *(v14 + 112);
  v16 = *(v14 + 120);
  LOBYTE(v10) = sub_1A524D264();
  v18 = *sub_1A486DB9C();
  (*(v12 + 16))(v11, v15, v13);
  if (os_log_type_enabled(v18, v10))
  {
    v18;
    v19 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v19 = 136446466;
    sub_1A3C2EF94(v17, v16, v30);
  }

  v20 = *(v4[9] + 8);
  v20(v4[10], v4[8]);
  v21 = v16;
  v4[14] = v20;
  v22 = v4[5];
  v24 = v4[3];
  v23 = v4[4];
  WitnessTable = swift_getWitnessTable();
  v26 = swift_task_alloc();
  v4[15] = v26;
  v26[2] = v23;
  v26[3] = v17;
  v26[4] = v21;
  v26[5] = v24;
  v27 = swift_task_alloc();
  v4[16] = v27;
  *v27 = v4;
  v27[1] = sub_1A434C104;
  v28 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v27, v22, WitnessTable, 0xD000000000000014, 0x80000001A53D2C60, sub_1A435B228, v26, v28);
}

uint64_t sub_1A434C104()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1A434C314;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1A434C278;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A434C278()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A434C314()
{

  v1 = [objc_opt_self() defaultManager];
  v2 = sub_1A5240D44();
  v0[2] = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = v4;
    v7 = sub_1A5240B84();

    swift_willThrow();
  }

  v8 = v0[14];
  v9 = v0[8];
  v10 = v0[3];
  swift_willThrow();

  v8(v10, v9);

  v11 = v0[1];

  return v11();
}

double sub_1A434C490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v34 = a4;
  v35 = a1;
  v7 = *a3;
  sub_1A435A544(0);
  v36 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v7 + 80);
  v31 = *(v7 + 88);
  v12 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(0, v32, v31, v11);
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v19;
  v20 = sub_1A524CCB4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, v34, v12);
  (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v36);
  v22 = v31;
  v21 = v32;
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry(255, v32, v31, v23);
  WitnessTable = swift_getWitnessTable();
  v25 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v26 = (v14 + *(v9 + 80) + v25) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = a3;
  *(v27 + 3) = WitnessTable;
  *(v27 + 4) = v21;
  *(v27 + 5) = v22;
  *(v27 + 6) = v35;
  *(v27 + 7) = a3;
  (*(v13 + 32))(&v27[v25], v16, v29);
  (*(v9 + 32))(&v27[v26], v30, v36);
  swift_retain_n();
  sub_1A3D4D930(0, 0, v33, &unk_1A53317D8, v27);

  return result;
}

uint64_t sub_1A434C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A434C7E4, a5, 0);
}

uint64_t sub_1A434C7E4()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  v0[8] = v2;
  v3 = *v2;
  if (os_log_type_enabled(*v2, v1))
  {
    v4 = v0[4];
    v5 = v3;
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = v4;
    _os_log_impl(&dword_1A3C1C000, v5, v1, "Journal: [%{public}ld] Satisfying player item", v6, 0xCu);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1A434C908;
  v8 = v0[6];

  return sub_1A434CC30(v8);
}

uint64_t sub_1A434C908(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_1A434CAC0;
  }

  else
  {
    v4[11] = a1;
    v6 = sub_1A434CA44;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434CA44(double a1)
{
  v1[3] = v1[11];
  sub_1A435A544(0);
  sub_1A524CBE4();
  v2 = v1[1];

  return v2();
}

uint64_t sub_1A434CAC0()
{
  v1 = v0[8];
  v2 = sub_1A524D264();
  v3 = *v1;
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[10];
    v5 = v0[4];
    v6 = v3;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134349314;
    *(v7 + 4) = v5;
    *(v7 + 12) = 2112;
    v9 = v4;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1A3C1C000, v6, v2, "Journal: [%{public}ld] Error for player item: %@", v7, 0x16u);
    sub_1A435C808(v8, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v8, -1, -1);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v0[2] = v0[10];
  sub_1A435A544(0);
  sub_1A524CBD4();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1A434CC30(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *v1;
  v4 = sub_1A5240E64();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(0, *(v3 + 80), *(v3 + 88), v5);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A434CD8C, v1, 0);
}

uint64_t sub_1A434CD8C()
{
  v30 = v0;
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 72), *(v0 + 120));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1A435ADB0();
      swift_allocError();
      swift_willThrow();
LABEL_16:

      v23 = *(v0 + 8);

      return v23();
    }

    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_1A434D404;
    v19 = *(v0 + 104);

    return sub_1A434E69C(v19);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v2 = *(v0 + 136);
      v3 = *(v0 + 80);
      v5 = v2[1];
      v4 = v2[2];
      v6 = *v2;
      *(v0 + 64) = *(v2 + 48);
      *(v0 + 32) = v5;
      *(v0 + 48) = v4;
      *(v0 + 16) = v6;
      v7 = *v3;
      v8 = v3[14];
      v9 = v3[15];
      v10 = sub_1A524D264();
      v11 = *sub_1A486DB9C();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = v11;
        v13 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v13 = 136446210;
        sub_1A3C2EF94(v8, v9, &v29);
      }

      v14 = sub_1A5240E84();
      v15 = sub_1A524C634();
      if (*(v0 + 40))
      {
        v16 = sub_1A524C634();
        if (*(v0 + 56))
        {
LABEL_7:
          v17 = sub_1A524C634();
          goto LABEL_21;
        }
      }

      else
      {
        v16 = 0;
        if (*(v0 + 56))
        {
          goto LABEL_7;
        }
      }

      v17 = 0;
LABEL_21:
      v24 = [objc_opt_self() playerItemFromVideoMediaItemMakerData:v14 forAssetUuid:v15 fingerPrint:v16 outOfBandPresentationHints:v17];

      if (v24 || (type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, *(v7 + 80), *(v7 + 88), v25), swift_getWitnessTable(), v27 = swift_allocError(), *v28 = 2, swift_willThrow(), !v27))
      {
        sub_1A435AE04(v0 + 16);

        v26 = *(v0 + 8);

        return v26(v24);
      }

      sub_1A435AE04(v0 + 16);
      goto LABEL_16;
    }

    (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 136), *(v0 + 88));
    v21 = swift_task_alloc();
    *(v0 + 144) = v21;
    *v21 = v0;
    v21[1] = sub_1A434D228;
    v22 = *(v0 + 112);

    return sub_1A434E280(v22);
  }
}

uint64_t sub_1A434D228(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_1A434D5E0;
  }

  else
  {
    v4[20] = a1;
    v6 = sub_1A434D364;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434D364()
{
  (*(v0[12] + 8))(v0[14], v0[11]);
  v1 = v0[20];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A434D404(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_1A434D678;
  }

  else
  {
    v4[23] = a1;
    v6 = sub_1A434D540;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434D540()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[23];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A434D5E0()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A434D678()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

void sub_1A434D710(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a5;
  v18 = a1;
  sub_1A435B234(0);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v17 = v9;
  v21 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v15);
  sub_1A435B2A0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v11;
  *(inited + 48) = 1;
  v12 = sub_1A3D756DC(inited);
  swift_setDeallocating();
  sub_1A435B368(inited + 32);
  v20 = sub_1A5240E84();
  v22 = a3;
  v24 = a4;
  v19 = sub_1A524C634();
  v16 = sub_1A5240D44();
  if (a2[3])
  {
    v14 = sub_1A524C634();
  }

  else
  {
    v14 = 0;
  }

  v13[2] = objc_opt_self();
  sub_1A434DB58(v12);
}

void sub_1A434DB58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A435B4C4(0, &qword_1EB1263C0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0]);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A434DE28(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = (v12 + 16);
  if (a1)
  {
    v19 = sub_1A524D264();
    v20 = *sub_1A486DB9C();
    (*v18)(v17, a5, v11);
    if (os_log_type_enabled(v20, v19))
    {
      v21 = v20;
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v22 = 136446466;
      sub_1A3C2EF94(a3, a4, &v30);
    }

    (*(v12 + 8))(v17, v11);
    sub_1A435B234(0);
    return sub_1A524CBE4();
  }

  else
  {
    v23 = sub_1A524D244();
    v24 = *sub_1A486DB9C();
    (*v18)(v14, a5, v11);
    if (os_log_type_enabled(v24, v23))
    {
      v25 = v24;
      v26 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v26 = 136446466;
      sub_1A3C2EF94(a3, a4, &v30);
    }

    (*(v12 + 8))(v14, v11);
    v30 = a2;
    v28 = a2;
    sub_1A435B234(0);
    return sub_1A524CBD4();
  }
}

uint64_t sub_1A434E280(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A434E2F0, v1, 0);
}

uint64_t sub_1A434E2F0()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  if (os_log_type_enabled(*v2, v1))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = *(v3 + 80);
  v7[3] = *(v3 + 88);
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = sub_1A3C52C70(0, &qword_1EB138628, 0x1E69880B0);
  *v8 = v0;
  v8[1] = sub_1A434E510;

  return MEMORY[0x1EEE6DE38](v0 + 2, v4, WitnessTable, 0xD00000000000002ELL, 0x80000001A53D2B90, sub_1A435AE58, v7, v9);
}

uint64_t sub_1A434E510()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A434E638;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A435CD40;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A434E638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A434E69C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A434E70C, v1, 0);
}

uint64_t sub_1A434E70C()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  if (os_log_type_enabled(*v2, v1))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = *(v3 + 80);
  v7[3] = *(v3 + 88);
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = sub_1A3C52C70(0, &qword_1EB138628, 0x1E69880B0);
  *v8 = v0;
  v8[1] = sub_1A434E92C;

  return MEMORY[0x1EEE6DE38](v0 + 2, v4, WitnessTable, 0xD000000000000016, 0x80000001A53D2C10, sub_1A435AF5C, v7, v9);
}

uint64_t sub_1A434E92C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A435CD18;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A435CD40;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1A434EA54(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A435A544(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v18 = objc_opt_self();
  v12 = sub_1A5240D44();
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v13 = sub_1A524C3D4();

  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1A435AE64;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A434EC74;
  aBlock[3] = &block_descriptor_161;
  v16 = _Block_copy(aBlock);

  [v18 buildAVPlayerItemFromVideoURL:v12 infoDictionary:v13 options:0 completion:v16];
  _Block_release(v16);
}

void sub_1A434EC74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, v8, v9);
}

void sub_1A434ED14(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A435A544(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = objc_opt_self();
  v13 = sub_1A5240D44();
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1A435AFF0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A434EEF0;
  aBlock[3] = &block_descriptor_87_3;
  v16 = _Block_copy(aBlock);

  [v12 buildAVPlayerItemFromRemoteStreamVideoURL:v13 infoDictionary:0 completion:v16];
  _Block_release(v16);
}

void sub_1A434EEF0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_1A434EF74(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A434EFBC, a2, 0);
}

uint64_t sub_1A434EFBC(uint64_t a1)
{
  sub_1A524CDD4();
  v2 = v1[4];
  v3 = v1[3];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry(255, *(v1[5] + 80), *(v1[5] + 88), v4);
  WitnessTable = swift_getWitnessTable();
  v6 = swift_task_alloc();
  v1[6] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v1[7] = v7;
  v8 = sub_1A3C52C70(0, &qword_1EB138628, 0x1E69880B0);
  *v7 = v1;
  v7[1] = sub_1A434F148;
  v9 = v1[2];

  return MEMORY[0x1EEE6DE38](v9, v3, WitnessTable, 0xD000000000000019, 0x80000001A53D2B70, sub_1A435AC64, v6, v8);
}

uint64_t sub_1A434F148()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1A435CD24, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A434F284(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v64 = a3;
  WitnessTable = a1;
  v5 = *a2;
  sub_1A435A544(0);
  v63 = v6;
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = v7;
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v5[10];
  v53 = v5[11];
  v54 = v10;
  v12 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(0, v10, v53, v11);
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v51 - v15;
  sub_1A3DBD9A0();
  v61 = v12;
  v16 = sub_1A524ECF4();
  v17 = sub_1A524DF24();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - v19;
  v21 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v51 - v26;
  v28 = v5[15];
  swift_beginAccess();
  (*(v18 + 16))(v20, &a2[v28], v17);
  if ((*(v21 + 48))(v20, 1, v16) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v29 = sub_1A524D264();
    v30 = *sub_1A486DB9C();
    v31 = os_log_type_enabled(v30, v29);
    v32 = v64;
    if (v31)
    {
      v33 = v30;
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = v32;
      _os_log_impl(&dword_1A3C1C000, v33, v29, "Journal: [%{public}ld] Player item format not available yet. Queuing request", v34, 0xCu);
      MEMORY[0x1A590EEC0](v34, -1, -1);
    }

    return sub_1A434FC68(v32, WitnessTable);
  }

  else
  {
    (*(v21 + 32))(v27, v20, v16);
    (*(v21 + 16))(v24, v27, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66 = *v24;
      sub_1A524CBD4();
    }

    else
    {
      v36 = v58;
      v37 = v59;
      v38 = *(v59 + 32);
      v51 = v59 + 32;
      v52 = v38;
      v39 = v61;
      v38(v58, v24, v61);
      v40 = sub_1A524CCB4();
      (*(*(v40 - 8) + 56))(v60, 1, 1, v40);
      (*(v37 + 16))(v57, v36, v39);
      v41 = v56;
      (*(v56 + 16))(v62, WitnessTable, v63);
      v43 = v53;
      v42 = v54;
      type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry(255, v54, v53, v44);
      WitnessTable = swift_getWitnessTable();
      v45 = (*(v37 + 80) + 64) & ~*(v37 + 80);
      v46 = (v13 + *(v41 + 80) + v45) & ~*(v41 + 80);
      v47 = swift_allocObject();
      v48 = v64;
      v49 = WitnessTable;
      *(v47 + 2) = a2;
      *(v47 + 3) = v49;
      *(v47 + 4) = v42;
      *(v47 + 5) = v43;
      *(v47 + 6) = v48;
      *(v47 + 7) = a2;
      v50 = v61;
      v52(&v47[v45], v57, v61);
      (*(v41 + 32))(&v47[v46], v62, v63);
      swift_retain_n();
      sub_1A3D4D930(0, 0, v60, &unk_1A5331790, v47);

      (*(v59 + 8))(v58, v50);
    }

    return (*(v21 + 8))(v27, v16);
  }
}

uint64_t sub_1A434F8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A434F914, a5, 0);
}

uint64_t sub_1A434F914()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[4];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Player item format immediately available for request", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1A434FA34;
  v7 = v0[6];

  return sub_1A434CC30(v7);
}

uint64_t sub_1A434FA34(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[5];
  if (v1)
  {
    v6 = sub_1A434FBEC;
  }

  else
  {
    v4[10] = a1;
    v6 = sub_1A434FB70;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A434FB70(double a1)
{
  v1[3] = v1[10];
  sub_1A435A544(0);
  sub_1A524CBE4();
  v2 = v1[1];

  return v2();
}

uint64_t sub_1A434FBEC(double a1)
{
  v1[2] = v1[9];
  sub_1A435A544(0);
  sub_1A524CBD4();
  v2 = v1[1];

  return v2();
}

uint64_t sub_1A434FC68(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v39 = *v3;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43588E0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v36 - v17;
  sub_1A435AC30(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A544(0);
  v22 = v21;
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, a2, v21);
  (*(v23 + 56))(v20, 0, 1, v22);
  swift_beginAccess();
  sub_1A433F314(v20, v41);
  swift_endAccess();
  v24 = qword_1EB1B8710;
  swift_beginAccess();
  sub_1A4359F74(v3 + v24, v12, sub_1A43588E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v25 = sub_1A43588E0;
    v26 = v12;
  }

  else
  {
    v41 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format;
    v27 = v38;
    sub_1A435B0E8(v12, v38, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    (*(v14 + 56))(v9, 1, 1, v13);
    swift_beginAccess();
    sub_1A435CBFC(v9, v3 + v24, sub_1A43588E0);
    swift_endAccess();
    v28 = sub_1A524CCB4();
    v29 = v40;
    (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
    v30 = v37;
    sub_1A4359F74(v27, v37, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    v31 = v39;
    WitnessTable = swift_getWitnessTable();
    v33 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v34 = swift_allocObject();
    v34[2] = v3;
    v34[3] = WitnessTable;
    v34[4] = *(v31 + 80);
    v34[5] = *(v31 + 88);
    v34[6] = v3;
    sub_1A435B0E8(v30, v34 + v33, v41);
    swift_retain_n();
    sub_1A3D4D930(0, 0, v29, &unk_1A53317B8, v34);

    v25 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format;
    v26 = v27;
  }

  return sub_1A435C808(v26, v25);
}

uint64_t sub_1A4350150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A4350170, 0, 0);
}

uint64_t sub_1A4350170()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Player item request cancelled", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A43502B8, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A43502B8()
{
  sub_1A4350324(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4350324(uint64_t a1)
{
  sub_1A435AC30(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435A544(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = *(*v1 + 128);
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (!*(v15 + 16))
  {
    return swift_endAccess();
  }

  v16 = sub_1A3CAB9BC(a1);
  if ((v17 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v8 + 16))(v10, *(v15 + 56) + *(v8 + 72) * v16, v7);
  (*(v8 + 32))(v13, v10, v7);
  swift_endAccess();
  (*(v8 + 56))(v5, 1, 1, v7);
  swift_beginAccess();
  sub_1A433F314(v5, a1);
  swift_endAccess();
  sub_1A524CC04();
  sub_1A435C7C0(&qword_1EB138668, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v18 = swift_allocError();
  sub_1A524C394();
  v20[1] = v18;
  sub_1A524CBD4();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1A43505C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43505E4, a4, 0);
}

uint64_t sub_1A43505E4()
{
  v14 = v0;
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[4] = v2;
  v3 = *(v1 + 120);
  v0[5] = v3;
  v4 = sub_1A524D264();
  v5 = sub_1A486DB9C();
  v0[6] = v5;
  v6 = *v5;
  if (os_log_type_enabled(*v5, v4))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v8 = 136446210;
    sub_1A3C2EF94(v2, v3, &v13);
  }

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_1A4350764;
  v11 = v0[3];

  return sub_1A434A704(v11, v10);
}

uint64_t sub_1A4350764()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1A4350898, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A4350898(uint64_t a1)
{
  v2 = v1[6];
  v3 = sub_1A524D244();
  if (os_log_type_enabled(*v2, v3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = v1[8];
  sub_1A434B674(v5, v4);

  v6 = v1[1];

  return v6();
}

void sub_1A4350A5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry(0, *(v3 + 80), *(v3 + 88), v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4350BB8(uint64_t a1, _OWORD *a2)
{
  v41 = a2;
  v43 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1A524DF24();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = AssociatedTypeWitness;
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = qword_1EB1B87B8;
  swift_beginAccess();
  if (*(*&v2[v15] + 16))
  {
    sub_1A4359FDC(v43);
  }

  v32 = v11;
  v33 = v9;
  v34 = v5;
  v35 = TupleTypeMetadata2;
  v37 = v7;
  v30[2] = *(v2 + 14);
  v16 = sub_1A524D264();
  v17 = *sub_1A486DB9C();
  v18 = *(v42 + 16);
  v19 = v39;
  v36 = v42 + 16;
  v20 = v18;
  v18(v14, v43, v39);
  v31 = v16;
  if (os_log_type_enabled(v17, v16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v42 + 8))(v14, v19);
  v21 = v34;
  v22 = v35;
  v23 = v40;
  v24 = v37;
  v25 = &v37[*(v35 + 48)];
  v20(v37, v43, v19);
  v26 = v41;
  v27 = v41[1];
  *v25 = *v41;
  *(v25 + 1) = v27;
  *(v25 + 4) = *(v26 + 32);
  (*(*(v22 - 8) + 56))(v24, 0, 1, v22);
  v28 = *(*v2 + 152);
  swift_beginAccess();
  sub_1A435BF44(v26, v44);
  (*(v23 + 40))(&v2[v28], v24, v21);
  return swift_endAccess();
}

uint64_t sub_1A4351188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43511AC, v2, 0);
}

id sub_1A43511AC()
{
  result = [*(v0 + 16) uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();
    v5 = v4;

    sub_1A4350A5C(v3, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A435129C(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_1A435CD38;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_1A435CD34;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A43513D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A4351448, v1, 0);
}

uint64_t sub_1A4351448()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  v0[8] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = *(v1 + 80);
  v6[3] = *(v1 + 88);
  v6[4] = v5;
  v6[5] = v3;
  WitnessTable = swift_getWitnessTable();
  v8 = swift_task_alloc();
  v0[10] = v8;
  sub_1A3C566A4(0, &qword_1EB138600, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  *v8 = v0;
  v8[1] = sub_1A43515F4;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1A5331750, v4, sub_1A435A990, v6, v2, WitnessTable, v9);
}

uint64_t sub_1A43515F4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A4351738;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A3D94024;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A4351738()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1A43517B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = qword_1EB1B8798;
  v6 = sub_1A5240E64();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[qword_1EB1B87A0], 1, 1, v6);
  v4[qword_1EB1B87A8] = 0;
  *&v4[qword_1EB1B87B0] = 0;
  v8 = qword_1EB1B87B8;
  *&v4[v8] = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A4359E14, sub_1A4359ED4, sub_1A4359F3C, sub_1A4359E34);
  v9 = *(*v4 + 152);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v4[v9], 1, 1, TupleTypeMetadata2);
  *(v4 + 14) = a1;
  *(v4 + 15) = a2;
  return v4;
}

void sub_1A43519FC()
{
  v46 = *v0;
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4359F54(0);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = qword_1EB1B87B8;
  swift_beginAccess();
  v40 = v0;
  v38[1] = v6;
  v7 = *&v0[v6];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v45 = v7;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  *&v14 = 134349056;
  v41 = v14;
  v43 = v5;
  while (v11)
  {
LABEL_10:
    v18 = __clz(__rbit64(v11)) | (v13 << 6);
    v19 = *(v45 + 56);
    v20 = *(*(v45 + 48) + 8 * v18);
    sub_1A4359E34(0);
    v22 = *(v44 + 48);
    (*(*(v21 - 8) + 16))(v5 + v22, v19 + *(*(v21 - 8) + 72) * v18, v21);
    *v5 = v20;
    v23 = *(v46 + 80);
    v47 = *(v46 + 88);
    v24 = sub_1A524D264();
    v25 = *sub_1A486DB9C();
    if (os_log_type_enabled(v25, v24))
    {
      v27 = v25;
      v28 = swift_slowAlloc();
      v42 = v22;
      v29 = v23;
      v30 = v28;
      *v28 = v41;
      *(v28 + 4) = v20;
      _os_log_impl(&dword_1A3C1C000, v27, v24, "Journal: [%{public}ld] Cancel from deinit for live photo", v28, 0xCu);
      v31 = v30;
      v23 = v29;
      MEMORY[0x1A590EEC0](v31, -1, -1);
    }

    v11 &= v11 - 1;
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, v23, v47, v26);
    swift_getWitnessTable();
    v15 = swift_allocError();
    *v16 = 0;
    v48 = v15;
    v5 = v43;
    sub_1A524CBD4();
    sub_1A435C808(v5, sub_1A4359F54);
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      v32 = qword_1EB1B8798;
      v33 = v40;
      swift_beginAccess();
      v34 = v39;
      sub_1A4359F74(&v33[v32], v39, sub_1A3EE53E0);
      sub_1A435A2D8(v34);
      sub_1A435C808(v34, sub_1A3EE53E0);
      v35 = qword_1EB1B87A0;
      swift_beginAccess();
      sub_1A4359F74(&v33[v35], v34, sub_1A3EE53E0);
      sub_1A435A2D8(v34);
      sub_1A435C808(v34, sub_1A3EE53E0);

      sub_1A435C808(&v33[v32], sub_1A3EE53E0);
      sub_1A435C808(&v33[v35], sub_1A3EE53E0);

      v36 = *(*v33 + 152);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getTupleTypeMetadata2();
      v37 = sub_1A524DF24();
      (*(*(v37 - 8) + 8))(&v33[v36], v37);
      swift_defaultActor_destroy();
      return;
    }

    v11 = *(v8 + 8 * v17);
    ++v13;
    if (v11)
    {
      v13 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1A4351F10()
{
  sub_1A43519FC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A4351F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  v9 = sub_1A52411C4();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_getAssociatedTypeWitness();
  v8[32] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[33] = AssociatedTypeWitness;
  v8[34] = *(AssociatedTypeWitness - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43520EC, 0, 0);
}