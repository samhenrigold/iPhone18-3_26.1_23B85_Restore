uint64_t LocationSearchViewModel.completer(_:_:)(uint64_t a1, void *a2)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v7 = a2;
  v8 = sub_264783E14();
  v9 = sub_2647859D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_264605000, v8, v9, "#Initiator,LocationSearchViewModel,MKLocalSearchCompleterDelegate,%@", v10, 0xCu);
    sub_26468367C(v11);
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_2646CFDA4(id a1, uint64_t a2)
{
  if (a2 == 4)
  {
    result = [a1 _geoMapItem];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = [result _placeType];
    swift_unknownObjectRelease();
    if (v4 <= 0x11 && ((1 << v4) & 0x2D000) != 0)
    {
      return _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(a1);
    }
  }

  v6 = [a1 name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_264785724();
  }

  else
  {
    v8 = 0;
  }

  _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(a1);
  return v8;
}

void sub_2646CFED8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136642819;
    v13 = sub_264659B70(0, &unk_27FF77870, 0x277CE41F8);
    v14 = MEMORY[0x26673F530](a1, v13);
    v16 = sub_2646DF234(v14, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_264605000, v8, v9, "#Initiator,LocationSearchViewModel,CLLocationManagerDelegate, location results:%{sensitive}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266740650](v12, -1, -1);
    v17 = v11;
    v2 = v21;
    MEMORY[0x266740650](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v18 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_mkLocalSearchCompleter);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  if (!sub_264785C14())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26673FA30](0, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(a1 + 32);
LABEL_8:
    v20 = v19;
LABEL_11:
    [v18 setDeviceLocation_];

    return;
  }

  __break(1u);
}

uint64_t sub_2646D013C(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v6 = a1;
  v7 = sub_264783E14();
  v8 = sub_2647859D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_264605000, v7, v8, "#Initiator,LocationSearchViewModel,CLLocationManagerDelegate, location error:%@", v9, 0xCu);
    sub_26468367C(v10);
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2646D02D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2646D0338()
{
  result = qword_27FF77740;
  if (!qword_27FF77740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77740);
  }

  return result;
}

unint64_t sub_2646D0390()
{
  result = qword_27FF77748;
  if (!qword_27FF77748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77748);
  }

  return result;
}

void sub_2646D05D0(uint64_t a1)
{
  sub_264656F60(319, &qword_27FF77768, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_264656F0C(319, &qword_27FF77770, &qword_27FF77658, &qword_26478E4E0);
    if (v2 <= 0x3F)
    {
      sub_264656F0C(319, &qword_27FF77778, &qword_27FF776C0, &unk_26478DA18);
      if (v3 <= 0x3F)
      {
        sub_264656F60(319, &qword_27FF77780, &type metadata for LocationSearchViewModel.LocationValidity);
        if (v4 <= 0x3F)
        {
          sub_2646D15EC(319, &qword_27FF77788, type metadata accessor for SMSessionDestinationType);
          if (v5 <= 0x3F)
          {
            sub_264656F60(319, &qword_27FF77790, &type metadata for GeofenceSize);
            if (v6 <= 0x3F)
            {
              sub_264656F0C(319, &qword_27FF77798, &qword_27FF77678, &qword_26478DA10);
              if (v7 <= 0x3F)
              {
                sub_264656F60(319, &unk_27FF777A0, &type metadata for ReverseGeocodeStatus);
                if (v8 <= 0x3F)
                {
                  sub_2646D15EC(319, &qword_27FF779B0, type metadata accessor for MKCoordinateRegion);
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

void sub_2646D15EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783EF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MapAnnotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapAnnotationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2646D1790()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646D17C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646D181C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646D1880()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id CheckInOnboardingExampleDataViewController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v7 = sub_264785714();

  sub_264785694();
  v8 = [v5 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v9 = sub_264785714();

  v12.receiver = v0;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithTitle_detailText_symbolName_contentLayout_, v7, v9, 0, 3);

  return v10;
}

Swift::Void __swiftcall CheckInOnboardingExampleDataViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_264784BD4();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for ExampleDataList(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, sel_viewDidLoad);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v8 = v7 + *(v5 + 28);
  v56[15] = 2;
  sub_2647852E4();
  v9 = v58;
  *v8 = v57;
  *(v8 + 1) = v9;
  *(v7 + *(v5 + 32)) = 0;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77880, &qword_26478DF68));
  v11 = sub_264784784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77888, &qword_26478DF70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2647889E0;
  sub_264784BB4();
  v57 = v12;
  sub_2646D2534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77898, &qword_26478DF78);
  sub_2646D258C();
  sub_264785BD4();
  sub_264784764();
  v13 = v11;
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = [v13 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v1 contentView];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setFrame_];
  [v1 addChildViewController_];
  v27 = [v1 contentView];
  v28 = [v13 view];
  if (!v28)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = v28;
  [v27 addSubview_];

  [v13 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26478B4E0;
  v31 = [v13 view];
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v1 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v30 + 32) = v36;
  v37 = [v13 view];
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = v37;
  v39 = [v37 trailingAnchor];

  v40 = [v1 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v30 + 40) = v42;
  v43 = [v13 view];
  if (!v43)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v44 = v43;
  v45 = [v43 topAnchor];

  v46 = [v1 contentView];
  v47 = [v46 topAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v30 + 48) = v48;
  v49 = [v13 view];

  if (v49)
  {
    v50 = [v49 bottomAnchor];

    v51 = [v1 contentView];
    v52 = [v51 bottomAnchor];

    v53 = [v50 constraintEqualToAnchor_];
    *(v30 + 56) = v53;
    v54 = objc_opt_self();
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v55 = sub_2647857E4();

    [v54 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

id CheckInOnboardingExampleDataViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingExampleDataViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingExampleDataViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2646D2534()
{
  result = qword_27FF77890;
  if (!qword_27FF77890)
  {
    sub_264784BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77890);
  }

  return result;
}

unint64_t sub_2646D258C()
{
  result = qword_27FF778A0;
  if (!qword_27FF778A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77898, &qword_26478DF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF778A0);
  }

  return result;
}

double sub_2646D26EC()
{
  v1 = v0 + qword_27FF778B0;
  swift_beginAccess();
  return *v1;
}

void sub_2646D2758(double a1, double a2)
{
  v5 = (v2 + qword_27FF778B0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_2646D2810()
{
  v0 = sub_2646D6224();
  v1 = v0;
  return v0;
}

void sub_2646D283C(uint64_t a1)
{
  v3 = qword_27FF778B8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2646D28F4(_BYTE *a1@<X8>)
{
  v3 = qword_27FF778C0;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_2646D2948(char *a1)
{
  v2 = *a1;
  v3 = qword_27FF778C0;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id MapAnnotationModel.init(coordinate:annotationType:)(char *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v8 = *MEMORY[0x277D85000];
  v9 = *a1;
  *(v6 + qword_27FF778B8) = 0;
  v10 = (v6 + qword_27FF778B0);
  *v10 = a2;
  v10[1] = a3;
  *(v6 + qword_27FF778C0) = v9;
  v11 = type metadata accessor for MapAnnotationModel(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), a6);
  v13.receiver = v6;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_2646D2A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v25 = a4;
  v26 = a2;
  v23 = a3;
  v24 = a1;
  v27 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778C8, &qword_26478DFC0);
  sub_264784884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778D0, &qword_26478DFC8);
  swift_getTupleTypeMetadata2();
  sub_264785564();
  swift_getWitnessTable();
  v7 = sub_264785394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = sub_264784264();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v28 = v23;
  v29 = v25;
  v30 = v6;
  v31 = v24;
  v32 = v26;
  sub_2647845C4();
  sub_264785384();
  sub_264784C64();
  WitnessTable = swift_getWitnessTable();
  sub_2647850D4();
  (*(v8 + 8))(v10, v7);
  v33 = WitnessTable;
  v34 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v19 = *(v12 + 16);
  v19(v17, v15, v11);
  v20 = *(v12 + 8);
  v20(v15, v11);
  v19(v27, v17, v11);
  return (v20)(v17, v11);
}

uint64_t sub_2646D2DE8@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v51 = a3;
  v52 = a4;
  v5 = a2;
  v48 = a1;
  v56 = a5;
  v6 = *a2;
  v7 = *MEMORY[0x277D85000];
  v50 = *MEMORY[0x277D85000] & *a2;
  v8 = *((v7 & v6) + 0x50);
  v9 = sub_264785B44();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = *(v8 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778C8, &qword_26478DFC0);
  v22 = sub_264784884();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v53 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v57 = &v46 - v26;
  v48(v25);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v46 + 8))(v12, v47);
    type metadata accessor for SafetyMonitorUIUtilities();
    v27 = qword_27FF778C0;
    swift_beginAccess();
    LOBYTE(v72) = *(v5 + v27);
    static SafetyMonitorUIUtilities.iconFor(_:)(&v72, v74);
    v28 = *v74;
    v29 = *&v74[16];
    v30 = v74[25];
    v31 = v74[24];
    v32 = *(v50 + 88);
    v33 = sub_26460CDF0(&qword_27FF779D8, &qword_27FF778C8, &qword_26478DFC0, MEMORY[0x277CE14C0]);
    sub_264771050(v74, v8, v49, v32, v33);
    sub_2646D6D74(v28, *(&v28 + 1), v29, v31, v30);
  }

  else
  {
    (*(v13 + 32))(v21, v12, v8);
    v48 = v5;
    v34 = *(v50 + 88);
    v35 = *(v13 + 16);
    v35(v19, v21, v8);
    v35(v16, v19, v8);
    v36 = sub_26460CDF0(&qword_27FF779D8, &qword_27FF778C8, &qword_26478DFC0, MEMORY[0x277CE14C0]);
    sub_264771148(v16, v8, v49, v34, v36);
    v37 = *(v13 + 8);
    v37(v16, v8);
    v37(v19, v8);
    v37(v21, v8);
    v32 = v34;
    v5 = v48;
  }

  v38 = sub_264784724();
  LOBYTE(v63) = 1;
  sub_2646D3474(v5, v51, v52, v70);
  *&v74[23] = v70[1];
  *&v74[7] = v70[0];
  *&v74[39] = v70[2];
  *&v74[55] = v71;
  *&v73[17] = *&v74[16];
  *&v73[33] = *&v74[32];
  *&v73[49] = *&v74[48];
  v72 = v38;
  v73[0] = v63;
  *&v73[64] = *(&v71 + 1);
  *&v73[1] = *v74;
  v40 = v53;
  v39 = v54;
  v41 = v57;
  v42 = v55;
  (*(v54 + 16))(v53, v57, v55);
  v65 = *&v73[16];
  v66 = *&v73[32];
  v67 = *&v73[48];
  v68 = *&v73[64];
  v69[0] = v40;
  v63 = v72;
  v64 = *v73;
  v69[1] = &v63;
  sub_2646D6DD0(&v72, v74);
  v62[0] = v42;
  v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778D0, &qword_26478DFC8);
  v43 = sub_26460CDF0(&qword_27FF779D8, &qword_27FF778C8, &qword_26478DFC0, MEMORY[0x277CE14C0]);
  v58 = v32;
  v59 = v43;
  WitnessTable = swift_getWitnessTable();
  v61 = sub_26460CDF0(&unk_27FF779E0, &qword_27FF778D0, &qword_26478DFC8, MEMORY[0x277CE1198]);
  sub_264771240(v69, 2uLL, v62);
  sub_26460CD50(&v72, &qword_27FF778D0, &qword_26478DFC8);
  v44 = *(v39 + 8);
  v44(v41, v42);
  *&v74[32] = v65;
  *&v74[48] = v66;
  *&v74[64] = v67;
  v75 = v68;
  *v74 = v63;
  *&v74[16] = v64;
  sub_26460CD50(v74, &qword_27FF778D0, &qword_26478DFC8);
  return (v44)(v40, v42);
}

uint64_t sub_2646D3474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_264785704();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2647856E4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = qword_27FF778B8;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (v11 && (v12 = [v11 name]) != 0)
  {
    v13 = v12;
    sub_264785724();

    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v43 = sub_264785754();
    v44 = v16;
    sub_264613FC4();
    v17 = sub_264784E44();
    v19 = v18;
    v21 = v20 & 1;
    v41 = v17;
    v39 = v22;
    sub_26460C474(v17, v22, v20 & 1);
    v38 = v19;
  }

  else
  {
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v21 = 0;
  }

  v23 = qword_27FF778C0;
  swift_beginAccess();
  LOBYTE(v42[0]) = *(a1 + v23);
  v42[0] = _s15SafetyMonitorUI0aB11UIUtilitiesC20descriptionStringFor_12originDeviceSSAA17MapAnnotationTypeO_SSSgtFZ_0(v42, a2, a3);
  v42[1] = v24;
  sub_264613FC4();
  v25 = sub_264784E44();
  v27 = v26;
  v29 = v28;
  sub_264785214();
  v30 = sub_264784DE4();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_26460ECC4(v25, v27, v29 & 1);

  sub_26466D538(v41, v39, v21, v38);
  sub_26460C474(v30, v32, v34 & 1);

  sub_26466D57C(v41, v39, v21, v38);
  LOBYTE(v42[0]) = v34 & 1;
  *a4 = v41;
  a4[1] = v39;
  a4[2] = v21;
  a4[3] = v38;
  a4[4] = v30;
  a4[5] = v32;
  *(a4 + 48) = v34 & 1;
  a4[7] = v36;
  sub_26460ECC4(v30, v32, v34 & 1);

  return sub_26466D57C(v41, v39, v21, v38);
}

id MapAnnotationModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapAnnotationModel.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MapAnnotationModel(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2646D3958@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for MapAnnotationModel(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_264785CF4();
  *a3 = result;
  return result;
}

uint64_t sub_2646D39A0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for MapAnnotationModel(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_264783E64();
  *a3 = result;
  return result;
}

double sub_2646D39E4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_2646D3A64(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

double sub_2646D3ADC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_2646D3B54(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

void (*sub_2646D3BE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_264783EC4();
  return sub_264623A34;
}

uint64_t sub_2646D3C88(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646D3E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646D3F60(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__mapRegion;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_2646D40D0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646D4150(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  sub_264783EE4();
  sub_2646D422C(v3);
}

uint64_t sub_2646D422C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v10);

  LOBYTE(a1) = sub_2646D821C(v10, a1);

  if ((a1 & 1) == 0)
  {
    v7 = sub_2647858E4();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;

    sub_264635430(0, 0, v5, &unk_26478E1C8, v8);
  }

  return result;
}

uint64_t sub_2646D43A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646D4444, 0, 0);
}

uint64_t sub_2646D4444()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_2647858E4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_2647858B4();

  v4 = sub_2647858A4();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_264635430(0, 0, v1, &unk_26478E1D8, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2646D455C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_2646D45D0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  v2 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  sub_264783EE4();
  sub_2646D422C(v2);
}

uint64_t (*sub_2646D46A0(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_2646D4734;
}

uint64_t sub_2646D4734(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {

    sub_264783ED4(a1 + 1);

    v5 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_264783EE4();
    sub_2646D422C(v5);
  }

  else
  {
    sub_264783ED4(a1 + 1);

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_264783EE4();
    sub_2646D422C(v6);
  }
}

uint64_t sub_2646D48A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778F0, &unk_26478E068);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646D4A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778F0, &unk_26478E068);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646D4B78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778F0, &unk_26478E068);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__annotations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646D4CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_264783E24();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_264783AF4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  sub_2647858B4();
  v4[22] = sub_2647858A4();
  v8 = sub_264785874();
  v4[23] = v8;
  v4[24] = v7;

  return MEMORY[0x2822009F8](sub_2646D4E38, v8, v7);
}

uint64_t sub_2646D4E38()
{
  v0[11] = MEMORY[0x277D84F90];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v0 + 12);

  v1 = v0[12];
  v0[25] = v1;
  if (v1 >> 62)
  {
    result = sub_264785C14();
    v0[26] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[26] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      while (1)
      {
        v0[27] = v3;
        v0[28] = v4;
        v5 = v0[25];
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26673FA30]();
        }

        else
        {
          v6 = *(v5 + 8 * v3 + 32);
        }

        v7 = v6;
        v0[29] = v6;
        v8 = qword_27FF778C0;
        swift_beginAccess();
        if (v7[v8] == 4)
        {
        }

        else
        {
          v9 = sub_264785E84();

          if ((v9 & 1) == 0)
          {
            v12 = v0[20];
            v11 = v0[21];
            v13 = v0[19];
            v14 = objc_opt_self();
            v15 = &v7[qword_27FF778B0];
            swift_beginAccess();
            if ([v14 isLocationShiftRequiredForCoordinate_])
            {
              v16 = 2;
            }

            else
            {
              v16 = 1;
            }

            v17 = *v15;
            v18 = v15[1];
            sub_264783AE4();
            v19 = objc_allocWithZone(MEMORY[0x277CE41F8]);
            v20 = sub_264783A64();
            v21 = [v19 initWithCoordinate:v20 altitude:v16 horizontalAccuracy:v17 verticalAccuracy:v18 timestamp:0.0 referenceFrame:{0.0, -1.0}];
            v0[30] = v21;

            (*(v12 + 8))(v11, v13);
            v22 = v21;
            v23 = swift_task_alloc();
            v0[31] = v23;
            *v23 = v0;
            v23[1] = sub_2646D533C;

            return sub_2646DCEB0(v21);
          }
        }

        v10 = v7;
        MEMORY[0x26673F500]();
        if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_264785814();
        }

        sub_264785844();

        v4 = v0[11];
        v3 = v0[27] + 1;
        if (v3 == v0[26])
        {
          goto LABEL_23;
        }
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v0 + 13);

  v24 = v0[13];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[14] = v4;

  sub_264783EE4();
  sub_2646D422C(v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_2646D533C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = *(v4 + 184);
    v6 = *(v4 + 192);
    v7 = sub_2646D5984;
  }

  else
  {

    *(v4 + 264) = a1;
    v5 = *(v4 + 184);
    v6 = *(v4 + 192);
    v7 = sub_2646D546C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2646D546C()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = qword_27FF778B8;
  swift_beginAccess();
  v4 = *&v2[v3];
  *&v2[v3] = v1;
  v5 = v1;

  MEMORY[0x26673F500](v2);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_264785814();
  }

  v6 = v0[29];
  v7 = v0[30];
  sub_264785844();

  v8 = v0[11];
  v9 = v0[27] + 1;
  if (v9 == v0[26])
  {
LABEL_4:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v0 + 13);

    v10 = v0[13];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[14] = v8;

    sub_264783EE4();
    sub_2646D422C(v10);

    v11 = v0[1];

    return v11();
  }

  while (1)
  {
    v0[27] = v9;
    v0[28] = v8;
    v13 = v0[25];
    v14 = (v13 & 0xC000000000000001) != 0 ? MEMORY[0x26673FA30]() : *(v13 + 8 * v9 + 32);
    v15 = v14;
    v0[29] = v14;
    v16 = qword_27FF778C0;
    swift_beginAccess();
    if (v15[v16] != 4)
    {
      break;
    }

LABEL_13:
    v18 = v15;
    MEMORY[0x26673F500]();
    if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_264785814();
    }

    sub_264785844();

    v8 = v0[11];
    v9 = v0[27] + 1;
    if (v9 == v0[26])
    {
      goto LABEL_4;
    }
  }

  v17 = sub_264785E84();

  if (v17)
  {
    goto LABEL_13;
  }

  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[19];
  v22 = objc_opt_self();
  v23 = &v15[qword_27FF778B0];
  swift_beginAccess();
  if ([v22 isLocationShiftRequiredForCoordinate_])
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = *v23;
  v26 = v23[1];
  sub_264783AE4();
  v27 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v28 = sub_264783A64();
  v29 = [v27 initWithCoordinate:v28 altitude:v24 horizontalAccuracy:v25 verticalAccuracy:v26 timestamp:0.0 referenceFrame:{0.0, -1.0}];
  v0[30] = v29;

  (*(v20 + 8))(v19, v21);
  v30 = v29;
  v31 = swift_task_alloc();
  v0[31] = v31;
  *v31 = v0;
  v31[1] = sub_2646D533C;

  return sub_2646DCEB0(v29);
}

uint64_t sub_2646D5984()
{
  v43 = v0;
  v2 = v0[29];
  v1 = v0[30];

  sub_264783DE4();
  v3 = v2;
  v4 = sub_264783E14();
  v5 = sub_2647859D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[16];
  if (v6)
  {
    v41 = v0[18];
    v40 = v0[16];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2646DF234(0xD00000000000002BLL, 0x8000000264797D50, &v42);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    v15 = v8;
    _os_log_impl(&dword_264605000, v4, v5, "%s: Error happened when trying to resolve address for %@", v12, 0x16u);
    sub_26460CD50(v13, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x266740650](v14, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    (*(v9 + 8))(v41, v40);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v16 = v0[28];
  v17 = v0[27] + 1;
  if (v17 == v0[26])
  {
LABEL_5:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v0 + 13);

    v18 = v0[13];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[14] = v16;

    sub_264783EE4();
    sub_2646D422C(v18);

    v19 = v0[1];

    return v19();
  }

  while (1)
  {
    v0[27] = v17;
    v0[28] = v16;
    v21 = v0[25];
    v22 = (v21 & 0xC000000000000001) != 0 ? MEMORY[0x26673FA30]() : *(v21 + 8 * v17 + 32);
    v23 = v22;
    v0[29] = v22;
    v24 = qword_27FF778C0;
    swift_beginAccess();
    if (v23[v24] != 4)
    {
      break;
    }

LABEL_14:
    v26 = v23;
    MEMORY[0x26673F500]();
    if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_264785814();
    }

    sub_264785844();

    v16 = v0[11];
    v17 = v0[27] + 1;
    if (v17 == v0[26])
    {
      goto LABEL_5;
    }
  }

  v25 = sub_264785E84();

  if (v25)
  {
    goto LABEL_14;
  }

  v28 = v0[20];
  v27 = v0[21];
  v29 = v0[19];
  v30 = objc_opt_self();
  v31 = &v23[qword_27FF778B0];
  swift_beginAccess();
  if ([v30 isLocationShiftRequiredForCoordinate_])
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  v33 = *v31;
  v34 = v31[1];
  sub_264783AE4();
  v35 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v36 = sub_264783A64();
  v37 = [v35 initWithCoordinate:v36 altitude:v32 horizontalAccuracy:v33 verticalAccuracy:v34 timestamp:0.0 referenceFrame:{0.0, -1.0}];
  v0[30] = v37;

  (*(v28 + 8))(v27, v29);
  v38 = v37;
  v39 = swift_task_alloc();
  v0[31] = v39;
  *v39 = v0;
  v39[1] = sub_2646D533C;

  return sub_2646DCEB0(v37);
}

uint64_t MapViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__safetyCache;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__mapRegion;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__annotations;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t MapViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__safetyCache;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__mapRegion;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__annotations;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_2646D61E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t sub_2646D6224()
{
  v1 = qword_27FF778B8;
  swift_beginAccess();
  return *(v0 + v1);
}

__n128 sub_2646D633C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_2646D6348@<X0>(void *a1@<X8>)
{
  v2 = sub_2646D6224();
  *a1 = v2;

  return v2;
}

void sub_2646D6384(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2646D283C(v1);
}

uint64_t type metadata accessor for MapViewModel(uint64_t a1)
{
  result = qword_27FF77990;
  if (!qword_27FF77990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2646D678C(uint64_t a1)
{
  sub_264656F0C(319, &unk_27FF779A0, &qword_27FF756F8, &qword_264787DF0);
  if (v1 <= 0x3F)
  {
    sub_264683BEC(319);
    if (v2 <= 0x3F)
    {
      sub_264656F0C(319, &qword_27FF76888, &unk_27FF779C0, qword_26478AEA0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2646D6AAC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778C8, &qword_26478DFC0);
  sub_264784884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778D0, &qword_26478DFC8);
  swift_getTupleTypeMetadata2();
  sub_264785564();
  swift_getWitnessTable();
  sub_264785394();
  sub_264784264();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2646D6BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26460F764;

  return sub_2646D43A8(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646D6CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264611390;

  return sub_2646D4CE8(a1, v4, v5, v6);
}

uint64_t sub_2646D6D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v5 = a4 & 1;
  if (a5)
  {
    return sub_2646D6D84(a1, a2, a3, v5);
  }

  else
  {
    return sub_26466D3B0(a1, a2, a3);
  }
}

uint64_t sub_2646D6D84(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_2646D6DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778D0, &qword_26478DFC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SafetyCache.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v30 = v0[7];
  v31 = v0[8];
  v32 = v0[10];
  v33 = v0[11];
  sub_264785CE4();
  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264797DB0);
  if (v1)
  {
    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    sub_264785D84();
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 6369134;
  }

  MEMORY[0x26673F4D0](v8, v9);

  MEMORY[0x26673F4D0](0xD000000000000013, 0x8000000264797DD0);
  if (v2)
  {
    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    sub_264785D84();
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 6369134;
  }

  MEMORY[0x26673F4D0](v10, v11);

  MEMORY[0x26673F4D0](0xD000000000000018, 0x8000000264797DF0);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_264785C14();
  }

  v12 = sub_264785E44();
  MEMORY[0x26673F4D0](v12);

  MEMORY[0x26673F4D0](0xD000000000000010, 0x8000000264797E10);
  if (v3)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 6369134;
  }

  MEMORY[0x26673F4D0](v13, v14);

  MEMORY[0x26673F4D0](0x636F4C6B636F6C20, 0xEE00206E6F697461);
  if (v5)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 6369134;
  }

  MEMORY[0x26673F4D0](v15, v16);

  MEMORY[0x26673F4D0](0xD000000000000014, 0x8000000264797E30);
  if (v6)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
    v17 = 6369134;
  }

  MEMORY[0x26673F4D0](v17, v18);

  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264797E50);
  if (v7)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v20 = 0xE300000000000000;
    v19 = 6369134;
  }

  MEMORY[0x26673F4D0](v19, v20);

  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264797E70);
  if (v30)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v22 = 0xE300000000000000;
    v21 = 6369134;
  }

  MEMORY[0x26673F4D0](v21, v22);

  MEMORY[0x26673F4D0](0xD000000000000013, 0x8000000264797E90);
  if (v31)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = 0xE300000000000000;
    v23 = 6369134;
  }

  MEMORY[0x26673F4D0](v23, v24);

  MEMORY[0x26673F4D0](0xD000000000000014, 0x8000000264797EB0);
  if (v32 >> 60 == 15)
  {
    v25 = 0xE300000000000000;
    v26 = 6369134;
  }

  else
  {
    sub_264785D84();
    v26 = 0;
    v25 = 0xE000000000000000;
  }

  MEMORY[0x26673F4D0](v26, v25);

  MEMORY[0x26673F4D0](0x74756F6B726F7720, 0xEF2073746E657645);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A00, &qword_26478FDC0);
    sub_264785D84();
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v28 = 0xE300000000000000;
    v27 = 6369134;
  }

  MEMORY[0x26673F4D0](v27, v28);

  return 0;
}

double SafetyCache.init(phoneCache:watchCache:)@<D0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v91 = a3;
  v5 = sub_264783E24();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v88 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v84 - v8;
  v87 = sub_264783AF4();
  v9 = *(v87 - 8);
  v10 = MEMORY[0x28223BE20](v87);
  v86 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - v12;
  v84 = xmmword_26478E1E0;
  *&v101[8] = xmmword_26478E1E0;
  if (a1)
  {
    *&v97 = [a1 deviceStatus];
    if (!a2)
    {
      *(&v97 + 1) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *&v97 = 0;
    if (!a2)
    {
      *(&v97 + 1) = 0;
      goto LABEL_9;
    }
  }

  *(&v97 + 1) = [a2 deviceStatus];
  if (a1)
  {
LABEL_6:
    v14 = [a1 locationsDuringSession];
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    v15 = sub_264785954();

    if (!a2)
    {
      goto LABEL_14;
    }

LABEL_11:
    v16 = [a2 locationsDuringSession];
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    v17 = sub_264785954();

    goto LABEL_16;
  }

LABEL_9:
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    sub_26476E27C(MEMORY[0x277D84F90]);
    v15 = v18;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
    if (a2)
    {
      goto LABEL_11;
    }
  }

LABEL_14:
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    sub_26476E27C(MEMORY[0x277D84F90]);
    v17 = v83;
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

LABEL_16:
  sub_2646D893C(v17, v15);
  *&v98 = v19;
  v20 = a1;
  *(&v98 + 1) = [v20 unlockLocation];
  *&v99 = [v20 lockLocation];
  *v101 = [v20 parkedCarLocation];
  v21 = a2;
  *(&v100 + 1) = [v21 offWristLocation];
  v22 = [v20 mostRecentLocation];
  v94 = v21;
  v23 = [v21 mostRecentLocation];
  v24 = v23;
  v92 = a1;
  v93 = a2;
  if (v22)
  {
    if (v23)
    {
      v25 = v22;
      v24 = v24;
      v26 = [v25 date];
      sub_264783AC4();

      v27 = [v24 date];
      v28 = v86;
      sub_264783AC4();

      v29 = sub_264783A74();
      v30 = v9;
      v31 = *(v9 + 8);
      v32 = v28;
      v33 = v87;
      v31(v32, v87);
      v31(v13, v33);
      a1 = v92;
      if (v29)
      {
        v34 = v24;
      }

      else
      {
        v34 = v25;
      }

      if (v29)
      {
        v24 = v25;
      }
    }

    else
    {
      v30 = v9;
      v24 = v22;
    }
  }

  else
  {
    v30 = v9;
  }

  *(&v99 + 1) = v24;
  v35 = *(&v99 + 1);
  v36 = [v20 startingLocation];

  v37 = v94;
  v38 = [v94 startingLocation];

  if (v36)
  {
    if (v38)
    {
      v36 = v36;
      v39 = v38;
      v40 = [v36 date];
      sub_264783AC4();

      v41 = [v39 date];
      v42 = v86;
      sub_264783AC4();

      v43 = sub_264783A84();
      v44 = *(v30 + 8);
      v45 = v42;
      v46 = v87;
      v44(v45, v87);
      v44(v13, v46);
      if (v43)
      {
        v47 = v39;
      }

      else
      {
        v47 = v36;
      }

      if ((v43 & 1) == 0)
      {
        v36 = v39;
      }
    }

    *&v100 = v36;
    v38 = v36;
    goto LABEL_36;
  }

  *&v100 = v38;
  if (v38)
  {
LABEL_36:
    v38 = v38;
    sub_2646D8E44(&v96, v38);
  }

  if (v35)
  {
    sub_2646D8E44(&v96, v35);
  }

  if (a1)
  {
    v48 = [v20 destinationMapItem];
    if (v48)
    {
      goto LABEL_43;
    }
  }

  if (!v93)
  {
    sub_264655900(*&v101[8], *&v101[16]);
    *&v101[8] = v84;
    goto LABEL_54;
  }

  v48 = [v94 destinationMapItem];
  if (v48)
  {
LABEL_43:
    v49 = v48;
    v50 = sub_264783A14();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xF000000000000000;
  }

  sub_264655900(*&v101[8], *&v101[16]);
  *&v101[8] = v50;
  *&v101[16] = v52;
  if (!v93 || (v53 = [v94 workoutEvents]) == 0)
  {
LABEL_54:
    v66 = v35;
    v67 = v88;
    sub_264783E04();
    v68 = sub_264783E14();
    v69 = sub_2647859C4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 136315394;
      v95 = &type metadata for SafetyCache;
      v96 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A18, &qword_26478E1F0);
      v72 = sub_264785764();
      v74 = v38;
      v75 = sub_2646DF234(v72, v73, &v96);

      *(v70 + 4) = v75;
      v38 = v74;
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264797ED0, &v96);
      _os_log_impl(&dword_264605000, v68, v69, "%s, %s: choosing phone workout events", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v71, -1, -1);
      MEMORY[0x266740650](v70, -1, -1);
    }

    (*(v89 + 8))(v67, v90);
    if (v92)
    {
      v76 = [v20 workoutEvents];
      if (v76)
      {
        v77 = v76;
        sub_264659B70(0, &qword_27FF77A10, 0x277D4AC40);
        v55 = sub_2647857F4();

        goto LABEL_63;
      }
    }

    v55 = 0;
    goto LABEL_63;
  }

  v54 = v53;
  sub_264659B70(0, &qword_27FF77A10, 0x277D4AC40);
  v55 = sub_2647857F4();

  if (v55 >> 62)
  {
    v56 = sub_264785C14();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v85;
  if (!v56)
  {

    goto LABEL_54;
  }

  sub_264783E04();
  v58 = sub_264783E14();
  v59 = sub_2647859C4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 136315394;
    v95 = &type metadata for SafetyCache;
    v96 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A18, &qword_26478E1F0);
    v62 = sub_264785764();
    v64 = sub_2646DF234(v62, v63, &v96);
    v93 = v38;
    v65 = v64;

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264797ED0, &v96);
    _os_log_impl(&dword_264605000, v58, v59, "%s, %s: choosing watch workout events", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v61, -1, -1);
    MEMORY[0x266740650](v60, -1, -1);
  }

  else
  {
  }

  (*(v89 + 8))(v57, v90);
LABEL_63:
  *&v101[24] = v55;
  v78 = v100;
  v79 = v91;
  v91[2] = v99;
  v79[3] = v78;
  v80 = v98;
  *v79 = v97;
  v79[1] = v80;
  result = *v101;
  v82 = *&v101[16];
  v79[4] = *v101;
  v79[5] = v82;
  return result;
}

uint64_t sub_2646D7FCC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_264659B70(0, &qword_27FF77A10, 0x277D4AC40);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26673FA30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26673FA30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_264785AE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_264785AE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_264785C14();
  }

  result = sub_264785C14();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2646D821C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A20, &qword_26478E380);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26673FA30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26673FA30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_264785AE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_264785AE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_264785C14();
  }

  result = sub_264785C14();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id SafetyCache.phoneDeviceStatus.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *SafetyCache.watchDeviceStatus.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SafetyCache.locationsDuringSession.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void *SafetyCache.unlockLocation.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *SafetyCache.lockLocation.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *SafetyCache.mostRecentLocation.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *SafetyCache.startingLocation.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *SafetyCache.offWristLocation.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *SafetyCache.parkedCarLocation.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t SafetyCache.destinationMapItem.getter()
{
  v1 = *(v0 + 72);
  sub_2646C6804(v1, *(v0 + 80));
  return v1;
}

uint64_t SafetyCache.destinationMapItem.setter(uint64_t a1, uint64_t a2)
{
  result = sub_264655900(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t SafetyCache.workoutEvents.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

void sub_2646D893C(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_264785C04();
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    sub_264785984();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
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

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_26467A824(v2);
      return;
    }

    while (1)
    {
      sub_2646D8E44(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_264785C44())
      {
        sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2646D8B30(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_264785F44();
  sub_264785794();
  v8 = sub_264785F94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_264785E84() & 1) != 0)
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

    sub_2646D9A00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2646D8C80(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *v4;
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](a3);
  v25 = a4;
  MEMORY[0x26673FC80](a4);
  v9 = sub_264785F94();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *(v13 + 8);
      v15 = *v13;
      v16 = sub_264785AE4();

      if ((v16 & 1) != 0 && v14 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(v8 + 48) + 24 * v11;
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v17) = *(v17 + 16);
    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v17;
    v20 = v18;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v23 = a2;
    sub_2646D9B80(v23, a3, v25, v11, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    *a1 = v23;
    *(a1 + 8) = a3;
    *(a1 + 16) = v25;
    return 1;
  }
}

uint64_t sub_2646D8E44(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_264785C24();

    if (v9)
    {

      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_264785C14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2646D907C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2646D9754(v20 + 1);
    }

    v18 = v8;
    sub_2646D997C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  v11 = sub_264785AD4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2646D9D50(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_264785AE4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2646D907C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
    v2 = sub_264785CB4();
    v15 = v2;
    sub_264785C04();
    if (sub_264785C44())
    {
      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2646D9754(v9 + 1);
        }

        v2 = v15;
        result = sub_264785AD4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_264785C44());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2646D926C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A38, &qword_26478E398);
  result = sub_264785CA4();
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
      sub_264785F44();
      sub_264785794();
      result = sub_264785F94();
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

uint64_t sub_2646D94CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  result = sub_264785CA4();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_264785F44();
      sub_264785AF4();
      MEMORY[0x26673FC80](v20);
      MEMORY[0x26673FC80](v21);
      result = sub_264785F94();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2646D9754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
  result = sub_264785CA4();
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
      result = sub_264785AD4();
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

unint64_t sub_2646D997C(uint64_t a1, uint64_t a2)
{
  sub_264785AD4();
  result = sub_264785BF4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2646D9A00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2646D926C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2646D9EC0();
      goto LABEL_16;
    }

    sub_2646DA2D4(v8 + 1);
  }

  v10 = *v4;
  sub_264785F44();
  sub_264785794();
  result = sub_264785F94();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_264785E84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_264785EB4();
  __break(1u);
  return result;
}

void sub_2646D9B80(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a5)
  {
    sub_2646D94CC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2646DA01C();
      goto LABEL_14;
    }

    sub_2646DA50C(v9 + 1);
  }

  v11 = *v5;
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](a2);
  MEMORY[0x26673FC80](a3);
  v12 = sub_264785F94();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
    while (1)
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *(v15 + 8);
      v17 = *v15;
      v18 = sub_264785AE4();

      if ((v18 & 1) != 0 && v16 == a2)
      {
        break;
      }

      a4 = (a4 + 1) & v14;
      if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_264785EB4();
    __break(1u);
  }

LABEL_14:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }
}

void sub_2646D9D50(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2646D9754(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2646DA184();
      goto LABEL_12;
    }

    sub_2646DA76C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_264785AD4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_264785AE4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_264785EB4();
  __break(1u);
}

void *sub_2646D9EC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A38, &qword_26478E398);
  v2 = *v0;
  v3 = sub_264785C94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_2646DA01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  v2 = *v0;
  v3 = sub_264785C94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        result = v19;
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

  return result;
}

id sub_2646DA184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
  v2 = *v0;
  v3 = sub_264785C94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

uint64_t sub_2646DA2D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A38, &qword_26478E398);
  result = sub_264785CA4();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_264785F44();

      sub_264785794();
      result = sub_264785F94();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_2646DA50C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  result = sub_264785CA4();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_264785F44();
      v22 = v19;
      sub_264785AF4();
      MEMORY[0x26673FC80](v20);
      MEMORY[0x26673FC80](v21);
      result = sub_264785F94();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v22;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

  return result;
}

uint64_t sub_2646DA76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
  result = sub_264785CA4();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_264785AD4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

  return result;
}

BOOL _s15SafetyMonitorUI0A5CacheV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v54 = *(a1 + 32);
    v52 = *(a2 + 40);
    v53 = *(a1 + 40);
    v50 = *(a2 + 48);
    v51 = *(a1 + 48);
    v48 = *(a2 + 56);
    v49 = *(a1 + 56);
    v46 = *(a1 + 64);
    v47 = *(a2 + 64);
    v42 = *(a2 + 72);
    v43 = *(a2 + 80);
    v44 = *(a1 + 72);
    v45 = *(a1 + 80);
    v40 = *(a2 + 88);
    v41 = *(a1 + 88);
    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    v11 = v7;
    v12 = v2;
    v13 = sub_264785AE4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v54 = *(a1 + 32);
    v52 = *(a2 + 40);
    v53 = *(a1 + 40);
    v50 = *(a2 + 48);
    v51 = *(a1 + 48);
    v48 = *(a2 + 56);
    v49 = *(a1 + 56);
    v46 = *(a1 + 64);
    v47 = *(a2 + 64);
    v42 = *(a2 + 72);
    v43 = *(a2 + 80);
    v44 = *(a1 + 72);
    v45 = *(a1 + 80);
    v40 = *(a2 + 88);
    v41 = *(a1 + 88);
    if (v7)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    v14 = v6;
    v15 = v3;
    v16 = sub_264785AE4();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_2646316E0(v5, v9);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v18 = v8;
    v19 = v4;
    v20 = sub_264785AE4();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v54)
  {
    if (!v10)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v21 = v10;
    v22 = v54;
    v23 = sub_264785AE4();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v53)
  {
    if (!v52)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v24 = v52;
    v25 = v53;
    v26 = sub_264785AE4();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

  if (v51)
  {
    if (!v50)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v27 = v50;
    v28 = v51;
    v29 = sub_264785AE4();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  if (v49)
  {
    if (!v48)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v30 = v48;
    v31 = v49;
    v32 = sub_264785AE4();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  if (v46)
  {
    if (!v47)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v33 = v47;
    v34 = v46;
    v35 = sub_264785AE4();

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  if (v45 >> 60 == 15)
  {
    v36 = v43;
    if (v43 >> 60 == 15)
    {
      sub_2646C6804(v44, v45);
      sub_2646C6804(v42, v43);
      sub_264655900(v44, v45);
      goto LABEL_49;
    }

LABEL_46:
    sub_2646C6804(v44, v45);
    sub_2646C6804(v42, v36);
    sub_264655900(v44, v45);
    sub_264655900(v42, v36);
    return 0;
  }

  v36 = v43;
  if (v43 >> 60 == 15)
  {
    goto LABEL_46;
  }

  sub_2646C6804(v44, v45);
  sub_2646C6804(v42, v43);
  v38 = sub_2646C6DE4(v44, v45, v42, v43);
  sub_264655900(v42, v43);
  sub_264655900(v44, v45);
  if (!v38)
  {
    return 0;
  }

LABEL_49:
  if (v41)
  {
    if (v40)
    {

      v39 = sub_2646D7FCC(v41, v40);

      if (v39)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v40;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2646DAED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2646DAF1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646DAF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v40 = a3;
  v46 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A60, qword_26478E448);
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v37 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F00, &unk_26478C050);
  v48 = *(v42 - 8);
  v13 = MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v39 = a1;
  v49[0] = a1;
  v49[1] = a2;
  v49[2] = a3;
  v49[3] = a4;
  v49[0] = sub_2646DB5C4();
  swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;

  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77030, &qword_26478C350);
  type metadata accessor for LocationSearchResultRow(0);
  v38 = MEMORY[0x277D83980];
  sub_26460CDF0(&qword_27FF77038, &qword_27FF77030, &qword_26478C350, MEMORY[0x277D83980]);
  sub_264659D00();
  sub_2646DBEC4(&qword_27FF76F08, type metadata accessor for LocationSearchResultRow, &unk_26478C108);
  v37 = v16;
  sub_264785424();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v49);

  swift_getKeyPath();
  v19 = swift_allocObject();
  v20 = v40;
  v19[2] = v39;
  v19[3] = a2;
  v19[4] = v20;
  v19[5] = v18;

  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77658, &qword_26478E4E0);
  sub_26460CDF0(&qword_27FF77A68, &qword_27FF77658, &qword_26478E4E0, v38);
  sub_2646DBE6C();
  v22 = v47;
  sub_264785424();
  v23 = *(v48 + 16);
  v24 = v41;
  v25 = v16;
  v26 = v42;
  v23(v41, v25, v42);
  v27 = v43;
  v28 = v44;
  v29 = *(v44 + 16);
  v30 = v22;
  v31 = v45;
  v29(v43, v30, v45);
  v32 = v46;
  v23(v46, v24, v26);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A78, &qword_26478E4E8);
  v29(&v32[*(v33 + 48)], v27, v31);
  v34 = *(v28 + 8);
  v34(v47, v31);
  v35 = *(v48 + 8);
  v35(v37, v26);
  v34(v27, v31);
  return (v35)(v24, v26);
}

uint64_t sub_2646DB4A4@<X0>(uint64_t a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for LocationSearchResultRow(0);
  v10 = (a3 + v9[6]);
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v8;
  v10[3] = v7;
  *(a3 + v9[7]) = 4;
  v11 = (a3 + v9[5]);
  type metadata accessor for LocationSearchViewModel(0);
  sub_2646DBEC4(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v12 = v6;
  v13 = v5;

  v14 = a2;
  result = sub_264784174();
  *v11 = result;
  v11[1] = v16;
  *(a3 + v9[8]) = 0;
  return result;
}

uint64_t sub_2646DB5C4()
{
  v70 = *MEMORY[0x277D85DE8];
  v62 = sub_264783824();
  v1 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v0 + 8);
  v60 = *(v0 + 24);
  if (qword_27FF750A0 != -1)
  {
LABEL_47:
    swift_once();
  }

  v3 = off_27FF78D00;
  v4 = off_27FF78D00 + 64;
  v5 = 1 << *(off_27FF78D00 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_27FF78D00 + 8);
  v8 = (v5 + 63) >> 6;
  v59 = (v1 + 8);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v57 = 0;
  v63 = MEMORY[0x277D84F90];
  v58 = v3;
  while (v7)
  {
    v10 = v7;
LABEL_11:
    v7 = (v10 - 1) & v10;
    if (v3[2])
    {
      v1 = *(v3[6] + ((v9 << 9) | (8 * __clz(__rbit64(v10)))));
      sub_264654970(v1);
      if (v12)
      {
        v13 = sub_264785774();
        v64 = v14;
        v68 = v13;
        v69 = v14;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v66);

        v15 = sub_264785774();
        v17 = v16;

        v66 = v15;
        v67 = v17;
        v18 = v1;
        v19 = v61;
        sub_264783814();
        sub_264613FC4();
        v20 = sub_264785B74();
        v22 = v21;
        v23 = v19;
        v1 = v18;
        (*v59)(v23, v62);

        v66 = v20;
        v67 = v22;
        sub_2646DBF14();
        sub_2646DBF68();
        v3 = v58;
        LOBYTE(v20) = sub_264785654();

        if (v20)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_2647035F8(0, *(v63 + 2) + 1, 1, v63);
          }

          v24 = v63;
          v26 = *(v63 + 2);
          v25 = *(v63 + 3);
          if (v26 >= v25 >> 1)
          {
            v24 = sub_2647035F8((v25 > 1), v26 + 1, 1, v63);
          }

          *(v24 + 2) = v26 + 1;
          v63 = v24;
          *&v24[8 * v26 + 32] = v18;
        }
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_45;
    }

    if (v11 >= v8)
    {
      break;
    }

    v10 = *&v4[8 * v11];
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v68 = MEMORY[0x277D84F90];
  v27 = *(v63 + 2);
  if (v27)
  {
    v28 = 0;
    v64 = v63 + 32;
    while (1)
    {
      v29 = *&v64[8 * v28];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v66);

      v31 = v66;
      v32 = MEMORY[0x28223BE20](v30);
      *(&v56 - 2) = v29;
      v33 = *(v31 + 32);
      v34 = v33 & 0x3F;
      v35 = (1 << v33) + 63;
      v1 = v35 >> 6;
      if (v34 <= 0xD)
      {
        break;
      }

      v50 = 8 * (v35 >> 6);

      v62 = v50;
      if (swift_stdlib_isStackAllocationSafe())
      {

        break;
      }

      v51 = swift_slowAlloc();

      v52 = v1;
      v53 = v57;
      v54 = sub_2646DC150(v51, v52, v31, sub_2646DBFC4);
      v57 = v53;
      swift_bridgeObjectRelease_n();
      MEMORY[0x266740650](v51, -1, -1);
      v49 = v54;
LABEL_38:
      ++v28;
      sub_2646BF754(v49);
      if (v28 == v27)
      {
        goto LABEL_43;
      }
    }

    MEMORY[0x28223BE20](v32);
    v37 = &v56 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v36);
    v38 = 0;
    v39 = 0;
    v40 = 1 << *(v31 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v31 + 56);
    v43 = (v40 + 63) >> 6;
    while (v42)
    {
      v44 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v45 = v44 | (v39 << 6);
LABEL_33:
      if (*(*(v31 + 48) + 24 * v45 + 8) == v29)
      {
        *&v37[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_46;
        }
      }
    }

    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v39 >= v43)
      {
        v49 = sub_2646DC1E0(v37, v1, v38, v31);
        goto LABEL_38;
      }

      v47 = *(v31 + 56 + 8 * v39);
      ++v46;
      if (v47)
      {
        v42 = (v47 - 1) & v47;
        v45 = __clz(__rbit64(v47)) | (v39 << 6);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_43:

  return v68;
}

uint64_t sub_2646DBBF8@<X0>(uint64_t a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = [*a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_264785724();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LocationSearchResultRow(0);
  v13 = (a3 + v12[6]);
  *v13 = 0;
  v13[1] = v5;
  v13[2] = v9;
  v13[3] = v11;
  *(a3 + v12[7]) = v6;
  v14 = (a3 + v12[5]);
  type metadata accessor for LocationSearchViewModel(0);
  sub_2646DBEC4(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v15 = v5;
  v16 = a2;
  result = sub_264784174();
  *v14 = result;
  v14[1] = v18;
  *(a3 + v12[8]) = 0;
  return result;
}

unint64_t sub_2646DBD58()
{
  result = qword_27FF77A40;
  if (!qword_27FF77A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77A48, &qword_26478E438);
    sub_26460CDF0(&qword_27FF77A50, &qword_27FF77A58, &qword_26478E440, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A40);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2646DBE6C()
{
  result = qword_27FF77A70;
  if (!qword_27FF77A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A70);
  }

  return result;
}

uint64_t sub_2646DBEC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2646DBF14()
{
  result = qword_27FF77A80;
  if (!qword_27FF77A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A80);
  }

  return result;
}

unint64_t sub_2646DBF68()
{
  result = qword_27FF77A88;
  if (!qword_27FF77A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A88);
  }

  return result;
}

void sub_2646DBFD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v27 = a4;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 24 * v15;
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v16) = *(v16 + 16);
    v25[0] = v17;
    v25[1] = v18;
    v26 = v16;
    v19 = v17;
    v20 = v27(v25);

    if (v4)
    {
      return;
    }

    if (v20)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_16:

        sub_2646DC1E0(a1, a2, v24, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_2646DC150(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_2646DBFD8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2646DC1E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  result = sub_264785CC4();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_264785F44();
    v20 = v17;
    sub_264785AF4();
    MEMORY[0x26673FC80](v18);
    MEMORY[0x26673FC80](v19);
    result = sub_264785F94();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 24 * v24;
    *v29 = v20;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
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
      v32 = (v15 - 1) & v15;
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

uint64_t sub_2646DC440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27FF77A90;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v16[1] = *(v3 + 16);
  v16[2] = v5;
  v16[0] = v4;
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  v17 = *(v3 + 96);
  v16[4] = v7;
  v16[5] = v8;
  v16[3] = v6;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return sub_26460B5BC(v16, &v15);
}

uint64_t sub_2646DC4E8(__int128 *a1, void *a2)
{
  v2 = a1[5];
  v22 = a1[4];
  v23 = v2;
  v24 = *(a1 + 12);
  v3 = a1[1];
  v18 = *a1;
  v19 = v3;
  v4 = a1[3];
  v5 = *a2 + qword_27FF77A90;
  v20 = a1[2];
  v21 = v4;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 32);
  v25[1] = *(v5 + 16);
  v25[2] = v7;
  v25[0] = v6;
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  v10 = *(v5 + 80);
  v26 = *(v5 + 96);
  v25[4] = v9;
  v25[5] = v10;
  v25[3] = v8;
  v12 = v22;
  v11 = v23;
  v13 = v21;
  *(v5 + 96) = v24;
  *(v5 + 64) = v12;
  *(v5 + 80) = v11;
  *(v5 + 48) = v13;
  v14 = v18;
  v15 = v20;
  *(v5 + 16) = v19;
  *(v5 + 32) = v15;
  *v5 = v14;
  sub_26460B5BC(&v18, &v17);
  return sub_2646DC6D0(v25);
}

uint64_t sub_2646DC5B4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27FF77A90;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  return sub_26460B5BC(v12, &v11);
}

uint64_t sub_2646DC640(uint64_t a1)
{
  v3 = v1 + qword_27FF77A90;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v11[4] = *(v3 + 64);
  v11[5] = v4;
  v12 = *(v3 + 96);
  v5 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v5;
  v6 = *(v3 + 48);
  v11[2] = *(v3 + 32);
  v11[3] = v6;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  return sub_2646DC6D0(v11);
}

id TranscriptHostingController.init(rootView:)(uint64_t a1)
{
  v3 = sub_264784BD4();
  MEMORY[0x28223BE20](v3);
  v4 = *(a1 + 16);
  v6 = v4;
  v28[0] = *a1;
  v5 = v28[0];
  v28[1] = v4;
  v8 = *(a1 + 48);
  v29 = *(a1 + 32);
  v7 = v29;
  v30 = v8;
  v9 = v1 + qword_27FF77A90;
  *v9 = v28[0];
  *(v9 + 16) = v4;
  *(v9 + 32) = v7;
  *(v9 + 48) = v8;
  v11 = *(a1 + 80);
  v13 = *(a1 + 32);
  v12 = *(a1 + 48);
  v31 = *(a1 + 64);
  v10 = v31;
  v32 = v11;
  v33 = *(a1 + 96);
  *(v9 + 96) = v33;
  *(v9 + 64) = v10;
  *(v9 + 80) = v11;
  v14 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v14;
  v27 = *(a1 + 96);
  v21 = v5;
  v22 = v6;
  v23 = v13;
  v24 = v12;
  sub_26460B5BC(v28, v20);
  sub_26460B5BC(v28, v20);
  v15 = sub_264784784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77888, &qword_26478DF70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2647889B0;
  v17 = v15;
  sub_264784BB4();
  sub_264784BC4();
  *&v21 = v16;
  sub_2646D2534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77898, &qword_26478DF78);
  sub_2646D258C();
  sub_264785BD4();
  sub_264784764();
  result = [v17 view];
  if (result)
  {
    v19 = result;
    sub_2646DC6D0(v28);
    if (qword_27FF753F8 != -1)
    {
      swift_once();
    }

    [v19 setBackgroundColor_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2646DCACC()
{
  v1 = v0 + qword_27FF77A90;
  v2 = *(v0 + qword_27FF77A90 + 48);
  v3 = *(v0 + qword_27FF77A90 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);

  sub_26460C9F4(v2, v3, v4, v5);
}

id TranscriptHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646DCB84(uint64_t a1)
{
  v1 = *(a1 + qword_27FF77A90 + 48);
  v2 = *(a1 + qword_27FF77A90 + 56);
  v3 = *(a1 + qword_27FF77A90 + 64);
  v4 = *(a1 + qword_27FF77A90 + 72);

  sub_26460C9F4(v1, v2, v3, v4);
}

uint64_t type metadata accessor for TranscriptHostingController(uint64_t a1)
{
  result = qword_27FF77A98;
  if (!qword_27FF77A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2646DCDC4()
{
  type metadata accessor for LocationManager();
  v0 = swift_allocObject();
  if (qword_27FF75008 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  *(v0 + 16) = qword_27FF807E8;
  qword_27FF77AA8 = v0;
}

uint64_t static LocationManager.shared.getter()
{
  if (qword_27FF74FF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2646DCEB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_264783E24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646DCF88, 0, 0);
}

uint64_t sub_2646DCF88(uint64_t a1)
{
  v18 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBFBE8]);
    v4 = v2;
    v5 = [v3 init];
    v1[9] = v5;
    v6 = swift_task_alloc();
    v1[10] = v6;
    *v6 = v1;
    v6[1] = sub_2646DD1C8;

    return CachedGeocoder.placemark(forKey:with:)(v4, v5);
  }

  else
  {
    sub_264783DE4();
    v8 = sub_264783E14();
    v9 = sub_2647859D4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[7];
    v12 = v1[4];
    v13 = v1[5];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264797FD0, &v17);
      _os_log_impl(&dword_264605000, v8, v9, "%s: reverse geo-coded nil location to nil", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);

    v16 = v1[1];

    return v16(0);
  }
}

uint64_t sub_2646DD1C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_2646DD588;
  }

  else
  {

    v4 = sub_2646DD2E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2646DD2E4(uint64_t a1)
{
  v32 = v1;
  v2 = *(v1 + 16);
  sub_264783DE4();
  v3 = v2;
  v4 = sub_264783E14();
  v5 = sub_2647859F4();

  if (!os_log_type_enabled(v4, v5))
  {
    v18 = *(v1 + 64);
    v19 = *(v1 + 32);
    v20 = *(v1 + 40);
    v21 = *(v1 + 16);

    (*(v20 + 8))(v18, v19);
    goto LABEL_9;
  }

  v6 = *(v1 + 88);
  v7 = *(v1 + 16);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v31 = v10;
  *v8 = 136315651;
  *(v8 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264797FD0, &v31);
  *(v8 + 12) = 2117;
  *(v8 + 14) = v7;
  *v9 = v7;
  *(v8 + 22) = 2085;
  if (!v6)
  {
    v22 = *(v1 + 16);
    v13 = 0;
    goto LABEL_7;
  }

  v11 = *(v1 + 88);
  v12 = *(v1 + 16);
  v13 = [v11 name];
  if (!v13)
  {
LABEL_7:
    v17 = 0xE000000000000000;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = sub_264785724();
  v17 = v16;

  v13 = v15;
LABEL_8:
  v23 = *(v1 + 40);
  v29 = *(v1 + 32);
  v30 = *(v1 + 64);
  v24 = *(v1 + 16);
  v25 = sub_2646DF234(v13, v17, &v31);

  *(v8 + 24) = v25;
  _os_log_impl(&dword_264605000, v4, v5, "%s: Successfully reverse location: %{sensitive}@ back to address: %{sensitive}s", v8, 0x20u);
  sub_26468367C(v9);
  MEMORY[0x266740650](v9, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x266740650](v10, -1, -1);
  MEMORY[0x266740650](v8, -1, -1);

  (*(v23 + 8))(v30, v29);
LABEL_9:
  v26 = *(v1 + 88);

  v27 = *(v1 + 8);

  return v27(v26);
}

uint64_t sub_2646DD588()
{
  v23 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);

  sub_264783DE4();
  v3 = v2;
  v4 = v1;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);
  if (v7)
  {
    v21 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136315651;
    *(v13 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264797FD0, &v22);
    *(v13 + 12) = 2117;
    *(v13 + 14) = v12;
    *v14 = v12;
    *(v13 + 22) = 2112;
    v16 = v12;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    v14[1] = v18;
    _os_log_impl(&dword_264605000, v5, v6, "%s: Error happened when try to reverse location:%{sensitive}@ back to address, error:%@", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
    swift_arrayDestroy();
    MEMORY[0x266740650](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    (*(v10 + 8))(v21, v11);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t LocationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of LocationManager.placemarkForLocation(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2646DD9A4;

  return v6(a1);
}

uint64_t sub_2646DD9A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

SafetyMonitorUI::GeofenceSize __swiftcall getGeofenceSizeFromRadius(radius:)(Swift::Double radius)
{
  if (radius == 100.0)
  {
    *v1 = 0;
  }

  else
  {
    if (radius == 250.0)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2 * (radius == 375.0);
    }

    *v1 = v2;
  }

  return result;
}

uint64_t GeofenceSize.hashValue.getter()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

unint64_t sub_2646DDB90()
{
  result = qword_27FF77AB0;
  if (!qword_27FF77AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77AB0);
  }

  return result;
}

uint64_t CriticalAlertOnboardingView.Model.init(for:receiverSessionStatus:)@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, _OWORD *a3@<X8>)
{
  v152 = a3;
  v153 = a2;
  v147 = a1;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v150 = v3;
  v151 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v149 = v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v148 = v137 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v146 = v137 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v144 = v137 - v12;
  MEMORY[0x28223BE20](v11);
  v145 = v137 - v13;
  v14 = sub_264783B94();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264785704();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2647856E4();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v137 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v137 - v30;
  v32 = sub_264783AF4();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = v137 - v37;
  if ([objc_opt_self() criticalAlertPreference])
  {
    v39 = v153;
    v40 = v149;
    sub_264783DE4();
    v41 = sub_264783E14();
    v42 = sub_2647859F4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v154[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v154);
      _os_log_impl(&dword_264605000, v41, v42, "#CriticalAlertOnboarding: User is already onboarded! %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x266740650](v44, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);
    }

    result = (*(v151 + 8))(v40, v150);
    goto LABEL_5;
  }

  v138 = v26;
  v140 = v31;
  v141 = v36;
  v139 = v22;
  v137[1] = v19;
  v142 = v16;
  v143 = v38;
  v149 = v32;
  v47 = v153;
  if (!v153)
  {
    v51 = v148;
    sub_264783DE4();
    v52 = sub_264783E14();
    v53 = sub_2647859D4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v154[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v154);
      _os_log_impl(&dword_264605000, v52, v53, "#CriticalAlertOnboarding: Unable to lookup receiverSessionStatus from safetyCacheViewModel %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x266740650](v55, -1, -1);
      MEMORY[0x266740650](v54, -1, -1);
    }

    result = (*(v151 + 8))(v51, v150);
    goto LABEL_5;
  }

  v48 = v147;
  if (v147 == 1)
  {
    v49 = v33;
    v50 = v29;
    if ([v153 sessionState]!= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v56 = v153;
    if (v48 != 3 || (v57 = v56, v49 = v33, v50 = v29, [v56 sessionState]!= 3) && [v57 sessionState]!= 4 && [v57 sessionState]!= 9)
    {
LABEL_19:
      v66 = v146;
      sub_264783DE4();
      v67 = v47;
      v68 = sub_264783E14();
      v69 = sub_2647859F4();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v154[0] = v71;
        *v70 = 136315650;
        v72 = [objc_opt_self() convertSessionStateToString_];
        v73 = sub_264785724();
        v75 = v74;

        v76 = sub_2646DF234(v73, v75, v154);

        *(v70 + 4) = v76;
        *(v70 + 12) = 2080;
        v155[0] = v147;
        type metadata accessor for SMMessageType(0);
        v77 = sub_264785764();
        v79 = sub_2646DF234(v77, v78, v154);

        *(v70 + 14) = v79;
        *(v70 + 22) = 2080;
        *(v70 + 24) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v154);
        _os_log_impl(&dword_264605000, v68, v69, "#CriticalAlertOnboarding: Not needed for sessionState: %s messageType: %s %s", v70, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v71, -1, -1);
        MEMORY[0x266740650](v70, -1, -1);
      }

      else
      {
      }

      result = (*(v151 + 8))(v66, v150);
      goto LABEL_5;
    }
  }

  v58 = [v47 coarseEstimatedEndDate];
  if (v58)
  {
    v59 = v141;
    v60 = v58;
    sub_264783AC4();

    v61 = *(v49 + 32);
    v62 = v149;
    v61(v50, v59, v149);
    v63 = *(v49 + 56);
    v63(v50, 0, 1, v62);
    v64 = v140;
    v61(v140, v50, v62);
    v63(v64, 0, 1, v62);
    v65 = *(v49 + 48);
  }

  else
  {
    v80 = *(v49 + 56);
    v62 = v149;
    (v80)(v50, 1, 1, v149);
    v81 = [v47 estimatedEndDate];
    v64 = v140;
    if (v81)
    {
      v82 = v138;
      v83 = v81;
      sub_264783AC4();

      v84 = v82;
      v59 = v141;
    }

    else
    {
      v59 = v141;
      v84 = v138;
    }

    v85 = v84;
    v80();
    sub_26460CF84(v85, v64);
    v65 = *(v49 + 48);
    if (v65(v50, 1, v62) != 1)
    {
      sub_2646B9898(v50);
    }
  }

  v86 = v143;
  if (v65(v64, 1, v62) == 1)
  {
    sub_2646B9898(v64);
    v87 = v144;
    sub_264783DE4();
    v88 = sub_264783E14();
    v89 = sub_2647859D4();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v154[0] = v91;
      *v90 = 136315138;
      *(v90 + 4) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v154);
      _os_log_impl(&dword_264605000, v88, v89, "#CriticalAlertOnboarding: Unable to lookup estimatedEndDate in receiverSessionStatus in SafetyCacheViewModel %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x266740650](v91, -1, -1);
      MEMORY[0x266740650](v90, -1, -1);
      v92 = v153;
    }

    else
    {

      v88 = v153;
    }

    result = (*(v151 + 8))(v87, v150);
    goto LABEL_5;
  }

  (*(v49 + 32))(v86, v64, v62);
  v93 = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
  v94 = v153;
  v95 = [v153 initiatorHandle];
  v96 = [v95 primaryHandle];

  if (!v96)
  {
    sub_264785724();
    v96 = sub_264785714();
  }

  v97 = [v93 contactWith_];

  v98 = sub_264785B14();
  v148 = v99;

  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v101 = [objc_opt_self() bundleForClass_];
  v102 = [v94 sessionType];
  if (v102 > 1)
  {
    if ((v102 - 2) < 2)
    {
      v103 = [v94 destinationType];
      v144 = v98;
      v146 = v101;
      if (v103 == 3 || v103 == 2)
      {
        sub_2647856D4();
        sub_2647856C4();
        v104 = v148;
        sub_2647856B4();
        sub_2647856C4();
        v115 = sub_264783A64();
        v116 = [v115 roundedTime];

        sub_264783AC4();
        v117 = sub_264783A64();
        v118 = [v117 absoluteTimeString:0 preposition:1 capitalized:0];

        sub_264785724();
        (*(v49 + 8))(v59, v62);
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        v119 = v101;
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        v104 = v148;
        sub_2647856B4();
        sub_2647856C4();
        v105 = sub_264783A64();
        v106 = [v105 roundedTime];

        sub_264783AC4();
        v107 = sub_264783A64();
        v120 = [v107 absoluteTimeString:0 preposition:1 capitalized:0];

        sub_264785724();
        (*(v49 + 8))(v59, v62);
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        v121 = v146;
        sub_264783B84();
      }

      goto LABEL_46;
    }

    if (v102 == 4)
    {
      sub_2647856D4();
      sub_2647856C4();
      v144 = v98;
      v104 = v148;
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      v114 = v101;
      sub_264783B84();
      v146 = v101;
      goto LABEL_46;
    }

LABEL_44:
    (*(v49 + 8))(v86, v62);

LABEL_5:
    v46 = v152;
    *v152 = 0u;
    v46[1] = 0u;
    return result;
  }

  if (v102 != 1)
  {
    goto LABEL_44;
  }

  sub_2647856D4();
  sub_2647856C4();
  v144 = v98;
  v104 = v148;
  sub_2647856B4();
  sub_2647856C4();
  v108 = sub_264783A64();
  v109 = [v108 roundedTime];

  v110 = v141;
  sub_264783AC4();

  v111 = sub_264783A64();
  v112 = [v111 absoluteTimeString:0 preposition:1 capitalized:0];

  sub_264785724();
  (*(v49 + 8))(v110, v62);
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  v113 = v101;
  sub_264783B84();
  v146 = v101;
LABEL_46:
  v122 = sub_264785754();
  v124 = v123;
  v125 = v145;
  sub_264783DE4();
  v126 = v153;

  v127 = sub_264783E14();
  v128 = sub_2647859F4();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v153 = v49;
    v130 = v129;
    v131 = swift_slowAlloc();
    v155[0] = v131;
    *v130 = 134218754;
    *(v130 + 4) = v147;
    *(v130 + 12) = 2048;
    *(v130 + 14) = [v126 sessionState];

    *(v130 + 22) = 2080;
    v132 = v144;
    v154[0] = v144;
    v154[1] = v104;
    v154[2] = v122;
    v154[3] = v124;

    v133 = sub_264785764();
    v135 = sub_2646DF234(v133, v134, v155);

    *(v130 + 24) = v135;
    v104 = v148;
    *(v130 + 32) = 2080;
    *(v130 + 34) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v155);
    _os_log_impl(&dword_264605000, v127, v128, "#CriticalAlertOnboarding: Showing CA onboarding flow for message type %lu, session state %ld, %s, %s", v130, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v131, -1, -1);
    MEMORY[0x266740650](v130, -1, -1);

    (*(v151 + 8))(v145, v150);
    result = (v153[1].isa)(v143, v149);
    v136 = v152;
  }

  else
  {

    (*(v151 + 8))(v125, v150);
    result = (*(v49 + 8))(v143, v149);
    v136 = v152;
    v132 = v144;
  }

  *v136 = v132;
  v136[1] = v104;
  v136[2] = v122;
  v136[3] = v124;
  return result;
}

uint64_t CriticalAlertOnboardingView.Model.id.getter()
{
  MEMORY[0x26673F4F0](*(v0 + 16), *(v0 + 24));
  v1 = sub_264785E44();
  MEMORY[0x26673F4D0](v1);

  return 0x6D614E6E65766967;
}

uint64_t sub_2646DF1A8@<X0>(void *a1@<X8>)
{
  MEMORY[0x26673F4F0](*(v1 + 16), *(v1 + 24));
  v3 = sub_264785E44();
  MEMORY[0x26673F4D0](v3);

  *a1 = 0x6D614E6E65766967;
  a1[1] = 0xEA00000000002E65;
  return result;
}

unint64_t sub_2646DF234(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2646DF300(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_264655DB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2646DF300(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2646DF40C(a5, a6);
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
    result = sub_264785D24();
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

void *sub_2646DF40C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2646DF458(a1, a2);
  sub_2646DF588(&unk_287614610);
  return v3;
}

void *sub_2646DF458(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2646DF674(v5, 0);
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

  result = sub_264785D24();
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
        v10 = sub_2647857B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2646DF674(v10, 0);
        result = sub_264785CD4();
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

uint64_t sub_2646DF588(uint64_t result)
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

  result = sub_2646DF6E8(result, v11, 1, v3);
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

void *sub_2646DF674(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77AB8, &unk_26478E750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2646DF6E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77AB8, &unk_26478E750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

id CheckInOnboardingViewController2.__allocating_init(isInSettings:sessionType:onboardingCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = objc_allocWithZone(v4);
  return CheckInOnboardingViewController2.init(isInSettings:sessionType:onboardingCompletionHandler:)(v8, a2, a3, a4);
}

id CheckInOnboardingViewController2.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_264783B94();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_264785704();
  MEMORY[0x28223BE20](v11 - 8);
  v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_isInSettings] = a1;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_sessionType] = a2;
  v12 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_onboardingCompletionHandler];
  *v12 = a3;
  v12[1] = a4;
  sub_264611394(a3, a4);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264785694();
  [v14 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v16 = sub_264785714();

  v17 = sub_264785714();

  v21.receiver = v5;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_symbolName_contentLayout_, v16, v17, 0, 1);
  sub_26460C9A0(a3, a4);

  return v18;
}

Swift::Void __swiftcall CheckInOnboardingViewController2.viewDidLoad()()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  type metadata accessor for ImageProvider();
  sub_2646E0144();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_264785714();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2 withConfiguration:0];

  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v6 = v5;
  [v6 setContentMode_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];

    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26478E760;
    v11 = [v6 leftAnchor];
    v12 = [v0 contentView];
    v13 = [v12 leftAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v10 + 32) = v14;
    v15 = [v6 rightAnchor];
    v16 = [v0 contentView];
    v17 = [v16 rightAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v10 + 40) = v18;
    v19 = [v6 bottomAnchor];

    v20 = [v0 contentView];
    v21 = [v20 bottomAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v10 + 48) = v22;
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v23 = sub_2647857E4();

    [v9 activateConstraints_];

    v24 = [objc_opt_self() boldButton];
    if (qword_27FF75038 != -1)
    {
      swift_once();
    }

    v25 = sub_264785714();
    [v24 setTitle:v25 forState:0];

    [v24 addTarget:v0 action:sel_continueButtonAction forControlEvents:64];
    v26 = [objc_opt_self() linkButton];
    if (qword_27FF75048 != -1)
    {
      swift_once();
    }

    v27 = sub_264785714();
    [v26 setTitle:v27 forState:0];

    [v26 addTarget:v0 action:sel_notNowButtonAction forControlEvents:64];
    v28 = [v0 buttonTray];
    [v28 addButton_];

    v29 = [v0 buttonTray];
    [v29 addButton_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2646E0144()
{
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  if (v3 == 1)
  {
    MEMORY[0x26673F4D0](0x4C5452202D20, 0xE600000000000000);
  }

  return 0x7974697669746341;
}

void sub_2646E0288()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_isInSettings];
  v3 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_sessionType];
  v4 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_onboardingCompletionHandler];
  v5 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController3());
  sub_264611394(v4, v5);
  v8 = CheckInOnboardingViewController3.init(isInSettings:sessionType:onboardingCompletionHandler:)(v2, v3, v4, v5);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v8 animated:1];
  }
}

id CheckInOnboardingViewController2.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController2.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController2.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CheckInOnboardingViewController3.__allocating_init(isInSettings:sessionType:onboardingCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = objc_allocWithZone(v4);
  return CheckInOnboardingViewController3.init(isInSettings:sessionType:onboardingCompletionHandler:)(v8, a2, a3, a4);
}

id CheckInOnboardingViewController3.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_264783B94();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_264785704();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton] = 0;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_isInSettings] = a1;
  v13 = [objc_opt_self() boldButton];
  v14 = *&v5[v12];
  *&v5[v12] = v13;

  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_sessionType] = a2;
  v15 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_onboardingCompletionHandler];
  *v15 = a3;
  v15[1] = a4;
  sub_264611394(a3, a4);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264785694();
  [v17 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v19 = sub_264785714();

  v20 = sub_264785714();

  v24.receiver = v5;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_symbolName_contentLayout_, v19, v20, 0, 3);
  sub_26460C9A0(a3, a4);

  return v21;
}

Swift::Void __swiftcall CheckInOnboardingViewController3.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_264784BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataSharingSelectionList(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_264783B94();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_264785704();
  MEMORY[0x28223BE20](v10 - 8);
  v90.receiver = v0;
  v90.super_class = ObjectType;
  objc_msgSendSuper2(&v90, sel_viewDidLoad);
  v11 = OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton;
  v12 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton];
  if (!v12)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v85 = v3;
  v86 = v5;
  v13 = qword_27FF75038;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v84 = v6;
  v15 = sub_264785714();
  [v14 setTitle:v15 forState:0];

  v16 = *&v0[v11];
  if (!v16)
  {
    goto LABEL_18;
  }

  [v16 addTarget:v0 action:sel_continueButtonAction forControlEvents:64];
  v17 = *&v0[v11];
  if (!v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v83 = v2;
  [v17 setEnabled_];
  v18 = [objc_opt_self() linkButton];
  if (qword_27FF75048 != -1)
  {
    swift_once();
  }

  v19 = sub_264785714();
  [v18 setTitle:v19 forState:0];

  [v18 addTarget:v0 action:sel_notNowButtonAction forControlEvents:64];
  v20 = [objc_opt_self() accessoryButton];
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v21 = v18;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v24 = sub_264785714();

  [v20 setTitle:v24 forState:0];

  [v20 addTarget:v0 action:sel_showExampleButtonAction forControlEvents:64];
  v25 = [v0 buttonTray];
  if (!*&v0[v11])
  {
    goto LABEL_20;
  }

  v26 = v25;
  [v25 addButton_];

  v27 = [v0 buttonTray];
  v82 = v21;
  [v27 addButton_];

  v28 = [v0 headerView];
  [v28 addAccessoryButton_];

  v29 = swift_allocObject();
  *(v29 + 16) = v0;
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v30 = v84;
  v31 = v8 + *(v84 + 20);
  v87 = 0;
  v32 = v0;
  sub_2647852E4();
  v33 = v89;
  *v31 = v88;
  *(v31 + 1) = v33;
  v34 = (v8 + *(v30 + 24));
  *v34 = sub_2646E1B78;
  v34[1] = v29;
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77AF8, &qword_26478E7E8));
  v36 = sub_264784784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77888, &qword_26478DF70);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2647889E0;
  sub_264784BB4();
  v88 = v37;
  sub_2646D2534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77898, &qword_26478DF78);
  sub_2646D258C();
  sub_264785BD4();
  sub_264784764();
  v38 = v36;
  v39 = [v38 view];
  if (!v39)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v39;
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];

  v41 = [v38 view];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  v43 = [v32 contentView];
  [v43 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v42 setFrame_];
  [v32 addChildViewController_];
  v52 = [v32 contentView];
  v53 = [v38 view];
  if (!v53)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v54 = v53;
  [v52 addSubview_];

  [v38 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26478B4E0;
  v56 = [v38 view];
  if (!v56)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v57 = v56;
  v58 = [v56 leadingAnchor];

  v59 = [v32 contentView];
  v60 = [v59 leadingAnchor];

  v61 = [v58 constraintEqualToAnchor_];
  *(v55 + 32) = v61;
  v62 = [v38 view];
  if (!v62)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v63 = v62;
  v64 = [v62 trailingAnchor];

  v65 = [v32 contentView];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v55 + 40) = v67;
  v68 = [v38 view];
  if (!v68)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v69 = v68;
  v70 = [v68 topAnchor];

  v71 = [v32 contentView];
  v72 = [v71 topAnchor];

  v73 = [v70 constraintEqualToAnchor_];
  *(v55 + 48) = v73;
  v74 = [v38 view];

  if (v74)
  {
    v75 = [v74 bottomAnchor];

    v76 = [v32 contentView];
    v77 = [v76 bottomAnchor];

    v78 = [v75 constraintEqualToAnchor_];
    *(v55 + 56) = v78;
    v79 = objc_opt_self();
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v80 = sub_2647857E4();

    [v79 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_2646E1628()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_isInSettings];
  v3 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_sessionType];
  v4 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_onboardingCompletionHandler];
  v5 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController4());
  sub_264611394(v4, v5);
  v8 = CheckInOnboardingViewController4.init(isInSettings:sessionType:onboardingCompletionHandler:)(v2, v3, v4, v5);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v8 animated:1];
  }
}

id CheckInOnboardingViewController3.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController3.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646E1B40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2646E1B78()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton);
  if (result)
  {
    return [result setEnabled_];
  }

  __break(1u);
  return result;
}

void ResolvedMapItem.init(mapItem:destinationType:geofenceSize:)(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  if (a2 == 3)
  {
    v9 = qword_27FF75098;
    v12 = a1;
    v10 = a1;
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
    v7 = qword_27FF75090;
    v12 = a1;
    v8 = a1;
    if (v7 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (a2 != 1)
  {
    return;
  }

  v5 = qword_27FF75088;
  v12 = a1;
  v6 = a1;
  if (v5 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_9:
  v11 = sub_264785714();
  [v12 setName_];
}

Swift::Void __swiftcall ResolvedMapItem.modifyMapItemName()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (v1 == 3)
  {
    if (qword_27FF75098 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v1 == 2)
  {
    if (qword_27FF75090 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v1 != 1)
  {
    return;
  }

  if (qword_27FF75088 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_9:
  v3 = sub_264785714();
  [v2 setName_];
}

uint64_t static ResolvedMapItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_2646936F0();
  return sub_264785AE4() & (v2 == v3);
}

uint64_t ResolvedMapItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_264785AF4();
  MEMORY[0x26673FC80](v2);
  return MEMORY[0x26673FC80](v3);
}

uint64_t ResolvedMapItem.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](v1);
  MEMORY[0x26673FC80](v2);
  return sub_264785F94();
}

uint64_t sub_2646E1FA4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](v1);
  MEMORY[0x26673FC80](v2);
  return sub_264785F94();
}

uint64_t sub_2646E2010(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_264785AF4();
  MEMORY[0x26673FC80](v2);
  return MEMORY[0x26673FC80](v3);
}

uint64_t sub_2646E205C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](v2);
  MEMORY[0x26673FC80](v3);
  return sub_264785F94();
}

uint64_t sub_2646E20C4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_2646936F0();
  return sub_264785AE4() & (v2 == v3);
}

uint64_t MKMapItem.Error.hashValue.getter()
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

uint64_t MKMapItem.estimatedETA(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2646E21AC, 0, 0);
}

uint64_t sub_2646E21AC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B00, &qword_264790720);
  *v4 = v0;
  v4[1] = sub_2646E22B4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x8000000264798970, sub_2646E2830, v3, v5);
}

uint64_t sub_2646E22B4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2646E23EC;
  }

  else
  {

    v2 = sub_2646E23D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2646E23EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2646E2450(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [a2 placemark];
  v11 = [v10 location];

  if (v11)
  {
    v12 = [objc_opt_self() defaultManager];
    [v11 coordinate];
    v14 = v13;
    [v11 coordinate];
    v16 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v14 longitude:v15];
    (*(v7 + 16))(v9, a1, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, v9, v6);
    aBlock[4] = sub_2646E2A78;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2646E2784;
    aBlock[3] = &block_descriptor_11;
    v19 = _Block_copy(aBlock);

    [v12 estimateEtaToDestination:v16 transportType:a3 completionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    sub_2646E2990();
    aBlock[0] = swift_allocError();
    sub_264785884();
  }
}

uint64_t sub_2646E2704(int a1, int a2, id a3, double a4, double a5)
{
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
    return sub_264785884();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
    return sub_264785894();
  }
}

void sub_2646E2784(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v13 = a2;
  v12 = a4;
  v11(v13, a3, a4, a5, a6);
}

unint64_t sub_2646E283C()
{
  result = qword_27FF77B08;
  if (!qword_27FF77B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B08);
  }

  return result;
}

unint64_t sub_2646E2894()
{
  result = qword_27FF77B10;
  if (!qword_27FF77B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B10);
  }

  return result;
}

uint64_t sub_2646E28E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2646E2930(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2646E2990()
{
  result = qword_27FF77B20;
  if (!qword_27FF77B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B20);
  }

  return result;
}

uint64_t sub_2646E29E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2646E2A78(int a1, int a2, void *a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);

  return sub_2646E2704(a1, a2, a3, a4, a5);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CheckInOnboardingNavigationView.init(onboardingCompletionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id CheckInOnboardingNavigationView.makeUIViewController(context:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = type metadata accessor for CheckInOnboardingFlowViewController();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner;
  v7 = objc_allocWithZone(MEMORY[0x277D750E8]);

  *&v5[v6] = [v7 init];
  v5[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 0;
  v8 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  *v8 = sub_26461103C;
  v8[1] = v3;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings] = 0;
  v10.receiver = v5;
  v10.super_class = v4;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2646E2C34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2646E2C74()
{
  result = qword_27FF77B28;
  if (!qword_27FF77B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B28);
  }

  return result;
}

uint64_t sub_2646E2CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646E2DCC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2646E2D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646E2DCC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2646E2D94(uint64_t a1)
{
  sub_2646E2DCC();
  sub_264784B74();
  __break(1u);
}

unint64_t sub_2646E2DCC()
{
  result = qword_27FF77B30;
  if (!qword_27FF77B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B30);
  }

  return result;
}

uint64_t CheckInView.init(state:edgeInsets:buttonAction:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[3];
  v27 = a1[2];
  v16 = a1[4];
  v17 = a1[5];
  v18 = *(a1 + 50);
  v19 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B38, &qword_26478EAA0);
  sub_2647852E4();
  *a4 = v30;
  *(a4 + 8) = v31;
  *(a4 + 16) = v32;
  *(a4 + 146) = 0;
  v20 = type metadata accessor for CheckInView(0);
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  v21 = *(v20 + 60);
  *(a4 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B40, &qword_26478EAD8);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + 24) = v14;
  *(a4 + 32) = v13;
  *(a4 + 40) = v27;
  *(a4 + 48) = v15;
  *(a4 + 56) = v16;
  *(a4 + 64) = v17;
  *(a4 + 74) = v18;
  *(a4 + 72) = v19;
  v23 = (a4 + *(v20 + 64));
  *v23 = a5;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  v24 = v18 >> 5;
  *(a4 + 152) = a2;
  *(a4 + 160) = a3;
  if (v24 <= 2)
  {
    if (v18 >> 5)
    {
      if (v24 == 1)
      {
        v26 = v19 & 0xFF00FFFF | (v18 << 16);
        *(a4 + 75) = v26 & 1;
        *(a4 + 80) = v14;
        *(a4 + 88) = v13;
        *(a4 + 96) = v27;
        *(a4 + 104) = v15;
        *(a4 + 128) = v16;
        *(a4 + 136) = v17;
        *(a4 + 144) = BYTE1(v26) & 1;
        *(a4 + 145) = BYTE2(v26) & 1;
        *(a4 + 146) = 0;
      }

      *(a4 + 75) = v16 & 1;
      *(a4 + 80) = v14;
      *(a4 + 88) = v13;
      *(a4 + 96) = v27;
      *(a4 + 104) = v15;
      *(a4 + 144) = BYTE1(v16) & 1;
      *(a4 + 145) = BYTE2(v16) & 1;
      v25 = BYTE3(v16) & 1;
LABEL_12:
      *(a4 + 146) = v25;
    }

    *(a4 + 75) = 0;
    *(a4 + 112) = v14;
    *(a4 + 120) = v13;
    *(a4 + 144) = 1;
LABEL_14:
    *(a4 + 146) = 0;
  }

  if ((v18 >> 5) <= 4u)
  {
    if (v24 == 3)
    {
      *(a4 + 75) = v16 & 1;
      *(a4 + 80) = v14;
      *(a4 + 88) = v13;
      *(a4 + 96) = v27;
      *(a4 + 104) = v15;
      *(a4 + 144) = 0;
      *(a4 + 145) = BYTE1(v16) & 1;
      v25 = WORD1(v16) & 1;
      goto LABEL_12;
    }

    *(a4 + 75) = v27 & 1;
    *(a4 + 80) = v14;
    *(a4 + 88) = v13;
    *(a4 + 144) = 0;
    *(a4 + 145) = BYTE1(v27) & 1;
    goto LABEL_14;
  }

  if (v24 == 5)
  {
    *(a4 + 75) = v14 & 1;
    *(a4 + 144) = 1;
  }

  else
  {
    *(a4 + 75) = 0;
    *(a4 + 144) = 1;
    *(a4 + 146) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CheckInView(uint64_t a1)
{
  result = qword_27FF77BE8;
  if (!qword_27FF77BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2646E30E8()
{
  v1 = sub_264784574();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B40, &qword_26478EAD8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C10, &qword_26478ECC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for CheckInView(0);
  sub_26460CCE8(v0 + *(v11 + 60), v7, &qword_27FF77B40, &qword_26478EAD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26460E7E4(v7, v10, &qword_27FF77C10, &qword_26478ECC8);
  }

  else
  {
    sub_2647859E4();
    v12 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v13 = sub_2647854C4();
  v14 = (*(*(v13 - 8) + 48))(v10, 1, v13) != 1;
  sub_26460CD50(v10, &qword_27FF77C10, &qword_26478ECC8);
  return v14;
}

uint64_t sub_2646E3378()
{
  if (*(v0 + 75))
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);
    v5[4] = sub_264745BBC;
    v5[5] = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_26474DD7C;
    v5[3] = &block_descriptor_12;
    v2 = _Block_copy(v5);
    [v1 initWithDynamicProvider_];
    _Block_release(v2);

    sub_264785134();
    v3 = sub_2647851F4();
  }

  else
  {
    if (qword_27FF753C0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FF79308;
  }

  return v3;
}

uint64_t CheckInView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v109 = sub_264784AA4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v88[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v99 = type metadata accessor for CheckInView(0);
  v102 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v104 = v4;
  v105 = &v88[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B48, &qword_26478EAE0);
  MEMORY[0x28223BE20](v95);
  *&v97 = &v88[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B50, &qword_26478EAE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v88[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B58, &qword_26478EAF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v88[-v10];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B60, &qword_26478EAF8);
  MEMORY[0x28223BE20](v90);
  v92 = &v88[-v12];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B68, &qword_26478EB00);
  MEMORY[0x28223BE20](v91);
  v94 = &v88[-v13];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B70, &qword_26478EB08);
  MEMORY[0x28223BE20](v93);
  v96 = &v88[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B78, &qword_26478EB10);
  MEMORY[0x28223BE20](v15);
  v98 = &v88[-v16];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B80, &qword_26478EB18);
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v101 = &v88[-v17];
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v122.origin.x = v20;
  v122.origin.y = v22;
  v122.size.width = v24;
  v122.size.height = v26;
  CGRectGetHeight(v122);
  *v8 = sub_264784714();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B88, &qword_26478EB20);
  sub_2646E4040(v2, &v8[*(v27 + 44)]);
  v89 = *(v2 + 144);
  v100 = v15;
  if (v89)
  {
    v28 = 188.0;
  }

  else if (((*(v2 + 74) << 16) & 0xE00000) == 0x200000)
  {
    v28 = 188.0;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = *(v2 + 8);
  v30 = *(v2 + 16);
  *&v115 = *v2;
  BYTE8(v115) = v29;
  *&v116 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B90, &qword_26478EB28);
  sub_2647852F4();
  v31 = v113;
  v32 = v114;
  sub_264785504();
  v33 = v31;
  if (v32)
  {
    v33 = v28;
  }

  if (v28 > v33)
  {
    sub_2647859E4();
    v34 = sub_264784BE4();
    sub_264783DA4();
  }

  sub_264784314();
  sub_26460E7E4(v8, v11, &qword_27FF77B50, &qword_26478EAE8);
  v35 = &v11[*(v9 + 36)];
  v36 = v120;
  v35[4] = v119;
  v35[5] = v36;
  v35[6] = v121;
  v37 = v116;
  *v35 = v115;
  v35[1] = v37;
  v38 = v118;
  v35[2] = v117;
  v35[3] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B98, &unk_26478EB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  v40 = sub_264784C64();
  *(inited + 32) = v40;
  v41 = sub_264784C84();
  *(inited + 33) = v41;
  v42 = sub_264784C44();
  *(inited + 34) = v42;
  v43 = sub_264784C74();
  sub_264784C74();
  if (sub_264784C74() != v40)
  {
    v43 = sub_264784C74();
  }

  sub_264784C74();
  if (sub_264784C74() != v41)
  {
    v43 = sub_264784C74();
  }

  sub_264784C74();
  if (sub_264784C74() != v42)
  {
    v43 = sub_264784C74();
  }

  sub_264783F54();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v97;
  sub_26460CCE8(v11, v97, &qword_27FF77B58, &qword_26478EAF0);
  v53 = v52 + *(v95 + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  v54 = sub_264784C54();
  sub_264783F54();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_26460CD50(v11, &qword_27FF77B58, &qword_26478EAF0);
  v63 = v92;
  sub_26460E7E4(v52, v92, &qword_27FF77B48, &qword_26478EAE0);
  v64 = &v63[*(v90 + 36)];
  *v64 = v54;
  *(v64 + 1) = v56;
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v64[40] = 0;
  v65 = (v2 + *(v99 + 64));
  v66 = v65[1];
  v99 = *v65;
  v97 = v66;
  v67 = sub_264784C34();
  v68 = v94;
  sub_26460E7E4(v63, v94, &qword_27FF77B60, &qword_26478EAF8);
  v69 = &v68[*(v91 + 36)];
  *v69 = v67;
  *(v69 + 24) = v97;
  *(v69 + 8) = v99;
  v69[40] = 0;
  LOBYTE(v52) = *(v2 + 75);
  v70 = sub_2646E3378();
  LOBYTE(v63) = sub_2646E30E8();
  v71 = v68;
  v72 = v96;
  sub_26460E7E4(v71, v96, &qword_27FF77B68, &qword_26478EB00);
  v73 = &v72[*(v93 + 36)];
  *v73 = v52;
  *(v73 + 1) = v70;
  v73[16] = v63;
  v74 = v105;
  sub_2646E7AB8(v2, v105);
  v75 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v76 = swift_allocObject();
  sub_2646E7BAC(v74, v76 + v75);
  v77 = v98;
  sub_26460E7E4(v72, v98, &qword_27FF77B70, &qword_26478EB08);
  v78 = v100;
  v79 = &v77[*(v100 + 36)];
  *v79 = sub_2646A495C;
  v79[1] = 0;
  v79[2] = sub_2646E7C10;
  v79[3] = v76;
  v80 = v107;
  sub_264784A94();
  v81 = sub_2646E7C80();
  v82 = v101;
  sub_264784FF4();
  (*(v108 + 8))(v80, v109);
  sub_26460CD50(v77, &qword_27FF77B78, &qword_26478EB10);
  if ((v89 & *(v2 + 145)) == 1)
  {
    if (qword_27FF751A8 != -1)
    {
      swift_once();
    }

    v83 = &qword_27FF78F08;
  }

  else
  {
    if (qword_27FF751B0 != -1)
    {
      swift_once();
    }

    v83 = &qword_27FF78F18;
  }

  v84 = *v83;
  v85 = v83[1];

  v113 = *&v84;
  v114 = v85;
  v111 = v78;
  v112 = v81;
  swift_getOpaqueTypeConformance2();
  sub_264613FC4();
  v86 = v106;
  sub_264784F74();

  return (*(v103 + 8))(v82, v86);
}

uint64_t sub_2646E4040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C50, &qword_26478EE08);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C58, &qword_26478EE10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C60, &qword_26478EE18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v65 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C68, &qword_26478EE20);
  v13 = MEMORY[0x28223BE20](v66);
  v71 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C70, &qword_26478EE28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v69 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v67 = &v65 - v23;
  sub_2646E4614(&v65 - v23);
  v24 = objc_opt_self();
  v25 = [v24 mainScreen];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v73.origin.x = v27;
  v73.origin.y = v29;
  v73.size.width = v31;
  v73.size.height = v33;
  CGRectGetHeight(v73);
  *v12 = sub_264784714();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C78, &qword_26478EE30);
  sub_2646E5F84(a1, &v12[*(v34 + 44)]);
  v35 = sub_264784C54();
  v36 = *(a1 + 145);
  if (v36 == 1)
  {
    v37 = [v24 mainScreen];
    [v37 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v74.origin.x = v39;
    v74.origin.y = v41;
    v74.size.width = v43;
    v74.size.height = v45;
    CGRectGetHeight(v74);
  }

  sub_264783F54();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_26460E7E4(v12, v17, &qword_27FF77C60, &qword_26478EE18);
  v54 = &v17[*(v66 + 36)];
  *v54 = v35;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_26460E7E4(v17, v19, &qword_27FF77C68, &qword_26478EE20);
  if (v36)
  {
    v55 = v65;
    sub_2646E478C(v65);
    sub_26460E7E4(v55, v9, &qword_27FF77C50, &qword_26478EE08);
    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  (*(v70 + 56))(v9, v56, 1, v68);
  v57 = v67;
  v58 = v69;
  sub_26460CCE8(v67, v69, &qword_27FF77C70, &qword_26478EE28);
  v59 = v71;
  sub_26460CCE8(v19, v71, &qword_27FF77C68, &qword_26478EE20);
  sub_26460CCE8(v9, v7, &qword_27FF77C58, &qword_26478EE10);
  v60 = v9;
  v61 = v7;
  v62 = v72;
  sub_26460CCE8(v58, v72, &qword_27FF77C70, &qword_26478EE28);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C80, &qword_26478EE38);
  sub_26460CCE8(v59, v62 + *(v63 + 48), &qword_27FF77C68, &qword_26478EE20);
  sub_26460CCE8(v61, v62 + *(v63 + 64), &qword_27FF77C58, &qword_26478EE10);
  sub_26460CD50(v60, &qword_27FF77C58, &qword_26478EE10);
  sub_26460CD50(v19, &qword_27FF77C68, &qword_26478EE20);
  sub_26460CD50(v57, &qword_27FF77C70, &qword_26478EE28);
  sub_26460CD50(v61, &qword_27FF77C58, &qword_26478EE10);
  sub_26460CD50(v59, &qword_27FF77C68, &qword_26478EE20);
  return sub_26460CD50(v58, &qword_27FF77C70, &qword_26478EE28);
}

uint64_t sub_2646E4614@<X0>(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000015;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  CGRectGetHeight(v18);
  if (((*(v1 + 74) << 16) & 0xE00000) == 0x600000)
  {
    v13 = sub_264785164();
    v14 = "viewType(for:withPayloadID:)";
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v13 = qword_27FF792E0;

    v14 = "stopInactivityTimer";
  }

  *a1 = sub_264784714();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DB0, &qword_26478EF60);
  sub_2646E4D0C(v1, v3, v14 | 0x8000000000000000, v13, a1 + *(v15 + 44));
}

uint64_t sub_2646E478C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for CheckInView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C88, &qword_26478EE40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C90, &qword_26478EE48);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  sub_2646E7AB8(v1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_2646E7BAC(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C98, &qword_26478EE50);
  sub_2646E8A04();
  sub_264785334();
  LOBYTE(v24) = *(v1 + 75);
  v15 = sub_26460CDF0(&qword_27FF77CF8, &qword_27FF77C88, &qword_26478EE40, MEMORY[0x277CDF028]);
  v16 = sub_2646E8DAC();
  sub_264784ED4();
  (*(v6 + 8))(v8, v5);
  v24 = v5;
  v25 = &type metadata for CheckInButtonStyle;
  v26 = v15;
  v27 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_264785034();
  return (*(v21 + 8))(v12, v17);
}

void sub_2646E4AD4(double *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_2646E4B58();
  if (v3 < v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B90, &qword_26478EB28);
    sub_264785304();
  }
}

void sub_2646E4B58()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 _referenceBounds];
  v3 = v2;
  v4 = v2;

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = [v0 mainScreen];
  [v5 _referenceBounds];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 < 9.22337204e18)
  {
    v9 = [objc_opt_self() currentDevice];
    [v9 userInterfaceIdiom];

    v10 = [v0 mainScreen];
    [v10 _referenceBounds];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_2646E4D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104[2] = a3;
  v105 = a4;
  v104[1] = a2;
  v126 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DB8, &qword_26478EF68);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v125 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v124 = v104 - v9;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DC0, &qword_26478EF70);
  MEMORY[0x28223BE20](v121);
  v106 = v104 - v10;
  v11 = sub_264785284();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v110 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DC8, &qword_26478EF78);
  MEMORY[0x28223BE20](v116);
  v107 = v104 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DD0, &qword_26478EF80);
  MEMORY[0x28223BE20](v118);
  v120 = v104 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DD8, &qword_26478EF88);
  MEMORY[0x28223BE20](v114);
  v115 = v104 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DE0, &unk_26478EF90);
  MEMORY[0x28223BE20](v119);
  v117 = v104 - v16;
  v17 = sub_264784A74();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771E0, &qword_264792500);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v104 - v23;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DE8, &qword_26478EFA0);
  MEMORY[0x28223BE20](v108);
  v26 = v104 - v25;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DF0, &qword_26478EFA8);
  MEMORY[0x28223BE20](v113);
  v109 = v104 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DF8, &unk_26478EFB0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v122 = v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v127 = v104 - v31;
  v32 = *(a1 + 74) >> 5;
  v123 = a1;
  if (v32 >= 6)
  {
    sub_264784014();
    sub_264784A64();
    sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500, MEMORY[0x277CDD7F8]);
    sub_2646E99E4(&qword_27FF771F0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    sub_264784E84();
    (*(v18 + 8))(v20, v17);
    (*(v22 + 8))(v24, v21);
    v56 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E20, &unk_26478EFC0) + 36)];
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
    v58 = *MEMORY[0x277CDF440];
    v59 = sub_264783F84();
    (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
    *v56 = swift_getKeyPath();
    LOBYTE(v58) = sub_264784C34();
    sub_264783F54();
    v60 = &v26[*(v108 + 36)];
    *v60 = v58;
    *(v60 + 1) = v61;
    *(v60 + 2) = v62;
    *(v60 + 3) = v63;
    *(v60 + 4) = v64;
    v60[40] = 0;
    if (*(a1 + 75))
    {
      v65 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }

      v65 = qword_27FF792F0;
    }

    KeyPath = swift_getKeyPath();
    *&v161 = v65;
    v76 = sub_2647840B4();
    v77 = v109;
    sub_26460E7E4(v26, v109, &qword_27FF77DE8, &qword_26478EFA0);
    v78 = (v77 + *(v113 + 36));
    *v78 = KeyPath;
    v78[1] = v76;
    sub_26460CCE8(v77, v115, &qword_27FF77DF0, &qword_26478EFA8);
    swift_storeEnumTagMultiPayload();
    sub_2646E9294();
    sub_2646E9550(&qword_27FF77E28, &qword_27FF77DC8, &qword_26478EF78, sub_2646E9604);
    v79 = v117;
    sub_264784874();
    sub_26460CCE8(v79, v120, &qword_27FF77DE0, &unk_26478EF90);
    swift_storeEnumTagMultiPayload();
    sub_2646E91DC();
    sub_2646E9550(&qword_27FF77E40, &qword_27FF77DC0, &qword_26478EF70, sub_264690D34);
    sub_264784874();
    sub_26460CD50(v79, &qword_27FF77DE0, &unk_26478EF90);
    sub_26460CD50(v77, &qword_27FF77DF0, &qword_26478EFA8);
  }

  else
  {
    if (v32 == 3)
    {

      sub_264785274();
      v34 = v110;
      v33 = v111;
      v35 = v112;
      (*(v111 + 104))(v110, *MEMORY[0x277CE0FE0], v112);
      v109 = sub_2647852C4();

      (*(v33 + 8))(v34, v35);
      sub_264785504();
      sub_2647840A4();
      v111 = v181;
      v112 = v179;
      v110 = v183;
      v108 = v184;
      v142 = v180;
      v141 = v182;
      v36 = v105;

      v37 = sub_264785194();
      sub_264785504();
      sub_2647840A4();
      v38 = v185;
      v39 = v186;
      v40 = v187;
      LOBYTE(v35) = v188;
      v41 = v189;
      v42 = v190;
      v43 = sub_264785504();
      LOBYTE(v128) = v39;
      v140 = v35;
      *&v143 = v37;
      *(&v143 + 1) = v38;
      LOBYTE(v144) = v39;
      *(&v144 + 1) = v40;
      v44 = v35;
      LOBYTE(v145) = v35;
      *(&v145 + 1) = v41;
      *&v146 = v42;
      *(&v146 + 1) = v43;
      v147 = v45;
      LOBYTE(v35) = v142;
      v46 = v141;
      v160 = v45;
      v158 = v145;
      v159 = v146;
      v156 = v143;
      v157 = v144;
      v148[0] = v37;
      v148[1] = v38;
      v149 = v39;
      v150 = v40;
      v151 = v44;
      v152 = v41;
      v153 = v42;
      v154 = v43;
      v155 = v45;
      sub_26460CCE8(&v143, &v161, &qword_27FF76CF0, &qword_26478B940);
      sub_26460CD50(v148, &qword_27FF76CF0, &qword_26478B940);
      LOBYTE(v37) = sub_264784C34();
      sub_264783F54();
      v140 = 0;
      *&v128 = v109;
      *(&v128 + 1) = v112;
      LOBYTE(v129) = v35;
      *(&v129 + 1) = v111;
      LOBYTE(v130) = v46;
      *(&v130 + 1) = v110;
      *&v131 = v108;
      *(&v131 + 1) = v36;
      v134 = v158;
      v135 = v159;
      *&v136 = v160;
      v132 = v156;
      v133 = v157;
      BYTE8(v136) = v37;
      *&v137 = v47;
      *(&v137 + 1) = v48;
      *&v138 = v49;
      *(&v138 + 1) = v50;
      v139 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E38, &unk_26478EFD8);
      sub_2646E9604();
      v51 = v107;
      sub_264785034();
      v168 = v136;
      v169 = v137;
      v170 = v138;
      v171 = v139;
      v164 = v132;
      v165 = v133;
      v166 = v134;
      v167 = v135;
      v161 = v128;
      v162 = v129;
      v163[0] = v130;
      v163[1] = v131;
      sub_26460CD50(&v161, &qword_27FF77E38, &unk_26478EFD8);
      v52 = &qword_27FF77DC8;
      v53 = &qword_26478EF78;
      sub_26460CCE8(v51, v115, &qword_27FF77DC8, &qword_26478EF78);
      swift_storeEnumTagMultiPayload();
      sub_2646E9294();
      sub_2646E9550(&qword_27FF77E28, &qword_27FF77DC8, &qword_26478EF78, sub_2646E9604);
      v54 = v117;
      sub_264784874();
      sub_26460CCE8(v54, v120, &qword_27FF77DE0, &unk_26478EF90);
      swift_storeEnumTagMultiPayload();
      sub_2646E91DC();
      sub_2646E9550(&qword_27FF77E40, &qword_27FF77DC0, &qword_26478EF70, sub_264690D34);
      sub_264784874();
      sub_26460CD50(v54, &qword_27FF77DE0, &unk_26478EF90);
      v55 = v51;
    }

    else
    {
      type metadata accessor for ImageProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() bundleForClass_];
      v68 = sub_264785714();
      v69 = [objc_opt_self() imageNamed:v68 inBundle:v67 withConfiguration:0];

      if (!v69)
      {
        [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      sub_264785254();
      v71 = v110;
      v70 = v111;
      v72 = v112;
      (*(v111 + 104))(v110, *MEMORY[0x277CE0FE0], v112);
      v73 = sub_2647852C4();

      (*(v70 + 8))(v71, v72);
      sub_264785504();
      sub_2647840A4();
      *&v161 = v73;
      *(&v161 + 1) = v156;
      LOBYTE(v162) = BYTE8(v156);
      *(&v162 + 1) = v157;
      LOBYTE(v163[0]) = BYTE8(v157);
      *(v163 + 8) = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
      sub_264690D34();
      v74 = v106;
      sub_264785034();

      v52 = &qword_27FF77DC0;
      v53 = &qword_26478EF70;
      sub_26460CCE8(v74, v120, &qword_27FF77DC0, &qword_26478EF70);
      swift_storeEnumTagMultiPayload();
      sub_2646E91DC();
      sub_2646E9550(&qword_27FF77E40, &qword_27FF77DC0, &qword_26478EF70, sub_264690D34);
      sub_264784874();
      v55 = v74;
    }

    sub_26460CD50(v55, v52, v53);
  }

  if (qword_27FF75260 != -1)
  {
    swift_once();
  }

  v161 = xmmword_27FF79078;
  sub_264613FC4();

  v80 = sub_264784E44();
  v82 = v81;
  v84 = v83;
  sub_264784CB4();
  v85 = sub_264784E24();
  v87 = v86;
  v89 = v88;

  sub_264784D14();
  v90 = sub_264784DD4();
  v120 = v91;
  v121 = v90;
  v93 = v92;
  v119 = v94;
  sub_26460ECC4(v85, v87, v89 & 1);

  sub_26460ECC4(v80, v82, v84 & 1);

  sub_264785504();
  sub_264784314();
  v95 = v93 & 1;
  LOBYTE(v148[0]) = v95;
  if (*(v123 + 75))
  {
    v96 = sub_264785204();
  }

  else
  {
    if (qword_27FF753A8 != -1)
    {
      swift_once();
    }
  }

  *&v128 = v121;
  *(&v128 + 1) = v120;
  LOBYTE(v129) = v95;
  *(&v129 + 1) = v119;
  v134 = v176;
  v135 = v177;
  v136 = v178;
  v130 = v172;
  v131 = v173;
  v132 = v174;
  v133 = v175;
  *&v137 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E48, &unk_26478EFE8);
  sub_2646E9690();
  v97 = v124;
  sub_264785034();
  v166 = v134;
  v167 = v135;
  v168 = v136;
  *&v169 = v137;
  v163[0] = v130;
  v163[1] = v131;
  v164 = v132;
  v165 = v133;
  v161 = v128;
  v162 = v129;
  sub_26460CD50(&v161, &qword_27FF77E48, &unk_26478EFE8);
  v98 = v127;
  v99 = v122;
  sub_26460CCE8(v127, v122, &qword_27FF77DF8, &unk_26478EFB0);
  v100 = v125;
  sub_26460CCE8(v97, v125, &qword_27FF77DB8, &qword_26478EF68);
  v101 = v126;
  sub_26460CCE8(v99, v126, &qword_27FF77DF8, &unk_26478EFB0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E58, &qword_26478EFF8);
  sub_26460CCE8(v100, v101 + *(v102 + 48), &qword_27FF77DB8, &qword_26478EF68);
  sub_26460CD50(v97, &qword_27FF77DB8, &qword_26478EF68);
  sub_26460CD50(v98, &qword_27FF77DF8, &unk_26478EFB0);
  sub_26460CD50(v100, &qword_27FF77DB8, &qword_26478EF68);
  return sub_26460CD50(v99, &qword_27FF77DF8, &unk_26478EFB0);
}

uint64_t sub_2646E5F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D18, &qword_26478EEC8);
  v111 = *(v3 - 8);
  v112 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v104 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v103 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D20, &qword_26478EED0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v107 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v106 = &v96 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v96 - v13;
  MEMORY[0x28223BE20](v12);
  v113 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D28, &qword_26478EED8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D30, &qword_26478EEE0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v105 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = *(a1 + 120);
  v109 = a1;
  v110 = v14;
  v114 = &v96 - v24;
  if (v23)
  {
    v100 = v19;
    v101 = v17;
    v102 = v16;
    *&v121 = *(a1 + 112);
    *(&v121 + 1) = v23;
    sub_264613FC4();

    v25 = sub_264784E44();
    v27 = v26;
    v29 = v28;
    sub_264784CB4();
    v30 = sub_264784E24();
    v32 = v31;
    v34 = v33;

    sub_264784D04();
    v35 = sub_264784DD4();
    v98 = v36;
    v99 = v35;
    v38 = v37;
    v97 = v39;
    sub_26460ECC4(v30, v32, v34 & 1);

    v40 = v27;
    a1 = v109;
    sub_26460ECC4(v25, v40, v29 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v148[0]) = v38 & 1;
    sub_264785504();
    sub_264784314();
    *(&v115[3] + 5) = v137;
    *(&v115[4] + 5) = v138;
    *(&v115[5] + 5) = v139;
    *(&v115[6] + 5) = v140;
    *(v115 + 5) = v134;
    *(&v115[1] + 5) = v135;
    *(&v115[2] + 5) = v136;
    if (*(a1 + 75))
    {
      v42 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }
    }

    v14 = v110;
    v45 = v100;
    v44 = v101;
    *(&v119[4] + 11) = v115[4];
    *(&v119[5] + 11) = v115[5];
    *(&v119[6] + 11) = v115[6];
    *(v119 + 11) = v115[0];
    *(&v119[1] + 11) = v115[1];
    *(&v119[2] + 11) = v115[2];
    *&v117 = v99;
    *(&v117 + 1) = v98;
    LOBYTE(v118) = v38 & 1;
    *(&v118 + 1) = v97;
    *&v119[0] = KeyPath;
    WORD4(v119[0]) = 1;
    BYTE10(v119[0]) = 1;
    *(&v119[3] + 11) = v115[3];
    *(&v119[7] + 1) = *(&v115[6] + 13);
    v120 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D80, &qword_26478EF48);
    sub_2646E900C();
    sub_264785034();
    v129 = v119[6];
    v130 = v119[7];
    v131 = v120;
    v125 = v119[2];
    v126 = v119[3];
    v127 = v119[4];
    v128 = v119[5];
    v121 = v117;
    v122 = v118;
    v123 = v119[0];
    v124 = v119[1];
    sub_26460CD50(&v121, &qword_27FF77D80, &qword_26478EF48);
    sub_26460E7E4(v45, v114, &qword_27FF77D28, &qword_26478EED8);
    v43 = *(v44 + 56);
  }

  else
  {
    v43 = *(v17 + 56);
  }

  v43();
  v46 = *(a1 + 88);
  if (v46)
  {
    *&v121 = *(a1 + 80);
    *(&v121 + 1) = v46;
    sub_264613FC4();

    v47 = sub_264784E44();
    v49 = v48;
    v51 = v50;
    sub_264784CB4();
    v52 = sub_264784E24();
    v54 = v53;
    v56 = v55;

    sub_264784D04();
    v100 = sub_264784DD4();
    v101 = v57;
    v102 = v58;
    v60 = v59;
    sub_26460ECC4(v52, v54, v56 & 1);

    v61 = v49;
    a1 = v109;
    sub_26460ECC4(v47, v61, v51 & 1);

    v62 = swift_getKeyPath();
    sub_264785504();
    sub_264784314();
    *&v116[55] = v144;
    *&v116[71] = v145;
    *&v116[87] = v146;
    *&v116[103] = v147;
    *&v116[7] = v141;
    *&v116[23] = v142;
    v63 = v60 & 1;
    LOBYTE(v148[0]) = v63;
    *&v116[39] = v143;
    if (*(a1 + 75))
    {
      v64 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }
    }

    v14 = v110;
    *(&v119[4] + 9) = *&v116[64];
    *(&v119[5] + 9) = *&v116[80];
    *(&v119[6] + 9) = *&v116[96];
    *(v119 + 9) = *v116;
    *(&v119[1] + 9) = *&v116[16];
    *(&v119[2] + 9) = *&v116[32];
    *&v117 = v100;
    *(&v117 + 1) = v102;
    LOBYTE(v118) = v63;
    *(&v118 + 1) = v101;
    *&v119[0] = v62;
    BYTE8(v119[0]) = 1;
    *(&v119[3] + 9) = *&v116[48];
    *(&v119[7] + 1) = *&v116[111];
    v120 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D40, &qword_26478EF20);
    sub_2646E8E10();
    v66 = v103;
    sub_264785034();
    v129 = v119[6];
    v130 = v119[7];
    v131 = v120;
    v125 = v119[2];
    v126 = v119[3];
    v127 = v119[4];
    v128 = v119[5];
    v121 = v117;
    v122 = v118;
    v123 = v119[0];
    v124 = v119[1];
    sub_26460CD50(&v121, &qword_27FF77D40, &qword_26478EF20);
    v67 = v113;
    sub_26460E7E4(v66, v113, &qword_27FF77D18, &qword_26478EEC8);
    v65 = *(v111 + 56);
    v65(v67, 0, 1, v112);
  }

  else
  {
    v65 = *(v111 + 56);
    v65(v113, 1, 1, v112);
  }

  v68 = *(a1 + 104);
  if (v68)
  {
    v100 = v65;
    *&v121 = *(a1 + 96);
    *(&v121 + 1) = v68;
    sub_264613FC4();

    v69 = sub_264784E44();
    v71 = v70;
    v73 = v72;
    sub_264784CB4();
    v74 = sub_264784E24();
    v76 = v75;
    v78 = v77;

    sub_264784D04();
    v101 = sub_264784DD4();
    v102 = v79;
    v103 = v80;
    v82 = v81;
    sub_26460ECC4(v74, v76, v78 & 1);

    sub_26460ECC4(v69, v71, v73 & 1);

    v83 = swift_getKeyPath();
    sub_264785504();
    sub_264784314();
    *&v132[55] = v148[3];
    *&v132[71] = v148[4];
    *&v132[87] = v148[5];
    *&v132[103] = v148[6];
    *&v132[7] = v148[0];
    *&v132[23] = v148[1];
    v84 = v82 & 1;
    v133 = v84;
    *&v132[39] = v148[2];
    if (*(v109 + 75))
    {
      v85 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }
    }

    v87 = v110;
    *(&v119[4] + 9) = *&v132[64];
    *(&v119[5] + 9) = *&v132[80];
    *(&v119[6] + 9) = *&v132[96];
    *(v119 + 9) = *v132;
    *(&v119[1] + 9) = *&v132[16];
    *(&v119[2] + 9) = *&v132[32];
    *&v117 = v101;
    *(&v117 + 1) = v103;
    LOBYTE(v118) = v84;
    *(&v118 + 1) = v102;
    *&v119[0] = v83;
    BYTE8(v119[0]) = 1;
    *(&v119[3] + 9) = *&v132[48];
    *(&v119[7] + 1) = *&v132[111];
    v120 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D40, &qword_26478EF20);
    sub_2646E8E10();
    v88 = v104;
    sub_264785034();
    v129 = v119[6];
    v130 = v119[7];
    v131 = v120;
    v125 = v119[2];
    v126 = v119[3];
    v127 = v119[4];
    v128 = v119[5];
    v121 = v117;
    v122 = v118;
    v123 = v119[0];
    v124 = v119[1];
    sub_26460CD50(&v121, &qword_27FF77D40, &qword_26478EF20);
    sub_26460E7E4(v88, v87, &qword_27FF77D18, &qword_26478EEC8);
    v100(v87, 0, 1, v112);
    v86 = v87;
  }

  else
  {
    v65(v14, 1, 1, v112);
    v86 = v14;
  }

  v89 = v105;
  sub_26460CCE8(v114, v105, &qword_27FF77D30, &qword_26478EEE0);
  v90 = v113;
  v91 = v106;
  sub_26460CCE8(v113, v106, &qword_27FF77D20, &qword_26478EED0);
  v92 = v107;
  sub_26460CCE8(v86, v107, &qword_27FF77D20, &qword_26478EED0);
  v93 = v108;
  sub_26460CCE8(v89, v108, &qword_27FF77D30, &qword_26478EEE0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D38, &qword_26478EEE8);
  sub_26460CCE8(v91, v93 + *(v94 + 48), &qword_27FF77D20, &qword_26478EED0);
  sub_26460CCE8(v92, v93 + *(v94 + 64), &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v86, &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v90, &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v114, &qword_27FF77D30, &qword_26478EEE0);
  sub_26460CD50(v92, &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v91, &qword_27FF77D20, &qword_26478EED0);
  return sub_26460CD50(v89, &qword_27FF77D30, &qword_26478EEE0);
}

uint64_t sub_2646E6D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D08, &qword_26478EE88);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CB0, &qword_26478EE58);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  LODWORD(v7) = *(a1 + 144);
  v45 = v8;
  if (v7 == 1)
  {
    if (qword_27FF75198 != -1)
    {
      swift_once();
    }

    v9 = &qword_27FF78EE8;
  }

  else
  {
    if (qword_27FF751A0 != -1)
    {
      swift_once();
    }

    v9 = &qword_27FF78EF8;
  }

  v10 = *v9;
  v11 = v9[1];

  if (*(a1 + 146) == 1)
  {
    sub_264785274();
    v39 = sub_264784E54();
    v40 = v12;
    v14 = v13;
    v16 = v15;
    v46 = v10;
    v47 = v11;
    sub_264613FC4();
    v17 = sub_264784E44();
    v19 = v18;
    v41 = v3;
    v21 = v20;
    v22 = sub_264784E04();
    v42 = v6;
    v43 = v5;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_26460ECC4(v17, v19, v21 & 1);

    sub_26460ECC4(v39, v14, v16 & 1);

    v29 = v45;
    sub_2646E70D8(v22, v24, v26 & 1, v28, v45);
    v30 = v24;
    v5 = v43;
    sub_26460ECC4(v22, v30, v26 & 1);
  }

  else
  {
    v46 = v10;
    v47 = v11;
    sub_264613FC4();
    v31 = sub_264784E44();
    v33 = v32;
    v35 = v34;
    v29 = v45;
    sub_2646E70D8(v31, v32, v34 & 1, v36, v45);
    sub_26460ECC4(v31, v33, v35 & 1);
  }

  sub_26460CCE8(v29, v5, &qword_27FF77CB0, &qword_26478EE58);
  swift_storeEnumTagMultiPayload();
  sub_2646E8A88();
  sub_264784874();
  return sub_26460CD50(v29, &qword_27FF77CB0, &qword_26478EE58);
}

uint64_t sub_2646E70D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D10, &qword_26478EE90);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v51 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CE0, &qword_26478EE70) - 8;
  MEMORY[0x28223BE20](v53);
  v51 = &v51 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CD0, &qword_26478EE68);
  MEMORY[0x28223BE20](v56);
  v58 = &v51 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CC0, &qword_26478EE60);
  MEMORY[0x28223BE20](v57);
  v59 = &v51 - v12;
  v13 = sub_264784CB4();
  KeyPath = swift_getKeyPath();
  *&v61 = a1;
  *(&v61 + 1) = a2;
  LOBYTE(v62) = a3 & 1;
  *(&v62 + 1) = a4;
  *&v63 = KeyPath;
  *(&v63 + 1) = v13;
  sub_26460C474(a1, a2, a3 & 1);

  sub_264784CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CE8, &unk_26478EE78);
  sub_2646E8CF4();
  v15 = v52;
  sub_264784EA4();
  v16 = v51;
  sub_26460ECC4(a1, a2, a3 & 1);

  sub_264785504();
  sub_264784314();
  (*(v54 + 32))(v16, v15, v55);
  v17 = (v16 + *(v53 + 44));
  v18 = v66;
  v17[4] = v65;
  v17[5] = v18;
  v17[6] = v67;
  v19 = v62;
  *v17 = v61;
  v17[1] = v19;
  v20 = v64;
  v17[2] = v63;
  v17[3] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B98, &unk_26478EB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  LOBYTE(v15) = sub_264784C64();
  *(inited + 32) = v15;
  v22 = sub_264784C84();
  *(inited + 33) = v22;
  v23 = sub_264784C74();
  sub_264784C74();
  if (sub_264784C74() != v15)
  {
    v23 = sub_264784C74();
  }

  sub_264784C74();
  if (sub_264784C74() != v22)
  {
    v23 = sub_264784C74();
  }

  v24 = v58;
  sub_26460E7E4(v16, v58, &qword_27FF77CE0, &qword_26478EE70);
  v25 = v24 + *(v56 + 36);
  *v25 = v23;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  v26 = sub_264784C44();
  sub_264783F54();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v24;
  v36 = v59;
  sub_26460E7E4(v35, v59, &qword_27FF77CD0, &qword_26478EE68);
  v37 = v36 + *(v57 + 36);
  *v37 = v26;
  *(v37 + 8) = v28;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  v38 = sub_264784C54();
  sub_264783F54();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v36;
  v48 = v60;
  sub_26460E7E4(v47, v60, &qword_27FF77CC0, &qword_26478EE60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CB0, &qword_26478EE58);
  v50 = v48 + *(result + 36);
  *v50 = v38;
  *(v50 + 8) = v40;
  *(v50 + 16) = v42;
  *(v50 + 24) = v44;
  *(v50 + 32) = v46;
  *(v50 + 40) = 0;
  return result;
}

uint64_t sub_2646E7628@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = sub_264784A04();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C38, &qword_26478EDF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  sub_264784A14();
  if (qword_27FF75398 != -1)
  {
    swift_once();
  }

  sub_264784A24();
  v7 = sub_2647851F4();
  v8 = &v6[*(v4 + 36)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C40, &qword_26478EDF8);
  v10 = v8 + *(v9 + 52);
  v11 = *(sub_2647842B4() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_264784674();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #20.0 }

  *v10 = _Q0;
  *v8 = v7;
  *(v8 + *(v9 + 56)) = 256;
  (*(v1 + 32))(v6, v3, v22);
  if (qword_27FF753B0 != -1)
  {
    swift_once();
  }

  sub_264784A24();
  v19 = sub_2647851F4();
  v20 = v23;
  sub_26460E7E4(v6, v23, &qword_27FF77C38, &qword_26478EDF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C48, &qword_26478EE00);
  *(v20 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_2646E790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_264784C34();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C28, &qword_26478EDE0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C30, &qword_26478EDE8) + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
}