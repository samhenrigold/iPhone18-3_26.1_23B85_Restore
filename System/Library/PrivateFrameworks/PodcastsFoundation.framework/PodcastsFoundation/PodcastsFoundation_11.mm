uint64_t _PodcastsFeatureFlag.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t Podcasts.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t static _PodcastsFeatureFlag.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1D917949C();
  v4 = v3;
  if (v2 == sub_1D917949C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

unint64_t sub_1D8E42D80()
{
  result = qword_1ECAB4880;
  if (!qword_1ECAB4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4880);
  }

  return result;
}

unint64_t sub_1D8E42DD8()
{
  result = qword_1ECAB4888;
  if (!qword_1ECAB4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4888);
  }

  return result;
}

uint64_t sub_1D8E42E38(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1D917949C();
  v4 = v3;
  if (v2 == sub_1D917949C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

unint64_t sub_1D8E42EE4()
{
  result = qword_1ECAB4890;
  if (!qword_1ECAB4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4890);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Podcasts(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Podcasts(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PodcastsFeatureFlag(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _PodcastsFeatureFlag(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

id sub_1D8E430F0()
{
  v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v0;
}

id sub_1D8E4314C(void *a1)
{
  v1 = a1;
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.showListShowsAllShows.getter()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1D8E43218(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v3 = sub_1D917873C();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v5 setValue:v3 forKey:v4];
}

void NSUserDefaults.showListShowsAllShows.setter(uint64_t a1, double a2)
{
  v3 = sub_1D917873C();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setValue:v3 forKey:v4];
}

id NSUserDefaults.showListSortType.getter()
{
  result = [v0 stringForKey_];
  if (result)
  {
    v2 = result;
    v3 = sub_1D917820C();
    v5 = v4;

    LODWORD(result) = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0(v3, v5);
    if (result == 7)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

id sub_1D8E4339C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 stringForKey_];
  if (result)
  {
    v4 = result;
    v5 = sub_1D917820C();
    v7 = v6;

    result = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0(v5, v7);
    if (result == 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = result;
    }
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

void NSUserDefaults.showListSortType.setter(unsigned __int8 a1)
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setValue:v2 forKey:@"kShowsSortOrderKey"];
}

void (*NSUserDefaults.showListSortType.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 stringForKey_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;

    v9 = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0(v6, v8);
    if (v9 == 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 8) = v10;
  return sub_1D8E43630;
}

id sub_1D8E43658(void *a1)
{
  v1 = a1;
  v2 = [v1 dictionaryForKey_];
  if (v2)
  {
    v3 = v2;
    sub_1D917805C();

    v4 = sub_1D917802C();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t NSUserDefaults.episodeListSortTypeDictionary.getter()
{
  v1 = [v0 dictionaryForKey_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D917805C();

  return v3;
}

uint64_t sub_1D8E437A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1D917805C();
    v4 = a1;
    v5 = sub_1D917802C();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  [a1 setValue:v5 forKey:@"kEpisodeListSortOrderKey"];

  return swift_unknownObjectRelease();
}

uint64_t NSUserDefaults.episodeListSortTypeDictionary.setter(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = sub_1D917802C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setValue:v3 forKey:@"kEpisodeListSortOrderKey"];

  return swift_unknownObjectRelease();
}

void sub_1D8E4390C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 episodeListSortTypeDictionary];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D917805C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1D8E43988(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_1D917802C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEpisodeListSortTypeDictionary_];
}

void sub_1D8E43A0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (a3)
  {
    sub_1D9176DFC();
    v11 = sub_1D9176E3C();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v11 = sub_1D9176E3C();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  sub_1D8CF6B1C(v10, v7);
  sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = a1;
  v15 = 0;
  if (v13 != 1)
  {
    v15 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v12 + 8))(v7, v11);
  }

  [v14 setObject:v15 forKey:@"MTLastAppUseDate"];
  swift_unknownObjectRelease();
  sub_1D8D08A50(v10, &qword_1ECAB75C0, &unk_1D9188A50);
}

uint64_t NSUserDefaults.lastAppUseDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D8CF6B1C(a1, &v11 - v5);
  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v8 + 8))(v6, v7);
  }

  [v2 setObject:v9 forKey:@"MTLastAppUseDate"];
  swift_unknownObjectRelease();
  return sub_1D8D08A50(a1, &qword_1ECAB75C0, &unk_1D9188A50);
}

uint64_t sub_1D8E43D70@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastAppUseDate];
  if (v3)
  {
    v4 = v3;
    sub_1D9176DFC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D9176E3C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1D8E43E14(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D8CF6B1C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastAppUseDate_];
}

uint64_t NSUserDefaults.debugOverrideAssetURL.getter()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D917820C();

  return v3;
}

void sub_1D8E43FF0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_1D917820C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_1D8E44088(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v3 = 0;
  }

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setValue:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void NSUserDefaults.debugOverrideAssetURL.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v3 = 0;
  }

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setValue:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.debugOverrideAssetURL.modify(uint64_t *a1))()
{
  a1[2] = v1;
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v1 stringForKey_];

  if (v4)
  {
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1D8E44278;
}

uint64_t sub_1D8E44278(void *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {

      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v4 = 0;
    }

    v6 = a1[2];
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v6 setValue:v4 forKey:v7];
  }

  else
  {
    if (v3)
    {
      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v5 = 0;
    }

    v8 = a1[2];
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v8 setValue:v5 forKey:v7];
  }

  return swift_unknownObjectRelease();
}

void *sub_1D8E44478@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D8E444A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_1D8E44554()
{
  result = qword_1ECAB4898;
  if (!qword_1ECAB4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4898);
  }

  return result;
}

unint64_t sub_1D8E445AC()
{
  result = qword_1ECAB48A0;
  if (!qword_1ECAB48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48A0);
  }

  return result;
}

unint64_t sub_1D8E44604()
{
  result = qword_1ECAB48A8;
  if (!qword_1ECAB48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48A8);
  }

  return result;
}

unint64_t sub_1D8E4465C()
{
  result = qword_1ECAB48B0;
  if (!qword_1ECAB48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48B0);
  }

  return result;
}

void static DeviceCapabilities.mobileGestaltCapabilities()(void *a1@<X8>)
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = MGGetBoolAnswer();

  *a1 = v3;
}

uint64_t NanoPodcastsArtworkToken.key.getter()
{
  v1 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_key);

  return v1;
}

CGColorRef sub_1D8E4480C()
{
  v1 = OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor;
  v2 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  GenericRGB = v2;
  if (v2 == 1)
  {
    GenericRGB = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString + 8);
    if (GenericRGB)
    {
      v4 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString);

      v5 = sub_1D8D3E514(v4, GenericRGB);
      GenericRGB = CGColorCreateGenericRGB(v5 / 255.0, BYTE1(v5) / 255.0, BYTE2(v5) / 255.0, HIBYTE(v5) / 255.0);
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = GenericRGB;
    v7 = GenericRGB;
    sub_1D8E44900(v6);
  }

  sub_1D8E44910(v2);
  return GenericRGB;
}

void sub_1D8E44900(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D8E44910(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1D8E44980(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  *(v1 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = a1;
  sub_1D8E44900(v2);
}

void (*sub_1D8E44998(CGColorRef *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D8E4480C();
  return sub_1D8E449E0;
}

void sub_1D8E449E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  *(v3 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1D8E44900(v4);
  }

  else
  {

    sub_1D8E44900(v4);
  }
}

id NanoPodcastsArtworkToken.__allocating_init(key:backgroundColorString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor] = 1;
  v10 = &v9[OBJC_IVAR___NMTPodcastsArtworkToken_key];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NanoPodcastsArtworkToken.init(key:backgroundColorString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor] = 1;
  v5 = &v4[OBJC_IVAR___NMTPodcastsArtworkToken_key];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for NanoPodcastsArtworkToken();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1D8E44C2C(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E44C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

void *sub_1D8E44CDC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D8E44CF4(uint64_t a1)
{
  v2 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1D8E44D30(uint64_t a1)
{
  v2 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1D8E44D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

id NanoPodcastsArtworkToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NanoPodcastsArtworkToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NanoPodcastsArtworkToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E44F30()
{
  result = qword_1ECAB48D0;
  if (!qword_1ECAB48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48D0);
  }

  return result;
}

unint64_t sub_1D8E44F88()
{
  result = qword_1ECAB48D8;
  if (!qword_1ECAB48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48D8);
  }

  return result;
}

unint64_t sub_1D8E44FE0()
{
  result = qword_1ECAB48E0;
  if (!qword_1ECAB48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48E0);
  }

  return result;
}

unint64_t sub_1D8E45038()
{
  result = qword_1ECAB48E8;
  if (!qword_1ECAB48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48E8);
  }

  return result;
}

unint64_t sub_1D8E45090()
{
  result = qword_1ECAB48F0;
  if (!qword_1ECAB48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48F0);
  }

  return result;
}

unint64_t sub_1D8E450E8()
{
  result = qword_1ECAB48F8;
  if (!qword_1ECAB48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48F8);
  }

  return result;
}

unint64_t sub_1D8E45214()
{
  result = qword_1ECAB4900;
  if (!qword_1ECAB4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4900);
  }

  return result;
}

uint64_t CachingImageContentProvider.taskImageSource.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CachingImageContentProvider(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t CachingImageContentProvider.resizer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CachingImageContentProvider(0) + 24);

  return sub_1D8CFD9D8(v3, a1);
}

id CachingImageContentProvider.workQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for CachingImageContentProvider(0) + 28));

  return v1;
}

void CachingImageContentProvider.init(domain:taskImageSource:resizer:workQueue:)(uint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D8D088B4(a1, a5, &qword_1ECAB4908, &qword_1D918AFB0);
  v10 = type metadata accessor for CachingImageContentProvider(0);
  *(a5 + v10[5]) = *a2;
  sub_1D8CFD9D8(a3, a5 + v10[6]);
  *(a5 + v10[7]) = a4;
  v11 = a4;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1D8DABF0C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4910, &qword_1D918AFB8);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v13;
  *(a5 + v10[8]) = v14;
  v15 = sub_1D8DABF0C(v12);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  sub_1D8D08A50(a1, &qword_1ECAB4908, &qword_1D918AFB0);
  *(v16 + 16) = v15;

  *(a5 + v10[9]) = v16;
}

uint64_t sub_1D8E454A4()
{
  v2 = *v1;
  *(*v1 + 17744) = v0;

  (*(v2[2203] + 8))(v2[2204], v2[2202]);
  if (v0)
  {
    v3 = sub_1D8E45898;
  }

  else
  {
    v3 = sub_1D8E455F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E455F0()
{
  v1 = v0[2205];
  v2 = v0[2200];
  v3 = v0[2199];
  sub_1D8D088B4(v0[2206], v1, &qword_1ECAB4920, &unk_1D918AFD0);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[2214];
  v6 = v0[2213];
  v7 = v0[2210];
  v8 = v0[2206];
  v9 = v0[2205];
  if (v4 == 1)
  {
    sub_1D8D08A50(v0[2205], &qword_1ECAB4920, &unk_1D918AFD0);
    sub_1D8E50398();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    sub_1D8D08A50(v8, &qword_1ECAB4920, &unk_1D918AFD0);
    sub_1D8D58578((v0 + 2129));
    v5(v6, v7);
  }

  else
  {
    v12 = v0[2201];
    v13 = v0[2196];

    sub_1D8D08A50(v8, &qword_1ECAB4920, &unk_1D918AFD0);
    sub_1D8D58578((v0 + 2129));
    v5(v6, v7);
    sub_1D8E50CDC(v9, v12, type metadata accessor for ArtworkContent);
    sub_1D8E50CDC(v12, v13, type metadata accessor for ArtworkContent);
  }

  sub_1D8D58578((v0 + 2096));

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D8E45898()
{
  v1 = v0[2214];
  v2 = v0[2213];
  v3 = v0[2210];

  sub_1D8D58578((v0 + 2129));
  v1(v2, v3);
  sub_1D8D58578((v0 + 2096));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8E459D4@<X0>(uint64_t (*a1)(void, double)@<X1>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = sub_1D9176AAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_1D9176C2C();
  v8 = *(v15[0] - 8);
  v9 = MEMORY[0x1EEE9AC00](v15[0]);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + *(a1(0, v9) + 24));
  v13 = v12[1];
  v15[2] = *v12;
  v15[3] = v13;
  (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
  sub_1D8D447DC();

  sub_1D9176C1C();
  (*(v5 + 8))(v7, v4);

  sub_1D9176B4C();

  return (*(v8 + 8))(v11, v15[0]);
}

uint64_t (*CachingImageContentProvider.source(for:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  if (*(*(a1 + 208) + 16))
  {
    v4 = sub_1D8E5172C;
    result = 0;
  }

  else
  {
    v4 = *(v2 + *(type metadata accessor for CachingImageContentProvider(0) + 20));
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_1D8E45D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49D8, &unk_1D918B160);
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E0, &qword_1D918B170);
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = v33 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E8, &qword_1D918B178);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v0 + 1;
  v35 = v33 - v11;
  sub_1D8ED1848(v48);
  v12 = v0[285];
  v43 = v0 + 1;
  v44 = v48;
  os_unfair_lock_lock((v12 + 24));
  sub_1D8E515E0((v12 + 16), v47);
  os_unfair_lock_unlock((v12 + 24));
  v13 = v47[0];
  v33[1] = v47[0];
  sub_1D8D08A50(v48, &qword_1ECAB49F0, &unk_1D918B180);
  v14 = *v0;
  v33[2] = v14;
  v15 = sub_1D9178DBC();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v48[0] = v14;
  v47[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520, MEMORY[0x1E695BED8]);
  sub_1D8CF3274(&qword_1EDCD0980, &qword_1EDCD7B70, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A88, &qword_1ECAB49D8, &unk_1D918B160, MEMORY[0x1E695BCB8]);
  v16 = v41;
  v17 = v38;
  sub_1D9177CEC();

  (*(v39 + 8))(v4, v17);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D41388(v34, v48);
  sub_1D8D088B4(&v49, v47, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v48);
  v39 = sub_1D9178E5C();
  v19 = v18;
  v20 = v37;
  v21 = *(v37 + 16);
  v22 = v42;
  v23 = v40;
  v21(v42, v16, v40);
  sub_1D8D088B4(v47, v48, &qword_1ECAB4928, &qword_1D918B380);
  v24 = v35;
  v21(v35, v22, v23);
  v25 = v36;
  sub_1D8D088B4(v48, v24 + *(v36 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v26 = v24 + v25[10];
  *v26 = "QueueHop";
  *(v26 + 8) = 8;
  *(v26 + 16) = 2;
  *(v24 + v25[12]) = 0;
  v45 = v39;
  v46 = v19;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v27 = v45;
  v28 = v46;
  sub_1D8D08A50(v48, &qword_1ECAB4928, &qword_1D918B380);
  v29 = *(v20 + 8);
  v29(v42, v23);
  sub_1D8D08A50(v47, &qword_1ECAB4928, &qword_1D918B380);
  v29(v41, v23);
  v30 = (v24 + v25[11]);
  *v30 = v27;
  v30[1] = v28;
  *(v24 + v25[13]) = 0;
  sub_1D8CF48EC(&qword_1ECAB27C8, &qword_1ECAB49E8, &qword_1D918B178, &protocol conformance descriptor for EmitLifecycle<A>);
  v31 = sub_1D9177B1C();
  sub_1D8D08A50(v24, &qword_1ECAB49E8, &qword_1D918B178);
  return v31;
}

uint64_t sub_1D8E46340()
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49D8, &unk_1D918B160);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v2 = v30 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E0, &qword_1D918B170);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v30 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E8, &qword_1D918B178);
  MEMORY[0x1EEE9AC00](v32);
  v10 = v30 - v9;
  v31 = v0;
  v11 = sub_1D8E4989C();
  v12 = *v0;
  v30[1] = v11;
  v30[2] = v12;
  v13 = sub_1D9178DBC();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v41[0] = v12;
  v43[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520, MEMORY[0x1E695BED8]);
  sub_1D8CF3274(&qword_1EDCD0980, &qword_1EDCD7B70, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A88, &qword_1ECAB49D8, &unk_1D918B160, MEMORY[0x1E695BCB8]);
  v14 = v37;
  v15 = v34;
  sub_1D9177CEC();

  (*(v36 + 8))(v2, v15);
  sub_1D8D08A50(v5, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D41388((v31 + 1), v41);
  sub_1D8D088B4(&v42, v43, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v41);
  v36 = sub_1D9178E5C();
  v17 = v16;
  v18 = v33;
  v19 = *(v33 + 16);
  v20 = v38;
  v21 = v35;
  v19(v38, v14, v35);
  sub_1D8D088B4(v43, v41, &qword_1ECAB4928, &qword_1D918B380);
  v19(v10, v20, v21);
  v22 = v32;
  sub_1D8D088B4(v41, &v10[*(v32 + 36)], &qword_1ECAB4928, &qword_1D918B380);
  v23 = &v10[v22[10]];
  *v23 = "QueueHop";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v10[v22[12]] = 0;
  v39 = v36;
  v40 = v17;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v24 = v39;
  v25 = v40;
  sub_1D8D08A50(v41, &qword_1ECAB4928, &qword_1D918B380);
  v26 = *(v18 + 8);
  v26(v38, v21);
  sub_1D8D08A50(v43, &qword_1ECAB4928, &qword_1D918B380);
  v26(v37, v21);
  v27 = &v10[v22[11]];
  *v27 = v24;
  *(v27 + 1) = v25;
  v10[v22[13]] = 0;
  sub_1D8CF48EC(&qword_1ECAB27C8, &qword_1ECAB49E8, &qword_1D918B178, &protocol conformance descriptor for EmitLifecycle<A>);
  v28 = sub_1D9177B1C();
  sub_1D8D08A50(v10, &qword_1ECAB49E8, &qword_1D918B178);
  return v28;
}

uint64_t sub_1D8E46900(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ArtworkContent(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4920, &unk_1D918AFD0);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4918, &qword_1D918AFC8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49D0, &qword_1D918B158);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E46AC8, 0, 0);
}

uint64_t sub_1D8E46AC8()
{
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  sub_1D8CF48EC(&qword_1ECAB02E0, &qword_1ECAB4918, &qword_1D918AFC8, MEMORY[0x1E695BFD8]);
  sub_1D91789FC();
  v1 = sub_1D8CF48EC(&qword_1ECAB02E8, &qword_1ECAB49D0, &qword_1D918B158, MEMORY[0x1E695BFC8]);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1D8E46C14;
  v3 = v0[11];
  v4 = v0[7];

  return MEMORY[0x1EEE6D8C8](v4, v3, v1);
}

uint64_t sub_1D8E46C14()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v3 = sub_1D8E46EA4;
  }

  else
  {
    v3 = sub_1D8E46D40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E46D40()
{
  v1 = v0[7];
  v2 = (*(v0[5] + 48))(v1, 1, v0[4]);
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  if (v2 == 1)
  {
    (*(v4 + 8))(v0[13], v0[11]);
    v6 = 1;
  }

  else
  {
    v7 = v0[6];
    v8 = v0[2];
    sub_1D8E50CDC(v1, v7, type metadata accessor for ArtworkContent);
    (*(v4 + 8))(v3, v5);
    sub_1D8E50CDC(v7, v8, type metadata accessor for ArtworkContent);
    v6 = 0;
  }

  (*(v0[5] + 56))(v0[2], v6, 1, v0[4]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D8E46EA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CachingImageContentProvider.placeholderURL(for:generatePlaceholder:)@<X0>(uint64_t (*a1)(double, double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v52 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1D9176AAC();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9176C2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v51 - v19;
  static ArtworkModel.placeholder.getter(v64);
  v85 = v64[0];
  v86 = v64[1];
  v87 = v65;
  v20 = v66;
  v21 = v67;
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v77 = v68;
  v78 = v69;
  v79 = v70;
  v80 = v71;
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v22 = qos_class_self();
  v57 = v14;
  v58 = a3;
  v54 = a2;
  v55 = a1;
  if (v22 > 20)
  {
    if (v22 == QOS_CLASS_DEFAULT)
    {
LABEL_8:
      v23 = 1;
      goto LABEL_9;
    }

    if (v22 != QOS_CLASS_USER_INITIATED)
    {
      if (v22 == QOS_CLASS_USER_INTERACTIVE)
      {
        v23 = 3;
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v23 = 2;
  }

  else
  {
    if (v22 != QOS_CLASS_BACKGROUND)
    {
      goto LABEL_8;
    }

    v23 = 0;
  }

LABEL_9:
  sub_1D8D088B4(v62, v61, &qword_1ECAB4928, &qword_1D918B380);
  v60[201] = 16;
  memset(&v60[224], 0, 40);
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, 3.0);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a4);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a5);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v20);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v21);
  v89.width = 0.0;
  v89.height = 0.0;
  v88.width = a4;
  v88.height = a5;
  if (CGSizeEqualToSize(v88, v89))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD5E28);
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v23;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v28, 2u);
      v29 = v28;
      v23 = v27;
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }
  }

  if (v20 == 0.0 || v21 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v30 = sub_1D917744C();
    __swift_project_value_buffer(v30, qword_1EDCD5E28);
    v31 = sub_1D917741C();
    v32 = sub_1D9178CFC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v23;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v34, 2u);
      v35 = v34;
      v23 = v33;
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }
  }

  sub_1D8D08A50(v62, &qword_1ECAB4928, &qword_1D918B380);
  *v60 = v85;
  *&v60[16] = v86;
  *&v60[32] = v87;
  *&v60[40] = v20;
  *&v60[48] = v21;
  *&v60[120] = v81;
  *&v60[136] = v82;
  *&v60[152] = v83;
  *&v60[168] = v84;
  *&v60[56] = v77;
  *&v60[72] = v78;
  *&v60[88] = v79;
  *&v60[104] = v80;
  *&v60[176] = a4;
  *&v60[184] = a5;
  *&v60[192] = 0x4008000000000000;
  *&v60[200] = 4096;
  v60[202] = 0;
  v60[203] = v23;
  *&v60[208] = MEMORY[0x1E69E7CC0];
  v60[216] = 3;
  sub_1D8D412B0(v61, &v60[224]);
  memcpy(v76, v60, sizeof(v76));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);
  *v60 = ArtworkRequest.fileName.getter();
  *&v60[8] = v36;
  v37 = v56;
  (*(v11 + 104))(v13, *MEMORY[0x1E6968F70], v56);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v11 + 8))(v13, v37);

  v38 = v59;
  sub_1D9176B4C();

  v39 = v57;
  (*(v15 + 8))(v17, v57);
  v40 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v41 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v42 = [v40 fileExistsAtPath_];

  v43 = v58;
  if ((v42 & 1) == 0)
  {
    v44 = v55(a4, a5);
    if (v45 >> 60 != 15)
    {
      v46 = v53;
      *v53 = v44;
      *(v46 + 8) = v45;
      v47 = v44;
      v48 = v45;
      swift_storeEnumTagMultiPayload();
      sub_1D8D752C4(v47, v48);
      sub_1D8E47770(v46, v76);
      sub_1D8D75668(v47, v48);
      v49 = v46;
      v38 = v59;
      sub_1D8E51434(v49, type metadata accessor for ArtworkContent);
    }
  }

  sub_1D8D58578(v76);
  (*(v15 + 32))(v43, v38, v39);
  return (*(v15 + 56))(v43, 0, 1, v39);
}

uint64_t sub_1D8E47770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = sub_1D9177E0C();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D9177E9C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkContent(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v32 = v3;
  v37 = &v31 - v14;
  sub_1D8DADA18(&v31 - v14);
  sub_1D8E4A2C8(a1, a2);
  v36 = *(v3 + qword_1EDCD6AC0);
  sub_1D8DAC03C(a1, v10, type metadata accessor for ArtworkContent);
  sub_1D8D41388(a2, v46);
  v16 = v33;
  v17 = v34;
  v18 = v15;
  v19 = v11;
  (*(v34 + 16))(v33, v18, v11);
  v20 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v17 + 80) + v21 + 264) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  sub_1D8E50CDC(v10, v23 + v20, type metadata accessor for ArtworkContent);
  memcpy((v23 + v21), v46, 0x108uLL);
  v24 = v23 + v22;
  v25 = v19;
  (*(v17 + 32))(v24, v16, v19);
  v45[4] = sub_1D8E514C4;
  v45[5] = v23;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 1107296256;
  v45[2] = sub_1D8CF5F60;
  v45[3] = &block_descriptor_40;
  v26 = _Block_copy(v45);

  v27 = v38;
  sub_1D9177E4C();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v28 = v39;
  v29 = v41;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v27, v28, v26);
  _Block_release(v26);
  (*(v43 + 8))(v28, v29);
  (*(v40 + 8))(v27, v42);
  (*(v17 + 8))(v37, v25);
}

uint64_t sub_1D8E47CB8(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_1D9177E0C();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D9177E9C();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTMLRequest(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D9176C2C();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v33 = &v29 - v15;
  sub_1D8E459D4(type metadata accessor for TTMLRequest, &v29 - v15);
  sub_1D8E4A4D0(a1, a2);
  v32 = *(v2 + qword_1EDCD6AC0);
  v17 = a1[1];
  v42 = *a1;
  v43 = v17;
  v44 = a1[2];
  v45 = *(a1 + 6);
  sub_1D8DAC03C(a2, v10, type metadata accessor for TTMLRequest);
  v18 = v16;
  v19 = v30;
  (*(v11 + 16))(v13, v18, v30);
  v20 = (*(v31 + 80) + 80) & ~*(v31 + 80);
  v21 = (v9 + *(v11 + 80) + v20) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  v23 = v43;
  *(v22 + 24) = v42;
  *(v22 + 40) = v23;
  *(v22 + 56) = v44;
  *(v22 + 72) = v45;
  sub_1D8E50CDC(v10, v22 + v20, type metadata accessor for TTMLRequest);
  (*(v11 + 32))(v22 + v21, v13, v19);
  aBlock[4] = sub_1D8E51254;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_20_0;
  v24 = _Block_copy(aBlock);

  sub_1D8E511D8(a1, v40);
  v25 = v34;
  sub_1D9177E4C();
  v40[0] = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v26 = v35;
  v27 = v37;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v25, v26, v24);
  _Block_release(v24);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v25, v38);
  (*(v11 + 8))(v33, v19);
}

uint64_t sub_1D8E48268(void *a1, uint64_t a2)
{
  v3 = v2;
  v36 = sub_1D9177E0C();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D9177E9C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShazamSignatureRequest(0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D9176C2C();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v32 = &v28 - v15;
  sub_1D8E459D4(type metadata accessor for ShazamSignatureRequest, &v28 - v15);
  sub_1D8E4A6F0(a1, a2);
  v31 = *(v2 + qword_1EDCD6AC0);
  sub_1D8DAC03C(a2, v10, type metadata accessor for ShazamSignatureRequest);
  v17 = v16;
  v18 = v29;
  (*(v11 + 16))(v13, v17, v29);
  v19 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v20 = (v9 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a1;
  sub_1D8E50CDC(v10, v21 + v19, type metadata accessor for ShazamSignatureRequest);
  (*(v11 + 32))(v21 + v20, v13, v18);
  aBlock[4] = sub_1D8E51344;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26;
  v22 = _Block_copy(aBlock);

  v23 = a1;
  v24 = v33;
  sub_1D9177E4C();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v25 = v34;
  v26 = v36;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v24, v25, v22);
  _Block_release(v22);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v24, v37);
  (*(v11 + 8))(v32, v18);
}

uint64_t sub_1D8E48784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v45 = a1;
  v50 = sub_1D9177E0C();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D9177E9C();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShazamSignatureRequest(0);
  v42 = *(v6 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176AAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D9176C2C();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v38 - v16;
  aBlock = sub_1D8E4D3C4();
  v57 = v17;
  (*(v9 + 104))(v11, *MEMORY[0x1E6968F70], v8);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v9 + 8))(v11, v8);

  v18 = v54;
  sub_1D9176B4C();
  v19 = *(v12 + 8);
  v44 = v12 + 8;
  v46 = v19;
  v20 = v39;
  v19(v14, v39);
  v21 = v45;
  v22 = v53;
  sub_1D8E4A850(v45, v53);
  v43 = *(v2 + qword_1EDCD6AC0);
  v23 = v40;
  sub_1D8DAC03C(v21, v40, type metadata accessor for ShazamSignatureRequest);
  v24 = *(v22 + 16);
  v62 = *v22;
  v63 = v24;
  v64 = *(v22 + 32);
  v25 = v20;
  (*(v12 + 16))(v14, v18, v20);
  v26 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v27 = (v41 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v12 + 80) + v27 + 40) & ~*(v12 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  sub_1D8E50CDC(v23, v29 + v26, type metadata accessor for ShazamSignatureRequest);
  v30 = v29 + v27;
  v31 = v63;
  *v30 = v62;
  *(v30 + 16) = v31;
  *(v30 + 32) = v64;
  v32 = v25;
  (*(v12 + 32))(v29 + v28, v14, v25);
  v60 = sub_1D8E5046C;
  v61 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1D8CF5F60;
  v59 = &block_descriptor_3;
  v33 = _Block_copy(&aBlock);

  sub_1D8D088B4(v53, v55, &qword_1ECAB4988, &qword_1D918B0D8);
  v34 = v47;
  sub_1D9177E4C();
  v55[0] = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v35 = v48;
  v36 = v50;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v34, v35, v33);
  _Block_release(v33);
  (*(v52 + 8))(v35, v36);
  (*(v49 + 8))(v34, v51);
  v46(v54, v32);
}

uint64_t sub_1D8E48E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v45 = a1;
  v50 = sub_1D9177E0C();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D9177E9C();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTMLRequest(0);
  v42 = *(v6 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176AAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D9176C2C();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v38 - v16;
  aBlock = sub_1D8E4D3C4();
  v57 = v17;
  (*(v9 + 104))(v11, *MEMORY[0x1E6968F70], v8);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v9 + 8))(v11, v8);

  v18 = v54;
  sub_1D9176B4C();
  v19 = *(v12 + 8);
  v44 = v12 + 8;
  v46 = v19;
  v20 = v39;
  v19(v14, v39);
  v21 = v45;
  v22 = v53;
  sub_1D8E4AA64(v45, v53);
  v43 = *(v2 + qword_1EDCD6AC0);
  v23 = v40;
  sub_1D8DAC03C(v21, v40, type metadata accessor for TTMLRequest);
  v24 = *(v22 + 16);
  v62 = *v22;
  v63 = v24;
  v64 = *(v22 + 32);
  v25 = v20;
  (*(v12 + 16))(v14, v18, v20);
  v26 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v27 = (v41 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v12 + 80) + v27 + 40) & ~*(v12 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  sub_1D8E50CDC(v23, v29 + v26, type metadata accessor for TTMLRequest);
  v30 = v29 + v27;
  v31 = v63;
  *v30 = v62;
  *(v30 + 16) = v31;
  *(v30 + 32) = v64;
  v32 = v25;
  (*(v12 + 32))(v29 + v28, v14, v25);
  v60 = sub_1D8E50D44;
  v61 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1D8CF5F60;
  v59 = &block_descriptor_14;
  v33 = _Block_copy(&aBlock);

  sub_1D8D088B4(v53, v55, &qword_1ECAB4998, &qword_1D918B100);
  v34 = v47;
  sub_1D9177E4C();
  v55[0] = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v35 = v48;
  v36 = v50;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v34, v35, v33);
  _Block_release(v33);
  (*(v52 + 8))(v35, v36);
  (*(v49 + 8))(v34, v51);
  v46(v54, v32);
}

void sub_1D8E4955C()
{
  v0 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v20[-1] - v4);
  v6 = type metadata accessor for CachingImageContentProvider(0);
  __swift_allocate_value_buffer(v6, qword_1ECAB1898);
  v7 = __swift_project_value_buffer(v6, qword_1ECAB1898);
  v8 = [objc_opt_self() artworkAssetURL];
  sub_1D9176B9C();

  v9 = [objc_opt_self() defaultCenter];
  sub_1D8DAA3BC(v2, 0x500000uLL, v9, v5);
  *(swift_allocObject() + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  swift_allocObject();
  v10 = sub_1D9177A5C();
  v20[3] = &type metadata for CGImageResizer;
  v20[4] = &protocol witness table for CGImageResizer;
  if (qword_1EDCD5B20 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDCD5B28;
  sub_1D8D088B4(v5, v7, &qword_1ECAB4908, &qword_1D918AFB0);
  v12 = (v7 + v6[5]);
  *v12 = sub_1D8E51730;
  v12[1] = v10;
  sub_1D8CFD9D8(v20, v7 + v6[6]);
  *(v7 + v6[7]) = v11;
  v13 = v11;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1D8DABF0C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4910, &qword_1D918AFB8);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v15;
  *(v7 + v6[8]) = v16;
  v17 = sub_1D8DABF0C(v14);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;

  sub_1D8D08A50(v5, &qword_1ECAB4908, &qword_1D918AFB0);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  *(v18 + 16) = v17;

  *(v7 + v6[9]) = v18;
}

uint64_t sub_1D8E4989C()
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A00, &qword_1D918B190);
  v30 = *(v34 - 8);
  v1 = v30;
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A08, &qword_1D918B198);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A10, &qword_1D918B1A0);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v29 - v11;
  v33 = v0;
  sub_1D8D088B4(v0, v40, &qword_1ECAB4A18, &qword_1D918B1A8);
  v12 = swift_allocObject();
  memcpy((v12 + 16), v40, 0x118uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
  v35 = &protocol conformance descriptor for EmitLifecycle<A>;
  sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020, &protocol conformance descriptor for EmitLifecycle<A>);
  v31 = v5;
  sub_1D9177A7C();
  sub_1D8D41388(v0, v40);
  sub_1D8D088B4(&v40[224], v41, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v40);
  v13 = *(v1 + 16);
  v14 = v39;
  v15 = v5;
  v16 = v34;
  v13(v39, v15, v34);
  sub_1D8D088B4(v41, v40, &qword_1ECAB4928, &qword_1D918B380);
  v13(v8, v14, v16);
  sub_1D8D088B4(v40, &v8[v6[9]], &qword_1ECAB4928, &qword_1D918B380);
  v17 = &v8[v6[10]];
  *v17 = "FallbackPreferredSource";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8[v6[12]] = 0;
  v42 = 0xD00000000000004FLL;
  v43 = 0x80000001D91CA260;
  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
  v18 = v42;
  v19 = v43;
  sub_1D8D08A50(v40, &qword_1ECAB4928, &qword_1D918B380);
  v20 = *(v30 + 8);
  v20(v39, v16);
  sub_1D8D08A50(v41, &qword_1ECAB4928, &qword_1D918B380);
  v20(v31, v16);
  v32 = v6;
  v21 = &v8[v6[11]];
  *v21 = v18;
  *(v21 + 1) = v19;
  v8[v6[13]] = 0;
  v22 = v33;
  LOBYTE(v18) = *(v33 + 560);
  sub_1D8D088B4(v33 + 280, v41, &qword_1ECAB4A18, &qword_1D918B1A8);
  sub_1D8D088B4(v22, v40, &qword_1ECAB4A20, &qword_1D918B1B0);
  v23 = swift_allocObject();
  memcpy(v23 + 16, v41, 0x118uLL);
  v23[296] = v18;
  memcpy(v23 + 304, v40, 0x231uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A28, &qword_1D918B1B8);
  v24 = v35;
  sub_1D8CF48EC(&qword_1ECAB2778, &qword_1ECAB4A08, &qword_1D918B198, v35);
  sub_1D8CF48EC(&qword_1ECAB27D0, &qword_1ECAB4A28, &qword_1D918B1B8, v24);
  v25 = v36;
  sub_1D9177BDC();

  sub_1D8D08A50(v8, &qword_1ECAB4A08, &qword_1D918B198);
  sub_1D8CF48EC(&qword_1ECAB0700, &qword_1ECAB4A10, &qword_1D918B1A0, MEMORY[0x1E695BDA0]);
  v26 = v37;
  v27 = sub_1D9177B1C();
  (*(v38 + 8))(v25, v26);
  return v27;
}

uint64_t sub_1D8E49E3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v34 = a5;
  v35 = a4;
  v33 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A00, &qword_1D918B190);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32[-v9];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A30, &unk_1D918B1C0);
  v11 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v32[-v14];
  sub_1D8D088B4(a2, v42, &qword_1ECAB4A18, &qword_1D918B1A8);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v42, 0x118uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
  sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020, &protocol conformance descriptor for EmitLifecycle<A>);
  sub_1D9177A7C();
  v16 = swift_allocObject();
  *(v16 + 16) = v33;
  *(v16 + 24) = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CF48EC(&qword_1ECAB4A38, &qword_1ECAB4A00, &qword_1D918B190, MEMORY[0x1E695C058]);
  v18 = v37;
  sub_1D9177D0C();

  (*(v8 + 8))(v10, v7);
  sub_1D8D41388(v35, v42);
  sub_1D8D088B4(&v42[224], v41, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v42);
  v19 = v11;
  v20 = *(v11 + 16);
  v21 = v38;
  v22 = v36;
  v20(v38, v18, v36);
  sub_1D8D088B4(v41, v42, &qword_1ECAB4928, &qword_1D918B380);
  v23 = v34;
  v20(v34, v21, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A28, &qword_1D918B1B8);
  sub_1D8D088B4(v42, &v23[v24[9]], &qword_1ECAB4928, &qword_1D918B380);
  v25 = &v23[v24[10]];
  v26 = v23;
  *v25 = "FallbackBackupSource";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v23[v24[12]] = 0;
  v39 = 0xD00000000000004FLL;
  v40 = 0x80000001D91CA260;
  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
  v27 = v39;
  v28 = v40;
  sub_1D8D08A50(v42, &qword_1ECAB4928, &qword_1D918B380);
  v29 = *(v19 + 8);
  v29(v38, v22);
  sub_1D8D08A50(v41, &qword_1ECAB4928, &qword_1D918B380);
  result = (v29)(v37, v22);
  v31 = &v26[v24[11]];
  *v31 = v27;
  v31[1] = v28;
  v26[v24[13]] = 0;
  return result;
}

uint64_t sub_1D8E4A2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8DAC03C(a1, v12, type metadata accessor for ArtworkContent);
  v13 = ArtworkContent.inMemorySize.getter();
  sub_1D9176E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C8, &qword_1D918B148);
  v14 = swift_allocObject();
  sub_1D8E50CDC(v12, v14 + *(*v14 + 120), type metadata accessor for ArtworkContent);
  *(v14 + *(*v14 + 128)) = v13;
  (*(v7 + 32))(v14 + *(*v14 + 136), v9, v6);
  v15 = *(v3 + 16);
  v18 = a2;
  v19 = v3;
  v20 = v14;
  os_unfair_lock_lock((v15 + 40));
  sub_1D8E515C0((v15 + 16));
  os_unfair_lock_unlock((v15 + 40));
}

void sub_1D8E4A4D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_11;
    }

    v14 = v9 + 16;
    v9 = *(v9 + 16);
    v13 = *(v14 + 8);
    v12 = v13 - v9;
    if (!__OFSUB__(v13, v9))
    {
LABEL_10:
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_15;
      }

LABEL_11:
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      sub_1D8E511D8(a1, v29);
      sub_1D9142B08(v18);
      v20 = v12 + v19;
      if (!__CFADD__(v12, v19))
      {
        sub_1D9142C0C(v17);
        v22 = __CFADD__(v20, v21);
        v23 = v20 + v21;
        if (!v22)
        {
          sub_1D9176E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B0, &qword_1D918B128);
          v24 = swift_allocObject();
          v25 = *(a1 + 16);
          *(v24 + 16) = *a1;
          *(v24 + 32) = v25;
          *(v24 + 48) = *(a1 + 32);
          *(v24 + 64) = *(a1 + 48);
          *(v24 + 72) = v23;
          v26 = (*(v6 + 32))(v24 + *(*v24 + 136), v8, v5);
          v27 = *(v2 + 16);
          MEMORY[0x1EEE9AC00](v26);
          *(&v28 - 4) = a2;
          *(&v28 - 3) = v2;
          *(&v28 - 2) = v24;
          os_unfair_lock_lock((v27 + 40));
          sub_1D8E51234((v27 + 16));
          os_unfair_lock_unlock((v27 + 40));

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v10);
    goto LABEL_11;
  }

  v15 = __OFSUB__(HIDWORD(v9), v9);
  v16 = HIDWORD(v9) - v9;
  if (!v15)
  {
    v12 = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1D8E4A6F0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = SHSignature.inMemorySize.getter();
  sub_1D9176E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49A8, &qword_1D918B118);
  v11 = swift_allocObject();
  *(v11 + 2) = a1;
  *(v11 + 3) = v10;
  (*(v7 + 32))(&v11[*(*v11 + 136)], v9, v6);
  v12 = *(v3 + 16);
  v16 = a2;
  v17 = v3;
  v18 = v11;
  v13 = a1;
  os_unfair_lock_lock((v12 + 40));
  sub_1D8E511B8((v12 + 16));
  os_unfair_lock_unlock((v12 + 40));
}

uint64_t sub_1D8E4A850(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v12;
  v21 = *(a2 + 32);
  sub_1D8DAC03C(a1, v11, type metadata accessor for ShazamSignatureRequest);
  sub_1D9176E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4990, &unk_1D918B0F0);
  v13 = swift_allocObject();
  sub_1D8E50CDC(v11, v13 + *(*v13 + 120), type metadata accessor for ShazamSignatureRequest);
  *(v13 + *(*v13 + 128)) = 1;
  (*(v6 + 32))(v13 + *(*v13 + 136), v8, v5);
  v14 = *(v2 + 16);
  v17 = v20;
  v18 = v2;
  v19 = v13;
  os_unfair_lock_lock(v14 + 10);
  sub_1D8E50510(&v14[4]);
  os_unfair_lock_unlock(v14 + 10);
}

uint64_t sub_1D8E4AA64(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v12;
  v21 = *(a2 + 32);
  sub_1D8DAC03C(a1, v11, type metadata accessor for TTMLRequest);
  sub_1D9176E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49A0, &qword_1D918B108);
  v13 = swift_allocObject();
  sub_1D8E50CDC(v11, v13 + *(*v13 + 120), type metadata accessor for TTMLRequest);
  *(v13 + *(*v13 + 128)) = 1;
  (*(v6 + 32))(v13 + *(*v13 + 136), v8, v5);
  v14 = *(v2 + 16);
  v17 = v20;
  v18 = v2;
  v19 = v13;
  os_unfair_lock_lock(v14 + 10);
  sub_1D8E50E9C(&v14[4]);
  os_unfair_lock_unlock(v14 + 10);
}

void sub_1D8E4AC78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ArtworkRequest.key.getter();
  v8 = sub_1D8F7E958(v7);

  if (v8)
  {
    v9 = *(v8 + *(*v8 + 128));

    v10 = a1[1];
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_43;
    }

    a1[1] = v12;
  }

  v13 = *(a4 + *(*a4 + 128));
  v14 = *a1;
  if (*a1 < v13)
  {
    return;
  }

  v46 = *(*a4 + 128);
  v15 = a1[2];
  if (v13 == v14)
  {

    v15 = MEMORY[0x1E69E7CC8];
    a1[1] = 0;
    a1[2] = v15;
LABEL_29:
    v35 = *(a4 + v46);
    v36 = a1[1];
    v11 = __CFADD__(v36, v35);
    v37 = v36 + v35;
    if (v11)
    {
      goto LABEL_44;
    }

    a1[1] = v37;
    v38 = a1;
    v39 = ArtworkRequest.key.getter();
    if ((v15 & 0xC000000000000001) != 0)
    {
      v40 = v38;
      if (v15 < 0)
      {
        v41 = v15;
      }

      else
      {
        v41 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v42 = sub_1D917935C();
      if (__OFADD__(v42, 1))
      {
        goto LABEL_45;
      }

      v43 = sub_1D8F7EE2C(v41, v42 + 1);
      v38 = v40;
      v40[2] = v43;
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v38[2];
    sub_1D8F4F1EC(a4, v39, isUniquelyReferenced_nonNull_native);

    v38[2] = v52;
    return;
  }

  v52 = sub_1D90D02E0(a1[2]);
  sub_1D8E4D4B0(&v52);
  if (v4)
  {
    goto LABEL_46;
  }

  v45 = a4;
  v16 = v52;
  v51 = v52[2];
  if (!v51)
  {
LABEL_28:

    a4 = v45;
    goto LABEL_29;
  }

  v17 = 0;
  v18 = v52 + 5;
  v47 = a1;
  v48 = v52;
  v49 = v14;
  v50 = v13;
  while (v17 < v16[2])
  {
    v19 = a1[1];
    if (__CFADD__(v19, v13))
    {
      goto LABEL_40;
    }

    if (v14 >= v19 + v13)
    {
      goto LABEL_28;
    }

    v20 = *(v18 - 1);
    v21 = *v18;
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v22 = v15;
      }

      else
      {
        v22 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = v20;

      v23 = v4;
      v24 = sub_1D91796BC();

      if (!v24)
      {
LABEL_25:

        goto LABEL_26;
      }

      swift_unknownObjectRelease();

      v25 = sub_1D917935C();
      v26 = sub_1D8F7EE2C(v22, v25);

      v27 = sub_1D8F068B0(v23);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_1D8F7F488(v27, v26);

      a1 = v47;
      v47[2] = v26;
      v15 = v26;
    }

    else
    {
      v23 = v20;

      v30 = sub_1D8F068B0(v23);
      if ((v31 & 1) == 0)
      {
        goto LABEL_25;
      }

      v32 = v30;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v15 = a1[2];
      v52 = v15;
      if ((v33 & 1) == 0)
      {
        sub_1D8F82144();
        v15 = v52;
      }

      sub_1D8F7F488(v32, v15);

      a1[2] = v15;
    }

LABEL_26:
    v34 = *(v21 + *(*v21 + 128));

    if (v19 < v34)
    {
      goto LABEL_41;
    }

    ++v17;
    a1[1] = v19 - v34;
    v18 += 2;
    v13 = v50;
    v16 = v48;
    v14 = v49;
    if (v51 == v17)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:

  __break(1u);
}

void sub_1D8E4B048(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 + *(type metadata accessor for TTMLRequest(0) + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = sub_1D8F7EB3C(*v6, v7);
  if (v9)
  {
    v10 = *(v9 + 72);

    v11 = a1[1];
    v12 = v11 >= v10;
    v13 = v11 - v10;
    if (!v12)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    a1[1] = v13;
  }

  if (sub_1D8E50564(*(a4 + 72), a1))
  {
    v14 = *(a4 + 72);
    v15 = a1[1];
    v12 = __CFADD__(v15, v14);
    v16 = v15 + v14;
    if (v12)
    {
      goto LABEL_9;
    }

    a1[1] = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a1[2];
    sub_1D8F4F5B4(a4, v8, v7, isUniquelyReferenced_nonNull_native);

    a1[2] = v18;
  }
}

void sub_1D8E4B144(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 + *(type metadata accessor for ShazamSignatureRequest(0) + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = sub_1D8F7EB50(*v6, v7);
  if (v9)
  {
    v10 = *(v9 + 24);

    v11 = a1[1];
    v12 = v11 >= v10;
    v13 = v11 - v10;
    if (!v12)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    a1[1] = v13;
  }

  if (sub_1D8E507E0(*(a4 + 24), a1))
  {
    v14 = *(a4 + 24);
    v15 = a1[1];
    v12 = __CFADD__(v15, v14);
    v16 = v15 + v14;
    if (v12)
    {
      goto LABEL_9;
    }

    a1[1] = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a1[2];
    sub_1D8F4F5F4(a4, v8, v7, isUniquelyReferenced_nonNull_native);

    a1[2] = v18;
  }
}

void sub_1D8E4B240(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, uint64_t, __n128), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = sub_1D8E4D3C4();
  v14 = a6(v13);

  if (v14)
  {
    v15 = *(v14 + *(*v14 + 128));

    v16 = *(a1 + 8);
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (!v17)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    *(a1 + 8) = v18;
  }

  v19 = *(*a5 + 128);
  if ((a7)(*(a5 + v19), a1))
  {
    v20 = *(a5 + v19);
    v21 = *(a1 + 8);
    v17 = __CFADD__(v21, v20);
    v22 = v21 + v20;
    if (v17)
    {
      goto LABEL_9;
    }

    *(a1 + 8) = v22;
    v23 = sub_1D8E4D3C4();
    v25 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a1 + 16);
    a8(a5, v23, v25, isUniquelyReferenced_nonNull_native);

    *(a1 + 16) = v27;
  }
}

void sub_1D8E4B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8E4B404(a2, a3, a4);
  v5 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v5 + 10);
  sub_1D8E515A4(&v5[4]);
  os_unfair_lock_unlock(v5 + 10);
}

uint64_t sub_1D8E4B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[3] = a2;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  sub_1D9176B5C();
  v10 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 fileExistsAtPath_];

  if ((v12 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v9, 1);
  }

  v13 = *(v5 + 8);
  v18[1] = v5 + 8;
  v13(v9, v4);
  v14 = ArtworkRequest.encode(_:)(a1);
  v16 = v15;
  sub_1D9176CAC();
  if ((*(v18[0] + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v18[0] + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v14, v16);
}

void sub_1D8E4BA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v14 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1D9176B5C();
  v9 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11 = [v9 fileExistsAtPath_];

  if ((v11 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v8, 1);
  }

  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1D9176CAC();
  if ((*(v15 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v15 + qword_1EDCDE888));
  }
}

uint64_t sub_1D8E4C058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v4 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v22 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v21 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  sub_1D9176B5C();
  v12 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v14 = [v12 fileExistsAtPath_];

  if ((v14 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v11, 1);
  }

  v19[1] = v4;

  (*(v7 + 8))(v11, v6);
  v15 = ShazamSignatureRequest.encode(_:)(a1);
  v17 = v16;
  sub_1D9176CAC();
  if ((*(v20 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v20 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v15, v17);
}

uint64_t sub_1D8E4C6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  sub_1D9176B5C();
  v8 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10 = [v8 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v7, 1);
  }

  v17 = *(v4 + 8);
  v17(v7, v3);
  type metadata accessor for ShazamSignatureRequest(0);
  sub_1D8E50498(&qword_1ECAB1CA0, type metadata accessor for ShazamSignatureRequest, &protocol conformance descriptor for ShazamSignatureRequest);
  v11 = sub_1D91769CC();
  v13 = v12;
  sub_1D9176CAC();
  if ((*(v16 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v16 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v11, v13);
}

uint64_t sub_1D8E4CD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  sub_1D9176B5C();
  v8 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10 = [v8 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v7, 1);
  }

  v17 = *(v4 + 8);
  v17(v7, v3);
  type metadata accessor for TTMLRequest(0);
  sub_1D8E50498(&qword_1ECAB2A88, type metadata accessor for TTMLRequest, &protocol conformance descriptor for TTMLRequest);
  v11 = sub_1D91769CC();
  v13 = v12;
  sub_1D9176CAC();
  if ((*(v16 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v16 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v11, v13);
}

unint64_t sub_1D8E4D3C4()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  sub_1D917946C();

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (!v1)
  {
    v1 = 0x80000001D91CA220;
  }

  MEMORY[0x1DA7298F0](v3, v1);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v4 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v4);

  return 0xD000000000000014;
}

void sub_1D8E4D4B0(uint64_t *a1)
{
  v41 = sub_1D9176E3C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v29 - v6;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D8F5DE48(v7);
  }

  v8 = v7[2];
  v33 = v7 + 4;
  v46[0] = (v7 + 4);
  v46[1] = v8;
  v9 = sub_1D9179A2C();
  if (v9 >= v8)
  {
    if (v8 >= 2)
    {
      v29 = v7;
      v30 = a1;
      v31 = v1;
      v37 = (v3 + 8);
      v38 = (v3 + 16);
      v12 = -1;
      v13 = 1;
      v14 = v33;
      v32 = v8;
      do
      {
        v35 = v13;
        v36 = v12;
        v15 = *&v33[2 * v13];
        v34 = v14;
        do
        {
          v43 = v15;
          v16 = v14[1];
          v47 = *v14;
          v17 = *(&v15 + 1);
          v18 = *(**(&v15 + 1) + 136);
          swift_beginAccess();
          v19 = v39;
          v20 = *v38;
          v21 = v41;
          (*v38)(v39, v17 + v18, v41);
          v22 = *(*v16 + 136);
          swift_beginAccess();
          v23 = v16 + v22;
          v24 = v40;
          v20(v40, v23, v21);
          *&v43 = v43;

          v47 = v47;

          v42 = sub_1D9176DAC();
          v25 = *v37;
          (*v37)(v24, v21);
          v25(v19, v21);

          if ((v42 & 1) == 0)
          {
            break;
          }

          v26 = *v14;
          v15 = *(v14 + 1);
          *v14 = v15;
          *(v14 + 1) = v26;
          v14 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v13 = v35 + 1;
        v14 = v34 + 2;
        v12 = v36 - 1;
      }

      while (v35 + 1 != v32);
      a1 = v30;
      v7 = v29;
    }
  }

  else
  {
    v10 = v9;
    if (v8 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4780, &qword_1D918B150);
      v11 = sub_1D917867C();
      *(v11 + 16) = v8 >> 1;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v45[0] = v11 + 32;
    v45[1] = v8 >> 1;
    v28 = v11;
    sub_1D8E4DBD8(v45, v44, v46, v10);
    *(v28 + 16) = 0;
  }

  *a1 = v7;
}

void sub_1D8E4D830(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v47 = sub_1D9176E3C();
  v9 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v34 - v12;
  v13 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = a2(v13);
  }

  v14 = *(v13 + 16);
  v39 = v13 + 32;
  v53[0] = v13 + 32;
  v53[1] = v14;
  v15 = sub_1D9179A2C();
  if (v15 >= v14)
  {
    if (v14 >= 2)
    {
      v36 = a1;
      v37 = v4;
      v43 = (v9 + 8);
      v44 = (v9 + 16);
      v35 = v13;
      v18 = (v13 + 40);
      v19 = -1;
      v20 = 1;
      v38 = v14;
      do
      {
        v40 = v20;
        v41 = v19;
        v21 = v39 + 24 * v20;
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
        v48 = v19;
        v42 = v18;
        do
        {
          v53[4] = v22;
          v24 = v18[1];
          v50 = *v18;
          v25 = *(*v23 + 136);
          swift_beginAccess();
          v26 = v45;
          v27 = *v44;
          v28 = v47;
          (*v44)(v45, v23 + v25, v47);
          v29 = *(*v24 + 136);
          swift_beginAccess();
          v30 = v46;
          v27(v46, v24 + v29, v28);

          v49 = sub_1D9176DAC();
          v31 = *v43;
          (*v43)(v30, v28);
          v31(v26, v28);

          if ((v49 & 1) == 0)
          {
            break;
          }

          v32 = v18[2];
          v22 = v18[3];
          v23 = v18[4];
          *(v18 + 1) = *(v18 - 1);
          v18[4] = v18[1];
          *(v18 - 1) = v32;
          *v18 = v22;
          v18[1] = v23;
          v18 -= 3;
        }

        while (!__CFADD__(v48++, 1));
        v20 = v40 + 1;
        v18 = v42 + 3;
        v19 = v41 - 1;
      }

      while (v40 + 1 != v38);
      a1 = v36;
      v13 = v35;
    }
  }

  else
  {
    v16 = v15;
    if (v14 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v17 = sub_1D917867C();
      *(v17 + 16) = v14 >> 1;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v52[0] = v17 + 32;
    v52[1] = v14 >> 1;
    sub_1D8E4E740(v52, v51, v53, v16);
    *(v17 + 16) = 0;
  }

  *a1 = v13;
}

void sub_1D8E4DBD8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v131 = sub_1D9176E3C();
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v115 - v12;
  v123 = a3;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v15 = sub_1D8F5DE20(v15);
    }

    v135 = v15;
    v111 = *(v15 + 2);
    if (v111 >= 2)
    {
      while (*v123)
      {
        v112 = *&v15[16 * v111];
        v113 = *&v15[16 * v111 + 24];
        sub_1D8E4F2D0((*v123 + 16 * v112), (*v123 + 16 * *&v15[16 * v111 + 16]), (*v123 + 16 * v113), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v113 < v112)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D8F5DE20(v15);
        }

        if (v111 - 2 >= *(v15 + 2))
        {
          goto LABEL_115;
        }

        v114 = &v15[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v135 = v15;
        sub_1D8F5DD94(v111 - 1);
        v15 = v135;
        v111 = *(v135 + 2);
        if (v111 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v116 = a4;
  v14 = 0;
  v128 = (v11 + 16);
  v127 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = v14;
    v118 = v14;
    if (v14 + 1 >= v13)
    {
      v30 = v14 + 1;
    }

    else
    {
      v125 = v13;
      v17 = *v123;
      v18 = *v123 + 16 * (v14 + 1);
      v19 = *(v18 + 8);
      v132 = *v18;
      v119 = 16 * v14;
      v134 = (v17 + 16 * v14);
      v20 = v134[1];
      *&v133 = *v134;
      v21 = *(*v19 + 136);
      swift_beginAccess();
      v22 = *v128;
      v23 = v129;
      v24 = v131;
      (*v128)(v129, v19 + v21, v131);
      v25 = *(*v20 + 136);
      swift_beginAccess();
      v26 = v20 + v25;
      v27 = v130;
      v121 = v22;
      v22(v130, v26, v24);
      v132 = v132;

      *&v133 = v133;

      LODWORD(v126) = sub_1D9176DAC();
      v28 = *v127;
      (*v127)(v27, v24);
      v120 = v28;
      (v28)(v23, v24);

      v5 = v118 + 2;
      v29 = v134 + 3;
      v122 = v15;
      while (1)
      {
        v30 = v125;
        if (v125 == v5)
        {
          break;
        }

        v124 = v6;
        v31 = v29[2];
        v134 = v29 + 2;
        v32 = *v29;
        v132 = v29[1];
        *&v133 = *(v29 - 1);
        v33 = *(*v31 + 136);
        swift_beginAccess();
        v34 = v129;
        v35 = v131;
        v36 = v121;
        v121(v129, v31 + v33, v131);
        v37 = *(*v32 + 136);
        swift_beginAccess();
        v38 = v130;
        v36(v130, v32 + v37, v35);
        v132 = v132;

        v39 = v133;

        v40 = sub_1D9176DAC() & 1;
        v41 = v120;
        (v120)(v38, v35);
        v41(v34, v35);

        ++v5;
        v29 = v134;
        v15 = v122;
        v6 = v124;
        if ((v126 & 1) != v40)
        {
          v30 = v5 - 1;
          break;
        }
      }

      v16 = v118;
      v42 = v119;
      if (v126)
      {
        if (v30 < v118)
        {
          goto LABEL_118;
        }

        if (v118 < v30)
        {
          v43 = 16 * v30 - 16;
          v44 = v30;
          v45 = v118;
          do
          {
            if (v45 != --v44)
            {
              v47 = *v123;
              if (!*v123)
              {
                goto LABEL_124;
              }

              v46 = *(v47 + v42);
              *(v47 + v42) = *(v47 + v43);
              *(v47 + v43) = v46;
            }

            ++v45;
            v43 -= 16;
            v42 += 16;
          }

          while (v45 < v44);
        }
      }
    }

    v48 = v123[1];
    if (v30 < v48)
    {
      if (__OFSUB__(v30, v16))
      {
        goto LABEL_117;
      }

      if (v30 - v16 < v116)
      {
        if (__OFADD__(v16, v116))
        {
          goto LABEL_119;
        }

        if (v16 + v116 >= v48)
        {
          v49 = v123[1];
        }

        else
        {
          v49 = v16 + v116;
        }

        if (v49 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v30 != v49)
        {
          break;
        }
      }
    }

    v14 = v30;
    if (v30 < v16)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D8ECC734(0, *(v15 + 2) + 1, 1, v15);
    }

    v51 = *(v15 + 2);
    v50 = *(v15 + 3);
    v5 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v15 = sub_1D8ECC734((v50 > 1), v51 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v52 = &v15[16 * v51];
    *(v52 + 4) = v118;
    *(v52 + 5) = v14;
    v53 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (v51)
    {
      while (1)
      {
        v54 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v55 = *(v15 + 4);
          v56 = *(v15 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_48:
          if (v58)
          {
            goto LABEL_105;
          }

          v71 = &v15[16 * v5];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_108;
          }

          v77 = &v15[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_112;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v5 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v81 = &v15[16 * v5];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_62:
        if (v76)
        {
          goto LABEL_107;
        }

        v84 = &v15[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_110;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_69:
        v92 = v54 - 1;
        if (v54 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v123)
        {
          goto LABEL_123;
        }

        v93 = *&v15[16 * v92 + 32];
        v94 = *&v15[16 * v54 + 40];
        sub_1D8E4F2D0((*v123 + 16 * v93), (*v123 + 16 * *&v15[16 * v54 + 32]), (*v123 + 16 * v94), v53);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v94 < v93)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D8F5DE20(v15);
        }

        if (v92 >= *(v15 + 2))
        {
          goto LABEL_102;
        }

        v95 = &v15[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        v135 = v15;
        sub_1D8F5DD94(v54);
        v15 = v135;
        v5 = *(v135 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v15[16 * v5 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_103;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_104;
      }

      v66 = &v15[16 * v5];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_106;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_109;
      }

      if (v70 >= v62)
      {
        v88 = &v15[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v57 < v91)
        {
          v54 = v5 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v13 = v123[1];
    if (v14 >= v13)
    {
      goto LABEL_89;
    }
  }

  v122 = v15;
  v124 = v6;
  v126 = *v123;
  v96 = v126 + 16 * v30 - 16;
  v97 = (v16 - v30);
  v119 = v49;
LABEL_80:
  v125 = v30;
  v98 = *(v126 + 16 * v30);
  v120 = v97;
  v121 = v96;
  v99 = v96;
  while (1)
  {
    v133 = v98;
    v5 = *(v99 + 8);
    v134 = *v99;
    v100 = *(&v98 + 1);
    v101 = *(**(&v98 + 1) + 136);
    swift_beginAccess();
    v102 = *v128;
    v103 = v129;
    v104 = v131;
    (*v128)(v129, v100 + v101, v131);
    v105 = *(*v5 + 136);
    swift_beginAccess();
    v106 = v5 + v105;
    v107 = v130;
    v102(v130, v106, v104);
    *&v133 = v133;

    v134 = v134;

    LODWORD(v132) = sub_1D9176DAC();
    v108 = *v127;
    (*v127)(v107, v104);
    v108(v103, v104);

    if ((v132 & 1) == 0)
    {
LABEL_79:
      v30 = v125 + 1;
      v96 = v121 + 16;
      v97 = v120 - 1;
      v14 = v119;
      if (v125 + 1 != v119)
      {
        goto LABEL_80;
      }

      v6 = v124;
      v15 = v122;
      if (v119 < v118)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v126)
    {
      break;
    }

    v109 = *v99;
    v98 = *(v99 + 16);
    *v99 = v98;
    *(v99 + 16) = v109;
    v99 -= 16;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_79;
    }
  }

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
}

void sub_1D8E4E740(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v133 = sub_1D9176E3C();
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v117 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v15 = sub_1D8F5DE20(v15);
    }

    v138 = v15;
    v112 = *(v15 + 16);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *(v15 + 16 * v112);
        v114 = v15;
        v115 = *(v15 + 16 * (v112 - 1) + 32);
        v15 = *(v15 + 16 * (v112 - 1) + 40);
        sub_1D8E4F848((*a3 + 24 * v113), (*a3 + 24 * v115), *a3 + 24 * v15, v5);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v15 < v113)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1D8F5DE20(v114);
        }

        if (v112 - 2 >= *(v114 + 2))
        {
          goto LABEL_116;
        }

        v116 = &v114[16 * v112];
        *v116 = v113;
        *(v116 + 1) = v15;
        v138 = v114;
        sub_1D8F5DD94(v112 - 1);
        v15 = v138;
        v112 = *(v138 + 16);
        if (v112 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v118 = a4;
  v14 = 0;
  v130 = (v11 + 16);
  v129 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v119 = a3;
  while (1)
  {
    v123 = v14;
    if (v14 + 1 >= v13)
    {
      v27 = v14 + 1;
    }

    else
    {
      v127 = v13;
      v120 = v15;
      v121 = v6;
      v16 = *a3;
      v17 = *(*a3 + 24 * (v14 + 1) + 16);
      v124 = 24 * v14;
      v18 = v16 + 24 * v14;
      v19 = *(v18 + 16);
      v136 = *(v18 + 8);
      v137 = v18;
      v20 = *(*v17 + 136);
      swift_beginAccess();
      v21 = *v130;
      v22 = v131;
      v5 = v133;
      (*v130)(v131, v17 + v20, v133);
      v23 = *(*v19 + 136);
      swift_beginAccess();
      v15 = v132;
      v126 = v21;
      (v21)(v132, v19 + v23, v5);

      LODWORD(v128) = sub_1D9176DAC();
      v24 = *v129;
      (*v129)(v15, v5);
      v125 = v24;
      v24(v22, v5);

      v25 = v123 + 2;
      v26 = (v137 + 64);
      while (1)
      {
        v27 = v127;
        if (v127 == v25)
        {
          break;
        }

        v28 = *v26;
        v29 = *(v26 - 4);
        v30 = *(v26 - 3);
        v135 = *(v26 - 1);
        v136 = v29;
        v31 = *(*v28 + 136);
        v137 = v25;
        swift_beginAccess();
        v32 = v131;
        v15 = v133;
        v33 = v126;
        (v126)(v131, v28 + v31, v133);
        v34 = *(*v30 + 136);
        swift_beginAccess();
        v35 = v132;
        v33(v132, v30 + v34, v15);
        v5 = v135;

        LOBYTE(v134) = sub_1D9176DAC() & 1;
        LODWORD(v134) = v134;
        v36 = v125;
        (v125)(v35, v15);
        v36(v32, v15);

        v25 = v137 + 1;
        v26 += 3;
        if ((v128 & 1) != v134)
        {
          v27 = v137;
          goto LABEL_9;
        }
      }

      v6 = v121;
      a3 = v119;
      v14 = v123;
      v37 = v124;
      if ((v128 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v27 < v123)
      {
        goto LABEL_119;
      }

      if (v123 < v27)
      {
        v38 = 0;
        v39 = 24 * v27;
        v40 = v123;
        v15 = v120;
        do
        {
          if (v40 != v27 + v38 - 1)
          {
            v46 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v41 = (v46 + v37);
            v42 = v46 + v39;
            v43 = *v41;
            v44 = *(v41 + 1);
            v45 = *(v42 - 24);
            v41[2] = *(v42 - 8);
            *v41 = v45;
            *(v42 - 24) = v43;
            *(v42 - 16) = v44;
          }

          ++v40;
          --v38;
          v39 -= 24;
          v37 += 24;
        }

        while (v40 < v27 + v38);
      }

      else
      {
LABEL_19:
        v15 = v120;
      }
    }

    v47 = a3[1];
    if (v27 < v47)
    {
      if (__OFSUB__(v27, v14))
      {
        goto LABEL_118;
      }

      if (v27 - v14 < v118)
      {
        if (__OFADD__(v14, v118))
        {
          goto LABEL_120;
        }

        if (v14 + v118 >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = v14 + v118;
        }

        if (v48 < v14)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v27 != v48)
        {
          break;
        }
      }
    }

    v49 = v27;
    if (v27 < v14)
    {
      goto LABEL_117;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D8ECC734(0, *(v15 + 16) + 1, 1, v15);
    }

    v51 = *(v15 + 16);
    v50 = *(v15 + 24);
    v5 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v15 = sub_1D8ECC734((v50 > 1), v51 + 1, 1, v15);
    }

    *(v15 + 16) = v5;
    v52 = v15 + 16 * v51;
    *(v52 + 32) = v123;
    *(v52 + 40) = v49;
    v53 = *v122;
    if (!*v122)
    {
      goto LABEL_127;
    }

    v124 = v49;
    if (v51)
    {
      while (1)
      {
        v54 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v55 = *(v15 + 32);
          v56 = *(v15 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_49:
          if (v58)
          {
            goto LABEL_106;
          }

          v71 = (v15 + 16 * v5);
          v73 = *v71;
          v72 = v71[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_109;
          }

          v77 = (v15 + 32 + 16 * v54);
          v79 = *v77;
          v78 = v77[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_113;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v5 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v81 = (v15 + 16 * v5);
        v83 = *v81;
        v82 = v81[1];
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_63:
        if (v76)
        {
          goto LABEL_108;
        }

        v84 = v15 + 16 * v54;
        v86 = *(v84 + 32);
        v85 = *(v84 + 40);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_111;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_70:
        v92 = v54 - 1;
        if (v54 - 1 >= v5)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v93 = *(v15 + 32 + 16 * v92);
        v94 = *(v15 + 32 + 16 * v54 + 8);
        sub_1D8E4F848((*a3 + 24 * v93), (*a3 + 24 * *(v15 + 32 + 16 * v54)), *a3 + 24 * v94, v53);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D8F5DE20(v15);
        }

        if (v92 >= *(v15 + 16))
        {
          goto LABEL_103;
        }

        v95 = v15 + 16 * v92;
        *(v95 + 32) = v93;
        *(v95 + 40) = v94;
        v138 = v15;
        sub_1D8F5DD94(v54);
        v15 = v138;
        v5 = *(v138 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = v15 + 32 + 16 * v5;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_104;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_105;
      }

      v66 = (v15 + 16 * v5);
      v68 = *v66;
      v67 = v66[1];
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_107;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_110;
      }

      if (v70 >= v62)
      {
        v88 = (v15 + 32 + 16 * v54);
        v90 = *v88;
        v89 = v88[1];
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v57 < v91)
        {
          v54 = v5 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v13 = a3[1];
    v14 = v124;
    if (v124 >= v13)
    {
      goto LABEL_90;
    }
  }

  v120 = v15;
  v121 = v6;
  v128 = *a3;
  v96 = (v128 + 24 * v27);
  v97 = (v14 - v27);
  v124 = v48;
LABEL_81:
  v127 = v27;
  v98 = v128 + 24 * v27;
  v99 = *(v98 + 8);
  v100 = *(v98 + 16);
  v125 = v97;
  v126 = v96;
  while (1)
  {
    v137 = v99;
    v134 = v97;
    v101 = *(v96 - 1);
    v136 = *(v96 - 2);
    v102 = *(*v100 + 136);
    swift_beginAccess();
    v103 = *v130;
    v104 = v131;
    v105 = v133;
    (*v130)(v131, v100 + v102, v133);
    v106 = *(*v101 + 136);
    swift_beginAccess();
    v107 = v132;
    (v103)(v132, v101 + v106, v105);

    LODWORD(v135) = sub_1D9176DAC();
    v5 = v129;
    v108 = *v129;
    (*v129)(v107, v105);
    v108(v104, v105);

    if ((v135 & 1) == 0)
    {
LABEL_80:
      v27 = v127 + 1;
      v96 = v126 + 24;
      v97 = v125 - 1;
      v49 = v124;
      if (v127 + 1 != v124)
      {
        goto LABEL_81;
      }

      v6 = v121;
      a3 = v119;
      v15 = v120;
      if (v124 < v123)
      {
        goto LABEL_117;
      }

      goto LABEL_30;
    }

    v109 = v134;
    if (!v128)
    {
      break;
    }

    v110 = *v96;
    v99 = *(v96 + 1);
    v100 = *(v96 + 2);
    *v96 = *(v96 - 24);
    *(v96 + 2) = *(v96 - 1);
    *(v96 - 2) = v99;
    *(v96 - 1) = v100;
    *(v96 - 3) = v110;
    v96 -= 24;
    v111 = __CFADD__(v109, 1);
    v97 = v109 + 1;
    if (v111)
    {
      goto LABEL_80;
    }
  }

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
}

uint64_t sub_1D8E4F2D0(void **a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1D9176E3C();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v46 - v11;
  v12 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 4;
  v14 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 4;
  if (v13 >= v14 >> 4)
  {
    v57 = a1;
    if (a4 != a2 || &a2[2 * v15] <= a4)
    {
      memmove(a4, a2, 16 * v15);
    }

    v60 = &a4[2 * v15];
    if (a3 - a2 >= 16 && a2 > v57)
    {
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v58 = a4;
LABEL_26:
      v47 = a2 - 2;
      v30 = (a3 - 2);
      v31 = v60;
      v50 = a2;
      do
      {
        v59 = v30;
        v32 = *(v31 - 2);
        v33 = *(v31 - 1);
        v31 -= 2;
        v51 = v32;
        v34 = *(a2 - 1);
        v52 = *(a2 - 2);
        v53 = (v30 + 16);
        v35 = *(*v33 + 136);
        swift_beginAccess();
        v36 = *v49;
        v37 = v54;
        v38 = v56;
        (*v49)(v54, v33 + v35, v56);
        v39 = *(*v34 + 136);
        swift_beginAccess();
        v40 = v55;
        v36(v55, v34 + v39, v38);
        v51 = v51;

        v52 = v52;

        LOBYTE(v39) = sub_1D9176DAC();
        v41 = *v48;
        (*v48)(v40, v38);
        v41(v37, v38);

        if (v39)
        {
          v43 = v57;
          a4 = v58;
          a3 = v59;
          v44 = v47;
          if (v53 != v50)
          {
            *v59 = *v47;
          }

          if (v60 <= a4 || (a2 = v44, v44 <= v43))
          {
            a2 = v44;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        a4 = v58;
        v42 = v59;
        if (v53 != v60)
        {
          *v59 = *v31;
        }

        v30 = v42 - 16;
        v60 = v31;
        a2 = v50;
      }

      while (v31 > a4);
      v60 = v31;
    }
  }

  else
  {
    if (a4 != a1 || &a1[2 * v13] <= a4)
    {
      memmove(a4, a1, 16 * v13);
    }

    v60 = &a4[2 * v13];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v59 = a3;
      while (1)
      {
        v57 = a1;
        v58 = a4;
        v16 = a2[1];
        v17 = *a4;
        v18 = a4[1];
        v52 = *a2;
        v53 = v17;
        v19 = *(*v16 + 136);
        swift_beginAccess();
        v20 = *v51;
        v21 = v54;
        v22 = v56;
        (*v51)(v54, &v16[v19], v56);
        v23 = *(*v18 + 136);
        swift_beginAccess();
        v24 = v55;
        v20(v55, &v18[v23], v22);
        v52 = v52;

        v53 = v53;

        v25 = a2;
        v26 = sub_1D9176DAC();
        v27 = *v50;
        (*v50)(v24, v22);
        v27(v21, v22);

        if ((v26 & 1) == 0)
        {
          break;
        }

        v28 = v25;
        a2 = v25 + 2;
        v29 = v57;
        a4 = v58;
        if (v57 != v25)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 = v29 + 2;
        if (a4 >= v60 || a2 >= v59)
        {
          goto LABEL_19;
        }
      }

      v29 = v57;
      v28 = v58;
      a4 = v58 + 2;
      a2 = v25;
      if (v57 == v58)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v29 = *v28;
      goto LABEL_17;
    }

LABEL_19:
    a2 = a1;
  }

LABEL_37:
  if (a2 != a4 || a2 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(a2, a4, 16 * ((v60 - a4) / 16));
  }

  return 1;
}

uint64_t sub_1D8E4F848(char *a1, char *a2, unint64_t a3, char *a4)
{
  v58 = sub_1D9176E3C();
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v11;
  v12 = (a2 - a1) / 24;
  v63 = a3;
  v13 = a3 - a2;
  v14 = v13 / 24;
  if (v12 >= v13 / 24)
  {
    v59 = a1;
    if (a4 != a2 || &a2[24 * v14] <= a4)
    {
      memmove(a4, a2, 24 * v14);
    }

    v15 = &a4[24 * v14];
    if (v13 >= 24 && a2 > v59)
    {
      v51 = (v8 + 8);
      v52 = (v8 + 16);
      v31 = v63;
      v61 = a4;
      v32 = v57;
LABEL_23:
      v62 = a2;
      v33 = v31 - 24;
      do
      {
        v63 = v33;
        v34 = *(v15 - 1);
        v60 = *(v15 - 2);
        v35 = *(v62 - 1);
        v54 = *(v62 - 2);
        v55 = v33 + 24;
        v36 = *(*v34 + 136);
        swift_beginAccess();
        v37 = *v52;
        v38 = v56;
        v39 = v58;
        (*v52)(v56, v34 + v36, v58);
        v40 = *(*v35 + 136);
        swift_beginAccess();
        (v37)(v32, v35 + v40, v39);

        LODWORD(v53) = sub_1D9176DAC();
        v41 = *v51;
        (*v51)(v32, v39);
        v41(v38, v39);

        if (v53)
        {
          v45 = v62 - 24;
          v46 = v59;
          v31 = v63;
          if (v55 != v62)
          {
            v47 = *v45;
            *(v63 + 16) = *(v62 - 1);
            *v31 = v47;
          }

          a4 = v61;
          if (v15 <= v61 || (a2 = v45, v45 <= v46))
          {
            a2 = v45;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v42 = v15 - 24;
        v43 = v63;
        if (v55 != v15)
        {
          v44 = *v42;
          *(v63 + 16) = *(v15 - 1);
          *v43 = v44;
        }

        v33 = v43 - 24;
        v15 -= 24;
        a4 = v61;
      }

      while (v42 > v61);
      v15 = v42;
      a2 = v62;
    }
  }

  else
  {
    if (a4 != a1 || &a1[24 * v12] <= a4)
    {
      memmove(a4, a1, 24 * v12);
    }

    v15 = &a4[24 * v12];
    if (a2 - a1 >= 24 && a2 < v63)
    {
      v52 = (v8 + 8);
      v53 = (v8 + 16);
      v54 = v15;
      v16 = v57;
      do
      {
        v61 = a4;
        v62 = a2;
        v17 = *(a2 + 1);
        v18 = *(a2 + 2);
        v55 = v17;
        v19 = *(a4 + 1);
        v20 = *(a4 + 2);
        v59 = a1;
        v60 = v19;
        v21 = *(*v18 + 136);
        swift_beginAccess();
        v22 = *v53;
        v23 = v56;
        v24 = v58;
        (*v53)(v56, v18 + v21, v58);
        v25 = *(*v20 + 136);
        swift_beginAccess();
        v22(v16, v20 + v25, v24);

        LOBYTE(v17) = sub_1D9176DAC();
        v26 = *v52;
        (*v52)(v16, v24);
        v26(v23, v24);

        if (v17)
        {
          a4 = v61;
          v27 = v62;
          v28 = v62;
          a2 = v62 + 24;
        }

        else
        {
          v27 = v61;
          a2 = v62;
          v28 = v61;
          a4 = v61 + 24;
        }

        v29 = v59;
        if (v59 != v27)
        {
          v30 = *v28;
          *(v59 + 2) = *(v28 + 2);
          *v29 = v30;
        }

        a1 = v29 + 24;
        v15 = v54;
      }

      while (a4 < v54 && a2 < v63);
    }

    a2 = a1;
  }

LABEL_34:
  v48 = (v15 - a4) / 24;
  if (a2 != a4 || a2 >= &a4[24 * v48])
  {
    memmove(a2, a4, 24 * v48);
  }

  return 1;
}

uint64_t sub_1D8E4FDEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A40, &qword_1D918B1D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  type metadata accessor for ArtworkContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A48, &unk_1D918B1D8);
  sub_1D8CF48EC(&qword_1ECAB4A50, &qword_1ECAB4A48, &unk_1D918B1D8, &protocol conformance descriptor for NeverSessionSource<A>.NeverFetchError);
  v6[1] = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917799C();
  sub_1D8CF48EC(&qword_1ECAB4A58, &qword_1ECAB4A40, &qword_1D918B1D0, MEMORY[0x1E695BFF8]);
  v4 = sub_1D9177B1C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D8E4FFB0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C0, &qword_1D918B140);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1D8EE6F40(a1, *a2, &v9 - v5);
  sub_1D8CF48EC(&qword_1ECAB27E8, &qword_1ECAB49C0, &qword_1D918B140, &protocol conformance descriptor for EmitLifecycle<A>);
  v7 = sub_1D9177B1C();
  sub_1D8D08A50(v6, &qword_1ECAB49C0, &qword_1D918B140);
  return v7;
}

void sub_1D8E500A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  sub_1D8E4BA00(v7, a3, a4);
  v6 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v6 + 10);
  sub_1D8E51328(&v6[4]);
  os_unfair_lock_unlock(v6 + 10);
}

void sub_1D8E50134(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1D8E4C058(*a2, a3, a4);
  v5 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v5 + 10);
  sub_1D8E51418(&v5[4]);
  os_unfair_lock_unlock(v5 + 10);
}

void sub_1D8E501AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = *(a3 + 32);
  sub_1D8E4C6EC(a2, v7, a4);
  v6 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v6 + 10);
  sub_1D8E504E0(&v6[4]);
  os_unfair_lock_unlock(v6 + 10);
}

void sub_1D8E50248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = *(a3 + 32);
  sub_1D8E4CD58(a2, v7, a4);
  v6 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v6 + 10);
  sub_1D8E50E6C(&v6[4]);
  os_unfair_lock_unlock(v6 + 10);
}

void sub_1D8E502E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v5 = sub_1D8E4D3C4();
  v6 = a3(v5);

  if (v6)
  {
    v7 = *(v6 + *(*v6 + 128));

    v8 = *(a1 + 8);
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (v9)
    {
      *(a1 + 8) = v10;
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1D8E50398()
{
  result = qword_1ECAB2008;
  if (!qword_1ECAB2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2008);
  }

  return result;
}

unint64_t sub_1D8E503F0()
{
  result = qword_1ECAB4978;
  if (!qword_1ECAB4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4978);
  }

  return result;
}

uint64_t sub_1D8E50498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8E50564(void *a1, unint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= v2;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {

    v6 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v6;
    return v3 >= v2;
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v9 = *a2;
    v10 = sub_1D8F06218(*(v5 + 16), 0);
    v24 = sub_1D8F0CAD4();

    sub_1D8D1B144(v26);
    if (v24 != v7)
    {
      goto LABEL_25;
    }

    v3 = v9;
    v2 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v26 = v10;
  v10 = 0;
  sub_1D8E4D830(&v26, sub_1D8F5DE5C, &qword_1ECAB4760, &unk_1D918B130);
  v25 = v26;
  v23 = v26[2];
  if (!v23)
  {
LABEL_20:

    return v3 >= v2;
  }

  v11 = 0;
  v12 = v26 + 6;
  while (v11 < *(v25 + 16))
  {
    v13 = a2[1];
    if (__CFADD__(v13, v2))
    {
      goto LABEL_23;
    }

    if (v3 >= (v2 + v13))
    {
      goto LABEL_20;
    }

    v10 = v2;
    v14 = v3;
    v16 = *(v12 - 2);
    v15 = *(v12 - 1);
    v17 = *v12;

    sub_1D8D33C70(v16, v15);
    if (v18)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = a2[2];
      v26 = v20;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F826FC();
        v20 = v26;
      }

      sub_1D8DA2AF4();

      a2[2] = v20;
    }

    else
    {
    }

    v21 = *(v17 + 72);

    if (v13 < v21)
    {
      goto LABEL_24;
    }

    ++v11;
    a2[1] = v13 - v21;
    v12 += 3;
    v3 = v14;
    v2 = v10;
    if (v23 == v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E507E0(void *a1, unint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= v2;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {

    v6 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v6;
    return v3 >= v2;
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v9 = *a2;
    v10 = sub_1D8F0622C(*(v5 + 16), 0);
    v24 = sub_1D8F0CAD4();

    sub_1D8D1B144(v26);
    if (v24 != v7)
    {
      goto LABEL_25;
    }

    v3 = v9;
    v2 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v26 = v10;
  v10 = 0;
  sub_1D8E4D830(&v26, sub_1D8F5DE70, &qword_1ECAB4750, &qword_1D918B120);
  v25 = v26;
  v23 = v26[2];
  if (!v23)
  {
LABEL_20:

    return v3 >= v2;
  }

  v11 = 0;
  v12 = v26 + 6;
  while (v11 < *(v25 + 16))
  {
    v13 = a2[1];
    if (__CFADD__(v13, v2))
    {
      goto LABEL_23;
    }

    if (v3 >= (v2 + v13))
    {
      goto LABEL_20;
    }

    v10 = v2;
    v14 = v3;
    v16 = *(v12 - 2);
    v15 = *(v12 - 1);
    v17 = *v12;

    sub_1D8D33C70(v16, v15);
    if (v18)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = a2[2];
      v26 = v20;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F82710();
        v20 = v26;
      }

      sub_1D8DA2AF4();

      a2[2] = v20;
    }

    else
    {
    }

    v21 = *(v17 + 24);

    if (v13 < v21)
    {
      goto LABEL_24;
    }

    ++v11;
    a2[1] = v13 - v21;
    v12 += 3;
    v3 = v14;
    v2 = v10;
    if (v23 == v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E50A5C(char *a1, char **a2)
{
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= a1;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {

    v6 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v6;
    return v3 >= a1;
  }

  v7 = *(v5 + 2);
  if (v7)
  {
    v8 = *a2;
    v9 = sub_1D8F06240(*(v5 + 2), 0);
    v22 = sub_1D8F0CAD4();

    sub_1D8D1B144(v24);
    if (v22 != v7)
    {
      goto LABEL_25;
    }

    v3 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v24 = v9;
  v9 = 0;
  sub_1D8E4D830(&v24, sub_1D8F5DE84, &qword_1ECAB4730, &qword_1D918A140);
  v23 = v24;
  v21 = *(v24 + 2);
  if (!v21)
  {
LABEL_20:

    return v3 >= a1;
  }

  v10 = 0;
  v11 = (v24 + 48);
  while (v10 < *(v23 + 16))
  {
    v12 = a2[1];
    if (__CFADD__(v12, a1))
    {
      goto LABEL_23;
    }

    if (v3 >= &a1[v12])
    {
      goto LABEL_20;
    }

    v9 = v3;
    v14 = *(v11 - 2);
    v13 = *(v11 - 1);
    v15 = *v11;

    sub_1D8D33C70(v14, v13);
    if (v16)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = a2[2];
      v24 = v18;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F832F0();
        v18 = v24;
      }

      sub_1D8DA2AF4();

      a2[2] = v18;
    }

    else
    {
    }

    v19 = *(v15 + *(*v15 + 128));

    if (v12 < v19)
    {
      goto LABEL_24;
    }

    ++v10;
    a2[1] = (v12 - v19);
    v11 += 3;
    v3 = v9;
    if (v21 == v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E50CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8E50D70(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1D9176C2C() - 8);
  v7 = *(v2 + 16);
  v8 = v2 + ((v5 + *(v6 + 80) + 40) & ~*(v6 + 80));

  return a2(v7, v2 + v4, v2 + v5, v8);
}

void sub_1D8E50EF0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void, uint64_t, __n128), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v10 = *(v8 + 16);
  v11[0] = *v8;
  v11[1] = v10;
  v12 = *(v8 + 32);
  sub_1D8E4B240(a1, *v11, v11, v7, v9, a2, a3, a4);
}

uint64_t sub_1D8E50F38(char *a1, char **a2)
{
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= a1;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {

    v6 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v6;
    return v3 >= a1;
  }

  v7 = *(v5 + 2);
  if (v7)
  {
    v8 = *a2;
    v9 = sub_1D8F06254(*(v5 + 2), 0);
    v22 = sub_1D8F0CAD4();

    sub_1D8D1B144(v24);
    if (v22 != v7)
    {
      goto LABEL_25;
    }

    v3 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v24 = v9;
  v9 = 0;
  sub_1D8E4D830(&v24, sub_1D8F5DE98, &qword_1ECAB4740, &qword_1D918B110);
  v23 = v24;
  v21 = *(v24 + 2);
  if (!v21)
  {
LABEL_20:

    return v3 >= a1;
  }

  v10 = 0;
  v11 = (v24 + 48);
  while (v10 < *(v23 + 16))
  {
    v12 = a2[1];
    if (__CFADD__(v12, a1))
    {
      goto LABEL_23;
    }

    if (v3 >= &a1[v12])
    {
      goto LABEL_20;
    }

    v9 = v3;
    v14 = *(v11 - 2);
    v13 = *(v11 - 1);
    v15 = *v11;

    sub_1D8D33C70(v14, v13);
    if (v16)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = a2[2];
      v24 = v18;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83304();
        v18 = v24;
      }

      sub_1D8DA2AF4();

      a2[2] = v18;
    }

    else
    {
    }

    v19 = *(v15 + *(*v15 + 128));

    if (v12 < v19)
    {
      goto LABEL_24;
    }

    ++v10;
    a2[1] = (v12 - v19);
    v11 += 3;
    v3 = v9;
    if (v21 == v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1D8E51254()
{
  v1 = *(type metadata accessor for TTMLRequest(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D9176C2C() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1D8E500A4(v5, v0 + 24, v0 + v2, v6);
}

void sub_1D8E51344()
{
  v1 = *(type metadata accessor for ShazamSignatureRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D9176C2C() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1D8E50134(v5, (v0 + 24), v0 + v2, v6);
}

uint64_t sub_1D8E51434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8E514C4()
{
  v1 = *(type metadata accessor for ArtworkContent(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D9176C2C() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80) + 264) & ~*(v4 + 80));

  sub_1D8E4B38C(v5, v0 + v2, v0 + v3, v6);
}

uint64_t sub_1D8E515E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8ED317C(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v2);
  }

  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v3);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v4);
  }

  v5 = *(v0 + 128);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v5);
  }

  v6 = *(v0 + 144);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v6);
  }

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  return swift_deallocObject();
}

uint64_t CGImageResizer.resizedImage(at:to:displayScale:subsampleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v6 = a2;
  v84 = a3;
  v86 = sub_1D9176C2C();
  v11 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v79 - v21;
  v22 = sub_1D8E52594(v6);
  v85 = sub_1D8E526C0(a4, a5, a6);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  v23 = byte_1EDCD7898;
  sub_1D8E520E8(byte_1EDCD7898, v87);
  v24 = sub_1D9176B1C();
  v83 = v22;
  v25 = CGImageSourceCreateWithURL(v24, v22);

  if (!v25)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    __swift_project_value_buffer(v32, qword_1EDCD5E28);
    (v11[2].isa)(v13, a1, v86);
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();
    if (!os_log_type_enabled(v33, v34))
    {

      isa = v11[1].isa;
      v58 = v13;
      goto LABEL_27;
    }

    v35 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v88 = v82;
    *v35 = 136315138;
    sub_1D8E53198(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v36 = v86;
    v37 = sub_1D9179A4C();
    v38 = v11;
    v40 = v39;
    v41 = v38[1].isa;
    v41(v13, v36);
    v42 = sub_1D8CFA924(v37, v40, &v88);
    v11 = v38;

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1D8CEC000, v33, v34, "Unable to create CGSource from URL: %s", v35, 0xCu);
    v43 = v82;
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x1DA72CB90](v43, -1, -1);
    MEMORY[0x1DA72CB90](v35, -1, -1);

    v41(v87, v36);
LABEL_30:
    v31 = 1;
    return (v11[7].isa)(v84, v31, 1, v86);
  }

  v26 = sub_1D9176B1C();
  v27 = ArtworkFormat.cgIdentifier.getter(v23);
  v28 = CGImageDestinationCreateWithURL(v26, v27, 1uLL, 0);

  if (!v28)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v44 = sub_1D917744C();
    __swift_project_value_buffer(v44, qword_1EDCD5E28);
    (v11[2].isa)(v16, v87, v86);
    v45 = sub_1D917741C();
    v46 = sub_1D9178CFC();
    if (!os_log_type_enabled(v45, v46))
    {

      isa = v11[1].isa;
      v58 = v16;
      goto LABEL_27;
    }

    v47 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v88 = v82;
    *v47 = 136315138;
    sub_1D8E53198(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v48 = v86;
    v49 = sub_1D9179A4C();
    v50 = v11;
    v52 = v51;
    v81 = v45;
    v53 = v50[1].isa;
    v53(v16, v48);
    v54 = sub_1D8CFA924(v49, v52, &v88);
    v11 = v50;

    *(v47 + 4) = v54;
    v55 = v81;
    _os_log_impl(&dword_1D8CEC000, v81, v46, "Unable to create destination for temporary URL: %s", v47, 0xCu);
    v56 = v82;
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x1DA72CB90](v56, -1, -1);
    MEMORY[0x1DA72CB90](v47, -1, -1);

    v53(v87, v48);
    goto LABEL_30;
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v25, 0, v85);
  if (!ThumbnailAtIndex)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v59 = sub_1D917744C();
    __swift_project_value_buffer(v59, qword_1EDCD5E28);
    (v11[2].isa)(v19, a1, v86);
    v60 = sub_1D917741C();
    v61 = sub_1D9178CFC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v80 = v62;
      v81 = swift_slowAlloc();
      v88 = v81;
      *v62 = 136315138;
      sub_1D8E53198(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v63 = v86;
      v64 = sub_1D9179A4C();
      v66 = v65;
      v82 = v11;
      v67 = v11[1].isa;
      v67(v19, v63);
      v68 = sub_1D8CFA924(v64, v66, &v88);

      v69 = v80;
      *(v80 + 1) = v68;
      _os_log_impl(&dword_1D8CEC000, v60, v61, "Unable to create thumbnail from artwork at URL: %s", v69, 0xCu);
      v70 = v81;
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x1DA72CB90](v70, -1, -1);
      MEMORY[0x1DA72CB90](v69, -1, -1);

      v67(v87, v63);
      v11 = v82;
      goto LABEL_30;
    }

    isa = v11[1].isa;
    v58 = v19;
LABEL_27:
    v77 = v86;
    isa(v58, v86);
    isa(v87, v77);
    goto LABEL_30;
  }

  v30 = ThumbnailAtIndex;
  CGImageDestinationAddImage(v28, ThumbnailAtIndex, 0);
  if (!CGImageDestinationFinalize(v28))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v71 = sub_1D917744C();
    __swift_project_value_buffer(v71, qword_1EDCD5E28);
    v72 = sub_1D917741C();
    v73 = sub_1D9178CFC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1D8CEC000, v72, v73, "Encountered unspecified error finalizing resize destination.", v74, 2u);
      MEMORY[0x1DA72CB90](v74, -1, -1);
      v75 = v83;
      v76 = v85;
    }

    else
    {
      v75 = v72;
      v76 = v25;
      v72 = v28;
      v25 = v30;
      v28 = v85;
      v30 = v83;
    }

    (v11[1].isa)(v87, v86);
    goto LABEL_30;
  }

  (v11[4].isa)(v84, v87, v86);
  v31 = 0;
  return (v11[7].isa)(v84, v31, 1, v86);
}

uint64_t sub_1D8E520E8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v6, v3);
  sub_1D9176B3C();

  v16 = *(v8 + 8);
  v16(v10, v7);
  v17 = 6778480;
  v25[2] = 0x697365722E706D74;
  v25[3] = 0xEB000000002E657ALL;
  v18 = 0xE400000000000000;
  v19 = 1734701162;
  v20 = 0xE400000000000000;
  v21 = 1667851624;
  if (a1 != 3)
  {
    v21 = 6778217;
    v20 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (a1)
  {
    v17 = 6778986;
  }

  if (a1 <= 1u)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (a1 <= 1u)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x1DA7298F0](v22, v23);

  sub_1D9176B4C();

  return (v16)(v13, v7);
}

uint64_t CGImageResizer.ConversionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8E52484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB4A70, &qword_1D918B320);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E696E0A0];
  *(inited + 32) = *MEMORY[0x1E696E0A0];
  *(inited + 16) = xmmword_1D918B210;
  v2 = MEMORY[0x1E69E6370];
  v3 = MEMORY[0x1E696DFE8];
  *(inited + 40) = 1;
  v4 = *v3;
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v5 = MEMORY[0x1E696E000];
  *(inited + 80) = 1;
  v6 = *v5;
  *(inited + 104) = v2;
  *(inited + 112) = v6;
  v7 = MEMORY[0x1E696E138];
  *(inited + 120) = 1;
  v8 = *v7;
  *(inited + 144) = v2;
  *(inited + 152) = v8;
  *(inited + 184) = v2;
  *(inited + 160) = 1;
  v9 = v1;
  v10 = v4;
  v11 = v6;
  v12 = v8;
  v13 = sub_1D8DAE1A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B0, &qword_1D9188F18);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_1D8E52594(char a1)
{
  v2 = a1;
  sub_1D8E52484();
  if (v2 != 3)
  {
    v3 = *MEMORY[0x1E696E0F8];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    type metadata accessor for CFNumber(0);
    v11 = v5;
    *&v10 = v4;
    sub_1D8D65618(&v10, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8DAE5B8(v9, v3, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for CFString(0);
  sub_1D8E53198(&qword_1EDCD5BB0, type metadata accessor for CFString, &unk_1D9188238);
  v7 = sub_1D917802C();

  return v7;
}

uint64_t sub_1D8E526C0(double a1, double a2, double a3)
{
  sub_1D8E52484();
  v6 = *MEMORY[0x1E696E100];
  if (a1 > a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v13 = MEMORY[0x1E69E7DE0];
  v12[0] = v7 * a3;
  sub_1D8D65618(v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8DAE5B8(v11, v6, isUniquelyReferenced_nonNull_native);
  type metadata accessor for CFString(0);
  sub_1D8E53198(&qword_1EDCD5BB0, type metadata accessor for CFString, &unk_1D9188238);
  v9 = sub_1D917802C();

  return v9;
}

CFDictionaryRef sub_1D8E527D4(CGImageSource *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D917804C();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D8E52AF4(CGImageSource *a1, double a2, double a3)
{
  v5 = COERCE_DOUBLE(sub_1D8E527D4(a1));
  if (v7)
  {
    return 3;
  }

  v8 = v5;
  v9 = dbl_1D918B340[byte_1F545D6A0];
  v10 = v5 / v9;
  v11 = v6 / v9;
  if (v10 < a2 || v11 < a3)
  {
    return 3;
  }

  result = byte_1F545D6A0;
  v14 = dbl_1D918B340[byte_1F545D6A1];
  if (v8 / v14 >= a2 && v6 / v14 >= a3)
  {
    v15 = dbl_1D918B340[byte_1F545D6A2];
    v16 = v8 / v15;
    if (v6 / v15 < a3 || v16 < a2)
    {
      return byte_1F545D6A1;
    }

    else
    {
      return byte_1F545D6A2;
    }
  }

  return result;
}

void sub_1D8E52BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8E52484();
  type metadata accessor for CFString(0);
  sub_1D8E53198(&qword_1EDCD5BB0, type metadata accessor for CFString, &unk_1D9188238);
  v4 = sub_1D917802C();

  v5 = sub_1D9176B1C();
  v6 = CGImageSourceCreateWithURL(v5, v4);

  if (!v6)
  {
    sub_1D8E531E0();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    v23 = v4;
LABEL_23:

    return;
  }

  v7 = sub_1D9176B1C();
  v8 = ArtworkFormat.cgIdentifier.getter(*(a3 + 152));
  v9 = CGImageDestinationCreateWithURL(v7, v8, 1uLL, 0);

  if (!v9)
  {
    sub_1D8E531E0();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v23 = v6;
    goto LABEL_23;
  }

  v10 = COERCE_DOUBLE(sub_1D8E527D4(v6));
  if (v12)
  {
    goto LABEL_20;
  }

  v13 = v10;
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  if (v14 == v10 && v15 == v11)
  {
    goto LABEL_20;
  }

  v43 = v11;
  v42 = sub_1D8E52AF4(v6, v14, v15);
  v17 = sub_1D8E52594(v42);
  v18 = sub_1D9176B1C();
  v44 = v17;
  v19 = CGImageSourceCreateWithURL(v18, v17);

  if (!v19)
  {
LABEL_19:

LABEL_20:
    CGImageDestinationAddImageFromSource(v9, v6, 0, 0);
    if (CGImageDestinationFinalize(v9))
    {

      return;
    }

    sub_1D8E531E0();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    v23 = v9;
    goto LABEL_23;
  }

  v20 = sub_1D8E526C0(v14, v15, 1.0);
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v19, 0, v20);
  v22 = v19;
  if (!ThumbnailAtIndex)
  {

    goto LABEL_19;
  }

  v23 = ThumbnailAtIndex;
  v41 = v22;
  CGImageDestinationAddImage(v9, ThumbnailAtIndex, 0);
  if (!CGImageDestinationFinalize(v9))
  {
    sub_1D8E531E0();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

    goto LABEL_23;
  }

  if (qword_1EDCD5E20 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD5E28);
  sub_1D8D41388(a3, v49);
  sub_1D8D41388(a3, v47);
  sub_1D8D41388(a3, v45);
  v25 = sub_1D917741C();
  v26 = sub_1D9178D1C();
  log = v25;
  if (os_log_type_enabled(v25, v26))
  {
    v39 = v26;
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53 = v38;
    *v27 = 136316418;
    if (v52 == 255)
    {
      v29 = 0xE700000000000000;
      v37 = 0x6E776F6E6B6E75;
    }

    else
    {
      v37 = LibraryEntity.description.getter(v50, v51, v52);
      v29 = v28;
    }

    sub_1D8D58578(v49);
    v34 = sub_1D8CFA924(v37, v29, &v53);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v13;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v43;
    *(v27 + 32) = 2048;
    v35 = v48;
    sub_1D8D58578(v47);
    *(v27 + 34) = v35;
    *(v27 + 42) = 2048;
    v36 = v46;
    sub_1D8D58578(v45);
    *(v27 + 44) = v36;
    *(v27 + 52) = 2048;
    *(v27 + 54) = qword_1D918B358[v42];
    _os_log_impl(&dword_1D8CEC000, log, v39, "Resizing original artwork during image conversion for %s - (%f,%f) -> (%f,%f) w/ subsample factor %ld", v27, 0x3Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1DA72CB90](v38, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  else
  {

    sub_1D8D58578(v49);
    sub_1D8D58578(v47);
    sub_1D8D58578(v45);
  }
}

unint64_t sub_1D8E53124()
{
  result = qword_1ECAB4A60;
  if (!qword_1ECAB4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4A60);
  }

  return result;
}

uint64_t sub_1D8E53198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8E531E0()
{
  result = qword_1ECAB4A68;
  if (!qword_1ECAB4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4A68);
  }

  return result;
}

uint64_t AssetProcessingStep<>.resizeOnDisk(to:scale:subsampleFactor:using:)@<X0>(uint64_t a1@<X0>, double a2@<D0>, double a3@<D1>, double a4@<D2>, uint64_t a6@<X2>, uint64_t a7@<X3>, uint64_t x8_0@<X8>)
{
  v11 = a1;
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD9D8(v19, v22);
  (*(v16 + 16))(v18, v8, a6);
  return sub_1D8E5336C(v11, v22, v18, a6, a7, x8_0, a2, a3, a4);
}

uint64_t sub_1D8E5336C@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v18 = type metadata accessor for DiskResizeArtworkProcessingStep(0, a4, a5, a4);
  v19 = *(a4 - 8);
  (*(v19 + 16))(a6 + v18[9], a3, a4);
  (*(a5 + 40))(v22, a4, a5);
  ArtworkRequest.resized(to:displayScale:)(a9, 0, a6, a7, a8);
  (*(v19 + 8))(a3, a4);
  sub_1D8D58578(v22);
  v20 = (a6 + v18[10]);
  *v20 = a7;
  v20[1] = a8;
  *(a6 + v18[11]) = a9;
  *(a6 + v18[12]) = a1;
  return sub_1D8D6BCE0(a2, a6 + v18[13]);
}

uint64_t DiskResizeArtworkProcessingStep.publisher.getter@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v71 = a1;
  v4 = a1 - 2;
  v61 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v57 = v5;
  v6 = &v55 - ((&v5->height + 7) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 3);
  v8 = *(v4 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ArtworkContent(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = v10;
  v69 = AssociatedConformanceWitness;
  v12 = sub_1D917770C();
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v13;
  WitnessTable = swift_getWitnessTable();
  v60 = v12;
  v58 = WitnessTable;
  v16 = type metadata accessor for EmitLifecycle(0, v12, WitnessTable, v15);
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v55 - v17;
  v70 = AssociatedTypeWitness;
  v67 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v72 = &v55 - v20;
  v21 = *(v8 + 40);
  v22 = v8;
  v23 = v8;
  v24 = v7;
  v21(v73, v7, v23, v19);
  v25 = v74;
  v26 = v75;
  sub_1D8D58578(v73);
  v77.width = v25;
  v77.height = v26;
  if (CGSizeEqualToSize(v77, v3[11]) && ((v21)(v73, v7, v22), v27 = v76, sub_1D8D58578(v73), v27 == v3[12].width) && *(&v3->width + v71[12]) == 3)
  {
    v28 = v72;
    (*(v22 + 48))(v7, v22);
    v29 = v70;
    v30 = sub_1D9177B1C();
    v31 = v67;
  }

  else
  {
    v32 = v6;
    v55 = v6;
    v33 = v22;
    (*(v22 + 48))(v7, v22);
    v34 = v71;
    v35 = (v3 + v71[10]);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(&v3->width + v71[11]);
    v39 = v71[13];
    v56 = *(&v3->width + v71[12]);
    v40 = v61;
    (*(v61 + 16))(v32, v3, v71);
    sub_1D8CFD9D8(v3 + v39, v73);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = (&v57->width + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 47) & 0xFFFFFFFFFFFFFFF8;
    v57 = v3;
    v44 = swift_allocObject();
    *(v44 + 16) = v24;
    *(v44 + 24) = v33;
    (*(v40 + 32))(v44 + v41, v55, v34);
    sub_1D8D6BCE0(v73, v44 + v42);
    v45 = (v44 + v43);
    *v45 = v36;
    v45[1] = v37;
    v46 = v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v46 = v38;
    *(v46 + 8) = v56;
    v47 = v63;
    v48 = v70;
    v49 = v72;
    sub_1D9177C6C();

    (*(v67 + 8))(v49, v48);
    v50 = swift_getWitnessTable();
    AssetProcessingStep.metadataTrace.getter(v34, v50, v73);
    v51 = v60;
    v52 = v58;
    v53 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(v60, v58);
    v28 = v62;
    Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v73, "DiskResizeOperation", 19, 2, 0, 0, 0, v53 & 1, v62, v51, v52);
    sub_1D8D08A50(v73, &qword_1ECAB4928, &qword_1D918B380);
    (*(v66 + 8))(v47, v51);
    v29 = v65;
    swift_getWitnessTable();
    v30 = sub_1D9177B1C();
    v31 = v64;
  }

  result = (*(v31 + 8))(v28, v29);
  *v68 = v30;
  return result;
}

uint64_t sub_1D8E53B04@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v100 = a3;
  v103 = a5;
  v104 = a6;
  v93 = a4;
  v98 = a1;
  v90 = a7;
  v14 = sub_1D91773AC();
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  v21 = sub_1D9176C2C();
  v96 = *(v21 - 8);
  v97 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v86 - v24;
  v102 = sub_1D917734C();
  v106 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v91 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  v32 = sub_1D9176EAC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a2;
  sub_1D8D088B4(a2 + 224, v107, &qword_1ECAB4928, &qword_1D918B380);
  v36 = v108;
  if (v108)
  {
    v37 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v38 = (*(v37 + 8))(v36, v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
  }

  else
  {
    sub_1D8D08A50(v107, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D9176E9C();
    v38 = sub_1D9176E5C();
    v40 = v41;
    (*(v33 + 8))(v35, v32);
  }

  v95 = v20;
  if (qword_1EDCD1168 != -1)
  {
    swift_once();
  }

  v42 = sub_1D917739C();
  v43 = __swift_project_value_buffer(v42, qword_1EDCD1170);
  sub_1D917737C();
  sub_1D917731C();

  v89 = v43;
  v44 = sub_1D917737C();
  v45 = sub_1D9178F5C();

  if (sub_1D917918C())
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v38;
    v49 = v47;
    v107[0] = v47;
    *v46 = 136315138;
    v50 = sub_1D8CFA924(v48, v40, v107);

    *(v46 + 4) = v50;
    v51 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v44, v45, v51, "ResizeImage", "[identifier=%{name=identifier}s] Resize", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1DA72CB90](v49, -1, -1);
    MEMORY[0x1DA72CB90](v46, -1, -1);
  }

  else
  {
  }

  v53 = v103;
  v52 = v104;
  v54 = v106;
  v55 = v102;
  (*(v106 + 16))(v28, v31, v102);
  sub_1D91773FC();
  swift_allocObject();
  sub_1D91773EC();
  v56 = *(v54 + 8);
  v106 = v54 + 8;
  v56(v31, v55);
  v58 = type metadata accessor for DiskResizeArtworkProcessingStep(0, v53, v52, v57);
  WitnessTable = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v58, WitnessTable, v107);
  v60 = v108;
  if (v108)
  {
    v61 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    __swift_project_boxed_opaque_existential_1(v100, v100[3]);
    swift_getDynamicType();
    v62 = sub_1D9179FEC();
    (*(v61 + 24))(v110, "ResizeImage", 11, 2, v62, v63, v60, v61);
    v53 = v103;
    v52 = v104;

    __swift_destroy_boxed_opaque_existential_1Tm(v107);
  }

  else
  {
    sub_1D8D08A50(v107, &qword_1ECAB4928, &qword_1D918B380);
    memset(v110, 0, 40);
  }

  v64 = v101;
  (*(v52 + 40))(v107, v53, v52);
  v65 = v99;
  sub_1D8E546BC(v98, v64);
  if (v65)
  {

    sub_1D8D58578(v107);
    return sub_1D8D08A50(v110, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  sub_1D8D58578(v107);
  v66 = v100[3];
  v67 = v100[4];
  __swift_project_boxed_opaque_existential_1(v100, v66);
  v68 = v95;
  (*(v67 + 8))(v64, v93, v66, v67, a8, a9, a10);
  v69 = v92;
  sub_1D8D088B4(v68, v92, &unk_1ECAB5910, &qword_1D9188C90);
  v71 = v96;
  v70 = v97;
  if ((*(v96 + 48))(v69, 1, v97) == 1)
  {
    sub_1D8D08A50(v69, &unk_1ECAB5910, &qword_1D9188C90);
    type metadata accessor for DiskResizeArtworkProcessingStep.ResizeError(0, v103, v104, v72);
    swift_getWitnessTable();
    swift_allocError();
    *v73 = 0;
    swift_willThrow();

    sub_1D8D08A50(v68, &unk_1ECAB5910, &qword_1D9188C90);
    (*(v71 + 8))(v64, v70);
    return sub_1D8D08A50(v110, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  v105 = *(v71 + 32);
  v105(v94, v69, v70);
  sub_1D8D088B4(v110, v107, &unk_1ECAB6E00, &qword_1D91952E0);
  if (v108)
  {
    __swift_project_boxed_opaque_existential_1(v107, v108);
    TraceInterval.end()();
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
  }

  else
  {
    sub_1D8D08A50(v107, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  v75 = v91;
  v76 = sub_1D917737C();
  sub_1D91773DC();
  LODWORD(v104) = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    v77 = v86;
    sub_1D917740C();

    v79 = v87;
    v78 = v88;
    if ((*(v87 + 88))(v77, v88) == *MEMORY[0x1E69E93E8])
    {
      v80 = "[Error] Interval already ended";
    }

    else
    {
      (*(v79 + 8))(v77, v78);
      v80 = "";
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = v91;
    v83 = sub_1D917732C();
    v84 = v80;
    v75 = v82;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v76, v104, v83, "ResizeImage", v84, v81, 2u);
    MEMORY[0x1DA72CB90](v81, -1, -1);
    v64 = v101;
  }

  v56(v75, v102);
  sub_1D8D08A50(v95, &unk_1ECAB5910, &qword_1D9188C90);
  v85 = v97;
  (*(v96 + 8))(v64, v97);
  sub_1D8D08A50(v110, &unk_1ECAB6E00, &qword_1D91952E0);
  v105(v90, v94, v85);
  type metadata accessor for ArtworkContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8E545D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DiskResizeArtworkProcessingStep(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8E53B04(a1, (v3 + v9), (v3 + v10), *(v3 + ((((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v6, v7, a3, *(v3 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D8E546BC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16 = a3;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v11;
  }

  else
  {
    v12 = *v11;
    v13 = v11[1];
    sub_1D8E5487C(4u, v8);
    sub_1D9176CAC();
    if (v3)
    {
      (*(v6 + 8))(v8, v5);
      return sub_1D8D7567C(v12, v13);
    }

    sub_1D8D7567C(v12, v13);
  }

  return (*(v6 + 32))(v16, v8, v5);
}

uint64_t sub_1D8E5487C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v6, v3);
  sub_1D9176B3C();

  v16 = *(v8 + 8);
  v16(v10, v7);
  v17 = 6778480;
  v25[2] = 0x697365722E706D74;
  v25[3] = 0xEB000000002E657ALL;
  v18 = 0xE400000000000000;
  v19 = 1734701162;
  v20 = 0xE400000000000000;
  v21 = 1667851624;
  if (a1 != 3)
  {
    v21 = 6778217;
    v20 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (a1)
  {
    v17 = 6778986;
  }

  if (a1 <= 1u)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (a1 <= 1u)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x1DA7298F0](v22, v23);

  sub_1D9176B4C();

  return (v16)(v13, v7);
}

uint64_t DiskResizeArtworkProcessingStep.ResizeError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E54BF4(uint64_t a1)
{
  sub_1D9179DBC();
  DiskResizeArtworkProcessingStep.ResizeError.hash(into:)();
  return sub_1D9179E1C();
}

void sub_1D8E54CA4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1D8E550E0();
      if (v3 <= 0x3F)
      {
        sub_1D8CF33CC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D8E54D74(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 264) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 264) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1D8E54EC4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = &a1[v8 + 264] & ~v8;

        v19(v20);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 232) = 0u;
        *(a1 + 216) = 0u;
        *(a1 + 200) = 0u;
        *(a1 + 184) = 0u;
        *(a1 + 168) = 0u;
        *(a1 + 152) = 0u;
        *(a1 + 136) = 0u;
        *(a1 + 120) = 0u;
        *(a1 + 104) = 0u;
        *(a1 + 88) = 0u;
        *(a1 + 72) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 40) = 0u;
        *(a1 + 24) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 248) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

void sub_1D8E550E0()
{
  if (!qword_1ECAB2668)
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB2668);
    }
  }
}

uint64_t sub_1D8E55148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssetProcessingStep<>.normalized()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10, a1, v6);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  return ImageNormalizationProcessingStep.init(upstream:format:)(v8, byte_1EDCD7898, a1, a2, a3);
}

uint64_t ImageNormalizationProcessingStep.init(upstream:format:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  (*(a4 + 40))(v13, a3, a4);
  ArtworkRequest.with(format:)(a2, a5);
  sub_1D8D58578(v13);
  v11 = type metadata accessor for ImageNormalizationProcessingStep(0, a3, a4, v10);
  result = (*(*(a3 - 8) + 32))(&a5[*(v11 + 36)], a1, a3);
  a5[*(v11 + 40)] = a2;
  return result;
}

uint64_t ImageNormalizationProcessingStep.publisher.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v26 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v20 - v9;
  v23 = type metadata accessor for ArtworkContent(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1D917770C();
  v25 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v6 + 48))(v7, v6, v11);
  v14 = v24;
  (*(v3 + 16))(v24, v1, a1);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v6;
  (*(v3 + 32))(v16 + v15, v14, a1);
  v17 = v21;
  sub_1D9177C6C();

  (*(v27 + 8))(v17, AssociatedTypeWitness);
  swift_getWitnessTable();
  v18 = sub_1D9177B1C();
  (*(v25 + 8))(v13, v10);
  return v18;
}

uint64_t sub_1D8E55738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v24 = a5;
  v32 = sub_1D9176C2C();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v14 = *(a2 + *(type metadata accessor for ImageNormalizationProcessingStep(0, a3, a4, v13) + 40));
  v30 = v12;
  sub_1D8E559C8(v14, v12);
  v15 = *(a4 + 40);
  v25 = a2;
  v16 = v15;
  v15(v31, a3, a4);
  v26 = v9;
  v17 = v28;
  sub_1D8E55C8C(v27, v14, a4, v9);
  sub_1D8D58578(v31);
  if (v17)
  {
    return (*(v29 + 8))(v30, v32);
  }

  v16(v31, a3, a4);
  v19 = v26;
  v20 = v30;
  sub_1D8E52BA4(v26, v30, v31);
  sub_1D8D58578(v31);
  v21 = v29;
  v22 = v32;
  (*(v29 + 8))(v19, v32);
  (*(v21 + 32))(v24, v20, v22);
  type metadata accessor for ArtworkContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8E559C8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v6, v3);
  sub_1D9176B3C();

  v16 = *(v8 + 8);
  v16(v10, v7);
  v22[2] = 0x6D726F662E706D74;
  v22[3] = 0xEB000000002E7461;
  v17 = 1734701162;
  if (a1 != 2)
  {
    v17 = 1667851624;
  }

  v18 = 6778986;
  if (!a1)
  {
    v18 = 6778480;
  }

  if (a1 <= 1u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (a1 <= 1u)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x1DA7298F0](v19, v20);

  sub_1D9176B4C();

  return (v16)(v13, v7);
}

uint64_t sub_1D8E55C8C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v17[1] = a3;
  v18 = a4;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v13;
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    sub_1D8E559C8(a2, v10);
    sub_1D9176CAC();
    if (v4)
    {
      (*(v8 + 8))(v10, v7);
      return sub_1D8D7567C(v14, v15);
    }

    sub_1D8D7567C(v14, v15);
  }

  return (*(v8 + 32))(v18, v10, v7);
}

uint64_t sub_1D8E55E64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ImageNormalizationProcessingStep.publisher.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8E55EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ImageNormalizationProcessingStep(0, v6, v7, a2) - 8);
  return sub_1D8E55738(a1, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a3);
}

uint64_t sub_1D8E55F40(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8E55FC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 264) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 264) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1D8E56150(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 264) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 264) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 264] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 248) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

PodcastsFoundation::ImageCacheDeleteLevels __swiftcall ImageCacheDeleteLevels.init(original:resizes:)(PodcastsFoundation::CacheDeleteUrgency original, PodcastsFoundation::CacheDeleteUrgency resizes)
{
  *v2 = original;
  *(v2 + 1) = resizes;
  result.original = original;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageCacheDeleteLevels(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ImageCacheDeleteLevels(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ImageCacheDeleteStrategy.cacheDeleteLevels(for:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 8 * (*(result + 32) + 1);
  *a2 = 0x301u >> v2;
  a2[1] = 0x3030101u >> v2;
  return result;
}

uint64_t sub_1D8E565A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D8D088B4(a3, v22 - v9, &qword_1ECABB890, &qword_1D918B960);
  v11 = sub_1D917886C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D8D08A50(v10, &qword_1ECABB890, &qword_1D918B960);
  }

  else
  {
    sub_1D917885C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D917874C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D917829C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D8E56860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D8D088B4(a3, v22 - v9, &qword_1ECABB890, &qword_1D918B960);
  v11 = sub_1D917886C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D8D08A50(v10, &qword_1ECABB890, &qword_1D918B960);
  }

  else
  {
    sub_1D917885C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D917874C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1D917829C() + 32;
      type metadata accessor for ArtworkContent(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);
  type metadata accessor for ArtworkContent(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D8E56B18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8E574F8(a1, a2);
}

uint64_t sub_1D8E56BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E56C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8D58924;

  return ImageContentProvider.url(for:)(a1, a2, a3, a4);
}

uint64_t ImageContentProvider.image(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9176C2C();
  v3[2] = v7;
  v3[3] = *(v7 - 8);
  v8 = swift_task_alloc();
  v3[4] = v8;
  v11 = (*(a3 + 24) + **(a3 + 24));
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1D8E56ECC;

  return v11(v8, a1, a2, a3);
}

uint64_t sub_1D8E56ECC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D8E57078;
  }

  else
  {
    v2 = sub_1D8E56FE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8E56FE0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4.value = URL.cgImage()().value;
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4.value);
}

uint64_t sub_1D8E57078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of ImageContentProvider.content(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8D5FF18;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ImageContentProvider.url(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8D58924;

  return v11(a1, a2, a3, a4);
}

unint64_t ImageProviderError.description.getter()
{
  v1 = 0xD00000000000004FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000057;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000009ALL;
  }
}

uint64_t ImageProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8E5743C()
{
  result = qword_1ECAB4AF8;
  if (!qword_1ECAB4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4AF8);
  }

  return result;
}

unint64_t sub_1D8E57490()
{
  v1 = 0xD00000000000004FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000057;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000009ALL;
  }
}

uint64_t sub_1D8E574F8(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v3[38] = type metadata accessor for ArtworkContent(0);
  v3[39] = swift_task_alloc();
  v4 = *(type metadata accessor for CachingImageContentProvider(0) - 8);
  v3[40] = v4;
  v3[41] = *(v4 + 64);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E57628, 0, 0);
}

uint64_t sub_1D8E57628()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[36];
  v5 = v0[37];
  v7 = sub_1D917886C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1D8E57C3C(v5, v1);
  sub_1D8D41388(v6, (v0 + 2));
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1D8E59564(v1, v9 + v8);
  memcpy((v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v0 + 2, 0x108uLL);
  v10 = sub_1D8E56860(0, 0, v2, &unk_1D918B9A8, v9);
  v0[44] = v10;
  v11 = swift_task_alloc();
  v0[45] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  *v11 = v0;
  v11[1] = sub_1D8E577D8;
  v14 = v0[38];
  v13 = v0[39];
  v15 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v13, v10, v14, v12, v15);
}

uint64_t sub_1D8E577D8()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {

    v3 = sub_1D8E579EC;
  }

  else
  {
    sub_1D8E596E4(*(v2 + 312), type metadata accessor for ArtworkContent);

    v3 = sub_1D8E57934;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E57934()
{
  v1 = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  sub_1D8DADA18(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8E579EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E57A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1D8D58924;

  return CachingImageContentProvider.content(for:)(a1, a5);
}

id static ObjCCachingImageContentProviderBridge.extensionBridge()()
{
  v0 = type metadata accessor for CachingImageContentProvider(0);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD60B8 != -1)
  {
    v9 = v1;
    swift_once();
    v1 = v9;
  }

  v4 = __swift_project_value_buffer(v1, qword_1EDCD60C0);
  sub_1D8E57C3C(v4, v3);
  v5 = type metadata accessor for ObjCCachingImageContentProviderBridge(0);
  v6 = objc_allocWithZone(v5);
  sub_1D8E57C3C(v3, v6 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  sub_1D8E596E4(v3, type metadata accessor for CachingImageContentProvider);
  return v7;
}

uint64_t sub_1D8E57C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingImageContentProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ObjCCachingImageContentProviderBridge.__allocating_init(wrapping:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1D8E57C3C(a1, v3 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1D8E596E4(a1, type metadata accessor for CachingImageContentProvider);
  return v4;
}

uint64_t type metadata accessor for ObjCCachingImageContentProviderBridge(uint64_t a1)
{
  result = qword_1ECAB1278;
  if (!qword_1ECAB1278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ObjCCachingImageContentProviderBridge.init(wrapping:)(uint64_t a1)
{
  sub_1D8E57C3C(a1, v1 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ObjCCachingImageContentProviderBridge(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1D8E596E4(a1, type metadata accessor for CachingImageContentProvider);
  return v3;
}

uint64_t sub_1D8E57F20(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 1104) = v4;
  *(v5 + 1096) = a4;
  *(v5 + 1088) = a3;
  *(v5 + 1080) = a2;
  *(v5 + 1072) = a1;
  v6 = sub_1D917906C();
  *(v5 + 1112) = v6;
  *(v5 + 1120) = *(v6 - 8);
  *(v5 + 1128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E57FF0, 0, 0);
}

uint64_t sub_1D8E57FF0()
{
  v1 = [*(v0 + 1080) managedObjectContext];
  *(v0 + 1136) = v1;
  if (v1)
  {
    v2 = *(v0 + 1128);
    v3 = *(v0 + 1120);
    v4 = *(v0 + 1112);
    v5 = *(v0 + 1080);
    v6 = swift_allocObject();
    *(v0 + 1144) = v6;
    *(v6 + 16) = v5;
    (*(v3 + 104))(v2, *MEMORY[0x1E695D2B8], v4);
    v7 = v5;
    v8 = swift_task_alloc();
    *(v0 + 1152) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B00, &unk_1D9192690);
    *v8 = v0;
    v8[1] = sub_1D8E58314;
    v10 = *(v0 + 1128);

    return MEMORY[0x1EEDB6538](v0 + 16, v10, sub_1D8E58A20, v6, v9);
  }

  else
  {
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D8E58858(v0 + 16, v0 + 544);
    if (*(v0 + 552))
    {
      v11 = *(v0 + 1096);
      v12 = *(v0 + 1088);
      memcpy((v0 + 280), (v0 + 544), 0x108uLL);
      ArtworkRequest.resized(to:displayScale:)(0.0, 1, v0 + 808, v12, v11);
      v13 = swift_task_alloc();
      *(v0 + 1160) = v13;
      *v13 = v0;
      v13[1] = sub_1D8E58630;
      v14 = *(v0 + 1072);

      return sub_1D8E574F8(v14, v0 + 808);
    }

    else
    {
      sub_1D8D08A50(v0 + 544, &qword_1ECAB4B00, &unk_1D9192690);
      sub_1D8E588C8();
      swift_allocError();
      swift_willThrow();
      sub_1D8D08A50(v0 + 16, &qword_1ECAB4B00, &unk_1D9192690);

      v15 = *(v0 + 8);

      return v15();
    }
  }
}

void sub_1D8E58314()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[142];
    (*(v2[140] + 8))(v2[141], v2[139]);

    MEMORY[0x1EEE6DFA0](sub_1D8E58474, 0, 0);
  }
}

uint64_t sub_1D8E58474()
{
  sub_1D8E58858((v0 + 2), (v0 + 68));
  if (*(v0 + 69))
  {
    v1 = v0[137];
    v2 = v0[136];
    memcpy(v0 + 35, v0 + 68, 0x108uLL);
    ArtworkRequest.resized(to:displayScale:)(0.0, 1, (v0 + 101), v2, v1);
    v3 = swift_task_alloc();
    *(v0 + 145) = v3;
    *v3 = v0;
    v3[1] = sub_1D8E58630;
    v4 = *(v0 + 134);

    return sub_1D8E574F8(v4, (v0 + 101));
  }

  else
  {
    sub_1D8D08A50((v0 + 68), &qword_1ECAB4B00, &unk_1D9192690);
    sub_1D8E588C8();
    swift_allocError();
    swift_willThrow();
    sub_1D8D08A50((v0 + 2), &qword_1ECAB4B00, &unk_1D9192690);

    v6 = *(v0 + 1);

    return v6();
  }
}

uint64_t sub_1D8E58630()
{
  v2 = *v1;
  *(v2 + 1168) = v0;

  sub_1D8D58578(v2 + 808);
  if (v0)
  {
    v3 = sub_1D8E587D4;
  }

  else
  {
    v3 = sub_1D8E5874C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E5874C()
{
  sub_1D8D58578(v0 + 280);
  sub_1D8D08A50(v0 + 16, &qword_1ECAB4B00, &unk_1D9192690);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E587D4()
{
  sub_1D8D58578(v0 + 280);
  sub_1D8D08A50(v0 + 16, &qword_1ECAB4B00, &unk_1D9192690);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E58858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B00, &unk_1D9192690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8E588C8()
{
  result = qword_1ECAB4B08;
  if (!qword_1ECAB4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4B08);
  }

  return result;
}

uint64_t sub_1D8E5891C@<X0>(uint64_t a1@<X8>)
{
  MTPodcast.artworkModel.getter(v3);
  v4[8] = v3[8];
  v4[9] = v3[9];
  v4[10] = v3[10];
  v4[4] = v3[4];
  v4[5] = v3[5];
  v4[6] = v3[6];
  v4[7] = v3[7];
  v4[0] = v3[0];
  v4[1] = v3[1];
  v4[2] = v3[2];
  v4[3] = v3[3];
  result = sub_1D8D2E02C(v4);
  if (result == 1)
  {
    *(a1 + 256) = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    ArtworkModel.baseRequest.getter(a1);
    return sub_1D8D08A50(v3, &qword_1ECAB4B18, &qword_1D918B988);
  }

  return result;
}

uint64_t sub_1D8E58BD8(void *a1, const void *a2, void *a3, double a4, double a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v11 = sub_1D9176C2C();
  v5[4] = v11;
  v5[5] = *(v11 - 8);
  v12 = swift_task_alloc();
  v5[6] = v12;
  v5[7] = _Block_copy(a2);
  v13 = a1;
  a3;
  v14 = swift_task_alloc();
  v5[8] = v14;
  *v14 = v5;
  v14[1] = sub_1D8E58D20;

  return sub_1D8E57F20(v12, v13, a4, a5);
}

uint64_t sub_1D8E58D20()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    v6 = sub_1D9176A5C();

    v7 = v6;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v11 = v2[5];
    v10 = v2[6];
    v12 = v2[4];
    v9 = sub_1D9176B1C();
    (*(v11 + 8))(v10, v12);
    v8 = v9;
    v7 = 0;
  }

  v13 = v2[7];
  (v13)[2](v13, v8, v7);

  _Block_release(v13);

  v14 = *(v5 + 8);

  return v14();
}

uint64_t ObjCCachingImageContentProviderBridge.CachingContentBridgeError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

id ObjCCachingImageContentProviderBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCCachingImageContentProviderBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCCachingImageContentProviderBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E5901C()
{
  result = qword_1ECAB4B10;
  if (!qword_1ECAB4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4B10);
  }

  return result;
}

uint64_t sub_1D8E590B0(uint64_t a1)
{
  result = type metadata accessor for CachingImageContentProvider(319);
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

uint64_t dispatch thunk of ObjCCachingImageContentProviderBridge.artwork(for:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D8D5FF18;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(a1, a2, v12, v13);
}

uint64_t sub_1D8E592D0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D8D58924;

  return sub_1D8E58BD8(v2, v6, v5, v3, v4);
}

uint64_t sub_1D8E59398()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D8D5FF18;

  return sub_1D9012F5C(v2, v3, v4);
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8E59498(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8D5FF18;

  return sub_1D9013044(a1, v4, v5, v6);
}

uint64_t sub_1D8E59564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingImageContentProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E595C8(uint64_t a1)
{
  v4 = *(type metadata accessor for CachingImageContentProvider(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D8E57A64(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1D8E596E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void UniformBucketingStrategy.init(maxDimensionsInPoints:thresholds:)(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = a1;

  sub_1D8D26E64(&v6);

  v5 = v6;
  *a2 = a3;
  *(a2 + 8) = v5;
}

void sub_1D8E59848(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D8F5DE20(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D8E59DA4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_1D8ECC734((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_1D8E59DA4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1D8E59DA4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D8E59FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v27 - v15;
  v32[0] = a2;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  v17 = type metadata accessor for AssetSourceStep(0, v32);
  v18 = *(v17 + 52);
  (*(a5 + 40))(a1, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v20 = AssetProcessingStep.metadataTrace.getter(v17, WitnessTable, v32);
  (*(v11 + 16))(v13, a1 + v18, a3, v20);
  swift_getDynamicType();
  (*(v11 + 8))(v13, a3);
  v30 = sub_1D9179FEC();
  v31 = v21;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v22 = v30;
  v23 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(AssociatedTypeWitness, AssociatedConformanceWitness);
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v32, "FetchFromSource", 15, 2, 0, v22, v23, v25 & 1, v29, AssociatedTypeWitness, AssociatedConformanceWitness);

  sub_1D8D7621C(v32);
  return (*(v28 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_1D8E5A29C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for AssetSourceStep(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1D8E59FD0(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_1D8E5A348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1D8E5A524(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}