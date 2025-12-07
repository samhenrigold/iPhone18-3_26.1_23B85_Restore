uint64_t one-time initialization function for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    result = outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    goto LABEL_12;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v4 = 0x4062C00000000000;
    goto LABEL_13;
  }

  v4 = v5;
LABEL_13:
  static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD = v4;
  return result;
}

uint64_t *MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD.unsafeMutableAddressor()
{
  if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
  {
    swift_once();
  }

  return &static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;
}

double static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD.getter()
{
  if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
  {
    swift_once();
  }

  return *&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;
}

uint64_t key path setter for MOMapLocation.startDate : MOMapLocation(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 200))(v6);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t variable initialization expression of MOMapLocation.startDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t key path setter for MOMapLocation.endDate : MOMapLocation(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 224))(v6);
}

uint64_t MOMapLocation.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

uint64_t MOMapLocation.startDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

double MOMapLocation.latitude.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.latitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double MOMapLocation.longitude.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.longitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.mapItem : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOMapLocation.mapItem : MOMapLocation(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 296);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t MOMapLocation.mapItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for MOMapLocation.clusterCount : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MOMapLocation.clusterCount.getter()
{
  v1 = v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  swift_beginAccess();
  return *v1;
}

uint64_t MOMapLocation.clusterCount.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path getter for MOMapLocation.title : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MOMapLocation.title : MOMapLocation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 344);

  return v4(v2, v3);
}

double MOMapLocation.confidenceLevel.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.confidenceLevel.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.isWork : MOMapLocation@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t MOMapLocation.isWork.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.isWork.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.userPlaceType : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t MOMapLocation.userPlaceType.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.userPlaceType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.enclosingArea : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MOMapLocation.enclosingArea : MOMapLocation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 440);

  return v4(v2, v3);
}

uint64_t MOMapLocation.enclosingArea.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOMapLocation.enclosingArea.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double MOMapLocation.horizontalUncertainty.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.horizontalUncertainty.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.isScaledDownPOI : MOMapLocation@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result & 1;
  return result;
}

uint64_t MOMapLocation.isScaledDownPOI.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.isScaledDownPOI.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.poiCategory : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MOMapLocation.poiCategory : MOMapLocation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 512);

  return v4(v2, v3);
}

uint64_t MOMapLocation.title.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t MOMapLocation.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t MOMapLocation.__allocating_init(latitude:longitude:title:clusterCount:geoMapItem:confidenceLevel:isWork:enclosingArea:horizontalUncertainty:isScaledDownPOI:poiCateogory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v20 + v21, 1, 1, v22);
  v23(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v22);
  v24 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
  v25 = v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
  v27 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
  v28 = (v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
  v30 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
  v31 = (v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = a9;
  *(v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = a10;
  v32 = (v20 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
  *v32 = a1;
  v32[1] = a2;
  swift_beginAccess();
  *v25 = a3;
  *(v25 + 8) = a4 & 1;
  swift_beginAccess();
  *(v20 + v24) = a5;
  swift_beginAccess();
  *(v20 + v26) = a11;
  swift_beginAccess();
  *(v20 + v27) = a6;
  swift_beginAccess();
  *v28 = a7;
  v28[1] = a8;
  swift_beginAccess();
  *(v20 + v29) = a12;
  swift_beginAccess();
  *(v20 + v30) = a13;
  swift_beginAccess();
  *v31 = a14;
  v31[1] = a15;
  return v20;
}

uint64_t MOMapLocation.init(latitude:longitude:title:clusterCount:geoMapItem:confidenceLevel:isWork:enclosingArea:horizontalUncertainty:isScaledDownPOI:poiCateogory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v21 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v15 + v21, 1, 1, v22);
  v23(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v22);
  v24 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
  v25 = v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
  v27 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
  v28 = (v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
  v30 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
  v31 = (v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = a9;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = a10;
  v32 = (v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
  *v32 = a1;
  v32[1] = a2;
  swift_beginAccess();
  *v25 = a3;
  *(v25 + 8) = a4 & 1;
  swift_beginAccess();
  *(v15 + v24) = a5;
  swift_beginAccess();
  *(v15 + v26) = a11;
  swift_beginAccess();
  *(v15 + v27) = a6;
  swift_beginAccess();
  *v28 = a7;
  v28[1] = a8;
  swift_beginAccess();
  *(v15 + v29) = a12;
  swift_beginAccess();
  *(v15 + v30) = a13;
  swift_beginAccess();
  *v31 = a14;
  v31[1] = a15;

  return v15;
}

uint64_t MOMapLocation.shiftedIfNecessary.getter()
{
  v1 = v0;
  v2 = (*(*v0 + 240))();
  v3 = [objc_allocWithZone(CLLocation) initWithLatitude:v2 longitude:(*(*v0 + 264))()];
  v4 = *(*v0 + 288);
  if (v4())
  {

    swift_unknownObjectRelease();
LABEL_8:

    return v1;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MOLocationShifter.shared;
  if (((*(*static MOLocationShifter.shared + 96))(v3) & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = (*(*v5 + 104))(v3);
  [v6 coordinate];
  v8 = v7;
  v9 = [v6 coordinate];
  v11 = v10;
  v12 = (*(*v1 + 336))(v9);
  v37 = v13;
  v38 = v12;
  v36 = (*(*v1 + 312))();
  v35 = v14;
  v39 = v4();
  v15 = (*(*v1 + 360))();
  v34 = (*(*v1 + 384))();
  v16 = (*(*v1 + 432))();
  v32 = v17;
  v33 = v16;
  v18 = (*(*v1 + 456))();
  type metadata accessor for MOMapLocation(0);
  v1 = swift_allocObject();
  v19 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v21(v1 + v19, 1, 1, v20);
  v21(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v20);

  v22 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
  v23 = v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
  v25 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
  v26 = (v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
  v28 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
  v29 = (v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = v8;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = v11;
  v30 = (v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
  *v30 = v38;
  v30[1] = v37;
  swift_beginAccess();
  *v23 = v36;
  *(v23 + 8) = v35 & 1;
  swift_beginAccess();
  *(v1 + v22) = v39;
  swift_beginAccess();
  *(v1 + v24) = v15;
  swift_beginAccess();
  *(v1 + v25) = v34 & 1;
  swift_beginAccess();
  *v26 = v33;
  v26[1] = v32;
  swift_beginAccess();
  *(v1 + v27) = v18;
  swift_beginAccess();
  *(v1 + v28) = 0;
  swift_beginAccess();
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  return v1;
}

uint64_t MOMapLocation.deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t MOMapLocation.__deallocating_deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_unknownObjectRelease();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MOMapLocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOMapLocation;
  if (!type metadata singleton initialization cache for MOMapLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id variable initialization expression of MOLocationShifter.shifter()
{
  v0 = objc_allocWithZone(GEOLocationShifter);

  return [v0 init];
}

uint64_t variable initialization expression of MOLocationShifter.processingQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of MOPOIAnnotationView.basePOICircleView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.clusterCountLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.borderBackgroundView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

void type metadata completion function for MOMapLocation(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance GEOPOICategory(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance GEOPOICategory(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance GEOPOICategory@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GEOPOICategory(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GEOPOICategory@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GEOPOICategory@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance GEOPOICategory(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory, &protocol conformance descriptor for GEOPOICategory);
  v3 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory, &protocol conformance descriptor for GEOPOICategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance GEOPOICategory()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GEOPOICategory(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GEOPOICategory(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo23GEOLocationCoordinate2Dawet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo23GEOLocationCoordinate2Dawst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for GEOLocationCoordinate2D(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Array.subscript.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return (*(*(a3 - 8) + 56))(a4, v6, 1, a3);
}

uint64_t *MOLocationShifter.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOLocationShifter.shared;
}

uint64_t CLLocation.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static MOLocationShifter.shared + 104))();
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for MOLocationShifter();
  v0 = swift_allocObject();
  result = MOLocationShifter.init()();
  static MOLocationShifter.shared = v0;
  return result;
}

uint64_t MOLocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  MOLocationShifter.init()();
  return v0;
}

uint64_t static MOLocationShifter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

Swift::Bool __swiftcall MOLocationShifter.shiftNeeded(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  [(objc_class *)a1.super.isa coordinate];
  v3 = v2;
  [(objc_class *)isa coordinate];
  return [objc_opt_self() isLocationShiftRequiredForCoordinate:{v3, v4}];
}

CLLocation __swiftcall MOLocationShifter.shiftedIfNecessary(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v74 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(objc_class *)isa coordinate];
  v13 = v12;
  [(objc_class *)isa coordinate];
  v15 = v14;
  if ([objc_opt_self() isLocationShiftRequiredForCoordinate:{v13, v14}])
  {
    v79 = v7;
    v80 = v2;
    v81 = v1;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    [(objc_class *)isa horizontalAccuracy];
    *(v17 + 16) = v18;
    v19 = *(v84 + 16);
    [(objc_class *)isa horizontalAccuracy];
    v82 = v17 + 16;
    v83 = v16 + 16;
    if ([v19 shiftCoordinate:v16 + 16 accuracy:v17 + 16 shiftedCoordinate:v13 shiftedAccuracy:{v15, v20}])
    {
      v21 = *(v16 + 16);
      v22 = *(v16 + 24);
      [(objc_class *)isa altitude];
      v24 = v23;
      v25 = *(v17 + 16);
      [(objc_class *)isa verticalAccuracy];
      v27 = v26;
      v28 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = objc_allocWithZone(CLLocation);
      v30 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v29 initWithCoordinate:v30 altitude:v21 horizontalAccuracy:v22 verticalAccuracy:v24 timestamp:{v25, v27}];

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v76 = v11;
      v77 = v9;
      v78 = v8;
      v35 = dispatch_group_create();
      dispatch_group_enter(v35);
      [(objc_class *)isa horizontalAccuracy];
      v37 = v36;
      v38 = swift_allocObject();
      v38[2] = v16;
      v38[3] = v17;
      v38[4] = v35;
      v90 = partial apply for closure #1 in MOLocationShifter.shiftedIfNecessary(_:);
      v91 = v38;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v39 = v16;
      v88 = thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ();
      v89 = &block_descriptor;
      v40 = _Block_copy(&aBlock);
      v74 = v39;

      v75 = v17;

      v41 = v35;

      v90 = closure #2 in MOLocationShifter.shiftedIfNecessary(_:);
      v91 = 0;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> ();
      v89 = &block_descriptor_9;
      v42 = _Block_copy(&aBlock);
      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      v90 = partial apply for closure #3 in MOLocationShifter.shiftedIfNecessary(_:);
      v91 = v43;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v89 = &block_descriptor_15;
      v44 = _Block_copy(&aBlock);
      v45 = v41;

      [v19 shiftCoordinate:v40 accuracy:v42 withCompletionHandler:v44 mustGoToNetworkCallback:*(v84 + 24) errorHandler:v13 callbackQueue:{v15, v37}];
      _Block_release(v44);
      _Block_release(v42);
      _Block_release(v40);
      static DispatchTime.now()();
      v46 = v79;
      + infix(_:_:)();
      v47 = v81;
      v48 = *(v80 + 8);
      v48(v5, v81);
      OS_dispatch_group.wait(timeout:)();
      v48(v46, v47);
      if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
      {
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static MOAngelLogger.assets);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_0, v50, v51, "[LocationShifter] Timed out", v52, 2u);
        }
      }

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static MOAngelLogger.assets);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v78;
      v58 = v77;
      v59 = v76;
      v60 = v75;
      v61 = v74;
      if (v56)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_0, v54, v55, "[LocationShifter] Returning shifted location", v62, 2u);
      }

      swift_beginAccess();
      v63 = *(v61 + 16);
      v64 = *(v61 + 24);
      [(objc_class *)isa altitude];
      v66 = v65;
      swift_beginAccess();
      v67 = *(v60 + 16);
      [(objc_class *)isa verticalAccuracy];
      v69 = v68;
      v70 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = objc_allocWithZone(CLLocation);
      v72 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v71 initWithCoordinate:v72 altitude:v63 horizontalAccuracy:v64 verticalAccuracy:v66 timestamp:{v67, v69}];

      (*(v58 + 8))(v59, v57);
    }

    v33 = v31;
  }

  else
  {
    v32 = isa;

    v33 = v32;
  }

  result._internal = v34;
  result.super.isa = v33;
  return result;
}

void closure #1 in MOLocationShifter.shiftedIfNecessary(_:)(uint64_t a1, uint64_t a2, NSObject *a3, double a4, double a5, double a6)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static MOAngelLogger.assets);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "[LocationShifter] Shifted location async", v15, 2u);
  }

  swift_beginAccess();
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  swift_beginAccess();
  *(a2 + 16) = a6;
  dispatch_group_leave(a3);
}

double thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ()(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);

  return result;
}

void closure #2 in MOLocationShifter.shiftedIfNecessary(_:)()
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MOAngelLogger.assets);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "[LocationShifter] Needs to download shifting function", v2, 2u);
  }
}

double thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void closure #3 in MOLocationShifter.shiftedIfNecessary(_:)(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static MOAngelLogger.assets);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "[LocationShifter] error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }

  dispatch_group_leave(group);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

__C::CLLocationCoordinate2D __swiftcall MOLocationShifter.shiftedIfNecessary(_:)(__C::CLLocationCoordinate2D a1)
{
  v2 = [objc_allocWithZone(CLLocation) initWithLatitude:a1.latitude longitude:a1.longitude];
  v3 = (*(*v1 + 104))();
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

uint64_t MOLocationShifter.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t MOLocationShifter.init()()
{
  v7[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v7[0] - 8);
  __chkstk_darwin(v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = [objc_allocWithZone(GEOLocationShifter) init];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7[0]);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_5D4C()
{

  return _swift_deallocObject(v0, 40, 7);
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5DB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t CLLocationCoordinate2D.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static MOLocationShifter.shared + 112))();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

Swift::Int MOSuggestionAssetTransferDelivery.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetTransferDelivery()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetTransferDelivery(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t MOSuggestionAssetTileSize.description.getter(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    if (a1 > 3u)
    {
      if (a1 == 4)
      {
        return 0xD000000000000011;
      }

      if (a1 == 5)
      {
        return 0x454752414CLL;
      }
    }

    else
    {
      if (a1 == 2)
      {
        return 0x4C4C414D53;
      }

      if (a1 == 3)
      {
        return 1414744396;
      }
    }

    return 0x524546534E415254;
  }

  if (a1 <= 7u)
  {
    if (a1 == 6)
    {
      return 0x414C5F4152545845;
    }

    if (a1 == 7)
    {
      return 0xD000000000000015;
    }

    return 0x524546534E415254;
  }

  if (a1 == 8)
  {
    return 0x455243534C4C5546;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {
      return 0xD000000000000016;
    }

    return 0x524546534E415254;
  }

  return 0xD000000000000016;
}

void MOSuggestionAssetTileSize.hash(into:)(uint64_t a1, char a2)
{
  if ((a2 - 2) >= 9u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a2 & 1;
  }

  else
  {
    v2 = qword_1A9C8[(a2 - 2)];
  }

  Hasher._combine(_:)(v2);
}

Swift::Int MOSuggestionAssetTileSize.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetTileSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetTileSize(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for tileSizesByCount(uint64_t a1)
{
  return one-time initialization function for tileSizesByCount(a1, &outlined read-only object #0 of one-time initialization function for tileSizesByCount, &unk_24B98, 13, &static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount);
}

{
  return one-time initialization function for tileSizesByCount(a1, &outlined read-only object #0 of one-time initialization function for tileSizesByCount, &unk_24D28, 4, &static MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount);
}

uint64_t *MOSuggestionLayoutEngine.FullWidth.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount;
}

uint64_t one-time initialization function for tileSizesByCount(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMd, &_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMR);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t *MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount;
}

uint64_t one-time initialization function for tileSizesByCount()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for tileSizesByCount);
  result = outlined destroy of (Int, [MOSuggestionAssetTileSize])(&unk_24DB0);
  static MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount = v0;
  return result;
}

uint64_t *MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount;
}

uint64_t static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

double static MOSuggestionLayoutEngine.viewportFromTileSize(_:)(char a1)
{
  if ((a1 - 2) > 8u)
  {
    return 300.0;
  }

  else
  {
    return dbl_1AA10[(a1 - 2)];
  }
}

double static MOSuggestionLayoutEngine.heightToWidthRatio(_:)(char a1)
{
  result = 1.0;
  if ((a1 - 2) <= 8u)
  {
    return dbl_1AA58[(a1 - 2)] / dbl_1AA10[(a1 - 2)];
  }

  return result;
}

double static MOSuggestionLayoutEngine.widthToHeightRatio(_:)(char a1)
{
  v1 = 1.0;
  if ((a1 - 2) <= 8u)
  {
    v1 = dbl_1AA58[(a1 - 2)] / dbl_1AA10[(a1 - 2)];
  }

  return 1.0 / v1;
}

BOOL specialized static MOSuggestionAssetTileSize.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    if (a1 > 3u)
    {
      if (a1 == 4)
      {
        return a2 == 4;
      }

      if (a1 == 5)
      {
        return a2 == 5;
      }
    }

    else
    {
      if (a1 == 2)
      {
        return a2 == 2;
      }

      if (a1 == 3)
      {
        return a2 == 3;
      }
    }
  }

  else if (a1 <= 7u)
  {
    if (a1 == 6)
    {
      return a2 == 6;
    }

    if (a1 == 7)
    {
      return a2 == 7;
    }
  }

  else
  {
    switch(a1)
    {
      case 8u:
        return a2 == 8;
      case 9u:
        return a2 == 9;
      case 0xAu:
        return a2 == 10;
    }
  }

  if (a2 - 2 < 9)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetTransferDelivery(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetTransferDelivery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetTileSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetTileSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for MOSuggestionAssetTileSize(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for MOSuggestionAssetTileSize(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t outlined destroy of (Int, [MOSuggestionAssetTileSize])(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMd, &_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double MOAngelDefaultsManager.momentsUILowConfidenceHighCertaintyThreshold.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 150.0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 150.0;
}

void one-time initialization function for defaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static MOAngelDefaultsManager.defaults = v2;
}

void one-time initialization function for siri()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static MOAngelDefaultsManager.siri = v2;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldUpLevelPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldSkipDendrogram.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUIForceEmbeddedPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUITripDropUninterestingPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

double MOAngelDefaultsManager.momentsUIDendrogramPOIPenalty.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0.5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

uint64_t MOAngelDefaultsManager.momentsUIGridBuckets.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 5;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t MOAngelDefaultsManager.momentsUIClusterMaxCount.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 30;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 30;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

double MOAngelDefaultsManager.momentsUITightPOIScale.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0.5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

uint64_t MOAngelDefaultsManager.lastSuggestionNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void *MOAngelDefaultsManager.notificationSchedule.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !v3[2])
  {

    return 0;
  }

  return result;
}

void *specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      _swiftEmptyArrayStorage[v8 + 4] = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v11;
      v9[5] = v12;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationRealTimeCheckTimerDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void *MOAngelDefaultsManager.eligiblePOICategories.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !v3[2])
  {

    return 0;
  }

  return result;
}

unint64_t MOAngelDefaultsManager.authorizedAppsArray.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVyXlGMd, &_sSDys11AnyHashableVyXlGMR);
  if (swift_dynamicCast())
  {
    v3 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v5);

    return v3;
  }

  return 0;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v27);
        *(&v28 + 1) = *(*(a1 + 56) + 8 * v12);
        v25[0] = v27[0];
        v25[1] = v27[1];
        v26 = v28;
        outlined init with copy of AnyHashable(v25, &v23);
        swift_unknownObjectRetain();
        if (!swift_dynamicCast())
        {
          outlined destroy of Date?(v25, &_ss11AnyHashableV3key_yXl5valuetMd, &_ss11AnyHashableV3key_yXl5valuetMR);

          goto LABEL_23;
        }

        v13 = v21;
        v14 = *(&v26 + 1);
        swift_unknownObjectRetain();
        outlined destroy of Date?(v25, &_ss11AnyHashableV3key_yXl5valuetMd, &_ss11AnyHashableV3key_yXl5valuetMR);
        v21 = v14;
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v15 = v23;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v13;
          v9[1] = v22;
          v10 = result;

          *(v2[7] + 8 * v10) = v15;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v13;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v15;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v23 = 0;
      v24 = 1;
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t MOAngelDefaultsManager.notificationReporterIdentification.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Void __swiftcall MOAngelDefaultsManager.setAuthorizedAppsArray(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v1 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = String._bridgeToObjectiveC()();
    [v1 setValue:isa forKey:v3];
  }
}

Swift::String_optional __swiftcall MOAngelDefaultsManager.chosenDefaultAppBundleID()()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults && (v1 = String._bridgeToObjectiveC()(), v2 = [v0 stringForKey:v1], v1, v2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

void *MOAngelDefaultsManager.siriCanLearnFromAppDenySet.getter()
{
  if (one-time initialization token for siri != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.siri;
  if (!static MOAngelDefaultsManager.siri)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_12:
    outlined destroy of Date?(&v8, &_sypSgMd, "&\b");
    return &_swiftEmptySetSingleton;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if (swift_dynamicCast())
  {
    v3 = specialized _arrayConditionalCast<A, B>(_:)(v6);

    if (v3)
    {
      v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);

      return v4;
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t specialized static MOAngelDefaultsManager.doubleValueFor(_:)()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t one-time initialization function for assets(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assets, 0x535445535341, 0xE600000000000000);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assets, &one-time initialization token for assets, static MOAngelLogger.assets, one-time initialization function for assets);
}

uint64_t one-time initialization function for pullToRefresh(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.pullToRefresh, 0x45524F544C4C5550, 0xED00004853455246);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.pullToRefresh, &one-time initialization token for pullToRefresh, static MOAngelLogger.pullToRefresh, one-time initialization function for pullToRefresh);
}

uint64_t one-time initialization function for processing(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.processing, 0x49535345434F5250, 0xEA0000000000474ELL);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.processing, &one-time initialization token for processing, static MOAngelLogger.processing, one-time initialization function for processing);
}

uint64_t one-time initialization function for bundleProcessing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  __swift_project_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assetRendering(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assetRendering, 0x45525F5445535341, 0xEF474E495245444ELL);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assetRendering, &one-time initialization token for assetRendering, static MOAngelLogger.assetRendering, one-time initialization function for assetRendering);
}

uint64_t one-time initialization function for databaseOps(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.databaseOps, 0x4553414241544144, 0xEC00000053504F5FLL);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.databaseOps, &one-time initialization token for databaseOps, static MOAngelLogger.databaseOps, one-time initialization function for databaseOps);
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assets(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return OSSignposter.init(logger:)();
}

uint64_t MOAngelLogger.assets.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static MOAngelLogger.shared.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t MOPOIAnnotationViewConfiguration.geoMapItem.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

int *one-time initialization function for singlePinCanvasSize()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20MomentsUIServiceCore25MOSuggestionAssetTileSizeO_0E8Graphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for singlePinCanvasSize);
  static MOPOIAnnotationViewConfiguration.singlePinCanvasSize[0] = result;
  return result;
}

int *one-time initialization function for multiPinCanvasSize()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20MomentsUIServiceCore25MOSuggestionAssetTileSizeO_0E8Graphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for multiPinCanvasSize);
  static MOPOIAnnotationViewConfiguration.multiPinCanvasSize[0] = result;
  return result;
}

uint64_t MOPOIAnnotationViewConfiguration.pinSize.getter()
{
  v1 = v0;
  if (*(v0 + 16) > 1 || (*(v0 + 24) & 1) != 0)
  {
    if (one-time initialization token for multiPinCanvasSize != -1)
    {
      swift_once();
    }

    v2 = static MOPOIAnnotationViewConfiguration.multiPinCanvasSize[0];
    if (!*(static MOPOIAnnotationViewConfiguration.multiPinCanvasSize[0] + &dword_10))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (one-time initialization token for singlePinCanvasSize != -1)
    {
      swift_once();
    }

    v2 = static MOPOIAnnotationViewConfiguration.singlePinCanvasSize[0];
    if (!*(static MOPOIAnnotationViewConfiguration.singlePinCanvasSize[0] + &dword_10))
    {
      goto LABEL_15;
    }
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 8));
  if ((v4 & 1) == 0)
  {
LABEL_15:
    *&result = 0.0;
    return result;
  }

  result = *(*&stru_20.segname[v2 + 16] + 8 * v3);
  if (*(v1 + 26))
  {
    v6 = *&result;
    v7 = COERCE_DOUBLE(specialized static MOAngelDefaultsManager.doubleValueFor(_:)());
    if (v8)
    {
      v7 = 0.5;
    }

    *&result = v7 * v6;
  }

  return result;
}

uint64_t MOPOIAnnotationViewConfiguration.shouldAddPointedArrow.getter()
{
  if (*(v0 + 16) > 1)
  {
    return 0;
  }

  if (*(v0 + 24))
  {
    return 0;
  }

  if (*(v0 + 27))
  {
    return *(v0 + 9);
  }

  return 1;
}

void MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionLayoutEngine.HalfWidth.init()();
  }
}

void MOPOIAnnotationViewConfiguration.downArrowFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionLayoutEngine.HalfWidth.init()();
  }
}

void MOPOIAnnotationViewConfiguration.downArrowListTileFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionLayoutEngine.HalfWidth.init()();
  }
}

void MOPOIAnnotationViewConfiguration.whiteCircularBorderFrame.getter()
{
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();

  MOSuggestionLayoutEngine.HalfWidth.init()();
}

void MOPOIAnnotationViewConfiguration.whiteCircularBorderCLusterFrame.getter()
{
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();

  MOSuggestionLayoutEngine.HalfWidth.init()();
}

void MOPOIAnnotationViewConfiguration.containerViewFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionLayoutEngine.HalfWidth.init()();
  }
}

double MOPOIAnnotationViewConfiguration.clusterFontSize.getter()
{
  v1 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
  result = 15.0;
  if ((v3 & 1) == 0)
  {
    if (*(v0 + 8) == 3)
    {
      return v1 * 0.5;
    }

    else
    {
      return v1 / 6.0;
    }
  }

  return result;
}

uint64_t static MOPOIAnnotationViewConfiguration.filterGenericRed(category:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static MOPOIAnnotationViewConfiguration.hasPOIIconImage(_:)(void *a1)
{
  v2 = [a1 _poiCategory];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v22 = 0;
    goto LABEL_12;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = objc_opt_self();
    v11 = [a1 _styleAttributes];
    v12 = objc_opt_self();
    v13 = [v12 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v10 newFillColorForStyleAttributes:v11 forScale:v15];
    v17 = v10;
    if (v16)
    {
      v18 = [a1 _styleAttributes];
      v19 = [v12 mainScreen];
      [v19 scale];
      v21 = v20;

      v3 = [v10 imageForStyle:v18 size:3 forScale:0 format:v21];
      if (v3)
      {
        v22 = 1;
LABEL_12:

        return v22;
      }
    }
  }

  return 0;
}

uint64_t MOPOIAnnotationViewConfiguration.init(geoMapItem:tileSize:isWork:numLocations:forceCircle:isMediumToHighConfidence:isScaledDownPOI:shouldUseCityIcon:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 25) = a6;
  *(a9 + 26) = a7;
  *(a9 + 27) = a8;
  *(a9 + 32) = 0x4000000000000000;
  return result;
}

void one-time initialization function for cityStyleAttributes()
{
  v0 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0];
  v1 = [objc_opt_self() styleAttributesForPlace:v0];

  static MOPOIAnnotationView.cityStyleAttributes = v1;
}

uint64_t *MOPOIAnnotationView.cityStyleAttributes.unsafeMutableAddressor()
{
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  return &static MOPOIAnnotationView.cityStyleAttributes;
}

uint64_t static MOPOIAnnotationView.cityStyleAttributes.getter()
{
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  v0 = static MOPOIAnnotationView.cityStyleAttributes;
  v1 = static MOPOIAnnotationView.cityStyleAttributes;
  return v0;
}

id MOPOIAnnotationView.__allocating_init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized MOPOIAnnotationView.init(annotation:configuration:)(a1, a2);
  outlined destroy of MOPOIAnnotationViewConfiguration(a2);
  swift_unknownObjectRelease();
  return v6;
}

id MOPOIAnnotationView.init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized MOPOIAnnotationView.init(annotation:configuration:)(a1, a2);
  outlined destroy of MOPOIAnnotationViewConfiguration(a2);
  swift_unknownObjectRelease();
  return v3;
}

void closure #1 in MOPOIAnnotationView.init(annotation:configuration:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = &Strong[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
    v3 = Strong;
    MOPOIAnnotationViewConfiguration.pinSize.getter();
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if ((v8 & 1) == 0)
    {
      MOSuggestionLayoutEngine.HalfWidth.init()();
    }

    [v3 setFrame:{v4, v5, v6, v7}];

    v9 = &v3[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView];
    v10 = *&v3[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView];
    MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
    [v10 setFrame:?];

    MOPOIAnnotationView.setupPOIAndColors()();
    if (v2[2] < 2)
    {
      if (v2[3])
      {
        specialized MOPOIAnnotationView.setupBorderBackground(cluster:)();
        v11 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
      }

      else
      {
        if (*(v2 + 27) == 1 && !*(v2 + 9))
        {
          goto LABEL_12;
        }

        MOPOIAnnotationView.setupDownArrow()();
        v11 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView;
      }

      [v3 addSubview:*&v3[v11]];
    }

    else
    {
      specialized MOPOIAnnotationView.setupBorderBackground(cluster:)();
      MOPOIAnnotationView.setupClusterlabel()();
      [v3 addSubview:*&v3[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView]];
      v9 = &v3[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel];
    }

LABEL_12:
    [v3 addSubview:*v9];
    v12 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
    v13 = [*&v3[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView] layer];
    v14 = [objc_opt_self() secondarySystemBackgroundColor];
    v15 = [v14 CGColor];

    [v13 setShadowColor:v15];
    v16 = [*&v3[v12] layer];
    LODWORD(v17) = 0.5;
    [v16 setShadowOpacity:v17];

    v18 = [*&v3[v12] layer];
    [v18 setShadowRadius:5.0];

    v19 = [*&v3[v12] layer];
    [v19 setShadowPathIsBounds:1];
  }
}

void MOPOIAnnotationView.setupDownArrow()()
{
  v1 = (v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 16) <= 1 && *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 24) == 0;
  if (!v2 || ((*(v1 + 27) ^ 1 | *(v1 + 9)) & 1) == 0)
  {
    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView);
  if (*(v1 + 8) == 3)
  {
    v12 = *v1;
    v13 = v1[1];
    v14 = *(v1 + 4);
    MOPOIAnnotationViewConfiguration.pinSize.getter();
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    MOPOIAnnotationViewConfiguration.pinSize.getter();
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if ((v9 & 1) == 0)
    {
LABEL_12:
      MOSuggestionLayoutEngine.HalfWidth.init()();
    }
  }

  [v3 setFrame:{v4, v5, v6, v7, v12, v13, v14}];
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  [v3 setImage:v11];

  [v3 setContentMode:2];
}

void MOPOIAnnotationView.setupClusterlabel()()
{
  v1 = (v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration);
  if (*(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 16) >= 2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel);
    v3 = *(v1 + 2);
    MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
    [v2 setFrame:?];
    v11 = v3;
    dispatch thunk of CustomStringConvertible.description.getter();
    v4 = String._bridgeToObjectiveC()();

    [v2 setText:{v4, v11}];

    [v2 setTextAlignment:1];
    v5 = [objc_opt_self() whiteColor];
    [v2 setTextColor:v5];

    v12 = *v1;
    v6 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
    v7 = 15.0;
    if ((v8 & 1) == 0)
    {
      if (BYTE8(v12) == 3)
      {
        v7 = v6 * 0.5;
      }

      else
      {
        v7 = v6 / 6.0;
      }
    }

    v9 = [objc_opt_self() boldSystemFontOfSize:{v7, v12}];
    [v2 setFont:v9];

    [v2 setAdjustsFontSizeToFitWidth:1];
    [v2 setClipsToBounds:1];
    v10 = [v2 layer];
    [v2 frame];
    [v10 setCornerRadius:CGRectGetWidth(v13) * 0.5];
  }
}

void MOPOIAnnotationView.setupPOIAndColors()()
{
  v1 = &v0[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
  v2 = *&v0[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
  if (v2)
  {
    v3 = [swift_unknownObjectRetain() _poiCategory];
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = objc_opt_self();
      v12 = [v2 _styleAttributes];
      v13 = objc_opt_self();
      v14 = [v13 mainScreen];
      [v14 scale];
      v16 = v15;

      v17 = [v11 newFillColorForStyleAttributes:v12 forScale:v16];
      v18 = v11;
      if (v17)
      {
        v19 = [v2 _styleAttributes];
        v20 = [v13 mainScreen];
        [v20 scale];
        v22 = v21;

        v23 = [v11 imageForStyle:v19 size:3 forScale:0 format:v22];
        if (v23)
        {
          v112 = v0;
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static MOAngelLogger.assets);
          swift_unknownObjectRetain();
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v116 = v28;
            *v27 = 134218242;
            v29 = [v2 name];
            if (v29)
            {
              v30 = v2;
              v31 = v29;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v33 = v32;

              v2 = v30;
            }

            else
            {
              v33 = 0;
            }

            v115 = v33;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v104 = Optional<A>.hashValue.getter();

            *(v27 + 4) = v104;
            swift_unknownObjectRelease();
            *(v27 + 12) = 2080;
            v114 = [v2 _poiCategory];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14GEOPOICategoryaSgMd, &_sSo14GEOPOICategoryaSgMR);
            v105 = Optional.debugDescription.getter();
            v107 = v106;

            v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v116);

            *(v27 + 14) = v108;
            _os_log_impl(&dword_0, v25, v26, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v27, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v28);
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v109 = v112;
          [*&v112[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView] setImage:{v23, v112, v114, v115}];
          v110 = [objc_allocWithZone(UIColor) initWithCGColor:v17];

          v111 = *&v109[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView];
          v93 = v110;
          [v111 setTintColor:v93];
          [*&v109[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v93];
          swift_unknownObjectRelease();

LABEL_52:
          return;
        }
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_17:
  if (v1[9] == 1)
  {
    v34 = objc_opt_self();
    v35 = objc_opt_self();
    v36 = [v35 workStyleAttributes];
    v37 = objc_opt_self();
    v38 = [v37 mainScreen];
    [v38 scale];
    v40 = v39;

    v41 = [v34 imageForStyle:v36 size:3 forScale:0 format:v40];
    if (v41)
    {
      v42 = [v35 workStyleAttributes];
      v43 = [v37 mainScreen];
      [v43 scale];
      v45 = v44;

      v46 = [v34 newFillColorForStyleAttributes:v42 forScale:v45];
      v47 = v34;
      if (v46)
      {
        v48 = v0;
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static MOAngelLogger.assets);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_0, v50, v51, "[POIClustering] [RENDERING] Work", v52, 2u);
        }

        [*&v48[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView] setImage:v41];
        v53 = [objc_allocWithZone(UIColor) initWithCGColor:v46];

        v54 = *&v48[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView];
        v113 = v53;
        [v54 setTintColor:v113];
        [*&v48[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v113];

        goto LABEL_37;
      }
    }
  }

  if ((v1[25] & 1) != 0 || v1[27] != 1)
  {
    goto LABEL_40;
  }

  v55 = objc_opt_self();
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  v56 = static MOPOIAnnotationView.cityStyleAttributes;
  v57 = objc_opt_self();
  v58 = [v57 mainScreen];
  [v58 scale];
  v60 = v59;

  v61 = [v55 newFillColorForStyleAttributes:v56 forScale:v60];
  v62 = v55;
  if (!v61 || (v63 = [v57 mainScreen], objc_msgSend(v63, "scale"), v65 = v64, v63, (v66 = objc_msgSend(v55, "imageForStyle:size:forScale:format:", v56, 3, 0, v65)) == 0))
  {
LABEL_40:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static MOAngelLogger.assets);
    v74 = v0;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v116 = v78;
      *v77 = 134218242;
      if (v2)
      {
        v79 = [v2 name];
        if (v79)
        {
          v80 = v79;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;
        }

        else
        {
          v82 = 0;
        }

        v115 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v85 = Optional<A>.hashValue.getter();

        *(v77 + 4) = v85;

        *(v77 + 12) = 2080;
        v114 = [v2 _poiCategory];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14GEOPOICategoryaSgMd, &_sSo14GEOPOICategoryaSgMR);
        v84 = Optional.debugDescription.getter();
        v83 = v86;
      }

      else
      {
        *(v77 + 4) = 0;

        *(v77 + 12) = 2080;
        v83 = 0xE300000000000000;
        v84 = 7104878;
      }

      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, &v116);

      *(v77 + 14) = v87;
      _os_log_impl(&dword_0, v75, v76, "[POIClustering] [RENDERING] Fallback, geoMapItem.name=%ld, geoMapItem.poiCategory=%s", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v78);
    }

    else
    {
    }

    v88 = *&v74[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView];
    [v88 frame];
    CGRectGetWidth(v118);
    [v88 frame];
    CGRectGetHeight(v119);
    [v88 frame];
    CGRectGetWidth(v120);
    [v88 frame];
    CGRectGetHeight(v121);
    MOSuggestionLayoutEngine.HalfWidth.init()();
    v93 = [objc_allocWithZone(UIImageView) initWithFrame:{v89, v90, v91, v92}];
    v94 = String._bridgeToObjectiveC()();
    v95 = [objc_opt_self() _systemImageNamed:v94];

    [v93 setImage:v95];
    v96 = objc_opt_self();
    v97 = [v96 systemWhiteColor];
    [v93 setTintColor:v97];

    v98 = [v96 systemIndigoColor];
    [v88 setBackgroundColor:v98];

    v99 = *&v74[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView];
    v100 = [v96 systemIndigoColor];
    [v99 setTintColor:v100];

    v101 = *&v74[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel];
    v102 = [v96 systemIndigoColor];
    [v101 setBackgroundColor:v102];

    v103 = [v88 layer];
    [v88 frame];
    [v103 setCornerRadius:CGRectGetHeight(v122) * 0.5];

    [v88 addSubview:v93];
    goto LABEL_52;
  }

  v67 = v66;
  v68 = v0;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static MOAngelLogger.assets);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_0, v70, v71, "[POIClustering] [RENDERING] City", v72, 2u);
  }

  [*&v68[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView] setImage:v67];
  v113 = [objc_allocWithZone(UIColor) initWithCGColor:v61];

  [*&v68[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v113];
LABEL_37:
}

id MOPOIAnnotationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id MOPOIAnnotationView.__allocating_init(annotation:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithAnnotation:a1 reuseIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

id MOPOIAnnotationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOPOIAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v4, v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (v8 <= 5)
      {
        if (*(v7 + result) > 3u)
        {
          if (v8 == 4)
          {
            if (a1 == 4)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v8 == 5)
          {
            if (a1 == 5)
            {
              return result;
            }

            goto LABEL_4;
          }
        }

        else
        {
          if (v8 == 2)
          {
            if (a1 == 2)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v8 == 3)
          {
            if (a1 == 3)
            {
              return result;
            }

            goto LABEL_4;
          }
        }
      }

      else if (*(v7 + result) <= 7u)
      {
        if (v8 == 6)
        {
          if (a1 == 6)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 7)
        {
          if (a1 == 7)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        switch(v8)
        {
          case 8u:
            if (a1 == 8)
            {
              return result;
            }

            goto LABEL_4;
          case 9u:
            if (a1 == 9)
            {
              return result;
            }

            goto LABEL_4;
          case 0xAu:
            if (a1 == 10)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (a1 - 2 >= 9 && ((v8 ^ a1) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGGMd, &_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
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

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20MomentsUIServiceCore25MOSuggestionAssetTileSizeO_0E8Graphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20MomentsUIServiceCore25MOSuggestionAssetTileSizeO0E8Graphics7CGFloatVGMd, &_ss18_DictionaryStorageCy20MomentsUIServiceCore25MOSuggestionAssetTileSizeO0E8Graphics7CGFloatVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

id specialized MOPOIAnnotationView.init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView;
  *&v2[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView;
  *&v2[v12] = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel;
  *&v2[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
  *&v2[v14] = [objc_allocWithZone(UIView) init];
  v15 = &v2[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
  *(v15 + 4) = *(a2 + 32);
  v16 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 1) = v16;
  outlined init with copy of MOPOIAnnotationViewConfiguration(a2, aBlock);
  v17 = type metadata accessor for MOPOIAnnotationView();
  v27.receiver = v2;
  v27.super_class = v17;
  v18 = objc_msgSendSuper2(&v27, "initWithAnnotation:reuseIdentifier:", v24, 0);
  type metadata accessor for OS_dispatch_queue();
  v19 = v18;
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOPOIAnnotationView.init(annotation:configuration:);
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v25);
  return v19;
}

void specialized MOPOIAnnotationView.setupBorderBackground(cluster:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView);
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOSuggestionLayoutEngine.HalfWidth.init()();
  [v1 setFrame:?];
  v2 = [v1 layer];
  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor:v4];
  [v1 setClipsToBounds:1];
  v5 = [v1 layer];
  [v1 frame];
  [v5 setCornerRadius:CGRectGetWidth(v7) * 0.5];
}

void specialized MOPOIAnnotationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MOPOIAnnotationViewConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MOPOIAnnotationViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_CE00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.skipRows.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.chain.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.chain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster;
  if (!type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.getter()
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);

  return swift_unknownObjectRetain();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 36);
  result = swift_unknownObjectRelease();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.confidence.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 44));

  return v1;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isWork.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isScaledDownPOI.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.horizontalUncertainty.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t static MOSuggestionAssetMapsClusterer.Cluster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);

  return static UUID.== infix(_:_:)();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.hash(into:)(uint64_t a1)
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MOSuggestionAssetMapsClusterer.Cluster.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.init(coordinates:distance:count:chain:id:geoMapItem:confidence:title:isWork:isScaledDownPOI:horizontalUncertainty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, char a15)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v24 = v23[8];
  v25 = type metadata accessor for UUID();
  result = (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  *(a9 + v23[9]) = a5;
  *(a9 + v23[10]) = a13;
  v27 = (a9 + v23[11]);
  *v27 = a6;
  v27[1] = a7;
  *(a9 + v23[12]) = a8;
  *(a9 + v23[13]) = a15;
  *(a9 + v23[14]) = a14;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMapsClusterer.Cluster()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(unint64_t a1, double a2)
{
  v5 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  p_info = _TtC20MomentsUIServiceCore17MOAngelSignposter.info;
  v10 = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v11 = type metadata accessor for MOSuggestionAssetMapsClusterer();
  v29.receiver = v2;
  v29.super_class = v11;
  v12 = objc_msgSendSuper2(&v29, "init");
  v28 = 0;
  v13 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v14)
  {
    while (1)
    {
      v27 = v10;
      v15 = v12;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        break;
      }

      v22 = v12;
      v12 = 0;
      v17 = v27;
      v18 = v13;
      v24 = v13;
      v25 = v13 & 0xC000000000000001;
      v23 = v13 & 0xFFFFFFFFFFFFFF8;
      v13 = v14;
      while (1)
      {
        v10 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v25)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v23 + 16))
          {
            goto LABEL_15;
          }

          v19 = *(v18 + 8 * v12 + 32);
        }

        v26 = v19;
        closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(&v26, &v28, v8);

        v27 = v17;
        p_info = v17[2];
        v20 = v17[3];
        if (p_info >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), p_info + 1, 1);
          v17 = v27;
        }

        v17[2] = p_info + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v8, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * p_info);
        ++v12;
        v18 = v24;
        if (v10 == v14)
        {

          p_info = 176128;
          v12 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v21 = v12;

    v17 = _swiftEmptyArrayStorage;
LABEL_18:
    *(v12 + *(p_info + 248)) = v17;

    return v12;
  }

  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  v6 = (*(**a1 + 240))();
  v7 = (*(*v5 + 264))();
  v8 = *(*v5 + 312);
  v9 = v8();
  if (v10)
  {
    v25 = 1;
  }

  else
  {
    result = (v8)(v9);
    if (v12)
    {
      goto LABEL_8;
    }

    v25 = result;
  }

  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v13;
  v14._countAndFlagsBits = 95;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = a2;
  v16 = (*(*v5 + 288))();
  v17 = (*(*v5 + 360))();
  v18 = (*(*v5 + 336))();
  v20 = v19;
  v21 = (*(*v5 + 384))();
  v22 = (*(*v5 + 456))();
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  result = UUID.init()();
  *a3 = v6;
  a3[1] = v7;
  a3[2] = 0.0;
  *(a3 + 3) = v25;
  *(a3 + 4) = v26;
  *(a3 + 5) = v27;
  *(a3 + v23[9]) = v16;
  *(a3 + v23[10]) = v17;
  v24 = (a3 + v23[11]);
  *v24 = v18;
  v24[1] = v20;
  *(a3 + v23[12]) = v21 & 1;
  *(a3 + v23[13]) = 0;
  *(a3 + v23[14]) = v22;
  if (!__OFADD__(*v15, 1))
  {
    ++*v15;
    return result;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MOSuggestionAssetMapsClusterer.buildDendogram()()
{
  v1 = v0;
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v94 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v93 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v92 = &v79 - v6;
  v7 = __chkstk_darwin(v5);
  v91 = &v79 - v8;
  v9 = __chkstk_darwin(v7);
  v88 = &v79 - v10;
  v11 = __chkstk_darwin(v9);
  v89 = &v79 - v12;
  v13 = __chkstk_darwin(v11);
  v90 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v79 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v79 - v22;
  v24 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters);
  v103 = v24;
  v25 = v24[2];
  if (!v25)
  {
    goto LABEL_65;
  }

  v26 = v25 - 1;
  if (v25 != 1)
  {
    v97 = v21;
    v87 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_separationThreshold;
    v83 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_results;

    v27 = 0;
    v86 = 0;
    v80 = v0;
    v85 = v17;
    v99 = v23;
    v84 = v26;
    while (1)
    {
      v28 = specialized MOSuggestionAssetMapsClusterer.distanceMatrix(clusters:)(&v103);
      distanceMatrix._rawValue = v28;
      v104 = MOSuggestionAssetMapsClusterer.findSmallestEuclideanDistance(distanceMatrix:lowerHalfOnly:)(&distanceMatrix, 1);
      if (v29)
      {
      }

      else
      {
        v98 = v28;
        if (v104.value._0._0 < 0)
        {
          goto LABEL_52;
        }

        v95 = v27;
        v30 = v24[2];
        if (v104.value._0._0 >= v30)
        {
          goto LABEL_53;
        }

        v31 = v104.value._0._1;
        v32 = *&v104.is_nil;
        v33 = v23;
        v96 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v34 = v24 + v96;
        v35 = *(v94 + 72);
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v96 + v35 * v104.value._0._0, v33);
        if (v31 >= v30)
        {
          goto LABEL_54;
        }

        v36 = outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(&v34[v35 * v31], v20);
        if (*(v1 + v87) * *(v1 + v87) <= v32)
        {

          v23 = v99;
          v41 = v93;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v99, v93);
          swift_beginAccess();
          v42 = v92;
          specialized Set._Variant.insert(_:)(v92, v41);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v42);
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v20, v41);
          specialized Set._Variant.insert(_:)(v42, v41);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v42);
          swift_endAccess();
        }

        else
        {
          v81 = v32;
          __chkstk_darwin(v36);
          *(&v79 - 2) = v99;
          *(&v79 - 1) = v20;
          v37 = v86;
          v38 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram(), (&v79 - 4), v24);
          v86 = v37;
          v82 = &v79;
          if (v39)
          {
            v40 = v24[2];
          }

          else
          {
            v40 = v38;
            v43 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_64;
            }

            v45 = v24 + 2;
            v44 = v24[2];
            if (v43 != v44)
            {
              v76 = v96 + v35 * v43;
              while (v43 < v44)
              {
                outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v76, v17);
                if (static UUID.== infix(_:_:)())
                {
                  outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
                }

                else
                {
                  v77 = static UUID.== infix(_:_:)();
                  outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
                  if ((v77 & 1) == 0)
                  {
                    if (v43 != v40)
                    {
                      if (v40 < 0)
                      {
                        goto LABEL_60;
                      }

                      v78 = *v45;
                      if (v40 >= v78)
                      {
                        goto LABEL_61;
                      }

                      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v96 + v40 * v35, v89);
                      if (v43 >= v78)
                      {
                        goto LABEL_62;
                      }

                      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24 + v76, v88);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
                      }

                      outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(v88, v24 + v96 + v40 * v35);
                      if (v43 >= v24[2])
                      {
                        goto LABEL_63;
                      }

                      outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(v89, v24 + v76);
                    }

                    ++v40;
                  }
                }

                ++v43;
                v45 = v24 + 2;
                v44 = v24[2];
                v76 += v35;
                if (v43 == v44)
                {
                  goto LABEL_16;
                }
              }

              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              return;
            }
          }

LABEL_16:

          v46 = v24[2];
          v47 = v40 - v46;
          if (v40 > v46)
          {
            goto LABEL_55;
          }

          if (v40 < 0)
          {
            goto LABEL_56;
          }

          v48 = v24[2];
          if (v48 < v46)
          {
            goto LABEL_57;
          }

          v49 = v48 + v47;
          if (__OFADD__(v48, v47))
          {
            goto LABEL_58;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v24;
          if (isUniquelyReferenced_nonNull_native && v49 <= v24[3] >> 1)
          {
            v51 = v35;
          }

          else
          {
            v51 = v35;
            if (v48 <= v49)
            {
              v52 = v49;
            }

            else
            {
              v52 = v48;
            }

            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v24);
            v103 = v24;
          }

          v53 = v97;
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v40, v46, 0);
          v54 = v53[9];
          v55 = v99;
          v56 = *&v99[v54];
          if (!v56)
          {
            v56 = *&v20[v54];
            swift_unknownObjectRetain();
          }

          v57 = *(v55 + 24);
          v58 = *(v20 + 3);
          v59 = v57 + v58;
          if (__OFADD__(v57, v58))
          {
            goto LABEL_59;
          }

          v60 = (*(v55 + 8) + *(v20 + 1)) * 0.5;
          v61 = (*v55 + *v20) * 0.5;
          v62 = *(v55 + 40);
          v64 = *(v20 + 4);
          v63 = *(v20 + 5);
          v100 = *(v55 + 32);
          v101 = v62;
          swift_unknownObjectRetain();

          v65._countAndFlagsBits = v64;
          v66 = v97;
          v65._object = v63;
          String.append(_:)(v65);
          v67 = v100;
          v68 = v101;
          v69 = v90;
          UUID.init()();
          *v69 = v61;
          *(v69 + 8) = v60;
          *(v69 + 16) = v81;
          *(v69 + 24) = v59;
          *(v69 + 32) = v67;
          *(v69 + 40) = v68;
          *(v69 + v66[9]) = v56;
          *(v69 + v66[10]) = 0;
          v70 = (v69 + v66[11]);
          *v70 = 0;
          v70[1] = 0xE000000000000000;
          *(v69 + v66[12]) = 0;
          *(v69 + v66[13]) = 0;
          *(v69 + v66[14]) = 0;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v69, v91);
          v72 = v24[2];
          v71 = v24[3];
          if (v72 >= v71 >> 1)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v24);
          }

          v1 = v80;
          v24[2] = v72 + 1;
          outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v91, v24 + v96 + v72 * v51);
          v103 = v24;
          v73 = v90;
          v74 = v93;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v90, v93);
          swift_beginAccess();
          v75 = v92;
          specialized Set._Variant.insert(_:)(v92, v74);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v75);
          swift_endAccess();
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v73);
          v23 = v99;
        }

        v26 = v84;
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v20);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v23);
        v17 = v85;
        v27 = v95;
      }

      if (++v27 == v26)
      {

        return;
      }
    }
  }
}

Swift::tuple_tuple_Int_Int_Double_optional __swiftcall MOSuggestionAssetMapsClusterer.findSmallestEuclideanDistance(distanceMatrix:lowerHalfOnly:)(Swift::OpaquePointer *distanceMatrix, Swift::Bool lowerHalfOnly)
{
  rawValue = distanceMatrix->_rawValue;
  v4 = distanceMatrix->_rawValue + 32;
  v5 = *(distanceMatrix->_rawValue + 2);

  v10 = 0;
  v11 = 1.79769313e308;
  v12 = -1;
  v13 = -1;
  while (1)
  {
LABEL_2:
    if (v5 == v10)
    {

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
      }

      else
      {
        v6 = v13;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
      }

      else
      {
        v7 = v12;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = LOBYTE(v11);
      }

      goto LABEL_43;
    }

    if (v10 >= rawValue[2])
    {
      break;
    }

    v14 = *&v4[8 * v10++];
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = v13;
      v39 = v12;
      v36 = v5;
      v40 = *&stru_68.segname[swift_isaMask & *v2];

      v16 = 0;
      v17 = v10 - 1;
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_42;
        }

        v21 = *(v14 + 32 + 8 * v16);
        v22 = v40(v6);
        if (*(v22 + 16) && (v23 = v22, v24 = static Hasher._hash(seed:_:)(), v25 = -1 << *(v23 + 32), v26 = v24 & ~v25, ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
        {
          v27 = ~v25;
          while (*(*(v23 + 48) + 8 * v26) + 1 != v10)
          {
            v26 = (v26 + 1) & v27;
            if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
LABEL_19:

          v29 = (*(&stru_68.size + (swift_isaMask & *v2)))(v28);
          if (!*(v29 + 16) || (v30 = v29, v31 = static Hasher._hash(seed:_:)(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0))
          {
LABEL_24:

            if (!lowerHalfOnly || v16 < v17 && (v35 = rawValue[2], v16 < v35) && v35 >= 2 && v17 < v35)
            {
              v18 = v21 < v11;
              if (v21 >= v11)
              {
                v19 = v39;
              }

              else
              {
                v11 = v21;
                v19 = v16;
              }

              v20 = v38;
              if (v18)
              {
                v20 = v10 - 1;
              }

              v38 = v20;
              v39 = v19;
            }

            goto LABEL_12;
          }

          v34 = ~v32;
          while (*(*(v30 + 48) + 8 * v33) != v16)
          {
            v33 = (v33 + 1) & v34;
            if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

LABEL_12:
        if (++v16 == v15)
        {

          v5 = v36;
          v13 = v38;
          v12 = v39;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result.value._1 = v9;
  result.value._0._1 = v7;
  result.value._0._0 = v6;
  result.is_nil = v8;
  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  if (static UUID.== infix(_:_:)())
  {
    return 1;
  }

  else
  {
    return static UUID.== infix(_:_:)() & 1;
  }
}

int *MOSuggestionAssetMapsClusterer.combinedCluster(_:_:distance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v9 = result;
  v10 = result[9];
  v11 = *(a1 + v10);
  if (!v11)
  {
    v11 = *(a2 + v10);
    result = swift_unknownObjectRetain();
  }

  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
  }

  else
  {
    v15 = (*(a1 + 8) + *(a2 + 8)) * 0.5;
    v16 = (*a1 + *a2) * 0.5;
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    swift_unknownObjectRetain();

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    result = UUID.init()();
    *a3 = v16;
    *(a3 + 8) = v15;
    *(a3 + 16) = a4;
    *(a3 + 24) = v14;
    *(a3 + 32) = v21;
    *(a3 + 40) = v22;
    *(a3 + v9[9]) = v11;
    *(a3 + v9[10]) = 0;
    v20 = (a3 + v9[11]);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    *(a3 + v9[12]) = 0;
    *(a3 + v9[13]) = 0;
    *(a3 + v9[14]) = 0;
  }

  return result;
}

void static MOSuggestionAssetMapsClusterer.makeRegion(containing:applyBottomPaddingForPlatter:applyBottomPaddingForGradient:horizontalAspectRatio:markerStyle:applyRenderMargin:shouldAdjustMarker:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_25:
    if (one-time initialization token for assets == -1)
    {
LABEL_26:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static MOAngelLogger.assets);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "[MapSnapshot] makeRegion failed with 0 locations", v29, 2u);
      }

      v31.origin.x = MKMapRectNull.origin.x;
      v31.origin.y = MKMapRectNull.origin.y;
      v31.size.width = MKMapRectNull.size.width;
      v31.size.height = MKMapRectNull.size.height;
      MKCoordinateRegionForMapRect(v31);
      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_25;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v3 = v4;
    goto LABEL_6;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = *(a1 + 32);

LABEL_6:
  (*(*v3 + 240))(v4);
  (*(*v3 + 264))();
  v5 = (*(*v3 + 456))();
  v6 = (*(*v3 + 312))();
  v8 = v7;
  if (v2)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9 < 2)
    {
LABEL_8:
      if (((v8 & 1) != 0 || v6 < 2) && v5 > 0.0 && one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
      {
        swift_once();
      }

      return;
    }
  }

  else
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v9 < 2)
    {
      goto LABEL_8;
    }
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = (*(*v11 + 240))();
    v13 = (*(*v11 + 264))();

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15 + 4];
    *v16 = v12;
    v16[1] = v13;
  }

  while (v9 != v10);
  v17 = [objc_opt_self() polygonWithCoordinates:&_swiftEmptyArrayStorage[4] count:v9];

  [v17 boundingMapRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  MKCoordinateRegionForMapRect(v30);
}

void MOSuggestionAssetMapsClusterer.groupedByAverageHeight()()
{
  v130 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v0 = *(v130 - 8);
  v1 = __chkstk_darwin(v130);
  v134 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = (&v115 - v4);
  v6 = __chkstk_darwin(v3);
  v122 = &v115 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v115 - v9;
  v11 = __chkstk_darwin(v8);
  v121 = (&v115 - v12);
  __chkstk_darwin(v11);
  v14 = (&v115 - v13);
  *&v140 = 0;
  *(&v140 + 1) = 0xE000000000000000;
  v15 = COERCE_DOUBLE(specialized static MOAngelDefaultsManager.doubleValueFor(_:)());
  if (v16)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = v15;
  }

  if (one-time initialization token for assets != -1)
  {
LABEL_118:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static MOAngelLogger.assets);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v17;
    _os_log_impl(&dword_0, v19, v20, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v21, 0xCu);
  }

  v22 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_results;
  v23 = v131;
  swift_beginAccess();
  v24 = *(v23 + v22);
  p_info = (_TtC20MomentsUIServiceCore17MOAngelSignposter + 32);
  if (!*(v24 + 16))
  {
    v135 = _swiftEmptyArrayStorage;
    v40 = 0xE000000000000000;
    goto LABEL_99;
  }

  v119 = v10;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  v10 = ((v26 + 63) >> 6);

  v29 = 0;
  v30 = 0.0;
  while (v28)
  {
LABEL_17:
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v24 + 48) + v0[9] * (__clz(__rbit64(v28)) | (v29 << 6)), v14);
    v32 = *(v14 + 2);
    v33 = *(v14 + *(v130 + 36));
    swift_unknownObjectRetain();
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
    v34 = -v17;
    if (v33)
    {
      swift_unknownObjectRelease();
      v34 = v17;
    }

    v28 &= v28 - 1;
    v30 = v30 + v32 * (1.0 - v34);
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    if (v31 >= v10)
    {
      break;
    }

    v28 = *(v24 + 56 + 8 * v31);
    ++v29;
    if (v28)
    {
      v29 = v31;
      goto LABEL_17;
    }
  }

  v35 = *(v131 + v22);
  v36 = v35[2];
  if (v36)
  {
    v37 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5(v35[2], 0);
    v135 = specialized Sequence._copySequenceContents(initializing:)(&v138, v37 + ((*(v0 + 80) + 32) & ~*(v0 + 80)), v36, v35);
    v38 = v138;
    swift_bridgeObjectRetain_n();
    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v38);
    if (v135 != v36)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v39 = v131;
  }

  else
  {
    v39 = v131;

    v37 = _swiftEmptyArrayStorage;
  }

  *&v138 = v37;
  specialized MutableCollection<>.sort(by:)(&v138, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  v41 = v138;
  v10 = *(v138 + 16);
  if (!v10)
  {

    v135 = _swiftEmptyArrayStorage;
    v40 = 0xE000000000000000;
    p_info = _TtC20MomentsUIServiceCore17MOAngelSignposter.info;
    goto LABEL_101;
  }

  v42 = 0;
  v43 = v36;
  v125 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v44 = v138 + v125;
  v135 = _swiftEmptyArrayStorage;
  v120 = "ggestionLayoutEngine";
  v45 = v30 / v43;
  v126 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters;
  v118 = GEOPOICategoryReligiousSite;
  v14 = v121;
  v128 = v138;
  v123 = v10;
  v127 = v138 + v125;
  while (2)
  {
    if (v42 >= *(v41 + 16))
    {
      goto LABEL_114;
    }

    v46 = v0[9];
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v44 + v46 * v42, v14);
    v47 = *(v14 + 2);
    if (v47 >= v45)
    {
      goto LABEL_27;
    }

    v48 = v10;
    v10 = v5;
    v5 = v0;
    v132 = v46;
    v138 = v140;
    v49 = v14[4];
    v0 = v14[5];
    *&v136 = v49;
    *(&v136 + 1) = v0;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.contains<A>(_:)())
    {
      v44 = v127;
      v0 = v5;
      v5 = v10;
      v10 = v48;
      v41 = v128;
      goto LABEL_27;
    }

    v129._countAndFlagsBits = v49;
    *&v138 = v49;
    *(&v138 + 1) = v0;
    v129._object = v0;
    *&v136 = 95;
    *(&v136 + 1) = 0xE100000000000000;
    v50 = StringProtocol.components<A>(separatedBy:)();
    if (!*(v50 + 16))
    {
      goto LABEL_116;
    }

    v51 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
    }

    v52 = v132;
    v0 = v5;
    v53 = *(v51 + 2);
    if (!v53)
    {
      goto LABEL_117;
    }

    v5 = v10;
    *(v51 + 2) = v53 - 1;

    v10 = *(v51 + 2);
    if (!v10)
    {
      v10 = v123;
      v41 = v128;
LABEL_96:

      goto LABEL_97;
    }

    v14 = v0;
    v54 = 0;
    v124 = 0;
    v133 = 0;
    v0 = (v51 + 40);
    v55 = 0.0;
    v56 = 0.0;
    do
    {
      v57 = *(v0 - 1);
      v58 = *v0;
      if (v57)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58 == 0xE000000000000000;
      }

      if (v59)
      {
        goto LABEL_39;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_39;
      }

      v60 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v57, v58);
      if (v61)
      {
        goto LABEL_39;
      }

      if (v60 < 0)
      {
        goto LABEL_39;
      }

      v62 = *(v131 + v126);
      if (v60 >= *(v62 + 16))
      {
        goto LABEL_39;
      }

      v63 = (v62 + v125 + v60 * v52);
      v64 = *v63;
      v65 = v63[1];
      v66 = *(v63 + *(v130 + 36));
      if (!v66 || v124 >= 1)
      {
        goto LABEL_50;
      }

      v68 = one-time initialization token for defaults;
      swift_unknownObjectRetain();
      if (v68 != -1)
      {
        swift_once();
      }

      v69 = static MOAngelDefaultsManager.defaults;
      if (!static MOAngelDefaultsManager.defaults)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v138 = 0u;
        v139 = 0u;
        v52 = v132;
LABEL_75:
        outlined destroy of Any?(&v138);
        goto LABEL_51;
      }

      v70 = String._bridgeToObjectiveC()();
      v71 = [v69 objectForKey:v70];

      if (v71)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v137 = 0u;
        v136 = 0u;
      }

      v138 = v136;
      v139 = v137;
      v52 = v132;
      if (!*(&v137 + 1))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_75;
      }

      if (swift_dynamicCast() & 1) != 0 && (v136)
      {
        v72 = [v66 _poiCategory];
        if (!v72)
        {
          goto LABEL_77;
        }

        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v75;
        if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v117 == v76)
        {
          swift_unknownObjectRelease();

LABEL_88:
          swift_unknownObjectRelease();
          v52 = v132;
          goto LABEL_51;
        }

        LODWORD(v116) = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v116 & 1) == 0)
        {
LABEL_77:
          v117 = objc_opt_self();
          v77 = [v66 _styleAttributes];
          v115 = objc_opt_self();
          v78 = [v115 mainScreen];
          [v78 scale];
          v17 = v79;

          v80 = v117;
          v116 = [v117 newFillColorForStyleAttributes:v77 forScale:v17];

          v81 = v80;
          if (v116)
          {
            v82 = [v66 _styleAttributes];
            v83 = [v115 mainScreen];
            [v83 scale];
            v17 = v84;

            v85 = [v117 imageForStyle:v82 size:3 forScale:0 format:v17];
            if (v85)
            {

              v86 = v130;
              v124 = *(v130 + 32);

              v87 = v119;
              UUID.init()();
              *v87 = v64;
              *(v87 + 8) = v65;
              *(v87 + 16) = v47;
              countAndFlagsBits = v129._countAndFlagsBits;
              *(v87 + 24) = 1;
              *(v87 + 32) = countAndFlagsBits;
              *(v87 + 40) = v129._object;
              *(v87 + v86[9]) = v66;
              *(v87 + v86[10]) = 0;
              v89 = (v87 + v86[11]);
              *v89 = 0;
              v89[1] = 0xE000000000000000;
              *(v87 + v86[12]) = 0;
              *(v87 + v86[13]) = 1;
              *(v87 + v86[14]) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135[2] + 1, 1, v135);
              }

              v17 = 7.0;
              v91 = v135[2];
              v90 = v135[3];
              if (v91 >= v90 >> 1)
              {
                v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v135);
              }

              v92 = v135;
              v135[2] = v91 + 1;
              v93 = v92 + v125 + v91 * v132;
              v52 = v132;
              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v119, v93);
              if (v56 != 0.0)
              {
                v56 = v56 + (v56 - v64) / 7.0;
              }

              if (v55 != 0.0)
              {
                v55 = v55 + (v55 - v65) / 7.0;
              }

              v124 = 1;
              goto LABEL_39;
            }
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_88;
      }

      swift_unknownObjectRelease();
LABEL_50:
      swift_unknownObjectRelease();
LABEL_51:
      if (__OFADD__(v54++, 1))
      {
        goto LABEL_115;
      }

      if (v55 == 0.0)
      {
        v55 = v65;
      }

      else
      {
        v55 = (v55 + v65) * 0.5;
      }

      if (v56 == 0.0)
      {
        v56 = v64;
      }

      else
      {
        v56 = (v56 + v64) * 0.5;
      }

      swift_unknownObjectRetain();
      v133 = v66;
LABEL_39:
      v0 += 2;
      --v10;
    }

    while (v10);
    v0 = v14;
    v10 = v123;
    if (v54 < 1)
    {
      v14 = v121;
      v41 = v128;
      goto LABEL_96;
    }

    v94 = *(v51 + 2);
    v95 = v133;
    swift_unknownObjectRetain();
    object = v129._object;

    v97 = v130;
    v98 = v122;
    UUID.init()();
    *v98 = v56;
    *(v98 + 8) = v55;
    *(v98 + 16) = v47;
    v99 = v129._countAndFlagsBits;
    *(v98 + 24) = v54;
    *(v98 + 32) = v99;
    *(v98 + 40) = object;
    *(v98 + v97[9]) = v95;
    *(v98 + v97[10]) = 0;
    v100 = (v98 + v97[11]);
    *v100 = 0;
    v100[1] = 0xE000000000000000;
    *(v98 + v97[12]) = 0;
    *(v98 + v97[13]) = v54 != v94;
    *(v98 + v97[14]) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135[2] + 1, 1, v135);
    }

    v102 = v135[2];
    v101 = v135[3];
    v14 = v121;
    v41 = v128;
    if (v102 >= v101 >> 1)
    {
      v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v135);
    }

    v103 = v135;
    v135[2] = v102 + 1;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v122, v103 + v125 + v102 * v132);
LABEL_97:
    String.append(_:)(v129);
    swift_unknownObjectRelease();
    v44 = v127;
LABEL_27:
    ++v42;
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
    if (v42 != v10)
    {
      continue;
    }

    break;
  }

  v40 = *(&v140 + 1);
  p_info = (_TtC20MomentsUIServiceCore17MOAngelSignposter + 32);
LABEL_99:
  v39 = v131;
LABEL_101:
  v104 = *(&p_info[31]->flags + v39);
  v105 = v104[2];
  if (v105)
  {
    v106 = v140;
    v107 = v0;
    v108 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v109 = v104 + v108;
    v110 = v107[9];
    v133 = v104;

    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v109, v5);
      *&v138 = v106;
      *(&v138 + 1) = v40;
      v111 = v5[5];
      *&v136 = v5[4];
      *(&v136 + 1) = v111;
      lazy protocol witness table accessor for type String and conformance String();
      if (StringProtocol.contains<A>(_:)())
      {
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v5);
      }

      else
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v134);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135[2] + 1, 1, v135);
        }

        v113 = v135[2];
        v112 = v135[3];
        if (v113 >= v112 >> 1)
        {
          v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v135);
        }

        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v5);
        v114 = v135;
        v135[2] = v113 + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v134, v114 + v108 + v113 * v110);
      }

      v109 += v110;
      --v105;
    }

    while (v105);
  }
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id MOSuggestionAssetMapsClusterer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MOSuggestionAssetMapsClusterer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionAssetMapsClusterer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *MOSuggestionAssetMapsClusterer.__allocating_init(coordinates:separationThreshold:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 240))(_swiftEmptyArrayStorage, 0.5);
  v10 = v9;
  *&v9[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v30 = _swiftEmptyArrayStorage;
    v27[0] = v9;
    v12 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = 0;
    v14 = v30;
    v27[1] = a1;
    v15 = (a1 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v27[2] = v13;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v18;
      v19._countAndFlagsBits = 95;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20 = v28;
      v21 = v29;
      UUID.init()();
      *v8 = v16;
      v8[1] = v17;
      v8[2] = 0;
      v8[3] = 1;
      v8[4] = v20;
      v8[5] = v21;
      *(v8 + v5[9]) = 0;
      *(v8 + v5[10]) = 0;
      v22 = (v8 + v5[11]);
      *v22 = 0;
      v22[1] = 0xE000000000000000;
      *(v8 + v5[12]) = 0;
      *(v8 + v5[13]) = 0;
      *(v8 + v5[14]) = 0;
      v30 = v14;
      v24 = v14[2];
      v23 = v14[3];
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v14 = v30;
      }

      ++v13;
      v14[2] = v24 + 1;
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v8, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
      v15 += 2;
    }

    while (v11 != v13);

    v10 = v27[0];
  }

  else
  {
    v25 = v9;

    v14 = _swiftEmptyArrayStorage;
  }

  *&v10[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters] = v14;

  return v10;
}

uint64_t static MOSuggestionAssetMapsClusterer.clusteredPins(locations:targetRegion:numBuckets:)(unint64_t a1, NSObject *a2, long double a3, double a4, double a5, double a6)
{
  v7 = a1;
  v8 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_144;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) < 2)
  {
LABEL_145:

    return v7;
  }

  else
  {
    while (1)
    {
      if ((((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && a4 < 0.0)
      {
        v11 = a3;
        v12 = a6;
        v13 = a5;
        v14 = remainder(a4, 360.0);
        a5 = v13;
        a6 = v12;
        v15 = v14;
        a3 = v11;
        a4 = v15 + 360.0;
      }

      v16 = a5 * 0.5;
      v17 = a3 - v16;
      v18 = vabdd_f64(a3 - v16, v16 + a3);
      v19 = a2;
      v20 = v18 / a2;
      if (v20 <= 0.0)
      {
        goto LABEL_145;
      }

      a5 = a6 * 0.5;
      v21 = a4 - a6 * 0.5;
      a4 = vabdd_f64(v21, a4 + a6 * 0.5);
      v22 = a4 / v19;
      if (a4 / v19 <= 0.0)
      {
        goto LABEL_145;
      }

      v132 = &_swiftEmptyDictionarySingleton;
      if (!v8)
      {
        v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (v8)
        {
          break;
        }

        goto LABEL_64;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        break;
      }

LABEL_64:
      v49 = &_swiftEmptyDictionarySingleton;
LABEL_65:
      v7 = _swiftEmptyArrayStorage;
      v131 = _swiftEmptyArrayStorage;
      v50 = v49 + 8;
      v51 = 1 << LOBYTE(v49[4].isa);
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      isa = v52 & v49[8].isa;
      v54 = (v51 + 63) >> 6;

      v55 = 0;
      *&a3 = 134218242;
      v125 = v54;
      v127 = v49 + 8;
LABEL_69:
      v56 = v55;
      if (!isa)
      {
        goto LABEL_71;
      }

      do
      {
        v55 = v56;
LABEL_74:
        v57 = *(v49[7].isa + ((v55 << 9) | (8 * __clz(__rbit64(isa)))));
        v58 = one-time initialization token for assets;

        if (v58 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static MOAngelLogger.assets);

        a2 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        v61 = v57 >> 62;
        if (os_log_type_enabled(a2, v60))
        {
          v62 = swift_slowAlloc();
          *v62 = 134217984;
          if (v61)
          {
            v63 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v63 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
          }

          *(v62 + 4) = v63;

          _os_log_impl(&dword_0, a2, v60, "[ClusterPins] Group Count %ld", v62, 0xCu);
        }

        else
        {
        }

        isa &= isa - 1;
        v8 = (v57 & 0xFFFFFFFFFFFFFF8);
        if (v61)
        {
          if (v57 >= 0)
          {
            a2 = (v57 & 0xFFFFFFFFFFFFFF8);
          }

          else
          {
            a2 = v57;
          }

          v65 = _CocoaArrayWrapper.endIndex.getter();
          if (v65 <= 1)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_94:
              if ((v57 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_149;
                }
              }

              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v66, v67))
              {
                v8 = swift_slowAlloc();
                *v8 = 0;
                _os_log_impl(&dword_0, v66, v67, "[ClusterPins] Single location pass through", v8, 2u);
              }

              a2 = &v131;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v54 = v125;
              v50 = v127;
              if (*(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v131 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                v8 = *(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8));
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v7 = v131;
              goto LABEL_69;
            }
          }

          else
          {
            v114 = v57 & 0xFFFFFFFFFFFFFF8;
            v8 = v65;
            v130 = 0;
            v64 = _CocoaArrayWrapper.endIndex.getter();
            if (v64)
            {
              v112 = v8;
              v113 = v49;
              if (v64 < 1)
              {
                __break(1u);
LABEL_131:

                return v7;
              }

              goto LABEL_103;
            }
          }
        }

        else
        {
          v64 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
          if (v64 > 1)
          {
            v113 = v49;
            v114 = v57 & 0xFFFFFFFFFFFFFF8;
            v130 = 0;
            v112 = v64;
LABEL_103:
            v68 = v64;
            v122 = v57 & 0xC000000000000001;
            swift_beginAccess();
            v69 = 0;
            v116 = v57;
            v117 = 0;
            v70 = 0.0;
            v71 = 0.0;
            v115 = v68;
            do
            {
              if (v122)
              {
                v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v74 = *(v57 + 8 * v69 + 32);
              }

              v75 = (*(*v74 + 240))();
              v76 = (*(*v74 + 264))();
              v77 = *(*v74 + 288);
              v72 = v77();
              if (v72)
              {
                v78 = v72;
                v79 = v77();
                if (v79)
                {
                  v80 = [v79 _poiCategory];
                  swift_unknownObjectRelease();
                  if (v80)
                  {

                    v130 = v78;
                    v72 = swift_unknownObjectRelease();
                    v117 = v78;
                  }

                  else
                  {
                    v72 = swift_unknownObjectRelease();
                  }

                  v68 = v115;
                }

                else
                {
                  v72 = swift_unknownObjectRelease();
                }

                v57 = v116;
              }

              ++v69;
              v71 = v71 + v75;
              v70 = v70 + v76;
              v73 = (v77)(v72);

              swift_unknownObjectRelease();
            }

            while (v68 != v69);
            v81 = v117;
            if (!v117 && v73)
            {
              v130 = v73;
              swift_unknownObjectRetain();
              v81 = v73;
            }

            v118 = v81;
            v82 = Logger.logObject.getter();
            v83 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = v68;
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *v85 = 134218242;
              *(v85 + 4) = v84;
              *(v85 + 12) = 2080;
              v128[4] = v118;
              v129 = v86;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10GEOMapItem_pSgMd, &_sSo10GEOMapItem_pSgMR);
              v87 = Optional.debugDescription.getter();
              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v129);

              *(v85 + 14) = v89;
              _os_log_impl(&dword_0, v82, v83, "[ClusterPins] Conslidating %ld locations into a single pin, mapItem:%s", v85, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v86);
            }

            if (v122)
            {
              swift_unknownObjectRetain();
              v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v90 = v115;
            }

            else
            {
              v90 = v115;
              if (!*(v114 + 16))
              {
                goto LABEL_148;
              }

              v91 = *(v57 + 32);
              swift_unknownObjectRetain();
            }

            v93 = v71 / v90;
            v94 = (*(*v91 + 360))(v92);

            type metadata accessor for MOMapLocation(0);
            v95 = swift_allocObject();
            v96 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
            v97 = type metadata accessor for Date();
            v98 = *(*(v97 - 8) + 56);
            v98(v95 + v96, 1, 1, v97);
            v98(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v97);
            v99 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
            v100 = v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
            *v100 = 0;
            *(v100 + 8) = 1;
            v101 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
            v102 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
            v103 = (v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
            *v103 = 0;
            v103[1] = 0;
            v120 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
            v123 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
            v104 = (v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
            *v104 = 0;
            v104[1] = 0xE000000000000000;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = v93;
            *(v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = v70 / v112;
            v105 = (v95 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
            *v105 = 0;
            v105[1] = 0xE000000000000000;
            swift_beginAccess();
            *v100 = v115;
            *(v100 + 8) = 0;
            swift_beginAccess();
            v8 = v118;
            *(v95 + v99) = v118;
            swift_beginAccess();
            *(v95 + v101) = v94;
            swift_beginAccess();
            *(v95 + v102) = 0;
            swift_beginAccess();
            *v103 = 0;
            v103[1] = 0;
            swift_beginAccess();
            *(v95 + v120) = 0;
            swift_beginAccess();
            *(v95 + v123) = 0;
            swift_beginAccess();
            *v104 = 0;
            v104[1] = 0xE000000000000000;

            a2 = &v131;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v131 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v8 = *(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8));
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();
            v7 = v131;
            swift_unknownObjectRelease();
            v49 = v113;
            v54 = v125;
            v50 = v127;
            goto LABEL_69;
          }

          if (v64)
          {
            goto LABEL_94;
          }
        }

        v56 = v55;
        v54 = v125;
        v50 = v127;
      }

      while (isa);
LABEL_71:
      while (1)
      {
        v55 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v55 >= v54)
        {
          goto LABEL_131;
        }

        isa = v50[v55].isa;
        ++v56;
        if (isa)
        {
          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
      v106 = a6;
      v107 = a4;
      v108 = a3;
      v109 = a5;
      v110 = _CocoaArrayWrapper.endIndex.getter();
      a5 = v109;
      a3 = v108;
      a4 = v107;
      a6 = v106;
      if (v110 < 2)
      {
        goto LABEL_145;
      }
    }

    v121 = &a2->isa + 1;
    if (!__OFADD__(a2, 1))
    {
      v23 = 0;
      v124 = v7 & 0xC000000000000001;
      v119 = v7 & 0xFFFFFFFFFFFFFF8;
      *&a3 = 1;
      while (1)
      {
        if (v124)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v25 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (v23 >= *(v119 + 16))
          {
            goto LABEL_142;
          }

          v26 = *(v7 + 8 * v23 + 32);

          v25 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_133;
          }
        }

        a2 = v26;
        v27 = (*(v26->isa + 30))();
        a3 = (*(v26->isa + 33))();
        if ((((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && a3 < 0.0)
        {
          a3 = remainder(a3, 360.0) + 360.0;
        }

        a4 = (v27 - v17) / v20;
        a5 = -9.22337204e18;
        if (a4 <= -9.22337204e18)
        {
          goto LABEL_134;
        }

        a5 = 9.22337204e18;
        if (a4 >= 9.22337204e18)
        {
          goto LABEL_135;
        }

        a3 = (a3 - v21) / v22;
        if (COERCE__INT64(fabs((v27 - v17) / v20)) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_136;
        }

        a5 = -9.22337204e18;
        if (a3 <= -9.22337204e18)
        {
          goto LABEL_137;
        }

        a5 = 9.22337204e18;
        if (a3 >= 9.22337204e18)
        {
          goto LABEL_138;
        }

        v30 = a3 * v121;
        if ((a3 * v121) >> 64 != v30 >> 63)
        {
          goto LABEL_139;
        }

        v31 = a4 + v30;
        if (__OFADD__(a4, v30))
        {
          goto LABEL_140;
        }

        a2 = v132;
        if (v132[2].isa)
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if (v32)
          {
            a2 = &v132;
            v34 = specialized Dictionary.subscript.modify(v128, v31);
            if (v33->isa)
            {
              a2 = v33;

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*(&dword_10 + (a2->isa & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (a2->isa & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            (v34)(v128, 0);

            goto LABEL_20;
          }
        }

        v126 = v25;
        v35 = v8;
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1AC70;
        *(v7 + 32) = v26;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128[0] = a2;
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
        v39 = a2[2].isa;
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_141;
        }

        v42 = v37;
        if (a2[3].isa >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v45 = v128[0];
            if ((v37 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          else
          {
            a2 = v128;
            specialized _NativeDictionary.copy()();
            v45 = v128[0];
            if ((v42 & 1) == 0)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
          a2 = v128[0];
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_150;
          }

          v38 = v43;
          v45 = v128[0];
          if ((v42 & 1) == 0)
          {
LABEL_58:
            v45[(v38 >> 6) + 8] |= 1 << v38;
            *(v45[6] + 8 * v38) = v31;
            *(v45[7] + 8 * v38) = v7;

            v46 = v45[2];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_143;
            }

            v45[2] = v48;
            goto LABEL_19;
          }
        }

        v24 = v45[7];
        a2 = *(v24 + 8 * v38);
        *(v24 + 8 * v38) = v7;

LABEL_19:
        v132 = v45;
        v7 = v8;
        v8 = v35;
        v25 = v126;
LABEL_20:
        ++v23;
        if (v25 == v8)
        {
          v49 = v132;
          goto LABEL_65;
        }
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.comparable()()
{
  if ((((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && v1 < 0.0)
  {
    v4 = v0;
    v5 = remainder(v1, 360.0);
    v0 = v4;
    v1 = v5 + 360.0;
  }

  result.longitude = v1;
  result.latitude = v0;
  return result;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall MOSuggestionAssetMapsClusterer.printDendogram()()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5(v2[2], 0);
  v5 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  v7 = v8;
  swift_bridgeObjectRetain_n();
  outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant(v7);
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = _swiftEmptyArrayStorage;
  }

  v8 = v4;
  specialized MutableCollection<>.sort(by:)(&v8, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  specialized MOSuggestionAssetMapsClusterer.printClusters(_:)(v8);
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.normalized()()
{
  v2.i64[0] = v1;
  v3 = *v0.i64;
  v0.i64[0] = 0x4076800000000000;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = remainder(*v2.i64, *vbslq_s8(vnegq_f64(v4), v0, v2).i64);
  v6 = v3;
  result.longitude = v5;
  result.latitude = v6;
  return result;
}

uint64_t static FloatingPoint.* infix(_:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = *(a3 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  return (*(v7 + 8))(v9, a3);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v10 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v4 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v10 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  v21 = v4;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v8 + 48) + v14 * v12, v7);
      v15 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(a2);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v8 + 48) + v14 * v12, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v9, v7);
    v22 = *v16;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v9, v20);
    return 1;
  }
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
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
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v20 + v21 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v12 + 48) + v16 * a2, v9);
      v17 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(a1, *(v18 + 48) + *(v25 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

{
  v1 = v0;
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v6 + 48) + v21, v5);
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v20 + v21 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
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

        v2 = v31;
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
    *v2 = v8;
  }
}