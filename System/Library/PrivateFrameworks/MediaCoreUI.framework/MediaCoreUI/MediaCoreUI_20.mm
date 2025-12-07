void sub_1C5B2F3AC(char a1)
{
  if (*(v1 + 33) == (a1 & 1))
  {
    *(v1 + 33) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BEAC90);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
    sub_1C5BC7B64();
  }
}

double sub_1C5B2F4BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C5B2F6D0();
  }

  return result;
}

void sub_1C5B2F514(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BEAC90);
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
  sub_1C5BC7B74();

  *a2 = *(v3 + 33);
}

uint64_t sub_1C5B2F5E4()
{
  swift_getKeyPath(byte_1C5BEAC90);
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
  sub_1C5BC7B74();

  return *(v0 + 33);
}

uint64_t type metadata accessor for MotionEnabledState(uint64_t a1)
{
  result = qword_1EDA4E478;
  if (!qword_1EDA4E478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5B2F6D0()
{
  v1 = v0;
  if (*(v0 + 32) & 1) != 0 || UIAccessibilityIsReduceMotionEnabled() || (sub_1C5BCB614() & 1) == 0 || (v2 = [objc_opt_self() processInfo], v3 = objc_msgSend(v2, sel_isLowPowerModeEnabled), v2, (v3) || (v4 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v5 = objc_msgSend(v4, sel_motionMode), v4, !v5) || v5 == 1 && (v6 = objc_msgSend(objc_opt_self(), sel_sharedMonitor), objc_msgSend(v6, sel_networkType), v6, !ICEnvironmentNetworkTypeIsWiFi()) || (swift_getKeyPath(byte_1C5BEAD90), swift_getKeyPath(byte_1C5BEADB8), sub_1C5BC8034(), , , (v18))
  {
    v7 = 0;
  }

  else
  {
    swift_getKeyPath(aH_11);
    swift_getKeyPath(aH_12);
    sub_1C5BC8034();

    v7 = v18 < 0x1E;
  }

  swift_getKeyPath(byte_1C5BEAC90);
  v18 = v1;
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
  sub_1C5BC7B74();

  if (v7 != *(v1 + 33))
  {
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EDA5DB60);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 67109634;
      swift_getKeyPath(byte_1C5BEAC90);
      sub_1C5BC7B74();

      *(v11 + 4) = *(v1 + 33);

      *(v11 + 8) = 1024;
      *(v11 + 10) = v7;
      *(v11 + 14) = 2082;
      v13 = sub_1C5B2FB28();
      v15 = sub_1C592ADA8(v13, v14, &v18);

      *(v11 + 16) = v15;
      _os_log_impl(&dword_1C5922000, v9, v10, "Updated isMotionEnabled from %{BOOL}d to %{BOOL}d: attributesDescription=(%{public}s)", v11, 0x18u);
      v16 = __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1C69510F0](v12, -1, -1, v16);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    else
    {
    }

    if (v7 == *(v1 + 33))
    {
      *(v1 + 33) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_1C5BEAC90);
      MEMORY[0x1EEE9AC00](KeyPath);
      v18 = v1;
      sub_1C5BC7B64();
    }
  }
}

uint64_t sub_1C5B2FB28()
{
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x7272656665447369, 0xEB000000003D6465);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v1, v2);

  MEMORY[0x1C694F170](0xD000000000000017, 0x80000001C5BFBF20);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v4 = !IsReduceMotionEnabled;
  if (IsReduceMotionEnabled)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1C694F170](v5, v6);

  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BFBF40);
  v7 = sub_1C5BCB614();
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x1C694F170](v9, v10);

  MEMORY[0x1C694F170](0xD000000000000013, 0x80000001C5BFBF60);
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 isLowPowerModeEnabled];

  if (v12)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v13, v14);

  MEMORY[0x1C694F170](0x4D6E6F69746F6D20, 0xEC0000003D65646FLL);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = [v15 motionMode];

  v17 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v17);

  MEMORY[0x1C694F170](0xD000000000000016, 0x80000001C5BFBF80);
  swift_getKeyPath(byte_1C5BEAD90);
  swift_getKeyPath(byte_1C5BEADB8);
  sub_1C5BC8034();

  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v16)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v18, v19);

  MEMORY[0x1C694F170](0x6C616D7265687420, 0xEE003D6C6576654CLL);
  swift_getKeyPath(aH_11);
  swift_getKeyPath(aH_12);
  sub_1C5BC8034();

  v20 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v20);

  return 0;
}

uint64_t MotionEnabledState.deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI18MotionEnabledState___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MotionEnabledState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI18MotionEnabledState___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B2FFBC(void *a1)
{
  v1 = a1;
  v2 = sub_1C5B2FFF0();

  return v2;
}

uint64_t sub_1C5B2FFF0()
{
  v1 = sub_1C5BCAE44();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1C5BCB8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1C5924EF4(v7, &qword_1EC191700, &unk_1C5BD5040);
  }

  return 2;
}

uint64_t static MotionViewDeferral.isDeferred.getter()
{
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  return *(off_1EDA4B358 + 32);
}

void sub_1C5B30130(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EDA4B358 + 32);
  *(off_1EDA4B358 + 32) = v1;
  if (v1 != v2)
  {
    sub_1C5B2F6D0();
  }
}

void static MotionViewDeferral.isDeferred.setter(char a1)
{
  if (qword_1EDA4B350 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = *(off_1EDA4B358 + 32);
  *(off_1EDA4B358 + 32) = a1 & 1;
  if (v1 != (a1 & 1))
  {
    sub_1C5B2F6D0();
  }
}

void (*static MotionViewDeferral.isDeferred.modify(uint64_t a1))(unsigned __int8 *a1)
{
  if (qword_1EDA4B350 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = off_1EDA4B358;
  *a1 = off_1EDA4B358;
  *(a1 + 8) = v1[32];
  return sub_1C5B3029C;
}

void sub_1C5B3029C(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 32);
  *(*a1 + 32) = v1;
  if (v1 != v2)
  {
    sub_1C5B2F6D0();
  }
}

uint64_t sub_1C5B302F4(uint64_t a1)
{
  result = sub_1C5BC7BB4();
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

uint64_t sub_1C5B30464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5B304C8@<X0>(uint64_t a4@<X8>)
{
  _s6BannerCMa();
  sub_1C5B30D60(qword_1EDA49FB8, v5, _s6BannerCMa, &unk_1C5BEAEC0);
  v6 = sub_1C5BC88C4();
  v8 = v7;
  _s12PresentationCMa(0);
  sub_1C5B30D60(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  v9 = sub_1C5BC8324();
  v11 = v10;
  result = sub_1C5BC8C84();
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v11 & 1;
  *(a4 + 32) = result;
  *(a4 + 40) = v13;
  return result;
}

uint64_t sub_1C5B305DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C5950C90();
  v50 = v5;
  v51 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64[0] = &type metadata for NowPlayingLookupID;
  v64[1] = AssociatedTypeWitness;
  v64[2] = v7;
  v64[3] = AssociatedConformanceWitness;
  v48 = type metadata accessor for ViewProvider(0, v64);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v43 - v9;
  v55 = AssociatedConformanceWitness;
  v57 = AssociatedTypeWitness;
  v52 = swift_getAssociatedTypeWitness();
  v10 = sub_1C5BCB804();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v43 - v13;
  v14 = sub_1C5BC8F34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5BCB804();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v66 = *(v3 + 24);
  v24 = *(v3 + 16);
  v65 = v24;
  LOBYTE(AssociatedTypeWitness) = v66;

  if ((AssociatedTypeWitness & 1) == 0)
  {
    sub_1C5BCB4E4();
    v44 = v14;
    v25 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B30E40(&v65);
    (*(v15 + 8))(v17, v44);
    v24 = v64[0];
  }

  swift_getKeyPath(asc_1C5BEB000);
  v64[0] = v24;
  sub_1C5B30D60(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v26 = *(v24 + 17);

  if (v26 == 1 && (v27 = *(v3 + 8), swift_beginAccess(), *(v27 + 16) == 1))
  {
    v29 = v50;
    v28 = v51;
    sub_1C59498C4(*(v3 + 32), *(v3 + 40), v50, *(v51 + 8));
    v30 = *(v28 + 384);
    swift_unknownObjectRetain();
    v31 = v45;
    v30(v29, v28);
    swift_unknownObjectRelease();
    v59 = 0x72656E6E6142;
    v60 = 0xE600000000000000;
    v32 = v49;
    v33 = v48;
    sub_1C595BC70();

    (*(v46 + 8))(v31, v33);
    v34 = swift_getAssociatedConformanceWitness();
    v58 = v34;
    WitnessTable = swift_getWitnessTable();
    v36 = v47;
    sub_1C593EDC0(v32, v10, WitnessTable);
    v37 = v56;
    v57 = v19;
    v38 = *(v56 + 8);
    v38(v32, v10);
    sub_1C593EDC0(v36, v10, WitnessTable);
    v38(v36, v10);
    v19 = v57;
    v39 = v54;
    (*(v37 + 32))(v54, v32, v10);
    (*(v37 + 56))(v39, 0, 1, v10);
  }

  else
  {
    v39 = v54;
    (*(v56 + 56))(v54, 1, 1, v10);
    v34 = swift_getAssociatedConformanceWitness();
    v63 = v34;
    swift_getWitnessTable();
  }

  sub_1C5941600(v39, v23);
  v40 = *(v19 + 8);
  v40(v39, v18);
  v62 = v34;
  v61 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_1C593EDC0(v23, v18, v41);
  return (v40)(v23, v18);
}

uint64_t sub_1C5B30D24@<X0>(uint64_t *a2@<X8>)
{
  _s6BannerCMa();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C5B30D60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C5B30DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B30E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194400, &unk_1C5BE94E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B30EA8@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v4;
  _s5DebugCMa(0);
  sub_1C5B353C0(&qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
  *(a3 + 16) = sub_1C5BC8C84();
  *(a3 + 24) = v5;
  result = swift_getKeyPath(asc_1C5BEB068);
  *(a3 + 32) = result;
  *(a3 + 105) = 0;
  return result;
}

uint64_t sub_1C5B30F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = swift_getAssociatedTypeWitness();
  sub_1C5BC92D4();
  _s13FooterButtonsV11ButtonsViewVMa(255, v3, v2, v4);
  v5 = sub_1C5BC8AB4();
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838, &qword_1C5BD5C80);
  WitnessTable = swift_getWitnessTable();
  v138 = sub_1C5B34DD0();
  v98 = v5;
  v6 = swift_getWitnessTable();
  v7 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  swift_getOpaqueTypeMetadata2();
  v8 = sub_1C5BC92D4();
  v90 = v3;
  v91 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v136 = swift_getAssociatedConformanceWitness();
  *&v139 = v5;
  *(&v139 + 1) = v97;
  *&v140 = v6;
  *(&v140 + 1) = v7;
  v133 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v8;
  v78[1] = swift_getWitnessTable();
  v9 = sub_1C5BCA714();
  v80 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v79 = v78 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980, &qword_1C5BD5EC0);
  v101 = v9;
  v11 = sub_1C5BC8AB4();
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v81 = v78 - v12;
  v13 = sub_1C5BC8AB4();
  v87 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v85 = v78 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198578, &unk_1C5BEB1A8);
  AssociatedTypeWitness = v13;
  v15 = sub_1C5BC8AB4();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v88 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v84 = v78 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v86 = v78 - v20;
  v21 = sub_1C5BC8F34();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v15;
  v96 = sub_1C5BCB804();
  v25 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v95 = v78 - v28;
  v29 = v99[5];
  *&v141[32] = v99[4];
  *&v141[48] = v29;
  *&v141[58] = *(v99 + 90);
  v30 = v99[1];
  v139 = *v99;
  v140 = v30;
  v31 = v99[3];
  *v141 = v99[2];
  *&v141[16] = v31;
  v99 = sub_1C5B34A7C();
  v142[0] = *v141;
  v142[1] = *&v141[16];
  v142[2] = *&v141[32];
  v143[0] = *&v141[48];
  *(v143 + 10) = *&v141[58];
  v32 = *v141;
  v148 = v141[72];
  v146 = *&v141[40];
  v147 = *&v141[56];
  v144 = *&v141[8];
  v145 = *&v141[24];
  v98 = v11;
  if ((v141[73] & 1) == 0)
  {
    sub_1C59400B0(v142, v127, &qword_1EC191B58, &qword_1C5BE53F0);
    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v142, &qword_1EC191B58, &qword_1C5BE53F0);
    v36 = *(v22 + 8);
    v36(v24, v21);
    v33 = BYTE10(v128);
    if (BYTE10(v128) != 3)
    {
      v47 = sub_1C5BC8FA4();
      v89 = v25;
      v48 = v47;
      sub_1C59400B0(v142, v127, &qword_1EC191B58, &qword_1C5BE53F0);
      sub_1C5BCB4E4();
      v49 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v11 = v98;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v142, &qword_1EC191B58, &qword_1C5BE53F0);
      v36(v24, v21);
      result = v48;
      v25 = v89;
      goto LABEL_7;
    }

LABEL_5:

    v37 = v94;
    (*(v93 + 56))(v94, 1, 1, v97);
    v38 = swift_getWitnessTable();
    v39 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    v125 = v38;
    v126 = v39;
    v123 = swift_getWitnessTable();
    v40 = MEMORY[0x1E697E040];
    v124 = MEMORY[0x1E697E040];
    v41 = swift_getWitnessTable();
    v42 = sub_1C5924F54(&qword_1EC198580, &qword_1EC198578, &unk_1C5BEB1A8, MEMORY[0x1E697EC18]);
    v121 = v41;
    v122 = v42;
    swift_getWitnessTable();
    v43 = v25;
    v44 = v95;
    sub_1C5941600(v37, v95);
    v45 = *(v43 + 8);
    v46 = v96;
    v45(v37, v96);
LABEL_10:
    v73 = swift_getWitnessTable();
    v74 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    v119 = v73;
    v120 = v74;
    v117 = swift_getWitnessTable();
    v118 = v40;
    v75 = swift_getWitnessTable();
    v76 = sub_1C5924F54(&qword_1EC198580, &qword_1EC198578, &unk_1C5BEB1A8, MEMORY[0x1E697EC18]);
    v115 = v75;
    v116 = v76;
    v114 = swift_getWitnessTable();
    v77 = swift_getWitnessTable();
    sub_1C593EDC0(v44, v46, v77);
    return (v45)(v44, v46);
  }

  v128 = *&v141[8];
  v129 = *&v141[24];
  v130 = *&v141[40];
  v131 = *&v141[56];
  v132 = v141[72];
  v127[10] = *v141;
  v33 = v141[18];
  if (v141[18] == 3)
  {
    goto LABEL_5;
  }

  result = sub_1C5BC8FA4();
  v110 = v145;
  v111 = v146;
  v112 = v147;
  v113 = v148;
  v109 = v144;
  v108 = v32;
LABEL_7:
  v89 = v25;
  if (BYTE10(v109) - 1 < 2 || !BYTE10(v109))
  {
    MEMORY[0x1EEE9AC00](result);
    v51 = v90;
    v50 = v91;
    v78[-4] = v90;
    v78[-3] = v50;
    v78[-2] = &v139;
    LOBYTE(v78[-1]) = v33;
    v52 = v79;
    sub_1C5BCA704();

    v53 = v101;
    v54 = swift_getWitnessTable();
    v55 = v81;
    sub_1C5BCA1F4();

    (*(v80 + 8))(v52, v53);
    sub_1C5BCAA54();
    v56 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    v106 = v54;
    v107 = v56;
    v57 = swift_getWitnessTable();
    v58 = v85;
    sub_1C5BCA234();
    (*(v82 + 8))(v55, v11);
    sub_1C5BC9144();
    v59 = sub_1C5BC8FA4();
    v83 = v78;
    MEMORY[0x1EEE9AC00](v59);
    v60 = v91;
    v78[-4] = v51;
    v78[-3] = v60;
    v78[-2] = &v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198588, &qword_1C5BEB1B8);
    v104 = v57;
    v105 = MEMORY[0x1E697E040];
    v61 = AssociatedTypeWitness;
    v62 = swift_getWitnessTable();
    sub_1C5B34E40();
    v63 = v84;
    sub_1C5BCA2C4();

    (*(v87 + 8))(v58, v61);
    v64 = sub_1C5924F54(&qword_1EC198580, &qword_1EC198578, &unk_1C5BEB1A8, MEMORY[0x1E697EC18]);
    v102 = v62;
    v103 = v64;
    v65 = v97;
    v66 = swift_getWitnessTable();
    v67 = v86;
    sub_1C593EDC0(v63, v65, v66);
    v68 = v93;
    v69 = *(v93 + 8);
    v70 = v63;
    v40 = MEMORY[0x1E697E040];
    v69(v70, v65);
    v71 = v88;
    sub_1C593EDC0(v67, v65, v66);
    v69(v67, v65);
    v72 = v94;
    (*(v68 + 32))(v94, v71, v65);
    (*(v68 + 56))(v72, 0, 1, v65);
    v44 = v95;
    sub_1C5941600(v72, v95);
    v45 = *(v89 + 8);
    v46 = v96;
    v45(v72, v96);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B31E48@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v92) = a2;
  v99 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v77 - v9;
  v11 = _s13FooterButtonsV11ButtonsViewVMa(0, a3, a4, v10);
  v90 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v89 = (&v77 - v12);
  v13 = sub_1C5BC8AB4();
  v81 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v77 - v14;
  v91 = v11;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C5B34DD0();
  v88 = WitnessTable;
  v118 = WitnessTable;
  v119 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v105 = v13;
  v114 = v13;
  v115 = v8;
  v101 = v17;
  v102 = v8;
  v116 = v17;
  v117 = v18;
  v100 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v79 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v77 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v114 = AssociatedTypeWitness;
  v115 = v24;
  v103 = v26;
  v104 = AssociatedConformanceWitness;
  v116 = AssociatedConformanceWitness;
  v117 = v26;
  v84 = type metadata accessor for NowPlayingFooterConfiguration(0, &v114);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v77 - v27;
  v28 = sub_1C5BC92D4();
  v87 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v85 = &v77 - v31;
  v98 = OpaqueTypeMetadata2;
  v97 = sub_1C5BC92D4();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v77 - v32;
  v34 = *a1;
  v33 = a1[1];
  v35 = a4[1];
  sub_1C59498C4(*a1, v33, a3, v35);
  v36 = a4[49];
  swift_unknownObjectRetain();
  v36(&v114, a3, a4);
  swift_unknownObjectRelease();
  LODWORD(v17) = v116;

  sub_1C59498C4(v34, v33, a3, v35);
  if (v17 == 1)
  {
    v37 = a4[41];
    swift_unknownObjectRetain();
    v38 = v82;
    v37(a3, a4);
    swift_unknownObjectRelease();
    LOBYTE(v114) = v92;
    v39 = v86;
    v40 = v84;
    sub_1C5ABA234(&v114, v84, v86);
    (*(v83 + 8))(v38, v40);
    v106 = v104;
    v107 = v103;
    v41 = swift_getWitnessTable();
    v42 = v85;
    sub_1C593EDC0(v39, v28, v41);
    v43 = *(v87 + 8);
    v43(v39, v28);
    sub_1C593EDC0(v42, v28, v41);
    v44 = v101;
    v45 = v102;
    v114 = v105;
    v115 = v102;
    v46 = v100;
    v116 = v101;
    v117 = v100;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v95;
    sub_1C5950E54(v39, v28, v98, v41, OpaqueTypeConformance2);
    v43(v39, v28);
    v43(v42, v28);
    v49 = v45;
    v51 = v103;
    v50 = v104;
LABEL_5:
    v110 = v50;
    v111 = v51;
    v73 = swift_getWitnessTable();
    v114 = v105;
    v115 = v49;
    v116 = v44;
    v117 = v46;
    v74 = swift_getOpaqueTypeConformance2();
    v108 = v73;
    v109 = v74;
    v75 = v97;
    v76 = swift_getWitnessTable();
    sub_1C593EDC0(v48, v75, v76);
    return (*(v96 + 8))(v48, v75);
  }

  v92 = v28;
  v52 = v101;
  v53 = v102;
  v54 = v105;
  swift_unknownObjectRetain();
  v36(&v114, a3, a4);
  swift_unknownObjectRelease();
  v55 = v89;
  v56 = sub_1C5B32944(v114, v115, a3, a4, v89);
  v57 = v93;
  v58 = v91;
  MEMORY[0x1C694E550](v56, v91, &type metadata for PlatformGlassEffectContainerModifier, v88);
  (*(v90 + 8))(v55, v58);
  v59 = *MEMORY[0x1E697E720];
  v60 = sub_1C5BC89B4();
  v61 = v94;
  (*(*(v60 - 8) + 104))(v94, v59, v60);
  sub_1C5B353C0(&qword_1EDA46688, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v63 = v79;
    v64 = v100;
    sub_1C5BC9F54();
    sub_1C5924EF4(v61, &qword_1EC192838, &qword_1C5BD5C80);
    (*(v81 + 8))(v57, v54);
    v114 = v54;
    v115 = v53;
    v116 = v52;
    v117 = v64;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v78;
    v67 = v98;
    sub_1C593EDC0(v63, v98, v65);
    v68 = *(v80 + 8);
    v68(v63, v67);
    sub_1C593EDC0(v66, v67, v65);
    v51 = v103;
    v50 = v104;
    v112 = v104;
    v113 = v103;
    v69 = v92;
    v70 = swift_getWitnessTable();
    v48 = v95;
    sub_1C5941738(v63, v69, v67, v70, v65);
    v71 = v63;
    v46 = v100;
    v68(v71, v67);
    v72 = v66;
    v49 = v102;
    v68(v72, v67);
    v44 = v101;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B32944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = sub_1C5BC8C84();
  a5[3] = v8;
  v10 = *(_s13FooterButtonsV11ButtonsViewVMa(0, a3, a4, v9) + 40);
  *(a5 + v10) = swift_getKeyPath(byte_1C5BEB1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50, &unk_1C5BD7190);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B329DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    swift_beginAccess();
    if (*(v2 + 18))
    {
      v4 = sub_1C5BCA494();
      sub_1C5BCAA54();
      sub_1C5BC85D4();
      result = sub_1C5BC8FA4();
      v7 = v12;
      v6 = v11;
      v8 = v13;
      v9 = vdupq_n_s64(0x100uLL);
      v9.i64[0] = v4;
      v10 = sub_1C5B32B14;
    }

    else
    {
      result = 0;
      v10 = 0;
      v9 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
    }

    *a2 = v9;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 64) = result;
    *(a2 + 72) = v10;
    *(a2 + 80) = 0;
  }

  else
  {
    _s5DebugCMa(0);
    sub_1C5B353C0(&qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B32B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = *(a1 - 8);
  v51 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C5BC8F34();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196B10, &unk_1C5BE46C0);
  v50 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198648, &qword_1C5BEB2F8);
  v10 = *(a1 + 16);
  v37 = *(a1 + 24);
  v36 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35[1] = swift_getAssociatedTypeWitness();
  v38 = sub_1C5BCB804();
  type metadata accessor for VibrancyModifier(255);
  v43 = sub_1C5BC8AB4();
  v45 = sub_1C5BC8AB4();
  v47 = sub_1C5BC92D4();
  v11 = sub_1C5BC92D4();
  v44 = v11;
  v12 = sub_1C5924F54(qword_1EC196B18, &qword_1EC196B10, &unk_1C5BE46C0, MEMORY[0x1E69E6338]);
  v49 = v12;
  v48 = sub_1C5AB9BD8();
  v64 = v9;
  v65 = &type metadata for NowPlayingButtonID;
  v66 = v11;
  v67 = v12;
  v68 = v48;
  v13 = sub_1C5BCA8C4();
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - v17;
  v19 = *v2;
  sub_1C5950790(v8);
  v20 = v19(v8);
  (*(v41 + 8))(v8, v42);
  v64 = v20;
  swift_getKeyPath(byte_1C5BEB300);
  v21 = v46;
  (*(v5 + 16))(v46, v3, a1);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = v37;
  *(v23 + 16) = v36;
  *(v23 + 24) = v24;
  (*(v5 + 32))(v23 + v22, v21, a1);
  v25 = sub_1C5B35248();
  v63 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier, &unk_1C5BEB3F4);
  v61 = WitnessTable;
  v62 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1C59E7CE0();
  v59 = v28;
  v60 = v29;
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x1E6981E60];
  v30 = swift_getWitnessTable();
  v55 = v25;
  v56 = v30;
  v34 = swift_getWitnessTable();
  sub_1C5BCA8A4();
  v54 = v34;
  v31 = swift_getWitnessTable();
  sub_1C593EDC0(v15, v13, v31);
  v32 = *(v52 + 8);
  v32(v15, v13);
  sub_1C593EDC0(v18, v13, v31);
  return (v32)(v18, v13);
}

uint64_t sub_1C5B33194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v122 = a2;
  v137 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v130 = swift_getAssociatedTypeWitness();
  v10 = sub_1C5BCB804();
  v114 = type metadata accessor for VibrancyModifier(255);
  v11 = sub_1C5BC8AB4();
  v12 = sub_1C5BC8AB4();
  v13 = sub_1C5BC92D4();
  v129 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v113 - v14;
  v139 = v10;
  v120 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v113 - v16;
  v17 = sub_1C5950C90();
  v179 = &type metadata for NowPlayingLookupID;
  v180 = AssociatedTypeWitness;
  v181 = v17;
  v182 = AssociatedConformanceWitness;
  v138 = AssociatedConformanceWitness;
  v18 = type metadata accessor for ViewProvider(0, &v179);
  v117 = *(v18 - 8);
  v118 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v113 - v19;
  v140 = v11;
  v123 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v113 - v22;
  v135 = v12;
  v127 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v113 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198660, &qword_1C5BEB318);
  MEMORY[0x1EEE9AC00](v27);
  v113 = (&v113 - v28);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198670, &qword_1C5BEB320);
  MEMORY[0x1EEE9AC00](v115);
  v30 = &v113 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198648, &qword_1C5BEB2F8);
  MEMORY[0x1EEE9AC00](v31);
  v116 = &v113 - v32;
  v136 = v13;
  v33 = sub_1C5BC92D4();
  v133 = *(v33 - 8);
  v134 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v113 - v34;
  v36 = *a1;
  v37 = *(a1 + 8);
  LOBYTE(v34) = *(a1 + 16);
  v131 = v31;
  v132 = v35;
  if ((v34 & 1) == 0)
  {
    if (v36 == 0x726563617073 && v37 == 0xE600000000000000)
    {

      sub_1C5950CE4(0x726563617073, 0xE600000000000000);
      sub_1C5950CE4(0x726563617073, 0xE600000000000000);
    }

    else
    {
      v64 = sub_1C5BCBDE4();

      sub_1C5950CE4(0x726563617073, 0xE600000000000000);
      sub_1C5950CE4(v36, v37);
      if ((v64 & 1) == 0)
      {
        if (v36 == 0x6574756F72 && v37 == 0xE500000000000000)
        {

          sub_1C5950CE4(0x6574756F72, 0xE500000000000000);
          sub_1C5950CE4(0x6574756F72, 0xE500000000000000);
        }

        else
        {
          v85 = sub_1C5BCBDE4();

          sub_1C5950CE4(0x6574756F72, 0xE500000000000000);
          sub_1C5950CE4(v36, v37);
          if ((v85 & 1) == 0)
          {
            v138 = swift_getAssociatedConformanceWitness();
            v161 = v138;
            WitnessTable = swift_getWitnessTable();
            v104 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier, &unk_1C5BEB3F4);
            v159 = WitnessTable;
            v160 = v104;
            v105 = swift_getWitnessTable();
            v106 = sub_1C59E7CE0();
            v157 = v105;
            v158 = v106;
            v107 = v135;
            v108 = swift_getWitnessTable();
            v109 = v128;
            v63 = MEMORY[0x1E6981E60];
            sub_1C5941738(v108, v107, MEMORY[0x1E6981E70], v108, MEMORY[0x1E6981E60]);
            v110 = sub_1C5B35248();
            v155 = v108;
            v156 = v63;
            v111 = v136;
            v112 = swift_getWitnessTable();
            v62 = v132;
            sub_1C5941738(v109, v131, v111, v110, v112);
            (*(v129 + 8))(v109, v111);
            goto LABEL_9;
          }
        }

        KeyPath = swift_getKeyPath(byte_1C5BEB328);
        v87 = v113;
        *v113 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000, &qword_1C5BECDC0);
        swift_storeEnumTagMultiPayload();
        v88 = type metadata accessor for NowPlayingRouteButton.Content(0);
        v89 = (v87 + v88[5]);
        type metadata accessor for NowPlayingRouteObserver(0);
        sub_1C5B353C0(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
        *v89 = sub_1C5BC8C84();
        v89[1] = v90;
        v91 = v88[6];
        *(v87 + v91) = swift_getKeyPath(byte_1C5BEB360);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
        swift_storeEnumTagMultiPayload();
        v92 = v87 + v88[7];
        *v92 = swift_getKeyPath(byte_1C5BEB398);
        *(v92 + 8) = 0;
        v93 = (v87 + *(v27 + 36));
        *v93 = swift_getKeyPath(byte_1C5BEB360);
        swift_storeEnumTagMultiPayload();
        v94 = v93 + *(v114 + 20);
        *v94 = swift_getKeyPath(byte_1C5BEB398);
        v94[8] = 0;
        sub_1C59400B0(v87, v30, &qword_1EC198660, &qword_1C5BEB318);
        swift_storeEnumTagMultiPayload();
        sub_1C5B352D4();
        v95 = v116;
        sub_1C5BC92C4();
        v96 = sub_1C5B35248();
        v138 = swift_getAssociatedConformanceWitness();
        v154 = v138;
        v97 = swift_getWitnessTable();
        v98 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier, &unk_1C5BEB3F4);
        v152 = v97;
        v153 = v98;
        v99 = swift_getWitnessTable();
        v100 = sub_1C59E7CE0();
        v150 = v99;
        v151 = v100;
        v148 = swift_getWitnessTable();
        v63 = MEMORY[0x1E6981E60];
        v149 = MEMORY[0x1E6981E60];
        v101 = v136;
        v102 = swift_getWitnessTable();
        v62 = v132;
        sub_1C5950E54(v95, v131, v101, v96, v102);
        sub_1C5924EF4(v95, &qword_1EC198648, &qword_1C5BEB2F8);
        v75 = v87;
        v73 = &qword_1EC198660;
        v74 = &qword_1C5BEB318;
        goto LABEL_8;
      }
    }

    *v30 = 0;
    v30[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1C5B352D4();
    v65 = v116;
    sub_1C5BC92C4();
    v66 = sub_1C5B35248();
    v138 = swift_getAssociatedConformanceWitness();
    v147 = v138;
    v67 = swift_getWitnessTable();
    v68 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier, &unk_1C5BEB3F4);
    v145 = v67;
    v146 = v68;
    v69 = swift_getWitnessTable();
    v70 = sub_1C59E7CE0();
    v143 = v69;
    v144 = v70;
    v141 = swift_getWitnessTable();
    v63 = MEMORY[0x1E6981E60];
    v142 = MEMORY[0x1E6981E60];
    v71 = v136;
    v72 = swift_getWitnessTable();
    v62 = v132;
    sub_1C5950E54(v65, v131, v71, v66, v72);
    v73 = &qword_1EC198648;
    v74 = &qword_1C5BEB2F8;
    v75 = v65;
LABEL_8:
    sub_1C5924EF4(v75, v73, v74);
    goto LABEL_9;
  }

  sub_1C5950CE4(0x726563617073, 0xE600000000000000);
  sub_1C5950CE4(v36, v37);

  sub_1C5950CE4(0x6574756F72, 0xE500000000000000);
  sub_1C5950CE4(v36, v37);
  v38 = *(v122 + 16);
  v39 = *(v122 + 24);
  sub_1C5951550(v36, v37);
  v40 = v124;
  sub_1C59498C4(v38, v39, v124, *(a4 + 8));
  v41 = *(a4 + 384);
  swift_unknownObjectRetain();
  v41(v40, a4);
  swift_unknownObjectRelease();
  v179 = v36;
  v180 = v37;
  v42 = v118;
  v43 = v119;
  sub_1C595BC70();

  (*(v117 + 8))(v20, v42);
  v138 = swift_getAssociatedConformanceWitness();
  v178[2] = v138;
  v44 = v139;
  v45 = swift_getWitnessTable();
  v46 = v121;
  sub_1C5B34268(v44, v45);
  (*(v120 + 8))(v43, v44);
  v179 = v36;
  v180 = v37;
  LOBYTE(v181) = 1;
  NowPlayingButtonID.geometryID.getter(v178);
  v177[0] = v178[0];
  v177[1] = v178[1];
  v47 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier, &unk_1C5BEB3F4);
  v175 = v45;
  v176 = v47;
  v48 = v140;
  v49 = swift_getWitnessTable();
  v50 = v126;
  sub_1C5B0A7BC(v177, v48, v49);

  (*(v123 + 8))(v46, v48);
  v51 = sub_1C59E7CE0();
  v173 = v49;
  v174 = v51;
  v52 = v135;
  v53 = swift_getWitnessTable();
  v54 = v125;
  sub_1C593EDC0(v50, v52, v53);
  v55 = *(v127 + 8);
  v55(v50, v52);
  sub_1C593EDC0(v54, v52, v53);
  v56 = v128;
  v57 = MEMORY[0x1E6981E60];
  sub_1C5950E54(v50, v52, MEMORY[0x1E6981E70], v53, MEMORY[0x1E6981E60]);
  v58 = sub_1C5B35248();
  v171 = v53;
  v172 = v57;
  v59 = v136;
  v60 = swift_getWitnessTable();
  v61 = v132;
  sub_1C5941738(v56, v131, v59, v58, v60);
  (*(v129 + 8))(v56, v59);
  v55(v50, v52);
  v55(v54, v52);
  v62 = v61;
  v63 = MEMORY[0x1E6981E60];
LABEL_9:
  v76 = sub_1C5B35248();
  v170 = v138;
  v77 = swift_getWitnessTable();
  v78 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier, &unk_1C5BEB3F4);
  v168 = v77;
  v169 = v78;
  v79 = swift_getWitnessTable();
  v80 = sub_1C59E7CE0();
  v166 = v79;
  v167 = v80;
  v164 = swift_getWitnessTable();
  v165 = v63;
  v81 = swift_getWitnessTable();
  v162 = v76;
  v163 = v81;
  v82 = v134;
  v83 = swift_getWitnessTable();
  sub_1C593EDC0(v62, v82, v83);
  return (*(v133 + 8))(v62, v82);
}

uint64_t sub_1C5B34268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VibrancyModifier(0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = swift_getKeyPath(byte_1C5BEB360, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v8 = v7 + *(v4 + 20);
  *v8 = swift_getKeyPath(byte_1C5BEB398);
  v8[8] = 0;
  MEMORY[0x1C694E550](v7, a1, v4, a2);
  return sub_1C5B35408(v7);
}

uint64_t sub_1C5B34370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v48 = a2;
  v44 = sub_1C5BCAB54();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198698, &qword_1C5BEB448);
  MEMORY[0x1EEE9AC00](v42);
  v47 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1986A0, &qword_1C5BEB450);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v38 - v6;
  v8 = sub_1C5BC8F34();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC90F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = _UISolariumEnabled();
  sub_1C594C704(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E697F600], v10);
  v18 = sub_1C5BC8274();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v19(v16, v10);
  v20 = v7;
  if (v17)
  {
    v21 = v47;
    if (v18)
    {
      v22 = v2 + *(type metadata accessor for VibrancyModifier(0) + 20);
      v23 = *v22;
      if (*(v22 + 8))
      {
        if (v23)
        {
          goto LABEL_9;
        }

LABEL_7:
        v24 = 1;
        v25 = MEMORY[0x1E6981DB8];
        goto LABEL_10;
      }

      sub_1C5BCB4E4();
      v26 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v27 = v39;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v28 = sub_1C5942458(v23, 0);
      (*(v40 + 8))(v27, v41, v28);
      if ((v49 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v21 = v47;
    if (v18)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v24 = 0;
  v25 = MEMORY[0x1E6981DF0];
LABEL_10:
  v30 = v43;
  v29 = v44;
  (*(v3 + 104))(v43, *v25, v44);
  (*(v3 + 32))(v21 + *(v42 + 36), v30, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1986A8, &qword_1C5BEB458);
  (*(*(v31 - 8) + 16))(v21, v46, v31);
  if (v24)
  {
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }

    v32 = qword_1EC1A6AB8;
  }

  else
  {
    v32 = sub_1C5BCA434();
  }

  KeyPath = swift_getKeyPath("Џ[&");
  sub_1C59E7D34(v21, v20, &qword_1EC198698, &qword_1C5BEB448);
  v34 = (v20 + *(v45 + 36));
  *v34 = KeyPath;
  v34[1] = v32;
  if (v24)
  {
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }

    v35 = qword_1EC1A6AB8;
  }

  else
  {
    v35 = sub_1C5BCA434();
  }

  v36 = v48;
  sub_1C59E7D34(v20, v48, &qword_1EC1986A0, &qword_1C5BEB450);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1986B0, &unk_1C5BEB490);
  *(v36 + *(result + 36)) = v35;
  return result;
}

uint64_t sub_1C5B348F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198678, &unk_1C5BEB3D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t NowPlayingFooterLayout.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t NowPlayingFooterLayout.init(compact:regular:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1C5B349DC;
  *(a3 + 8) = result;
  return result;
}

double sub_1C5B349DC(uint64_t a1)
{
  sub_1C5B34C0C(a1, *(v1 + 16), *(v1 + 24));

  return result;
}

uint64_t sub_1C5B34A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC8F04();
  *a1 = result;
  return result;
}

id sub_1C5B34A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90, &qword_1C5BD48D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  if (!_UISolariumEnabled())
  {
    sub_1C5BC9994();
    v6 = sub_1C5BC9954();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v3 = sub_1C5BC99A4();
    sub_1C5924EF4(v2, &qword_1EC190F90, &qword_1C5BD48D0);
    return v3;
  }

  sub_1C5BC99D4();
  sub_1C5BC9994();
  v3 = sub_1C5BC99E4();

  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v5 = result;
    [result pointSize];

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B34C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  v9 = sub_1C5BC8F34();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_1C593F9B0();
  sub_1C5BC8F44();
  sub_1C5924EF4(v8, &qword_1EC191938, &qword_1C5BD3470);
  if (v13)
  {
    v10 = a3;
  }

  else
  {
    v10 = a2;
  }

  if (v13 == 3)
  {
    return a3;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1C5B34D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B34DD0()
{
  result = qword_1EC198570;
  if (!qword_1EC198570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198570);
  }

  return result;
}

unint64_t sub_1C5B34E40()
{
  result = qword_1EC198590;
  if (!qword_1EC198590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198588, &qword_1C5BEB1B8);
    sub_1C5B34EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198590);
  }

  return result;
}

unint64_t sub_1C5B34EC4()
{
  result = qword_1EC198598;
  if (!qword_1EC198598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1985A0, &qword_1C5BEB1C0);
    sub_1C5B34F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198598);
  }

  return result;
}

unint64_t sub_1C5B34F50()
{
  result = qword_1EC1985A8;
  if (!qword_1EC1985A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1985B0, &qword_1C5BEB1C8);
    sub_1C5924F54(&qword_1EC1985B8, qword_1EC1985C0, &unk_1C5BEB1D0, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1985A8);
  }

  return result;
}

void sub_1C5B35018(uint64_t a1)
{
  sub_1C5927B74();
  if (v1 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v2 <= 0x3F)
    {
      sub_1C5B3552C(319, &qword_1EDA4E1B0, MEMORY[0x1E697F228]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for VibrancyModifier(uint64_t a1)
{
  result = qword_1EC198680;
  if (!qword_1EC198680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5B351AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(_s13FooterButtonsV11ButtonsViewVMa(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5B33194(a1, v9, v6, v7, a3);
}

unint64_t sub_1C5B35248()
{
  result = qword_1EC198650;
  if (!qword_1EC198650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198648, &qword_1C5BEB2F8);
    sub_1C5B352D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198650);
  }

  return result;
}

unint64_t sub_1C5B352D4()
{
  result = qword_1EC198658;
  if (!qword_1EC198658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198660, &qword_1C5BEB318);
    sub_1C5B353C0(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
    sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier, &unk_1C5BEB3F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198658);
  }

  return result;
}

uint64_t sub_1C5B353C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5B35408(uint64_t a1)
{
  v2 = type metadata accessor for VibrancyModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5B3548C(uint64_t a1)
{
  sub_1C5B3552C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
  if (v1 <= 0x3F)
  {
    sub_1C594F0B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5B3552C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C5B3559C()
{
  result = qword_1EC1986B8;
  if (!qword_1EC1986B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1986B0, &unk_1C5BEB490);
    sub_1C5B35654();
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040, &qword_1C5BD1F70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1986B8);
  }

  return result;
}

unint64_t sub_1C5B35654()
{
  result = qword_1EC1986C0;
  if (!qword_1EC1986C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1986A0, &qword_1C5BEB450);
    sub_1C5B3570C();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80, &qword_1C5BD6C60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1986C0);
  }

  return result;
}

unint64_t sub_1C5B3570C()
{
  result = qword_1EC1986C8;
  if (!qword_1EC1986C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198698, &qword_1C5BEB448);
    sub_1C5924F54(&qword_1EC1986D0, &qword_1EC1986A8, &qword_1C5BEB458, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1986C8);
  }

  return result;
}

uint64_t BackdropView.init(image:useMask:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

id BackdropView.makeUIView(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for BackdropHostView());
  v4 = v1;
  return sub_1C5B3652C(v1, v2, 1);
}

void BackdropView.updateUIView(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = *v2;
  v18 = *(v2 + 8);
  v19 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image);
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image) = v17;
  v20 = v17;

  sub_1C5B35FB4();
  v21 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask);
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask) = v18;
  sub_1C5B36268(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198700, &qword_1C5BEB4A0);
  v40 = a2;
  sub_1C5BC96C4();
  sub_1C5B36630();
  sub_1C5BC8F44();
  v22 = *(v6 + 8);
  v22(v16, v5);
  v23 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused) = v43[0];
  v38 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView;
  v24 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (v24)
  {
    v25 = v24;
    if ([v25 isPaused] != *(a1 + v23))
    {
      [v25 setPaused_];
      [v25 setEnableSetNeedsDisplay_];
    }
  }

  sub_1C5BC96C4();
  sub_1C5B36684();
  sub_1C5BC8F44();
  v22(v13, v5);
  v26 = v43[0];
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity) = v43[0];
  v27 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer;
  v28 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer);
  if (v28)
  {
    v29 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*(v28 + v29) + 64) = v26;
  }

  sub_1C5BC96C4();
  sub_1C5B366D8();
  sub_1C5BC8F44();
  v22(v10, v5);
  v30 = v42;
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_crossfadeDuration) = v42;
  v31 = *(a1 + v27);
  if (v31)
  {
    v32 = v30;
    v33 = (v31 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
    swift_beginAccess();
    *v33 = v32;
  }

  v34 = v39;
  sub_1C5BC96C4();
  sub_1C5B3672C();
  sub_1C5BC8F44();
  v22(v34, v5);
  v35 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_allowsDisplayCompositing;
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_allowsDisplayCompositing) = v41;
  v36 = *(a1 + v38);
  if (v36)
  {
    v37 = [v36 layer];
    [v37 setAllowsDisplayCompositing_];
  }
}

float sub_1C5B35C48(uint64_t a1)
{
  sub_1C5B36684();
  sub_1C5BC8F44();
  return v2;
}

double sub_1C5B35C84(uint64_t a1)
{
  sub_1C5B366D8();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C5B35CE0(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

id sub_1C5B35D28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for BackdropHostView());
  v4 = v1;
  return sub_1C5B3652C(v1, v2, 1);
}

uint64_t sub_1C5B35D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B375B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5B35DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B375B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5B35E44(uint64_t a1)
{
  sub_1C5B375B8();
  sub_1C5BC9264();
  __break(1u);
}

void MCUINamespace<A>.backdropIntensity(_:)(uint64_t a1, uint64_t a2, float a3)
{
  swift_getKeyPath(aX_13);
  sub_1C5BC9DF4();
}

void MCUINamespace<A>.backdropCrossfadeDuration(_:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath(aX_14);
  sub_1C5BC9DF4();
}

void sub_1C5B35FB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer);
  if (!v2)
  {
    return;
  }

  v3 = *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage];
  v4 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image;
  v5 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image);
  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    v17 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
    goto LABEL_9;
  }

  v17 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (!v5)
  {
LABEL_9:
    v12 = v1;
    v13 = v2;
LABEL_10:
    v14 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
    v15 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused);
    v16 = v5;
    sub_1C5AD6138(v5, 0, (v15 & 1) == 0, 0, 0);

    if (*(v0 + v14) == 1)
    {
      [v17 setNeedsDisplay];
    }

    goto LABEL_12;
  }

  v6 = v0;
  sub_1C592535C(0, &qword_1EDA4E5E0, 0x1E69DCAB8);
  v7 = v17;
  v8 = v2;
  v9 = v5;
  v10 = v3;
  v11 = sub_1C5BCB744();

  if ((v11 & 1) == 0)
  {
    v0 = v6;
    v5 = *(v6 + v4);
    goto LABEL_10;
  }

LABEL_12:
}

void sub_1C5B36124(id a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView;
  v4 = *&v1[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
  if (a1)
  {
    v5 = a1;
    if (v4)
    {
      sub_1C592535C(0, &qword_1EC198760, 0x1E6974440);
      v6 = v4;
      v5 = v5;
      v7 = sub_1C5BCB744();

      if (v7)
      {
        return;
      }
    }

    [v5 removeFromSuperview];
    v4 = *&v2[v3];
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v10 = v4;
  v8 = [v10 isPaused];
  v9 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
  if (v8 != v2[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused])
  {
    [v10 setPaused_];
    [v10 setEnableSetNeedsDisplay_];
  }

  sub_1C5B35FB4();
  [v2 addSubview_];
}

void sub_1C5B36268(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask) != (result & 1))
  {
    if (qword_1EC1908B8 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EC1986D8);
    v3 = sub_1C5BC7D44();
    v4 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5922000, v3, v4, "changing useMask on already created BackdropHostView", v5, 2u);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    sub_1C5B3637C();
  }
}

id sub_1C5B3652C(void *a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer] = 0;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView] = 0;
  v8 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image] = 0;
  v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused] = 0;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity] = 1045220557;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_crossfadeDuration] = 0x3FE999999999999ALL;
  *&v3[v8] = a1;
  v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask] = a2;
  v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_allowsDisplayCompositing] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C5B3637C();

  return v10;
}

unint64_t sub_1C5B36630()
{
  result = qword_1EC198708;
  if (!qword_1EC198708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198708);
  }

  return result;
}

unint64_t sub_1C5B36684()
{
  result = qword_1EDA49238;
  if (!qword_1EDA49238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA49238);
  }

  return result;
}

unint64_t sub_1C5B366D8()
{
  result = qword_1EC198730;
  if (!qword_1EC198730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198730);
  }

  return result;
}

unint64_t sub_1C5B3672C()
{
  result = qword_1EC198740;
  if (!qword_1EC198740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198740);
  }

  return result;
}

Swift::Void __swiftcall BackdropHostView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

void sub_1C5B3690C(unsigned __int8 *a1)
{
  v3 = v1;
  v4 = *a1;
  if (qword_1EDA4F008 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDA4F010;
  if (qword_1EDA4F010)
  {
    v34 = v2;
    v6 = qword_1EDA4F018;
    v7 = qword_1EDA4F020;
    v8 = qword_1EDA4F028;
    v9 = qword_1EDA4F030;
    v32[0] = qword_1EDA4F010;
    v32[1] = qword_1EDA4F018;
    v32[2] = qword_1EDA4F020;
    v32[3] = qword_1EDA4F028;
    v32[4] = qword_1EDA4F030;
    v33 = byte_1EDA4F038 & 1;
    v31[0] = v4;
    v10 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
    sub_1C5B37660(v5, v6, v7, v8);
    swift_unknownObjectRetain();
    v30 = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v11 = v8;
    v12 = Backdrop.CompositeRenderer.init(context:configuration:)(v32, v31);
    v13 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*(v12 + v13) + 64) = 1065353216;
    sub_1C5AD6E34();
    v14 = [objc_opt_self() systemGrayColor];
    sub_1C5AD6690(v14, 0);

    sub_1C5AD5488(v9);
    v15 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image);
    v16 = v15;
    sub_1C5AD6138(v15, 0, 0, 0, 0);

    v17 = [objc_allocWithZone(MEMORY[0x1E6974440]) initWithFrame:v5 device:{0.0, 0.0, 0.0, 0.0}];
    if ([v5 supportsFamily_])
    {
      v18 = v8;
      v19 = v7;
      v20 = v4;
      v21 = [objc_opt_self() mainScreen];
      v22 = [v21 maximumFramesPerSecond];

      v4 = v20;
      v7 = v19;
      v8 = v18;
    }

    else
    {
      v23 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
      swift_beginAccess();
      if (*(v12 + v23))
      {
        v22 = 30;
      }

      else
      {
        v22 = 15;
      }
    }

    [v17 setPreferredFramesPerSecond_];
    v24 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
    swift_beginAccess();
    [v17 setColorPixelFormat_];
    [v17 setDelegate_];
    v25 = v17;
    v26 = [v25 layer];
    [v26 setAllowsDisplayCompositing_];

    if (v4)
    {
      [v25 setOpaque_];

      [v25 setClearColor_];
    }

    else
    {
    }

    v27 = v12;
    sub_1C5B3747C(v12);

    v28 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
    *(v3 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView) = v25;
    v29 = v25;
    sub_1C5B36124(v28);

    sub_1C5ADE250(v5, v30, v7, v8);
  }

  else
  {
    sub_1C5B3760C();
    swift_allocError();
    swift_willThrow();
  }
}

id BackdropHostView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BackdropHostView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void BackdropHostView.didChangeState(renderer:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (v2)
  {
    v8 = v2;
    v4 = [v8 device];
    if (v4)
    {
      if ([v4 supportsFamily_])
      {
        v5 = [objc_opt_self() mainScreen];
        v6 = [v5 maximumFramesPerSecond];
      }

      else
      {
        v7 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
        swift_beginAccess();
        if (*(a1 + v7))
        {
          v6 = 30;
        }

        else
        {
          v6 = 15;
        }
      }

      [v8 setPreferredFramesPerSecond_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1C5B36FF0()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1986D8);
  __swift_project_value_buffer(v0, qword_1EC1986D8);
  return sub_1C5BC7D54();
}

uint64_t View.backdropIsPaused(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MCUINamespace(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  View.mcui.getter(a2, &v13 - v9);
  v11 = MCUINamespace<A>.backdropIsPaused(_:)(a1, v7, a3);
  return (*(v8 + 8))(v10, v7, v11);
}

uint64_t View.backdropIntensity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v8 = type metadata accessor for MCUINamespace(0, a1, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  View.mcui.getter(a1, &v13 - v10);
  MCUINamespace<A>.backdropIntensity(_:)(v8, a2, a5);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1C5B37278()
{
  result = qword_1EDA4DEE8[0];
  if (!qword_1EDA4DEE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4DEE8);
  }

  return result;
}

uint64_t sub_1C5B372CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_1C5B37328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySbGGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm_0(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1C5BC8AB4();
  sub_1C5A126A0(a4, a2, a3);
  return swift_getWitnessTable();
}

void sub_1C5B3747C(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer;
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer) = a1;
  v4 = a1;

  v5 = *(v1 + v2);
  if (v5)
  {
    v6 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*(v5 + v6) + 64) = *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity);
  }

  sub_1C5B35FB4();
}

void sub_1C5B37500()
{
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity) = 1045220557;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_crossfadeDuration) = 0x3FE999999999999ALL;
  sub_1C5BCBBC4();
  __break(1u);
}

unint64_t sub_1C5B375B8()
{
  result = qword_1EDA4DEE0;
  if (!qword_1EDA4DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DEE0);
  }

  return result;
}

unint64_t sub_1C5B3760C()
{
  result = qword_1EC198768;
  if (!qword_1EC198768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198768);
  }

  return result;
}

id sub_1C5B37660(id result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    return a4;
  }

  return result;
}

unint64_t sub_1C5B376D4()
{
  result = qword_1EC198770;
  if (!qword_1EC198770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198770);
  }

  return result;
}

double sub_1C5B37728@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BEBCE8);
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);

  return result;
}

uint64_t NowPlayingHostedContentToggleButton.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C5951550(v2, v3);
}

double NowPlayingHostedContentToggleButton.hostedContentID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;

  return result;
}

uint64_t sub_1C5B378E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C595E9AC();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_1C5B3793C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  KeyPath = swift_getKeyPath(byte_1C5BEB8E0, v5, v7, v8);
  sub_1C595EABC(KeyPath);

  *v4 = v1;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  swift_getKeyPath(byte_1C5BEB8E0, v11, v7, v8);
  type metadata accessor for NowPlayingHostedContentToggleButton(255, v7, v8, v12);
  swift_getWitnessTable();
  sub_1C5BC7B94();

  v4[5] = sub_1C5B37894(v4);
  return sub_1C5B37AD8;
}

void sub_1C5B37AD8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1C5B37B2C(v2);

  free(v1);
}

double sub_1C5B37B2C(void *a1)
{
  v1 = *a1;
  v8 = a1;
  v6 = *(v1 + 80);
  v2 = v6;
  v7 = *(v1 + 88);
  v3 = v7;
  swift_getKeyPath(byte_1C5BEB8E0, &v6);
  type metadata accessor for NowPlayingHostedContentToggleButton(255, v2, v3, v4);
  swift_getWitnessTable();
  sub_1C5BC7B84();

  return result;
}

uint64_t NowPlayingHostedContentToggleButton.__allocating_init(_:presenting:label:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  NowPlayingHostedContentToggleButton.init(_:presenting:label:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *NowPlayingHostedContentToggleButton.deinit()
{
  v1 = *v0;
  sub_1C5950CE4(v0[2], v0[3]);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(*v0 + 128);
  v3 = sub_1C5BC7BB4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t NowPlayingHostedContentToggleButton.__deallocating_deinit()
{
  NowPlayingHostedContentToggleButton.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B37DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v160 = sub_1C5BC92E4();
  v146 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v143 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v129 = (&v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = a1;
  v6 = *(a1 + 16);
  v161 = *(a1 + 24);
  v162 = v6;
  v7 = sub_1C5BCA7B4();
  v126 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v108 - v8;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C595EDD0(&qword_1EC198848, type metadata accessor for NowPlayingHostedContentToggleButtonStyle, &protocol conformance descriptor for NowPlayingHostedContentToggleButtonStyle);
  v173 = v7;
  v174 = v4;
  v175 = WitnessTable;
  v176 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v121 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v118 = &v108 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198850, &unk_1C5BEBC80);
  v122 = OpaqueTypeMetadata2;
  v13 = sub_1C5BC8AB4();
  v120 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v108 - v14;
  v127 = v7;
  v173 = v7;
  v174 = v4;
  v130 = v4;
  v119 = WitnessTable;
  v175 = WitnessTable;
  v176 = v10;
  v116 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1C5924F54(&qword_1EDA462D0, &qword_1EC198850, &unk_1C5BEBC80, MEMORY[0x1E697FD58]);
  v115 = OpaqueTypeConformance2;
  v171 = OpaqueTypeConformance2;
  v172 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1C595EDD0(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v158 = v13;
  v173 = v13;
  v174 = v160;
  v135 = v17;
  v175 = v17;
  v176 = v18;
  v132 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v133 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v108 - v20;
  v134 = v21;
  v22 = sub_1C5BC8AB4();
  v140 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v108 - v23;
  sub_1C5BC97C4();
  v142 = v22;
  v24 = sub_1C5BC8AB4();
  v145 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v108 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC193698, &qword_1C5BD84B8);
  v147 = v24;
  v26 = sub_1C5BC8AB4();
  v148 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v144 = &v108 - v27;
  v149 = v28;
  v152 = sub_1C5BC8AB4();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v108 - v29;
  v114 = sub_1C5BC8F34();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v154;
  v32 = *(v154 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v157 = *(v32 + 16);
  v157(&v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v159, v31, v35);
  sub_1C5BCB1E4();
  v36 = sub_1C5BCB1D4();
  v37 = *(v32 + 80);
  v38 = (v37 + 48) & ~v37;
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  *(v39 + 2) = v36;
  *(v39 + 3) = v40;
  v41 = v161;
  *(v39 + 4) = v162;
  *(v39 + 5) = v41;
  v42 = *(v32 + 32);
  v42(&v39[v38], &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v131 = v32 + 16;
  (v157)(&v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v159, v31);
  v43 = sub_1C5BCB1D4();
  v136 = v33;
  v155 = v37;
  v44 = swift_allocObject();
  *(v44 + 2) = v43;
  v45 = v154;
  v46 = v161;
  v47 = v162;
  *(v44 + 3) = MEMORY[0x1E69E85E0];
  *(v44 + 4) = v47;
  *(v44 + 5) = v46;
  v137 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v32 + 32;
  v128 = v42;
  v42(&v44[v38], v137, v45);
  v48 = v159;
  sub_1C5BCA844();
  v49 = v173;
  v50 = v174;
  LODWORD(v110) = v175;
  v51 = *(v48 + 40);
  LOBYTE(v38) = *(v48 + 48);

  if ((v38 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v52 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v53 = v112;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v113 + 8))(v53, v114);
    v51 = v173;
  }

  swift_getKeyPath("؇[&");
  v173 = v51;
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v55 = *(v51 + 24);
  v54 = *(v51 + 32);

  v56 = *(v48 + 64);
  if (!v54)
  {
    if (!v56)
    {
LABEL_13:

      v59 = 0;
      goto LABEL_14;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!v56)
  {
    goto LABEL_11;
  }

  if (v55 == *(v48 + 56) && v54 == v56)
  {
    goto LABEL_13;
  }

  v57 = sub_1C5BCBDE4();

  v59 = 0;
  if ((v57 & 1) == 0)
  {
LABEL_12:
    v59 = *(v48 + *(v45 + 48)) ^ 1;
  }

LABEL_14:
  v111 = v59;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v161;
  *(&v108 - 4) = v162;
  *(&v108 - 3) = v60;
  *(&v108 - 2) = v48;

  v61 = v123;
  v125 = v49;
  v124 = v50;
  sub_1C5BCA7A4();
  v62 = *(v48 + 64);
  v63 = v129;
  v110 = *(v48 + 56);
  *v129 = v110;
  *(v63 + 8) = v62;
  v64 = v130;
  v65 = *(v130 + 20);
  *(v63 + v65) = swift_getKeyPath(byte_1C5BEBCB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v66 = v63 + *(v64 + 24);
  type metadata accessor for NowPlayingViewModel.Metrics(0);
  sub_1C595EDD0(&qword_1EDA49A38, type metadata accessor for NowPlayingViewModel.Metrics, &protocol conformance descriptor for NowPlayingViewModel.Metrics);
  v109 = v62;

  *v66 = sub_1C5BC8324();
  *(v66 + 8) = v67 & 1;
  v68 = v118;
  v69 = v127;
  sub_1C5BC9E74();
  sub_1C5B3D9A4(v63);
  (*(v126 + 8))(v61, v69);
  v173 = 0xC024000000000000;
  sub_1C5B3DA00();
  v70 = v117;
  v71 = v122;
  sub_1C5BC9E84();
  (*(v121 + 8))(v68, v71);
  v72 = v143;
  v73 = v158;
  v74 = v160;
  v75 = v135;
  v76 = v132;
  sub_1C5AF76C4(v158);
  sub_1C5BC9E04();
  (*(v146 + 8))(v72, v74);
  (*(v120 + 8))(v70, v73);
  v78 = *v48;
  v77 = *(v48 + 8);
  v80 = *(v48 + 16);
  v79 = *(v48 + 24);
  if (*(v48 + 32) == 1)
  {
    v173 = *v48;
    v174 = v77;
    v175 = v80;
    v176 = v79;
    sub_1C593E7D8(v78, v77, v80, v79);
  }

  else
  {

    sub_1C5BCB4E4();
    v81 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v82 = v112;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v83 = sub_1C596AC4C(v78, v77, v80, v79, 0);
    (*(v113 + 8))(v82, v114, v83);
    v77 = v174;
  }

  v84 = ~v155;
  if (v77 != 1)
  {
    sub_1C593E820(v173, v77, v175, v176);
  }

  v173 = v158;
  v174 = v160;
  v175 = v75;
  v176 = v76;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v139;
  v87 = v134;
  v88 = v156;
  sub_1C5BC9FA4();
  (*(v133 + 8))(v88, v87);
  v173 = 0;
  v174 = 0xE000000000000000;
  sub_1C5BCBA94();

  v173 = 0xD000000000000018;
  v174 = 0x80000001C5BFC150;
  MEMORY[0x1C694F170](v110, v109);
  v89 = v173;
  v90 = v174;
  v169 = v85;
  v170 = MEMORY[0x1E69805B0];
  v91 = v142;
  v92 = swift_getWitnessTable();
  v93 = v141;
  sub_1C595BB1C(v89, v90, v91);

  (*(v140 + 8))(v86, v91);
  v94 = sub_1C595EDD0(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v167 = v92;
  v168 = v94;
  v95 = v147;
  v96 = swift_getWitnessTable();
  v97 = v144;
  sub_1C5BCA304();
  (*(v145 + 8))(v93, v95);
  v98 = sub_1C5924F54(&qword_1EDA46030, qword_1EC193698, &qword_1C5BD84B8, MEMORY[0x1E6980B30]);
  v165 = v96;
  v166 = v98;
  v99 = v149;
  v100 = swift_getWitnessTable();
  v101 = v150;
  sub_1C5BCA2B4();
  (*(v148 + 8))(v97, v99);
  LOBYTE(v173) = *(v48 + *(v45 + 48));
  v102 = v137;
  (v157)(v137, v48, v45);
  v103 = (v155 + 32) & v84;
  v104 = swift_allocObject();
  v105 = v161;
  *(v104 + 16) = v162;
  *(v104 + 24) = v105;
  v128(v104 + v103, v102, v45);
  v163 = v100;
  v164 = MEMORY[0x1E697E5C0];
  v106 = v152;
  swift_getWitnessTable();
  sub_1C5BCA344();

  return (*(v151 + 8))(v101, v106);
}

void sub_1C5B39130(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);

  if ((v9 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v16;
  }

  swift_getKeyPath("؇[&");
  v16 = v8;
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v12 = *(v8 + 24);
  v11 = *(v8 + 32);

  v13 = *(a1 + 64);
  if (!v11)
  {
    if (!v13)
    {

      v14 = 1;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:

    v14 = 0;
    goto LABEL_14;
  }

  if (v12 == *(a1 + 56) && v11 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C5BCBDE4();
  }

  swift_bridgeObjectRelease_n();
LABEL_14:
  *a2 = v14 & 1;
}

double sub_1C5B39388(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1C5BC8F34();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToggleButton(0, a5, a6, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = *a1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C5BC7D64();
  __swift_project_value_buffer(v18, qword_1EDA5DA78);
  (*(v14 + 16))(v16, a4, v13);
  v19 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4F4();
  v21 = os_log_type_enabled(v19, v20);
  v43 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = a4;
    v44[0] = v39;
    *v22 = 136315394;
    if (v17)
    {
      v23 = 0x69746E6573657250;
    }

    else
    {
      v23 = 0x697373696D736944;
    }

    v24 = v10;
    v25 = sub_1C592ADA8(v23, 0xEA0000000000676ELL, v44);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v27 = *(v16 + 7);
    v26 = *(v16 + 8);
    v28 = *(v14 + 8);

    v28(v16, v13);
    v29 = v27;
    v10 = v24;
    v30 = sub_1C592ADA8(v29, v26, v44);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_1C5922000, v19, v20, "%s selected content (id=%{public}s) because its toggle button was tapped", v22, 0x16u);
    v31 = v39;
    swift_arrayDestroy();
    a4 = v40;
    MEMORY[0x1C69510F0](v31, -1, -1);
    MEMORY[0x1C69510F0](v22, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v32 = *(a4 + 48);

  if ((v32 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v33 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v34 = v41;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v42 + 8))(v34, v10);
  }

  if (v43)
  {
    v35 = *(a4 + 56);
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v44[0] = v35;
  v44[1] = v36;
  sub_1C5A37C44(v44, 1);

  return result;
}

uint64_t sub_1C5B39790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToggleButton(0, v9, v10, v11);
  sub_1C593EDC0(a1 + *(v12 + 44), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

double sub_1C5B39888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);

  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v22;
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + *(type metadata accessor for ToggleButton(0, a2, a3, v12) + 48));
  swift_getKeyPath(byte_1C5BEBCE8);
  v22 = v10;
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v22 = v10;
  swift_getKeyPath(byte_1C5BEBCE8);
  sub_1C5BC7B94();

  v17 = *(v10 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v17;
  sub_1C5B3CAD4(v16, v14, v15, isUniquelyReferenced_nonNull_native);
  v19 = *(v10 + 16);
  *(v10 + 16) = v22;
  sub_1C5A36CB8(v19);

  v22 = v10;
  swift_getKeyPath(byte_1C5BEBCE8);
  sub_1C5BC7B84();

  return result;
}

uint64_t sub_1C5B39B1C()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t NowPlayingHostedContentToggleButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1C5BC9374();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1C5BC9624();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198790, &unk_1C5BEB918);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  (*(v11 + 16))(v13, a1, v10, v16);
  sub_1C5B3DAD8(v3, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = (v12 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v19, v13, v10);
  sub_1C5B3DB40(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v34 = a1;
  type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel(0);
  sub_1C595EDD0(&qword_1EC198798, type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel, &unk_1C5BEBB9C);
  sub_1C5BCA6E4();
  v22 = v30;
  sub_1C5BC9364();
  sub_1C5924F54(&qword_1EC1987A0, &qword_1EC198790, &unk_1C5BEB918, MEMORY[0x1E697D680]);
  sub_1C595EDD0(&qword_1EC1987A8, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v23 = v28;
  v24 = v31;
  sub_1C5BC9DA4();
  (*(v32 + 8))(v22, v24);
  return (*(v29 + 8))(v18, v23);
}

double sub_1C5B3A0AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C5BC95E4();
  *v4 = !*v4;
  v3(v9, 0);
  sub_1C5B39B1C();
  v5 = *a2;
  v6 = a2[1];
  v9[0] = v5;
  v9[1] = v6;

  v7 = sub_1C5BC95F4();
  sub_1C5B3A164(v7, v9, (v7 & 1) == 0);

  return result;
}

double sub_1C5B3A164(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(v3 + 16);
  swift_beginAccess();
  v9 = *(v7 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_1C596FBD8(v6, v5);
    if (v11 & 1) != 0 && (v12 = *(*(v9 + 56) + 8 * v10), , , *(v12 + 16)) && (v13 = sub_1C5970D3C(), (v14))
    {
      v15 = *(*(v12 + 56) + 16 * v13);

      v16 = a3 & 1;
      v15(&v16);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C5B3A258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1C5BCAB54();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC9604();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198800, &qword_1C5BEBC08);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v50 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198808, &qword_1C5BEBC10);
  MEMORY[0x1EEE9AC00](v51);
  v58 = &v50 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198810, &qword_1C5BEBC18);
  MEMORY[0x1EEE9AC00](v52);
  v63 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198818, &qword_1C5BEBC20);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198820, &qword_1C5BEBC28);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  sub_1C5BCA9F4();
  sub_1C5BC8B84();
  sub_1C5B3D714();
  sub_1C595EDD0(&qword_1EC198830, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
  sub_1C5BCAA04();
  if (sub_1C5BC95F4())
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  (*(v16 + 32))(v24, v18, v15);
  v29 = *(v20 + 44);
  v30 = v50;
  *&v24[v29] = v28;
  sub_1C59E7D34(v24, v27, &qword_1EC198820, &qword_1C5BEBC28);
  sub_1C5BC9614();
  if (sub_1C5BC95F4())
  {
    v65 = sub_1C5BCA474();
  }

  else
  {
    v66 = sub_1C5BC93F4();
  }

  v31 = sub_1C5BC85E4();
  (*(v54 + 32))(v8, v30, v55);
  *&v8[*(v53 + 36)] = v31;
  v32 = sub_1C5BC95F4();
  v34 = v61;
  v33 = v62;
  v35 = MEMORY[0x1E6981DC0];
  if ((v32 & 1) == 0)
  {
    v35 = MEMORY[0x1E6981DF0];
  }

  v36 = v59;
  (*(v61 + 104))(v59, *v35, v62);
  v37 = v58;
  (*(v34 + 32))(&v58[*(v51 + 36)], v36, v33);
  sub_1C59E7D34(v8, v37, &qword_1EC198800, &qword_1C5BEBC08);
  KeyPath = swift_getKeyPath(a0_13);
  v39 = v56;
  v40 = &v56[*(v52 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198838, &qword_1C5BEBC70) + 28);
  v42 = sub_1C5BC9624();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v40 + v41, a1, v42);
  (*(v43 + 56))(v40 + v41, 0, 1, v42);
  *v40 = KeyPath;
  sub_1C59E7D34(v37, v39, &qword_1EC198808, &qword_1C5BEBC10);
  v44 = v60;
  sub_1C59E7D34(v39, v60, &qword_1EC198810, &qword_1C5BEBC18);
  v45 = v57;
  sub_1C59400B0(v27, v57, &qword_1EC198820, &qword_1C5BEBC28);
  v46 = v63;
  sub_1C59400B0(v44, v63, &qword_1EC198810, &qword_1C5BEBC18);
  v47 = v64;
  sub_1C59400B0(v45, v64, &qword_1EC198820, &qword_1C5BEBC28);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198840, &qword_1C5BEBC78);
  sub_1C59400B0(v46, v47 + *(v48 + 48), &qword_1EC198810, &qword_1C5BEBC18);
  sub_1C5924EF4(v44, &qword_1EC198810, &qword_1C5BEBC18);
  sub_1C5924EF4(v27, &qword_1EC198820, &qword_1C5BEBC28);
  sub_1C5924EF4(v46, &qword_1EC198810, &qword_1C5BEBC18);
  return sub_1C5924EF4(v45, &qword_1EC198820, &qword_1C5BEBC28);
}

__n128 sub_1C5B3A9C8@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(sub_1C5BC8B84() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_1C5BC9044();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #6.0 }

  *a1 = result;
  return result;
}

void *MCUINamespace<A>.hostedContentToggleConfiguration.getter()
{
  sub_1C5B3CFE4();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5B3AAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C59400B0(a1, &v9 - v6, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C59400B0(v7, v4, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  return sub_1C5924EF4(v7, &qword_1EC1987B8, &unk_1C5BEB928);
}

uint64_t MCUINamespace<A>.hostedContentToggleConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C59400B0(a1, &v5 - v3, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  return sub_1C5924EF4(a1, &qword_1EC1987B8, &unk_1C5BEB928);
}

uint64_t sub_1C5B3ACA0@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1C5BCAA54();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987E8, &qword_1C5BEBBF0);
  sub_1C5B3A258(v2, a2 + *(v5 + 44));
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987F0, &qword_1C5BEBBF8) + 36);
  *v6 = 0x3FF0000000000000;
  *(v6 + 4) = 0;
  v7 = sub_1C5BC95F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987F8, &qword_1C5BEBC00);
  v9 = a2 + *(result + 36);
  *v9 = 0;
  v9[8] = v7 & 1;
  return result;
}

uint64_t sub_1C5B3AD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v35 = a3;
  v7 = sub_1C5BC9374();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C5BC9624();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198790, &unk_1C5BEB918);
  v17 = *(v16 - 8);
  v30 = v16;
  v31 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  (*(v13 + 16))(v15, a1, v12, v18);
  sub_1C5B3DAD8(v5, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = (v14 + *(v29 + 80) + v21) & ~*(v29 + 80);
  v23 = swift_allocObject();
  (*(v13 + 32))(v23 + v21, v15, v12);
  sub_1C5B3DB40(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v36 = a1;
  type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel(0);
  sub_1C595EDD0(&qword_1EC198798, type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel, &unk_1C5BEBB9C);
  sub_1C5BCA6E4();
  v24 = v32;
  sub_1C5BC9364();
  sub_1C5924F54(&qword_1EC1987A0, &qword_1EC198790, &unk_1C5BEB918, MEMORY[0x1E697D680]);
  sub_1C595EDD0(&qword_1EC1987A8, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v25 = v30;
  v26 = v33;
  sub_1C5BC9DA4();
  (*(v34 + 8))(v24, v26);
  return (*(v31 + 8))(v20, v25);
}

uint64_t sub_1C5B3B17C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928);
  __swift_allocate_value_buffer(v0, qword_1EC198778);
  v1 = __swift_project_value_buffer(v0, qword_1EC198778);
  v2 = sub_1C5BC9624();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1C5B3B21C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1908C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928);
  v3 = __swift_project_value_buffer(v2, qword_1EC198778);
  return sub_1C59400B0(v3, a1, &qword_1EC1987B8, &unk_1C5BEB928);
}

void (*MCUINamespace<A>.hostedContentToggleConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1C5B3CFE4();
  sub_1C5BC8F44();
  return sub_1C5B3B3C4;
}

void sub_1C5B3B3C4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1C59400B0((*a1)[3], (*a1)[2], &qword_1EC1987B8, &unk_1C5BEB928);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1C59400B0(v3[2], v3[1], &qword_1EC1987B8, &unk_1C5BEB928);
    sub_1C5BC8F54();
    sub_1C5924EF4(v6, &qword_1EC1987B8, &unk_1C5BEB928);
  }

  else
  {
    sub_1C5BC8F54();
  }

  sub_1C5924EF4(v4, &qword_1EC1987B8, &unk_1C5BEB928);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_1C5B3B4D4()
{

  return swift_deallocClassInstance();
}

uint64_t EnvironmentValues.hostedContentToggleConfiguration.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1C5BC8F34();
  (*(*(v5 - 8) + 16))(v4, v1, v5);
  sub_1C5B3CFE4();
  sub_1C5BC8F44();
  return sub_1C5924EF4(v4, &qword_1EC191938, &qword_1C5BD3470);
}

uint64_t sub_1C5B3B62C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1C5BC8F34();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  sub_1C5B3CFE4();
  sub_1C5BC8F44();
  return sub_1C5924EF4(v5, &qword_1EC191938, &qword_1C5BD3470);
}

uint64_t sub_1C5B3B724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1C59400B0(a1, &v19 - v14, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C59400B0(v15, v12, &qword_1EC1987B8, &unk_1C5BEB928);
  v16 = sub_1C5BC8F34();
  v17 = *(*(v16 - 8) + 32);
  v17(v6, a2, v16);
  sub_1C59400B0(v12, v9, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  sub_1C5924EF4(v12, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C5924EF4(v15, &qword_1EC1987B8, &unk_1C5BEB928);
  return (v17)(a2, v6, v16);
}

uint64_t EnvironmentValues.hostedContentToggleConfiguration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1C59400B0(a1, &v16 - v11, &qword_1EC1987B8, &unk_1C5BEB928);
  v13 = sub_1C5BC8F34();
  v14 = *(*(v13 - 8) + 32);
  v14(v6, v2, v13);
  sub_1C59400B0(v12, v9, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  sub_1C5924EF4(a1, &qword_1EC1987B8, &unk_1C5BEB928);
  sub_1C5924EF4(v12, &qword_1EC1987B8, &unk_1C5BEB928);
  return (v14)(v2, v6, v13);
}

void (*EnvironmentValues.hostedContentToggleConfiguration.modify(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8, &unk_1C5BEB928) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v5[3] = malloc(v9);
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  v11 = sub_1C5BC8F34();
  v5[6] = v11;
  v12 = *(v11 - 8);
  v5[7] = v12;
  (*(v12 + 16))(v8, v1, v11);
  v5[8] = sub_1C5B3CFE4();
  sub_1C5BC8F44();
  sub_1C5924EF4(v8, &qword_1EC191938, &qword_1C5BD3470);
  return sub_1C5B3BCE8;
}

void sub_1C5B3BCE8(void ***a1, char a2)
{
  v3 = *a1;
  sub_1C59400B0((*a1)[5], (*a1)[4], &qword_1EC1987B8, &unk_1C5BEB928);
  v4 = v3[7];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[1];
  v13 = v3[2];
  v10 = *v3;
  if (a2)
  {
    sub_1C59400B0(v8, v7, &qword_1EC1987B8, &unk_1C5BEB928);
    v11 = *(v4 + 4);
    v11(v9, v10, v6);
    sub_1C59400B0(v7, v13, &qword_1EC1987B8, &unk_1C5BEB928);
    sub_1C5BC8F54();
    sub_1C5924EF4(v7, &qword_1EC1987B8, &unk_1C5BEB928);
    sub_1C5924EF4(v8, &qword_1EC1987B8, &unk_1C5BEB928);
    v11(v10, v9, v6);
    sub_1C5924EF4(v5, &qword_1EC1987B8, &unk_1C5BEB928);
  }

  else
  {
    v12 = *(v4 + 4);
    v12(v9, *v3, v6);
    sub_1C59400B0(v8, v7, &qword_1EC1987B8, &unk_1C5BEB928);
    sub_1C5BC8F54();
    sub_1C5924EF4(v8, &qword_1EC1987B8, &unk_1C5BEB928);
    sub_1C5924EF4(v5, &qword_1EC1987B8, &unk_1C5BEB928);
    v12(v10, v9, v6);
  }

  free(v5);
  free(v8);
  free(v7);
  free(v13);
  free(v9);

  free(v3);
}

unint64_t sub_1C5B3BF18(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C5AB6EF8(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a1 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a1 & 1) == 0)
  {
    v17 = result;
    sub_1C5AF4B04();
    result = v17;
    goto LABEL_8;
  }

  sub_1C5AF1250(v14, a1 & 1);
  result = sub_1C5AB6EF8(a3);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a2;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a2;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

uint64_t sub_1C5B3C03C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C5AB6FAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = _s17DownloadContainerVMa(0);
      return sub_1C5B3DBA8(a1, v17 + *(*(v18 - 8) + 72) * v10, _s17DownloadContainerVMa);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1C5AF4DD4();
    goto LABEL_7;
  }

  sub_1C5AF1B18(v13, a3 & 1);
  v20 = sub_1C5AB6FAC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1C5BCBE84();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1C5B3CC58(v10, a2, a1, v16);
}

void sub_1C5B3C190(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C596FBD8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C5AF2290(v16, a4 & 1);
      v11 = sub_1C596FBD8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1C5BCBE84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1C5AF5258();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

_OWORD *sub_1C5B3C320(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C5AB97DC();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1C5AF53D4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1C5AF2544(v13, a3 & 1);
    v8 = sub_1C5AB97DC();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1C5BCBE84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_1C593F33C(a1, v19);
  }

  else
  {
    sub_1C5B3CD00(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1C5B3C460(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1C5AB6FF0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1C5AF500C();
      goto LABEL_7;
    }

    sub_1C5AF1E60(v16, a3 & 1);
    v20 = sub_1C5AB6FF0(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      v13 = v20;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1C5B3DAD8(a2, v10, type metadata accessor for MotionAssetDownload.AssetKey);
      sub_1C5B3CE3C(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_1C5BCBE84();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

void sub_1C5B3C604(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C596FBD8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MotionAssetDownload.AssetKey(0);
      sub_1C5B3DBA8(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MotionAssetDownload.AssetKey);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1C5AF596C();
    goto LABEL_7;
  }

  sub_1C5AF2EA4(v15, a4 & 1);
  v21 = sub_1C596FBD8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1C5BCBE84();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1C5B3CEF0(v12, a2, a3, a1, v18);
}

void sub_1C5B3C79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C596FBD8(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1C596FBD8(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1C5BCBE84();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1C5B3C934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1C596FBD8(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1C5AF321C(v22, a7 & 1);
      v17 = sub_1C596FBD8(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_1C5BCBE84();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_1C5AF5BCC();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v29 = (v27[6] + 16 * v17);
  *v29 = a5;
  v29[1] = a6;
  v30 = (v27[7] + 32 * v17);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = a3;
  v30[3] = a4;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

void sub_1C5B3CAD4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C596FBD8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C5AF374C(v16, a4 & 1);
      v11 = sub_1C596FBD8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1C5BCBE84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1C5AF5EAC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1C5B3CC58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = _s17DownloadContainerVMa(0);
  result = sub_1C5B3DB40(a3, v7 + *(*(v8 - 8) + 72) * a1, _s17DownloadContainerVMa);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1C5B3CD00(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1C593F33C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1C5B3CD80(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1C5B3CE3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  result = sub_1C5B3DB40(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MotionAssetDownload.AssetKey);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C5B3CEF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  result = sub_1C5B3DB40(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for MotionAssetDownload.AssetKey);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1C5B3CFE4()
{
  result = qword_1EC1987B0;
  if (!qword_1EC1987B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1987B0);
  }

  return result;
}

void sub_1C5B3D160(uint64_t a1)
{
  sub_1C5926380(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
  if (v1 <= 0x3F)
  {
    sub_1C5926380(319, &qword_1EC1987D0, type metadata accessor for NowPlayingViewModel.Metrics);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B3D22C(unint64_t a1, unsigned int a2, uint64_t a3)
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

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 72) & ~v6) + 1;
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
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 72) & ~v6);
      }

      v16 = *(v15 + 64);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

void sub_1C5B3D3B8(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 72) & ~v9) + 1;
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
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 72) & ~v9) != -1)
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
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
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
        *(a1 + 2) = BYTE2(v18);
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
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 72) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v19 + 56) = a2 & 0x7FFFFFFF;
    *(v19 + 64) = 0;
  }

  else
  {
    *(v19 + 64) = a2 - 1;
  }
}

uint64_t sub_1C5B3D648(uint64_t a1)
{
  result = sub_1C5BC9624();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C5B3D714()
{
  result = qword_1EC198828;
  if (!qword_1EC198828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198828);
  }

  return result;
}

void sub_1C5B3D768(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for ToggleButton(0, *(v2 + 32), *(v2 + 40), a1) - 8);
  v5 = v2 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  sub_1C5B39130(v5, a2);
}

uint64_t objectdestroy_42Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for ToggleButton(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);
  swift_unknownObjectRelease();
  sub_1C596AC4C(*(v4 + v7), *(v4 + v7 + 8), *(v4 + v7 + 16), *(v4 + v7 + 24), *(v4 + v7 + 32));

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[13], v5);

  return swift_deallocObject();
}

double sub_1C5B3D908(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for ToggleButton(0, v6, v7, a4) - 8);
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_1C5B39388(a1, v9, v10, v11, v6, v7);
}

uint64_t sub_1C5B3D9A4(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5B3DA00()
{
  result = qword_1EDA45F70;
  if (!qword_1EDA45F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F70);
  }

  return result;
}

double sub_1C5B3DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ToggleButton(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C5B39888(v8, v5, v6);
}

uint64_t sub_1C5B3DAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5B3DB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5B3DBA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_1C5B3DC10()
{
  v1 = *(sub_1C5BC9624() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_1C5B3A0AC(v0 + v2, v5);
}

uint64_t sub_1C5B3DCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1C5BC9624();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_1C5B3DD48()
{
  result = qword_1EC198858;
  if (!qword_1EC198858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1987F8, &qword_1C5BEBC00);
    sub_1C5B3DE00();
    sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198858);
  }

  return result;
}

unint64_t sub_1C5B3DE00()
{
  result = qword_1EC198860;
  if (!qword_1EC198860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1987F0, &qword_1C5BEBBF8);
    sub_1C5B3DE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198860);
  }

  return result;
}

unint64_t sub_1C5B3DE8C()
{
  result = qword_1EC198868;
  if (!qword_1EC198868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198870, &qword_1C5BEBD38);
    sub_1C5924F54(&qword_1EC198878, &qword_1EC198880, &unk_1C5BEBD40, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198868);
  }

  return result;
}

void sub_1C5B3DF4C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1C5BEBD60);
  sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
}

void sub_1C5B3E01C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1C5BEBD88);
  sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);
}

double NowPlayingController.transition(to:animated:)(unsigned __int8 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA5DA78);
  swift_unknownObjectRetain();
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136446722;
    LOBYTE(v25) = v6;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2 & 1;
    *(v10 + 18) = 2080;
    NowPlayingController.playerStyle.getter(a4, &v25);
    v16 = sub_1C5BCAEA4();
    v18 = sub_1C592ADA8(v16, v17, &v26);

    *(v10 + 20) = v18;
    _os_log_impl(&dword_1C5922000, v8, v9, "NowPlayingController requested transition to player style %{public}s. Animated = %{BOOL}d, current style = %s", v10, 0x1Cu);
    swift_arrayDestroy();
    v19 = v12;
    a3 = v11;
    MEMORY[0x1C69510F0](v19, -1, -1);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  result = NowPlayingController.playerStyle.getter(a4, &v26);
  if (v6 != v26)
  {
    if (v6)
    {
      v21 = *((*(a4 + 224))(a3, a4, result) + 40);

      if (*(v21 + 16) == 1)
      {
        *(v21 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath(asc_1C5BEBD60);
        MEMORY[0x1EEE9AC00](KeyPath);
        v26 = v21;
        sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
        sub_1C5BC7B64();
      }

      v22 = a2 & 1;
    }

    else
    {
      v22 = a2 & 1 | 0x80;
    }

    return sub_1C5B3E824(v22, a3, a4);
  }

  return result;
}

uint64_t sub_1C5B3E468(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA5DA78);
  swift_unknownObjectRetain();
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v8 = a2[28];
    v9 = v8(a1, a2);
    swift_beginAccess();
    v10 = *(v9 + 177);

    *(v7 + 4) = v10;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1C5922000, v5, v6, "NowPlayingController.togglePlayback() called, old value = %{BOOL}d", v7, 8u);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
    v8 = a2[28];
  }

  v11 = v8(a1, a2);
  swift_beginAccess();
  v12 = *(v11 + 177);
  *(v11 + 177) = v12 ^ 1;
  sub_1C596D7EC(v12);

  v13 = v8(a1, a2);
  swift_beginAccess();
  v14 = *(v13 + 177);

  if (v14 == 1)
  {
    return a2[29](a1, a2);
  }

  else
  {
    return a2[30](a1, a2);
  }
}

void NowPlayingController.footerButtonLayout.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1C5B34A18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void NowPlayingController.miniPlayerAccessoryLayout.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1C5B34A18;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_1C5B34A18;
  *(a1 + 24) = 0;
  *(a1 + 32) = sub_1C5B34A18;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

double NowPlayingController.playerStyle.getter@<D0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *((*(a1 + 224))() + 40);

  swift_getKeyPath(asc_1C5BEBD88);
  sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);

  return result;
}

double sub_1C5B3E824(char a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 224))(a2, a3);

  sub_1C5BC7F34();

  return result;
}

uint64_t NowPlayingController.isDebugEnabled.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 224))(a1) + 136);

  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

double NowPlayingController.isDebugEnabled.setter(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(a3 + 224))(a2, a3) + 136);

  KeyPath = swift_getKeyPath(byte_1C5BEBDB0);
  v6 = swift_getKeyPath("Ȇ[&");
  return sub_1C596DBCC(a1, v4, KeyPath, v6, _s5DebugCMa, &qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
}

double (*NowPlayingController.isDebugEnabled.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = NowPlayingController.isDebugEnabled.getter(a2, a3) & 1;
  return sub_1C5B3EA50;
}

double NowPlayingController.footerConfiguration.getter@<D0>(void *a1@<X8>)
{
  sub_1C5951550(0, 0xE000000000000000);
  sub_1C5950CE4(0, 0xE000000000000000);
  sub_1C5951550(0, 0xE000000000000000);
  sub_1C5950CE4(0, 0xE000000000000000);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BEBD50;
  *(v2 + 32) = 0;
  *(v2 + 40) = xmmword_1C5BEBD50;
  *(v2 + 56) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = sub_1C5B3EF2C;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = sub_1C5B3EF2C;
  a1[5] = v2;

  return result;
}

double sub_1C5B3EB64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198888, &qword_1C5BEBDF8);
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_1C5BEBD50;
  *(v0 + 32) = 256;
  return result;
}

double sub_1C5B3EC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a2;

  swift_getAtKeyPath();

  if (v10 == a1)
  {
  }

  else
  {
    _s5QueueCMa();
    sub_1C5B3F1D8(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v10 = a2;

    v6 = swift_modifyAtReferenceWritableKeyPath();
    *v7 = a1;
    v6(v9, 0);
  }

  return result;
}

double sub_1C5B3EDE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_1C5BEBDB0);
  v5 = swift_getKeyPath("Ȇ[&");

  return sub_1C596DBCC(v2, v3, KeyPath, v5, _s5DebugCMa, &qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
}

uint64_t sub_1C5B3EE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  *a4 = *a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  sub_1C5951550(v4, v5);
  sub_1C5951550(v7, v8);

  return sub_1C5951550(v10, v11);
}

unint64_t sub_1C5B3F104()
{
  result = qword_1EC198890;
  if (!qword_1EC198890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198898, &qword_1C5BEBF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198890);
  }

  return result;
}

uint64_t sub_1C5B3F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192770, &qword_1C5BEBF20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B3F1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NowPlayingViewModel.DurationSnapshot.init(elapsedDuration:duration:bufferedDuration:snapshotTime:rate:isLoading:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = result;
  *(a4 + 24) = a2 & 1;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a3;
  return result;
}

void sub_1C5B3F240()
{
  v1 = *(v0 + 17);
  if (*(v0 + 18) > 1u)
  {
    if (*(v0 + 18) != 2)
    {
      return;
    }

    if (*(v0 + 17) > 4u)
    {
      if (v1 != 6)
      {
        return;
      }

      goto LABEL_26;
    }

    if (*(v0 + 17) && v1 == 1)
    {
LABEL_26:
      v2 = [objc_opt_self() currentTraitCollection];
      [v2 displayScale];
    }
  }

  else if (*(v0 + 18))
  {
    if (*(v0 + 17) > 2u || !*(v0 + 17) || v1 == 1)
    {
      goto LABEL_26;
    }
  }

  else if (*(v0 + 17) > 2u)
  {
    if (v1 == 3 || v1 == 4)
    {
      goto LABEL_26;
    }
  }

  else if (*(v0 + 17) && v1 != 1)
  {
    goto LABEL_26;
  }
}

uint64_t sub_1C5B3F75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v37 = a3;
  v6 = _s21LegacyTimeControlViewVMa(0, a1, a2, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v14 = _s20FluidTimeControlViewVMa(255, a1, a2, v13);
  v15 = sub_1C5BC92D4();
  v35 = *(v15 - 8);
  v36 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  *(&v60 + 1) = &type metadata for Features;
  *&v61[0] = sub_1C5A2E158();
  v18 = swift_allocObject();
  *&v59 = v18;
  *(v18 + 16) = "MediaCoreUI";
  *(v18 + 24) = 11;
  *(v18 + 32) = 2;
  *(v18 + 40) = "FluidScrubber";
  *(v18 + 48) = 13;
  *(v18 + 56) = 2;
  v19 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v59);
  if (v19)
  {
    sub_1C5B3FCD4(&v59);
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v59, v14, WitnessTable);
    v47[0] = v59;
    v47[1] = v60;
    v48[0] = v61[0];
    *(v48 + 9) = *(v61 + 9);
    v21 = *(v14 - 8);
    v22 = *(v21 + 8);
    v22(v47, v14);
    v49[0] = v44;
    v49[1] = v45;
    v50[0] = v46[0];
    *(v50 + 9) = *(v46 + 9);
    v59 = v44;
    v60 = v45;
    v61[0] = v46[0];
    *(v61 + 9) = *(v46 + 9);
    sub_1C593EDC0(&v59, v14, WitnessTable);
    v51[0] = v59;
    v51[1] = v60;
    v52[0] = v61[0];
    *(v52 + 9) = *(v61 + 9);
    v23 = *(v21 + 16);
    v23(v57, v49, v14);
    v22(v51, v14);
    v53[0] = v41;
    v53[1] = v42;
    v54[0] = v43[0];
    *(v54 + 9) = *(v43 + 9);
    v38 = v41;
    v39 = v42;
    v40[0] = v43[0];
    *(v40 + 9) = *(v43 + 9);
    v23(&v59, v53, v14);
    v24 = swift_getWitnessTable();
    sub_1C5950E54(&v38, v14, v6, WitnessTable, v24);
    v55[0] = v38;
    v55[1] = v39;
    v56[0] = v40[0];
    *(v56 + 9) = *(v40 + 9);
    v22(v55, v14);
    v57[0] = v41;
    v57[1] = v42;
    v58[0] = v43[0];
    *(v58 + 9) = *(v43 + 9);
    v22(v57, v14);
    v59 = v44;
    v60 = v45;
    v61[0] = v46[0];
    *(v61 + 9) = *(v46 + 9);
    v25 = &v59;
    v26 = v14;
  }

  else
  {
    sub_1C5B3FDD4(a1, a2, v9);
    v27 = swift_getWitnessTable();
    sub_1C593EDC0(v9, v6, v27);
    v22 = *(v7 + 8);
    v22(v9, v6);
    sub_1C593EDC0(v12, v6, v27);
    v28 = swift_getWitnessTable();
    sub_1C5941738(v9, v14, v6, v28, v27);
    v22(v9, v6);
    v25 = v12;
    v26 = v6;
  }

  v22(v25, v26);
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v62 = v29;
  v63 = v30;
  v31 = v36;
  v32 = swift_getWitnessTable();
  sub_1C593EDC0(v17, v31, v32);
  return (*(v35 + 8))(v17, v31);
}

uint64_t sub_1C5B3FCD4@<X0>(uint64_t a3@<X8>)
{
  _s11TimeControlCMa();
  sub_1C592C1AC(&qword_1EDA4B070, v4, _s11TimeControlCMa, &unk_1C5BEC094);
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v5;
  *(a3 + 16) = sub_1C5BC8C84();
  *(a3 + 24) = v6;
  *(a3 + 32) = swift_getKeyPath(aX_15);
  *(a3 + 40) = 0;
  _s13TrackSectionsCMa(0);
  sub_1C592C1AC(qword_1EDA4AB40, 255, _s13TrackSectionsCMa, &unk_1C5BDE348);
  result = sub_1C5BC8324();
  *(a3 + 48) = result;
  *(a3 + 56) = v8 & 1;
  return result;
}

uint64_t sub_1C5B3FDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s11TimeControlCMa();
  sub_1C592C1AC(&qword_1EDA4B070, v6, _s11TimeControlCMa, &unk_1C5BEC094);
  *a3 = sub_1C5BC8C84();
  a3[1] = v7;
  a3[2] = sub_1C5BC8C84();
  a3[3] = v8;
  v10 = *(_s21LegacyTimeControlViewVMa(0, a1, a2, v9) + 40);
  *(a3 + v10) = swift_getKeyPath(byte_1C5BEC1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B3FEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1988A8, &qword_1C5BEC0D0);
  v118 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989B8, &unk_1C5BEC3E0);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Scrubber(255, v5, WitnessTable, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68, &qword_1C5BD4050);
  swift_getWitnessTable();
  sub_1C59BD734();
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EC1989C0, &qword_1EC1989B8, &unk_1C5BEC3E0, MEMORY[0x1E695BED8]);
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BB4();
  sub_1C5924F54(&qword_1EC1989C8, &qword_1EC1988A8, &qword_1C5BEC0D0, MEMORY[0x1E695BF88]);
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  v119 = v3;
  v120 = v4;
  _s26SegmentPresentationMonitorVMa(255, v3, v4, v8);
  v9 = sub_1C5BC8AB4();
  v158 = swift_getWitnessTable();
  v159 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  v110 = v9;
  v11 = type metadata accessor for ScrubberReader(255, v9, v109, v10);
  v12 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989D0, &qword_1C5BEC3F0);
  v13 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v14 = sub_1C5BC8AB4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838, &qword_1C5BD5C80);
  v111 = v11;
  v16 = swift_getWitnessTable();
  v156 = v16;
  v157 = MEMORY[0x1E697E5C0];
  v113 = v12;
  v112 = swift_getWitnessTable();
  v154 = v112;
  v155 = sub_1C5924F54(&qword_1EDA46418, &qword_1EC1989D0, &qword_1C5BEC3F0, MEMORY[0x1E697EC18]);
  v117 = v13;
  v115 = swift_getWitnessTable();
  v152 = v115;
  v153 = sub_1C592C1AC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  *&v146 = v14;
  *(&v146 + 1) = v15;
  v99 = swift_getWitnessTable();
  *&v147 = v99;
  v97 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  *(&v147 + 1) = v97;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for MCUINamespace(0, OpaqueTypeMetadata2, v18, v19);
  v91 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  v101 = v15;
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v88 - v24;
  v95 = swift_checkMetadataState();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v114 = &v88 - v25;
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v88 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40, &qword_1C5BD4070);
  v98 = OpaqueTypeMetadata2;
  v28 = sub_1C5BC8AB4();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v88 = &v88 - v32;
  v33 = sub_1C5BC8F34();
  v105 = *(v33 - 8);
  v106 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v104 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v121[1];
  v161 = *v121;
  v162 = v35;
  *v163 = v121[2];
  *&v163[9] = *(v121 + 41);
  if (!v161)
  {
    goto LABEL_24;
  }

  v107 = v161;
  v36 = *(v161 + 24);
  swift_beginAccess();
  v37 = *(v36 + 40);
  v164 = *(v36 + 24);
  v165 = v37;
  v166 = *(v36 + 56);
  v167 = *(v36 + 72);
  v38 = *&v163[16];
  v168 = *&v163[16];
  v169 = v163[24];
  LOBYTE(v36) = v163[24];

  if ((v36 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v39 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v40 = v104;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v168, &qword_1EC1948D8, &qword_1C5BE4FD0);
    (*(v105 + 8))(v40, v106);
    v38 = v146;
  }

  swift_getKeyPath("Ѐ[&");
  *&v146 = v38;
  sub_1C592C1AC(qword_1EDA4AB40, 255, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v41 = *(v38 + 16);

  v92 = v20;
  v102 = v22;
  v89 = v29;
  v90 = v28;
  v108 = v16;
  if (v41 >> 62)
  {
    v42 = sub_1C5BCB984();
    if (v42)
    {
      goto LABEL_6;
    }

LABEL_16:

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_16;
  }

LABEL_6:
  *&v146 = MEMORY[0x1E69E7CC0];
  sub_1C5B8F0C8(0, v42 & ~(v42 >> 63), 0);
  if (v42 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v87, _s11TimeControlCMa, &unk_1C5BEC094);
    result = sub_1C5BC8C74();
    __break(1u);
    return result;
  }

  v43 = 0;
  v44 = v146;
  v45 = v41;
  v121 = (v41 & 0xC000000000000001);
  v46 = v41;
  v47 = v42;
  do
  {
    if (v121)
    {
      v48 = MEMORY[0x1C694FD20](v43, v45);
    }

    else
    {
      v48 = *(v45 + 8 * v43 + 32);
    }

    v50 = v48[2];
    v49 = v48[3];
    v51 = v48[4];

    *&v146 = v44;
    v53 = *(v44 + 16);
    v52 = *(v44 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_1C5B8F0C8((v52 > 1), v53 + 1, 1);
      v44 = v146;
    }

    ++v43;
    *(v44 + 16) = v53 + 1;
    v54 = (v44 + 24 * v53);
    v54[4] = v50;
    v54[5] = v49;
    v54[6] = v51;
    v45 = v46;
  }

  while (v47 != v43);

LABEL_17:
  v55 = swift_allocObject();
  v57 = v119;
  v56 = v120;
  *(v55 + 16) = v119;
  *(v55 + 24) = v56;
  v58 = v165;
  *(v55 + 32) = v164;
  *(v55 + 48) = v58;
  *(v55 + 64) = v166;
  *(v55 + 80) = v167;
  *(v55 + 88) = v44;
  v59 = v162;
  *(v55 + 96) = v161;
  *(v55 + 112) = v59;
  *(v55 + 128) = *v163;
  *(v55 + 137) = *&v163[9];
  (*(*(v118 - 8) + 16))(&v146, &v161);
  swift_checkMetadataState();
  ScrubberReader.init(content:)(sub_1C5B460CC, v55, &v140);
  v137 = v140;
  v138 = v141;
  v139 = v142;
  swift_beginAccess();
  swift_checkMetadataState();
  sub_1C5BCA2B4();

  v131 = v143;
  v132 = v144;
  *&v133 = v145;
  MEMORY[0x1EEE9AC00](v60);
  *(&v88 - 4) = v57;
  *(&v88 - 3) = v56;
  *(&v88 - 2) = &v161;
  sub_1C5BCAA54();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1989D8, &qword_1C5BEC420);
  sub_1C5B460EC();
  sub_1C5BCA2C4();

  v127 = v148;
  v128 = v149;
  v129 = v150;
  v130 = v151;
  v125 = v146;
  v126 = v147;
  v61 = swift_checkMetadataState();
  v62 = v114;
  sub_1C595BB1C(0xD000000000000019, 0x80000001C5BF61C0, v61);
  v133 = v127;
  v134 = v128;
  v135 = v129;
  v136 = v130;
  v131 = v125;
  v132 = v126;
  (*(*(v61 - 8) + 8))(&v131, v61);
  v63 = *MEMORY[0x1E697E728];
  v64 = sub_1C5BC89B4();
  v65 = v116;
  (*(*(v64 - 8) + 104))(v116, v63, v64);
  sub_1C592C1AC(&qword_1EDA46688, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  if ((sub_1C5BCADB4() & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v67 = v94;
  v66 = v95;
  v68 = v101;
  v69 = v99;
  v70 = v97;
  sub_1C5BC9F54();
  sub_1C5924EF4(v65, &qword_1EC192838, &qword_1C5BD5C80);
  (*(v93 + 8))(v62, v66);
  *&v125 = v66;
  *(&v125 + 1) = v68;
  *&v126 = v69;
  *(&v126 + 1) = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v102;
  v73 = v98;
  View.mcui.getter(v98, v102);
  (*(v96 + 8))(v67, v73);
  BYTE8(v125) = v163[8];
  *&v125 = *v163;
  if (v163[8] == 1)
  {
    v74 = v163[0];
  }

  else
  {
    sub_1C59400B0(&v125, v124, qword_1EC1989E0, &qword_1C5BEC428);
    sub_1C5BCB4E4();
    v75 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v76 = v104;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v125, qword_1EC1989E0, &qword_1C5BEC428);
    (*(v105 + 8))(v76, v106);
    v74 = v124[0];
  }

  v78 = v91;
  v77 = v92;
  v80 = v89;
  v79 = v90;
  v81 = v88;
  v82 = v100;
  MCUINamespace<A>.scrubberForceSensitivityTextToSingleLine(_:)(v74 == 0, OpaqueTypeConformance2, v100);
  (*(v78 + 8))(v72, v77);
  v83 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, MEMORY[0x1E6980A18]);
  v122 = OpaqueTypeConformance2;
  v123 = v83;
  v84 = swift_getWitnessTable();
  sub_1C593EDC0(v82, v79, v84);
  v85 = *(v80 + 8);
  v85(v82, v79);
  sub_1C593EDC0(v81, v79, v84);
  return (v85)(v81, v79);
}

uint64_t sub_1C5B4100C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v111 = a6;
  v77 = a5;
  v109 = a4;
  v106 = a3;
  v85 = a1;
  v110 = a7;
  v8 = *(a2 + 3);
  v75 = *(a2 + 2);
  v74 = v8;
  v78 = *(a2 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Scrubber(0, v9, WitnessTable, v10);
  v103 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68, &qword_1C5BD4050);
  v14 = swift_getWitnessTable();
  v15 = sub_1C59BD734();
  *&v119 = v11;
  *(&v119 + 1) = v13;
  *&v120 = v14;
  *(&v120 + 1) = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v102 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989B8, &unk_1C5BEC3E0);
  v19 = sub_1C5924F54(&qword_1EC1989C0, &qword_1EC1989B8, &unk_1C5BEC3E0, MEMORY[0x1E695BED8]);
  v95 = v11;
  *&v119 = v11;
  *(&v119 + 1) = v13;
  v89 = v13;
  v87 = v14;
  *&v120 = v14;
  *(&v120 + 1) = v15;
  v86 = v15;
  v20 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v18;
  *&v119 = v18;
  *(&v119 + 1) = OpaqueTypeMetadata2;
  v107 = OpaqueTypeMetadata2;
  v88 = v19;
  *&v120 = v19;
  *(&v120 + 1) = OpaqueTypeConformance2;
  v82 = OpaqueTypeConformance2;
  v22 = sub_1C5BC8BB4();
  v97 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v73 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1988A8, &qword_1C5BEC0D0);
  v25 = sub_1C5924F54(&qword_1EC1989C8, &qword_1EC1988A8, &qword_1C5BEC0D0, MEMORY[0x1E695BF88]);
  v26 = swift_getWitnessTable();
  v83 = v24;
  *&v119 = v24;
  *(&v119 + 1) = v22;
  v100 = v22;
  v81 = v25;
  *&v120 = v25;
  *(&v120 + 1) = v26;
  v80 = v26;
  v27 = sub_1C5BC8BB4();
  v98 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v73 - v28;
  v29 = v77;
  v30 = v111;
  v32 = _s26SegmentPresentationMonitorVMa(255, v77, v111, v31);
  v101 = v27;
  v93 = v32;
  v108 = sub_1C5BC8AB4();
  v105 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v96 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v99 = &v73 - v36;
  if (v78 == 2)
  {
    v37 = 0;
    v38 = 0;
    v76 = 0.0;
    v39 = 1;
  }

  else
  {
    v76 = *(a2 + 1);
    v20 = v74;
    v38 = v78;
    v39 = v78;
    v37 = v75;
  }

  LOBYTE(v114) = v39 & 1;
  BYTE1(v114) = v38 & 1;
  BYTE2(v114) = v38 & 1;
  *(&v114 + 1) = v37;
  v40 = 0.0;
  LOBYTE(v115) = v20 & 1;
  v41 = v85;
  if (v78 != 2)
  {
    v40 = *(a2 + 5);
  }

  v42 = v78 == 2;
  MEMORY[0x1EEE9AC00](v35);
  *(&v73 - 4) = v29;
  *(&v73 - 3) = v30;
  v43 = v109;
  v72 = v109;
  v44 = swift_allocObject();
  *(v44 + 16) = v29;
  *(v44 + 24) = v30;
  v45 = *(v43 + 1);
  *(v44 + 32) = *v43;
  *(v44 + 48) = v45;
  *(v44 + 64) = *(v43 + 2);
  *(v44 + 73) = *(v43 + 41);
  v46 = v106;

  v48 = _s20FluidTimeControlViewVMa(0, v29, v30, v47);
  (*(*(v48 - 8) + 16))(&v119, v43, v48);
  v49 = v90;
  Scrubber.init(duration:loadingConfiguration:playbackRate:sections:accessoryView:onScrub:)(v76, v42, &v114, v46, sub_1C5B460C0, v90, v40, v84, WitnessTable);
  v50 = a2[1];
  v119 = *a2;
  v120 = v50;
  v121 = a2[2];
  LOBYTE(v122) = *(a2 + 48);
  v51 = swift_allocObject();
  v52 = a2[1];
  *(v51 + 16) = *a2;
  *(v51 + 32) = v52;
  *(v51 + 48) = a2[2];
  *(v51 + 64) = *(a2 + 48);
  *(v51 + 72) = v41;

  v53 = v102;
  v54 = v95;
  sub_1C5BCA344();

  (*(v103 + 8))(v49, v54);
  v55 = *v43;
  if (*v43)
  {
    *&v119 = *(*(v55 + 24) + 88);

    v56 = v92;
    v57 = v107;
    sub_1C5BCA3D4();

    (*(v104 + 8))(v53, v57);
    *&v119 = *(v55 + 16);

    v58 = v94;
    v59 = v100;
    sub_1C5BCA3D4();

    (*(v97 + 8))(v56, v59);

    sub_1C5AC0B08(v60, &v114);
    v61 = v101;
    v62 = swift_getWitnessTable();
    v63 = v96;
    v64 = v93;
    MEMORY[0x1C694E550](&v114, v61, v93, v62);
    v121 = v116;
    v122 = v117;
    v123 = v118;
    v119 = v114;
    v120 = v115;
    (*(*(v64 - 8) + 8))(&v119, v64);
    (*(v98 + 8))(v58, v61);
    v65 = swift_getWitnessTable();
    v112 = v62;
    v113 = v65;
    v66 = v108;
    v67 = swift_getWitnessTable();
    v68 = v99;
    sub_1C593EDC0(v63, v66, v67);
    v69 = *(v105 + 8);
    v69(v63, v66);
    sub_1C593EDC0(v68, v66, v67);
    return (v69)(v68, v66);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v71, _s11TimeControlCMa, &unk_1C5BEC094);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B41C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1C5950C90();
  v32 = &type metadata for NowPlayingLookupID;
  v33 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = AssociatedTypeWitness;
  v34 = v8;
  v35 = AssociatedConformanceWitness;
  v9 = type metadata accessor for ViewProvider(0, &v32);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v25[1] = swift_getAssociatedTypeWitness();
  v13 = sub_1C5BCB804();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  sub_1C59498C4(*(a1 + 16), *(a1 + 24), a2, *(a3 + 8));
  v20 = *(a3 + 384);
  swift_unknownObjectRetain();
  v20(a2, a3);
  swift_unknownObjectRelease();
  v32 = 0xD000000000000014;
  v33 = 0x80000001C5BFC320;
  v21 = v28;
  sub_1C595BC70();

  (*(v29 + 8))(v12, v21);
  v31 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v16, v13, WitnessTable);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1C593EDC0(v19, v13, WitnessTable);
  return (v23)(v19, v13);
}

void sub_1C5B41F24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (qword_1EDA469E0 != -1)
      {
        swift_once();
      }

      v8 = sub_1C5BC7D64();
      __swift_project_value_buffer(v8, qword_1EDA5DA78);
      v9 = sub_1C5BC7D44();
      v10 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v5;
        _os_log_impl(&dword_1C5922000, v9, v10, "TimeControlView finished scrubbing with time: %f", v11, 0xCu);
        MEMORY[0x1C69510F0](v11, -1, -1);
      }

      if (*a2)
      {

        sub_1C5BC7F34();

        v12 = a3;
        sub_1C59498C4(a2[2], a2[3], a3, *(a4 + 8));
        v13 = *(a4 + 264);
        swift_unknownObjectRetain();
        v13(v12, a4, v5);
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C5BC7D64();
    __swift_project_value_buffer(v14, qword_1EDA5DA78);
    v15 = sub_1C5BC7D44();
    v16 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v5;
      _os_log_impl(&dword_1C5922000, v15, v16, "TimeControlView began scrubbing with time: %f", v17, 0xCu);
      MEMORY[0x1C69510F0](v17, -1, -1);
    }
  }

  if (*a2)
  {

    sub_1C5BC7F34();

    return;
  }

LABEL_16:
  _s11TimeControlCMa();
  sub_1C592C1AC(&qword_1EDA4B070, v18, _s11TimeControlCMa, &unk_1C5BEC094);
  sub_1C5BC8C74();
  __break(1u);
}

void sub_1C5B421FC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1C5BC7AC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0.0;
  if (*(a1 + 48) != 2)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = *a1;
    v12 = *(a1 + 8);
    sub_1C5BC7AB4();
    sub_1C5BC7A54();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = v13 + v10 * (v15 - v11);
    if (v12 < v16)
    {
      v16 = v12;
    }

    if (v16 < 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v16;
    }
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C5BC7D64();
  __swift_project_value_buffer(v17, qword_1EDA5DA78);

  v18 = sub_1C5BC7D44();
  v19 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136446722;
    v22 = *(a1 + 16);
    v29[0] = *a1;
    v29[1] = v22;
    v29[2] = *(a1 + 32);
    v30 = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191E68, &qword_1C5BD4050);
    v23 = sub_1C5BCAEA4();
    v25 = sub_1C592ADA8(v23, v24, &v31);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v9;
    *(v20 + 22) = 2082;
    *&v29[0] = a2;
    v26 = sub_1C5BCAEA4();
    v28 = sub_1C592ADA8(v26, v27, &v31);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_1C5922000, v18, v19, "TimeControlView received snapshot %{public}s, setting playhead to %f via ScrubberProxy %{public}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v21, -1, -1);
    MEMORY[0x1C69510F0](v20, -1, -1);
  }

  ScrubberProxy.seek(to:)(v9);
}

void sub_1C5B424DC(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C5BC7D64();
  __swift_project_value_buffer(v3, qword_1EDA5DA78);

  v4 = sub_1C5BC7D44();
  v5 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_1C5BCAEA4();
    v10 = sub_1C592ADA8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C5922000, v4, v5, "TimeControlView received changed interaction state, updating scrubber via proxy %{public}s", v6, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C69510F0](v7, -1, -1, v11);
    MEMORY[0x1C69510F0](v6, -1, -1);
  }

  LOBYTE(v12) = v2;
  ScrubberProxy._pptChangeScrubberInteractionState(to:)(&v12);
}

void sub_1C5B42654(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v3 = *(*a1 + 24);
    swift_beginAccess();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    if (*(v3 + 16))
    {
      sub_1C5BC9964();
      v8 = sub_1C5BC9B44();
      v10 = v9;
      v12 = v11;
      sub_1C5BCA494();
      v4 = sub_1C5BC9BC4();
      v5 = v13;
      v15 = v14;
      v7 = v16;
      sub_1C5953BD8(v8, v10, v12 & 1);

      v6 = v15 & 1;
    }

    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v17, _s11TimeControlCMa, &unk_1C5BEC094);
    sub_1C5BC8C74();
    __break(1u);
  }
}

uint64_t sub_1C5B427D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v81 = a1;
  v80 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = v2;
  v79 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v7 = _s21LegacyTimeControlViewV9TimedViewVMa(255, v5, v4, v6);
  v8 = sub_1C5B45F08();
  WitnessTable = swift_getWitnessTable();
  v106 = &type metadata for MCUIText;
  v107 = v7;
  v108 = v8;
  v109 = WitnessTable;
  v10 = sub_1C5BCA794();
  v88 = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for ContentBelowSliderStyle(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v106 = v10;
  v107 = v14;
  v108 = v15;
  v109 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8BC4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40, &qword_1C5BD4070);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28, &qword_1C5BD8C40);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8, &qword_1C5BE1570);
  v83 = sub_1C5BC8AB4();
  v82 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C80, &qword_1C5BD6C60);
  v84 = sub_1C5BC8AB4();
  v85 = _s33HeadlessTimeControlSliderModifierVMa(255, v88, v4, v17);
  v18 = sub_1C5BC8AB4();
  v106 = v10;
  v107 = v14;
  v108 = v15;
  v109 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = MEMORY[0x1E697EBB8];
  v19 = swift_getWitnessTable();
  v20 = MEMORY[0x1E6980A18];
  v21 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, MEMORY[0x1E6980A18]);
  v101 = v19;
  v102 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1C5924F54(&qword_1EDA460B8, &qword_1EC193B28, &qword_1C5BD8C40, v20);
  v99 = v22;
  v100 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8, &qword_1C5BE1570, v20);
  v97 = v24;
  v98 = v25;
  v95 = swift_getWitnessTable();
  v96 = MEMORY[0x1E697E040];
  v26 = swift_getWitnessTable();
  v27 = sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80, &qword_1C5BD6C60, v20);
  v93 = v26;
  v94 = v27;
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v91 = v28;
  v92 = v29;
  v30 = swift_getWitnessTable();
  v31 = v88;
  v106 = v88;
  v107 = v18;
  v82 = v18;
  v32 = v4;
  v108 = v4;
  v109 = v30;
  v33 = v86;
  v34 = _s19HeadlessTimeControlVMa(0, &v106);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v76 - v39;
  v41 = sub_1C5BC92D4();
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v76 - v44;
  v46 = *v33;
  if (*v33)
  {
    v83 = v45;
    v84 = v43;
    v85 = v42;
    v47 = *(v46 + 24);
    swift_beginAccess();
    if (*(v47 + 16))
    {
      sub_1C5BC9964();
      v48 = sub_1C5BC9B44();
      v50 = v49;
      v52 = v51;
      v106 = sub_1C5BCA494();
      v53 = sub_1C5BC9BC4();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      sub_1C5953BD8(v48, v50, v52 & 1);

      v106 = v53;
      v107 = v55;
      LOBYTE(v108) = v57 & 1;
      v109 = v59;
      v60 = swift_getWitnessTable();
      v61 = v83;
      sub_1C5950E54(&v106, MEMORY[0x1E6981148], v34, MEMORY[0x1E6981138], v60);
      sub_1C5953BD8(v53, v55, v57 & 1);
    }

    else
    {
      v62 = v80;
      v63 = *(v80 + 16);
      v77 = v40;
      v64 = v79;
      v86 = v30;
      v65 = v81;
      v63(v79, v33, v81);
      v66 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = v31;
      *(v67 + 24) = v32;
      (*(v62 + 32))(v67 + v66, v64, v65);
      sub_1C59B8DD4(sub_1C5B45F5C, v67, v31, v82, v32, v86, v37);
      v68 = swift_getWitnessTable();
      v69 = v77;
      sub_1C593EDC0(v37, v34, v68);
      v70 = *(v35 + 8);
      v70(v37, v34);
      sub_1C593EDC0(v69, v34, v68);
      v61 = v83;
      sub_1C5941738(v37, MEMORY[0x1E6981148], v34, MEMORY[0x1E6981138], v68);
      v70(v37, v34);
      v70(v69, v34);
    }

    v71 = swift_getWitnessTable();
    v89 = MEMORY[0x1E6981138];
    v90 = v71;
    v72 = v85;
    v73 = swift_getWitnessTable();
    sub_1C593EDC0(v61, v72, v73);
    return (*(v84 + 8))(v61, v72);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v75, _s11TimeControlCMa, &unk_1C5BEC094);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B43220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v145 = a2;
  v159 = a1;
  v153 = a5;
  v158 = _s33HeadlessTimeControlSliderModifierVMa(0, a3, a4, a4);
  v152 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v151 = &v106 - v7;
  v8 = sub_1C5BC89D4();
  v149 = *(v8 - 8);
  v150 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1C5BC90F4();
  v143 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v137 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v106 - v12;
  v147 = sub_1C5BCAB54();
  v144 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v142 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v14 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v123 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for ContentBelowSliderStyle(0, v14, WitnessTable, v15);
  v125 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v106 - v17;
  v19 = _s21LegacyTimeControlViewV9TimedViewVMa(255, a3, a4, v18);
  v20 = sub_1C5B45F08();
  v21 = swift_getWitnessTable();
  v167 = &type metadata for MCUIText;
  v168 = v19;
  v169 = v20;
  v170 = v21;
  v22 = sub_1C5BCA794();
  v154 = v22;
  v114 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v106 - v23;
  v25 = swift_getWitnessTable();
  v111 = v25;
  v156 = v16;
  v110 = swift_getWitnessTable();
  v167 = v22;
  v168 = v16;
  v169 = v25;
  v170 = v110;
  v119 = MEMORY[0x1E697CE38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v121 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v155 = &v106 - v26;
  sub_1C5BC8BC4();
  v116 = sub_1C5BC8AB4();
  v124 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v106 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40, &qword_1C5BD4070);
  v117 = sub_1C5BC8AB4();
  v128 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v106 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28, &qword_1C5BD8C40);
  v120 = sub_1C5BC8AB4();
  v132 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v157 = &v106 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8, &qword_1C5BE1570);
  v129 = sub_1C5BC8AB4();
  v134 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v118 = &v106 - v30;
  v130 = sub_1C5BC8AB4();
  v135 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v126 = &v106 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C80, &qword_1C5BD6C60);
  v133 = sub_1C5BC8AB4();
  v138 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v127 = &v106 - v32;
  v33 = sub_1C5BC8AB4();
  v34 = *(v33 - 8);
  v139 = v33;
  v140 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v131 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v136 = &v106 - v37;
  v38 = *(v159 + 40);
  v39 = *(v159 + 48);
  v172 = *(v159 + 32);
  v167 = v172;
  v168 = v38;
  v169 = v39;
  v40 = a3;
  v164[2] = a3;
  v41 = a4;
  v164[3] = a4;
  v164[4] = v159;
  v163[2] = v40;
  v163[3] = a4;
  v42 = v40;
  v43 = v41;
  v163[4] = v159;
  sub_1C5B46010(&v172, &v166);
  v44 = sub_1C5B4606C();

  v45 = MEMORY[0x1E69E63B0];
  sub_1C5B4448C(MEMORY[0x1E69E63B0], v44, &v166);
  v165 = v166;
  sub_1C5B4486C(&v167, &v165, sub_1C5B442E8, 0, sub_1C5B45FF8, v164, sub_1C5B46004, v163, v24, CGSizeMake, 0, &type metadata for MCUIText, v19, v45, v20, v21, v44, v44);
  v160 = v42;
  v161 = v43;
  v107 = v42;
  v108 = v43;
  v46 = v43;
  v162 = v145;
  v47 = v109;
  sub_1C5AE3470(1, sub_1C5B460C0, v123, WitnessTable, v109);
  v48 = v154;
  v49 = v156;
  v51 = v110;
  v50 = v111;
  sub_1C5BC9E64();
  (*(v125 + 8))(v47, v49);
  (*(v114 + 8))(v24, v48);
  _s21LegacyTimeControlViewVMa(0, v42, v46, v52);
  v53 = v141;
  sub_1C594C704(v141);
  v54 = v143;
  v55 = v137;
  v56 = v146;
  (*(v143 + 104))(v137, *MEMORY[0x1E697F600], v146);
  LOBYTE(v47) = sub_1C5BC8274();
  v57 = *(v54 + 8);
  v57(v55, v56);
  v57(v53, v56);
  v58 = v144;
  v59 = MEMORY[0x1E6981DB8];
  if ((v47 & 1) == 0)
  {
    v59 = MEMORY[0x1E6981DF0];
  }

  v60 = v142;
  v61 = v147;
  (*(v144 + 104))(v142, *v59, v147);
  v167 = v154;
  v168 = v156;
  v169 = v50;
  v170 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v112;
  v64 = v60;
  v65 = OpaqueTypeMetadata2;
  v66 = v155;
  sub_1C5BCA394();
  (*(v58 + 8))(v64, v61);
  (*(v121 + 8))(v66, v65);
  LOBYTE(v66) = *(v159 + 88);
  v164[18] = OpaqueTypeConformance2;
  v164[19] = MEMORY[0x1E697EBB8];
  v67 = v116;
  v68 = swift_getWitnessTable();
  v69 = v113;
  v70 = sub_1C5AE355C(v66, v67, v68);
  (*(v124 + 8))(v63, v67, v70);
  v71 = MEMORY[0x1E6980A18];
  v156 = MEMORY[0x1E6980A18];
  v72 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40, &qword_1C5BD4070, MEMORY[0x1E6980A18]);
  v164[16] = v68;
  v164[17] = v72;
  v73 = v117;
  v74 = swift_getWitnessTable();
  sub_1C5AE360C(v73, v74, 5.0, 0.0, 5.0, 0.0);
  (*(v128 + 8))(v69, v73);
  swift_getKeyPath(byte_1C5BEC3B0);
  v75 = v148;
  v76 = v149;
  v77 = v150;
  (*(v149 + 104))(v148, *MEMORY[0x1E697E7D0], v150);
  v78 = sub_1C5924F54(&qword_1EDA460B8, &qword_1EC193B28, &qword_1C5BD8C40, v71);
  v164[14] = v74;
  v164[15] = v78;
  v79 = v120;
  v80 = swift_getWitnessTable();
  v81 = v118;
  v82 = v75;
  v83 = v157;
  sub_1C5BC9DF4();

  (*(v76 + 8))(v82, v77);
  (*(v132 + 8))(v83, v79);
  sub_1C5BCAA54();
  v84 = v156;
  v85 = sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8, &qword_1C5BE1570, v156);
  v164[12] = v80;
  v164[13] = v85;
  v86 = v129;
  v87 = swift_getWitnessTable();
  v88 = v126;
  sub_1C5BCA234();
  (*(v134 + 8))(v81, v86);
  sub_1C5BCA524();
  v164[10] = v87;
  v164[11] = MEMORY[0x1E697E040];
  v89 = v130;
  v90 = swift_getWitnessTable();
  v91 = v127;
  sub_1C5BC9D84();

  (*(v135 + 8))(v88, v89);
  v93 = _s26HeadlessTimeControlContextVMa(0, v107, v108, v92);
  v94 = v151;
  sub_1C59B8F74(v93, v151);
  v95 = sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80, &qword_1C5BD6C60, v84);
  v164[8] = v90;
  v164[9] = v95;
  v96 = v133;
  v97 = swift_getWitnessTable();
  v98 = v131;
  v99 = v158;
  MEMORY[0x1C694E550](v94, v96, v158, v97);
  (*(v152 + 8))(v94, v99);
  (*(v138 + 8))(v91, v96);
  v100 = swift_getWitnessTable();
  v164[6] = v97;
  v164[7] = v100;
  v101 = v139;
  v102 = swift_getWitnessTable();
  v103 = v136;
  sub_1C593EDC0(v98, v101, v102);
  v104 = *(v140 + 8);
  v104(v98, v101);
  sub_1C593EDC0(v103, v101, v102);
  return (v104)(v103, v101);
}

uint64_t sub_1C5B442E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C5BC9024();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = "Slider to adjust playback progress.";
  *(a1 + 40) = 35;
  *(a1 + 48) = 2;
  return result;
}

double sub_1C5B44354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 64);
  v8 = *(a1 + 56);
  v9 = v4;
  v5 = _s21LegacyTimeControlViewV9TimedViewVMa(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v8, v5, WitnessTable);
  v8 = v10;
  v9 = v11;
  sub_1C593EDC0(&v8, v5, WitnessTable);

  return result;
}

double sub_1C5B443F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  v8 = *(a1 + 72);
  v9 = v4;
  v5 = _s21LegacyTimeControlViewV9TimedViewVMa(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v8, v5, WitnessTable);
  v8 = v10;
  v9 = v11;
  sub_1C593EDC0(&v8, v5, WitnessTable);

  return result;
}

uint64_t sub_1C5B4448C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, char *a3@<X8>)
{
  v36 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v35 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v30 - v8;
  v33 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v17);
  swift_getAssociatedConformanceWitness();
  sub_1C5BCBE34();
  sub_1C5BCBDC4();
  sub_1C5BCBE34();
  sub_1C5BCBDC4();
  v18 = *(*(v15 + 24) + 8);
  result = sub_1C5BCAD94();
  if (result)
  {
    v20 = v33;
    v30[1] = v18;
    v21 = *(v33 + 32);
    v22 = v31;
    v21(v31, v14, a1);
    v23 = v35;
    v21(&v22[*(v35 + 48)], v11, a1);
    v24 = v34;
    v25 = v32;
    (*(v34 + 16))(v32, v22, v23);
    v26 = *(v23 + 48);
    v21(v36, v25, a1);
    v27 = *(v20 + 8);
    v27(&v25[v26], a1);
    (*(v24 + 32))(v25, v22, v23);
    v28 = *(v23 + 48);
    v29 = sub_1C5BCADA4();
    v21(&v36[*(v29 + 36)], &v25[v28], a1);
    return (v27)(v25, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B4486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v35 = a8;
  v36 = a7;
  v32[7] = a6;
  v33 = a5;
  v40 = a3;
  v41 = a4;
  v32[0] = a1;
  v37 = a9;
  v38 = a11;
  v39 = a10;
  v32[5] = a18;
  v32[6] = a15;
  v34 = a12;
  v32[4] = a13;
  v32[2] = a17;
  v32[3] = a16;
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v20);
  v32[1] = a14;
  v21 = sub_1C5BCADA4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v32 - v23;
  v25 = sub_1C5BCA864();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  (*(v26 + 16))(v32 - v28, a1, v25, v27);
  v29 = (*(v22 + 16))(v24, a2, v21);
  v30 = v33(v29);
  v36(v30);
  sub_1C5BCA784();
  (*(v22 + 8))(a2, v21);
  return (*(v26 + 8))(v32[0], v25);
}

uint64_t sub_1C5B44B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v33 - v12);
  v38 = a1;
  v39 = a2;
  sub_1C594A23C();

  v14 = sub_1C5BC9CA4();
  v16 = v15;
  v18 = v17;
  sub_1C5BC9A44();
  v34 = sub_1C5BC9C14();
  v20 = v19;
  v35 = v21;
  v36 = v22;

  sub_1C5953BD8(v14, v16, v18 & 1);

  sub_1C5BCA494();
  v23 = sub_1C5BCA4B4();

  v24 = *(v5 + 36);
  v25 = *MEMORY[0x1E6981DB8];
  v26 = sub_1C5BCAB54();
  (*(*(v26 - 8) + 104))(v13 + v24, v25, v26);
  *v13 = v23;
  LODWORD(v25) = sub_1C5BC9404();
  sub_1C59400B0(v13, v10, &unk_1EC196170, &qword_1C5BDA000);
  LODWORD(v38) = v25;
  sub_1C59400B0(v10, v7, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);
  v27 = sub_1C5BC85E4();
  v28 = sub_1C5BC85E4();
  sub_1C5924EF4(v10, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924EF4(v13, &unk_1EC196170, &qword_1C5BDA000);
  v29 = v34;
  v38 = v34;
  v39 = v20;
  LOBYTE(v24) = v35 & 1;
  v40 = v35 & 1;
  v41 = v36;
  v42 = v27;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194AD8, &unk_1C5BDCEC0);
  sub_1C5A48F48();
  v30 = v37;
  sub_1C5BC9F94();
  sub_1C5953BD8(v29, v20, v24);

  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198A68, &qword_1C5BEC4D8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198A70, &qword_1C5BEC4E0);
  sub_1C5BC8C14();
  result = swift_getKeyPath(byte_1C5BEC4E8);
  *v31 = result;
  return result;
}

void sub_1C5B44EB4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  if (v2 != *(v3 + 16))
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v4, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  *(v3 + 16) = v2;
}

void sub_1C5B44F68(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v3, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  *(v1 + 16) = v2;
}

void (*sub_1C5B4501C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 16);
  return sub_1C5B450A8;
}

void sub_1C5B450A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  if (v3 != *(v2 + 16))
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v4, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();

    v2 = v1[3];
  }

  *(v2 + 16) = v3;

  free(v1);
}

__n128 sub_1C5B45158@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 40);
  *a2 = *(v3 + 24);
  *(a2 + 16) = v5;
  result = *(v3 + 56);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void sub_1C5B451B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10[0] = *a1;
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  sub_1C596D6D0(v10);
  swift_beginAccess();
  *(v9 + 24) = v2;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
}

__n128 sub_1C5B45240@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void (*sub_1C5B45298(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  swift_beginAccess();
  v5 = *(v1 + 72);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *(v4 + 48) = v5;
  return sub_1C5B45338;
}

void sub_1C5B45338(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  v8 = *(*a1 + 48);
  v10[0] = **a1;
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  sub_1C596D6D0(v10);
  v9 = v1[10];
  *(v9 + 24) = v2;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;

  free(v1);
}

double sub_1C5B45418()
{
  swift_beginAccess();
  v1 = 0.0;
  if (*(v0 + 72) != 2)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    sub_1C5BC7A54();
    v7 = v5 + v2 * (v6 - v3);
    if (v4 < v7)
    {
      v7 = v4;
    }

    if (v7 >= 0.0)
    {
      return v7;
    }
  }

  return v1;
}

double sub_1C5B454B0(double a1)
{

  sub_1C5BC7F34();

  return result;
}

uint64_t NowPlayingViewModel.PlaybackPosition.deinit()
{

  return v0;
}

uint64_t NowPlayingViewModel.PlaybackPosition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B4555C()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EDA5DB18 = result;
  unk_1EDA5DB20 = v4;
  return result;
}

double sub_1C5B4569C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v2, _s11TimeControlCMa, &unk_1C5BEC094);
    sub_1C5BC7F24();

    sub_1C5BC7FA4();
  }

  return result;
}

uint64_t sub_1C5B45774()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B457D4@<X0>(uint64_t *a2@<X8>)
{
  _s11TimeControlCMa();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t NowPlayingViewModel.DurationSnapshot.init(elapsedDuration:duration:snapshotTime:rate:isLoading:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
  *(a2 + 48) = result;
  return result;
}

uint64_t NowPlayingViewModel.DurationSnapshot.debugDescription.getter()
{
  v1 = *(v0 + 48);
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000011, 0x80000001C5BFC170);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0xD000000000000013, 0x80000001C5BFC190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
  v2 = sub_1C5BCAEA4();
  MEMORY[0x1C694F170](v2);

  MEMORY[0x1C694F170](0x687370616E73202CLL, 0xEF3D656D6954746FLL);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x3D65746172202CLL, 0xE700000000000000);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x64616F4C7369202CLL, 0xEC0000003D676E69);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v3, v4);

  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0;
}

uint64_t _s11MediaCoreUI19NowPlayingViewModelC16DurationSnapshotV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (*(a1 + 24))
  {
    if (v5 != v8)
    {
      v6 = 0;
    }

    if (v6 != 1 || v4 != v7)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v5 != v8 || v4 != v7)
    {
      return 0;
    }
  }

  return *(a1 + 48) ^ *(a2 + 48) ^ 1u;
}

uint64_t sub_1C5B45C68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1C5B45D60(uint64_t a1)
{
  sub_1C59BA0C8(319);
  if (v1 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v2 <= 0x3F)
    {
      sub_1C594F100(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5B45E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B45F08()
{
  result = qword_1EDA46DD0;
  if (!qword_1EDA46DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46DD0);
  }

  return result;
}

uint64_t sub_1C5B45F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(_s21LegacyTimeControlViewVMa(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5B43220(a1, v9, v6, v7, a3);
}

unint64_t sub_1C5B4606C()
{
  result = qword_1EDA45F30;
  if (!qword_1EDA45F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F30);
  }

  return result;
}

unint64_t sub_1C5B460EC()
{
  result = qword_1EDA46020;
  if (!qword_1EDA46020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989D8, &qword_1C5BEC420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46020);
  }

  return result;
}

uint64_t sub_1C5B46190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B46210()
{
  result = qword_1EC198A78;
  if (!qword_1EC198A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198A68, &qword_1C5BEC4D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AD8, &unk_1C5BDCEC0);
    sub_1C5A48F48();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EC198A80, &qword_1EC198A70, &qword_1C5BEC4E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198A78);
  }

  return result;
}

double NowPlayingViews.artwork.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v8 = sub_1C5A4D7D8();
  v9 = v3 & 1;
  v5 = _s24HeaderArtworkPlaceholderVMa(0, v1, v2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v8, v5, WitnessTable);

  v8 = v10;
  v9 = v11;
  sub_1C593EDC0(&v8, v5, WitnessTable);

  return result;
}

uint64_t NowPlayingViews.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(*(a1 + 24) + 224))(*(a1 + 16), *(a1 + 24));
  result = sub_1C5BC8C84();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v5;
  return result;
}

double DeviceMetrics.padding.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 18);
  v8 = *v1;
  v9 = *(v1 + 8);
  if (v3)
  {
    v10 = v3;
    v11 = *(v1 + 19);
    v12 = *(v1 + 35);
    *v13 = *(v1 + 51);
    *&v13[14] = *(v1 + 65);
    sub_1C5B4B10C(&v6);
  }

  else
  {
    v10 = 0;
    v11 = *(v1 + 19);
    v12 = *(v1 + 35);
    *v13 = *(v1 + 51);
    *&v13[14] = *(v1 + 65);
    sub_1C5B4B00C(&v6);
  }

  result = *&v6;
  v5 = v7;
  *a1 = v6;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1C5B46508@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v4;
  result = swift_getKeyPath("h}[&");
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  return result;
}

double sub_1C5B46548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  _s36FullScreenContentView_CompactRegularVMa(255, v8, v9, a4);
  _s37FullScreenContentView_RegularExtendedVMa(255, v8, v9, v4);
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1C5BCA574();
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v5 = sub_1C5BCA584();
  v6 = swift_getWitnessTable();
  sub_1C593EDC0(&v10, v5, v6);
  sub_1C5B4B89C(v10, *(&v10 + 1), v11, v12, v13);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  sub_1C593EDC0(&v18, v5, v6);
  return sub_1C5B4B89C(v18, *(&v18 + 1), v19, v20, v21);
}

double sub_1C5B46760(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v88 = a1;
  }

  else
  {
    sub_1C5950E48(a1, 0);
    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v14 = sub_1C5950E44(a1, 0);
    (*(v9 + 8))(v12, v8, v14);
    LOBYTE(a1) = v88;
  }

  v15 = MEMORY[0x1E6981E60];
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      sub_1C5B0633C(&v84);
      v68 = v84;
      v69 = v85;
      v70 = v86;
      v27 = _s37FullScreenContentView_RegularExtendedVMa(0, a3, a4, v26);
      WitnessTable = swift_getWitnessTable();
      v57 = v27;
      v29 = WitnessTable;
      v58 = WitnessTable;
      sub_1C593EDC0(&v68, v27, WitnessTable);
      sub_1C59CC0D8(v68, *(&v68 + 1), v69, v70);
      v30 = v75;
      v31 = v76;
      v59 = a4;
      v32 = v77;
      v84 = v75;
      v85 = v76;
      LOBYTE(v86) = v77;
      sub_1C593EDC0(&v84, v27, v29);
      v33 = a3;
      v34 = *(&v84 + 1);
      v35 = v84;
      v36 = v85;
      LOBYTE(v27) = v86;
      v37 = v31;
      v15 = MEMORY[0x1E6981E60];
      a4 = v59;
      sub_1C5B4B8BC(v30, *(&v30 + 1), v37, v32);
      v38 = v35;
      a3 = v33;
      sub_1C59CC0D8(v38, v34, v36, v27);
      v84 = v72;
      v85 = v73;
      LOBYTE(v86) = v74;
      sub_1C5B4B8BC(v72, *(&v72 + 1), v73, v74);
      v40 = _s36FullScreenContentView_CompactRegularVMa(0, v33, a4, v39);
      v41 = swift_getWitnessTable();
      v42 = v58;
      sub_1C5941738(&v84, v40, v57, v41, v58);
      sub_1C59CC0D8(v84, *(&v84 + 1), v85, v86);
      v64 = v68;
      v65 = v69;
      v66 = v70;
      v67 = v71;
      v43 = sub_1C5BC92D4();
      v62 = v41;
      v63 = v42;
      v44 = swift_getWitnessTable();
      sub_1C5950E54(&v64, v43, MEMORY[0x1E6981E70], v44, MEMORY[0x1E6981E60]);
      sub_1C5B4B8AC(v64, *(&v64 + 1), v65, v66, v67);
      sub_1C59CC0D8(v72, *(&v72 + 1), v73, v74);
      sub_1C59CC0D8(v75, *(&v75 + 1), v76, v77);
    }

    else
    {
      _s36FullScreenContentView_CompactRegularVMa(255, a3, a4, v10);
      _s37FullScreenContentView_RegularExtendedVMa(255, a3, a4, v45);
      v46 = sub_1C5BC92D4();
      v47 = swift_getWitnessTable();
      v48 = swift_getWitnessTable();
      v82 = v47;
      v83 = v48;
      v49 = swift_getWitnessTable();
      sub_1C5941738(v49, v46, MEMORY[0x1E6981E70], v49, MEMORY[0x1E6981E60]);
    }
  }

  else
  {
    CGSizeMake();
    v17 = _s36FullScreenContentView_CompactRegularVMa(0, a3, a4, v16);
    v18 = swift_getWitnessTable();
    v19 = sub_1C593EDC0(v18, v17, v18);
    sub_1C593EDC0(v19, v17, v18);
    v21 = _s37FullScreenContentView_RegularExtendedVMa(0, a3, a4, v20);
    v22 = swift_getWitnessTable();
    sub_1C5950E54(v22, v17, v21, v18, v22);
    v64 = v68;
    v65 = v69;
    v66 = v70;
    v67 = v71;
    v23 = sub_1C5BC92D4();
    v60 = v18;
    v61 = v22;
    v24 = swift_getWitnessTable();
    sub_1C5950E54(&v64, v23, MEMORY[0x1E6981E70], v24, MEMORY[0x1E6981E60]);
    sub_1C5B4B8AC(v64, *(&v64 + 1), v65, v66, v67);
  }

  _s36FullScreenContentView_CompactRegularVMa(255, a3, a4, v25);
  _s37FullScreenContentView_RegularExtendedVMa(255, a3, a4, v50);
  sub_1C5BC92D4();
  v51 = sub_1C5BC92D4();
  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v80 = v52;
  v81 = v53;
  v78 = swift_getWitnessTable();
  v79 = v15;
  v54 = swift_getWitnessTable();
  sub_1C593EDC0(&v84, v51, v54);
  return sub_1C5B4B89C(v84, *(&v84 + 1), v85, v86, v87);
}

uint64_t sub_1C5B46EC0@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath("h}[&");
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1C5B46EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v85 = sub_1C5BC9374();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC8F34();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BC92E4();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BB0, &qword_1C5BECA18);
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BB8, &qword_1C5BECA20);
  v72 = *(v20 - 8);
  v73 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v63 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BC0, &qword_1C5BECA28);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v63 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BC8, &qword_1C5BECA30);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v63 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BD0, &qword_1C5BECA38);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v63 - v24;
  if (qword_1EC1908D0 != -1)
  {
    swift_once();
  }

  v94[0] = xmmword_1EC1A6D80;
  v94[1] = *&qword_1EC1A6D90;
  v95 = qword_1EC1A6DA0;
  (*(v14 + 16))(&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = swift_allocObject();
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  *(v26 + 16) = v28;
  *(v26 + 24) = v27;
  v29 = (*(v14 + 32))(v26 + v25, &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  MEMORY[0x1EEE9AC00](v29);
  *(&v63 - 4) = v28;
  *(&v63 - 3) = v27;
  *(&v63 - 2) = v94;
  *(&v63 - 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BD8, &unk_1C5BECA40);
  sub_1C5B4B958();
  sub_1C5BCA6E4();
  v30 = v69;
  sub_1C5BC8C54();
  sub_1C5924F54(&qword_1EC198BF8, &qword_1EC198BB0, &qword_1C5BECA18, MEMORY[0x1E697D680]);
  sub_1C5B4BDD4(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v31 = v66;
  v32 = v68;
  v33 = v71;
  sub_1C5BC9E04();
  (*(v70 + 8))(v30, v33);
  (*(v67 + 8))(v19, v32);
  v34 = sub_1C5BC98A4();
  *&v97[10] = *(v3 + 74);
  v35 = v3[4];
  v96[2] = v3[3];
  *v97 = v35;
  v36 = v3[2];
  v96[0] = v3[1];
  v96[1] = v36;
  if (v97[25])
  {
    v37 = v3[3];
    v93[0] = v3[4];
    *(v93 + 9) = *(v3 + 73);
    v38 = v3[1];
    v91 = v3[2];
    v92 = v37;
    v90 = v38;
  }

  else
  {

    sub_1C5BCB4E4();
    v39 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v40 = v63;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B4BA10(v96);
    (*(v64 + 8))(v40, v65);
  }

  v41 = v74;
  v88 = v92;
  v89[0] = v93[0];
  *(v89 + 9) = *(v93 + 9);
  v86 = v90;
  v87 = v91;
  sub_1C5B48084();
  sub_1C5BC8174();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v75;
  (*(v72 + 32))(v75, v31, v73);
  v51 = v50 + *(v41 + 36);
  *v51 = v34;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  *&v86 = sub_1C5BCAE94();
  *(&v86 + 1) = v53;
  sub_1C5B4BA78();
  sub_1C594A23C();
  v54 = v77;
  sub_1C5BCA034();

  sub_1C5924EF4(v50, &qword_1EC198BC0, &qword_1C5BECA28);
  v55 = [objc_opt_self() mainBundle];
  v56 = sub_1C5949F2C();
  v58 = v57;

  *&v86 = v56;
  *(&v86 + 1) = v58;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD00000000000001BLL, 0x80000001C5BFC3F0);
  sub_1C5B4BBC4();
  v59 = v79;
  sub_1C5BCA164();

  sub_1C5924EF4(v54, &qword_1EC198BC8, &qword_1C5BECA30);
  v60 = v82;
  sub_1C5BC9364();
  sub_1C5B4BBF4(&qword_1EC198C10, &qword_1EC198BD0, &qword_1C5BECA38, sub_1C5B4BBC4);
  sub_1C5B4BDD4(&qword_1EC1987A8, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v61 = v85;
  sub_1C5BC9DA4();
  (*(v83 + 8))(v60, v61);
  return sub_1C5924EF4(v59, &qword_1EC198BD0, &qword_1C5BECA38);
}

uint64_t sub_1C5B479A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*a1, a1[1], a2, *(a3 + 8));
  v6 = 0;
  swift_unknownObjectRetain();
  NowPlayingController.transition(to:animated:)(&v6, 1, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5B47A20@<X0>(double *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = sub_1C5BCA484();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v7 = sub_1C5BCAA34();
  v9 = v8;
  v10 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BD8, &unk_1C5BECA40) + 36);
  sub_1C5B47B34(a1, a3, a4, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BF0, &unk_1C5BECA50);
  v12 = (v10 + *(result + 36));
  *v12 = v7;
  v12[1] = v9;
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17;
  *(a5 + 24) = v18;
  *(a5 + 32) = v19;
  *(a5 + 40) = v20;
  *(a5 + 48) = v21;
  return result;
}

uint64_t sub_1C5B47B34@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v49 = a3;
  v48 = a2;
  v55 = a4;
  v50 = sub_1C5BC90F4();
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &KeyPath - v9;
  v53 = sub_1C5BC8284();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C18, &qword_1C5BECA60);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &KeyPath - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C20, &qword_1C5BECA68);
  MEMORY[0x1EEE9AC00](v47);
  v17 = &KeyPath - v16;
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C5BC9044();
  (*(*(v19 - 8) + 104))(v15, v18, v19);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C28, &qword_1C5BECA70) + 36)];
  v21 = v60;
  *v20 = v59;
  *(v20 + 1) = v21;
  *(v20 + 2) = v61;
  v22 = *(a1 + 3);
  v23 = [objc_opt_self() systemGrayColor];
  v57 = sub_1C5BCA424();
  v58 = v22;
  v54 = a1;
  sub_1C5B4BCA8(a1, v56);

  v24 = sub_1C5BC85E4();
  v25 = sub_1C5BC85E4();

  v26 = &v15[*(v13 + 44)];
  *v26 = v24;
  v26[1] = v25;
  KeyPath = swift_getKeyPath(byte_1C5BEC700);
  _s19HeaderDismissButtonVMa(0, v48, v49, v27);
  sub_1C594C704(v10);
  v28 = v50;
  (*(v5 + 104))(v7, *MEMORY[0x1E697F600], v50);
  LOBYTE(v13) = sub_1C5BC8274();
  v29 = *(v5 + 8);
  v29(v7, v28);
  v29(v10, v28);
  if (v13)
  {
    v30 = v51;
    v32 = v52;
    v31 = v53;
    (*(v51 + 104))(v52, *MEMORY[0x1E697DBB8], v53);
  }

  else
  {
    v32 = v52;
    sub_1C59421E4(v52);
    v31 = v53;
    v30 = v51;
  }

  v33 = &v17[*(v47 + 36)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130, &qword_1C5BEA710);
  (*(v30 + 32))(v33 + *(v34 + 28), v32, v31);
  *v33 = KeyPath;
  sub_1C59E7D34(v15, v17, &qword_1EC198C18, &qword_1C5BECA60);
  LOBYTE(v33) = sub_1C5BC9894();
  sub_1C5BC8174();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v55;
  sub_1C59E7D34(v17, v55, &qword_1EC198C20, &qword_1C5BECA68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C30, &qword_1C5BECA78);
  v45 = v43 + *(result + 36);
  *v45 = v33;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

void sub_1C5B48084()
{
  if (*(v0 + 18) <= 1u && !*(v0 + 18) && *(v0 + 17) && *(v0 + 17) == 1)
  {
    v1 = [objc_opt_self() currentTraitCollection];
    [v1 displayScale];
  }
}

uint64_t sub_1C5B4816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v6;
  *(a3 + 16) = swift_getKeyPath(" ~[&");
  *(a3 + 89) = 0;
  v8 = _s19HeaderDismissButtonVMa(0, a1, a2, v7);
  v9 = *(v8 + 40);
  *(a3 + v9) = swift_getKeyPath(byte_1C5BEC700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 44);
  *(a3 + v10) = swift_getKeyPath(byte_1C5BEC738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B4825C(uint64_t a1)
{
  _s7ArtworkCMa();
  sub_1C5B4BDD4(qword_1EDA49C50, _s7ArtworkCMa, &unk_1C5BDD54C);

  return sub_1C5BC88C4();
}

uint64_t sub_1C5B482DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v33 = a1;
  v41 = a3;
  v5 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC90D4();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s27DefaultArtworkContainerViewVMa(255, a1, a2, v12);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  v13 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v14 = sub_1C5BC8AB4();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v32 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v32 - v20;
  v48 = sub_1C5BCA484();
  sub_1C5BCAA34();
  v42 = v33;
  v43 = a2;
  v21 = MEMORY[0x1E6981580];
  sub_1C5BCA2C4();

  sub_1C5BC9094();
  WitnessTable = swift_getWitnessTable();
  v46 = v21;
  v47 = WitnessTable;
  v23 = swift_getWitnessTable();
  sub_1C5BCA134();
  (*(v35 + 8))(v11, v36);
  (*(*(v13 - 8) + 8))(v49, v13);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v49[0] = sub_1C5BCAE94();
  v49[1] = v25;
  sub_1C594A23C();
  v26 = v37;
  sub_1C5BC8A14();

  v27 = *(v39 + 8);
  v27(v16, v14);
  v28 = sub_1C5B4BDD4(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v44 = v23;
  v45 = v28;
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_1C593EDC0(v26, v14, v29);
  v27(v26, v14);
  sub_1C593EDC0(v30, v14, v29);
  return (v27)(v30, v14);
}

uint64_t sub_1C5B48818(uint64_t a1, uint64_t a2)
{
  sub_1C5A5D810(v9);
  v5 = _s27DefaultArtworkContainerViewVMa(0, a1, a2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v9, v5, WitnessTable);
  v7 = *(*(v5 - 8) + 8);
  v7(v9, v5);
  sub_1C593EDC0(v10, v5, WitnessTable);
  return (v7)(v10, v5);
}

uint64_t sub_1C5B48908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v30 = *(a1 + 16);
  v31 = a3;
  v29 = v4;
  _s19DefaultMetadataViewVMa(255, v30, v4, a2);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s15ContextMenuViewVMa(255, v30, v4, v5);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC89E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v6 = sub_1C5BCA714();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = v6;
  v42 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v27 = sub_1C5BC8BE4();
  v8 = sub_1C5BC8AB4();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v25 = *v3;
  v18 = *(v3 + 2);
  v19 = *(v3 + 24);
  v41 = sub_1C5BCA484();
  sub_1C5BCAA44();
  v32 = v30;
  v33 = v29;
  v34 = v25;
  v35 = v18;
  v36 = v19;
  sub_1C5BCA2C4();

  sub_1C5BCAA54();
  v20 = swift_getWitnessTable();
  v39 = MEMORY[0x1E6981580];
  v40 = v20;
  v21 = swift_getWitnessTable();
  sub_1C5BCA234();
  (*(v28 + 8))(v10, v8);
  v37 = v21;
  v38 = MEMORY[0x1E697E040];
  v22 = swift_getWitnessTable();
  sub_1C593EDC0(v14, v11, v22);
  v23 = *(v12 + 8);
  v23(v14, v11);
  sub_1C593EDC0(v17, v11, v22);
  return (v23)(v17, v11);
}

uint64_t sub_1C5B48E40@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a2;
  v53 = a7;
  v54 = a1;
  v11 = sub_1C5BC96A4();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5BC8F34();
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19DefaultMetadataViewVMa(255, a5, a6, v15);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v55 = a5;
  v57 = a6;
  v17 = _s15ContextMenuViewVMa(255, a5, a6, v16);
  WitnessTable = swift_getWitnessTable();
  v62 = v17;
  v63 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = sub_1C5BC89E4();
  v62 = v17;
  v63 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v62 = OpaqueTypeMetadata2;
  v63 = v20;
  v64 = OpaqueTypeConformance2;
  v65 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v23 = sub_1C5BCAB74();
  v50 = swift_getWitnessTable();
  v51 = v23;
  v24 = sub_1C5BCA714();
  v52 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v27 = swift_getWitnessTable();
  v62 = v24;
  v63 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v47 - v33;
  v58 = a4;
  if (a4)
  {
    v35 = a3;
    if (a3 == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v36 = a3;
    sub_1C5950E48(a3, 0);
    sub_1C5BCB4E4();
    v37 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v38 = v47;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v39 = sub_1C5950E44(v36, 0);
    (*(v48 + 8))(v38, v49, v39);
    v35 = v62;
    a3 = v36;
    if (v62 == 3)
    {
LABEL_7:
      v40 = sub_1C5BC8FC4();
      goto LABEL_8;
    }
  }

  if (v35 != 1)
  {
    goto LABEL_7;
  }

  v40 = sub_1C5BC8F94();
LABEL_8:
  MEMORY[0x1EEE9AC00](v40);
  v41 = v57;
  *(&v47 - 6) = v55;
  *(&v47 - 5) = v41;
  v42 = v56;
  *(&v47 - 4) = v54;
  *(&v47 - 3) = v42;
  *(&v47 - 2) = a3;
  *(&v47 - 8) = v58 & 1;
  sub_1C5BCA704();
  v43 = v59;
  sub_1C5BC9694();
  sub_1C5BCA0C4();
  (*(v60 + 8))(v43, v61);
  (*(v52 + 8))(v26, v24);
  v62 = v24;
  v63 = v27;
  v44 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v31, v28, v44);
  v45 = *(v29 + 8);
  v45(v31, v28);
  sub_1C593EDC0(v34, v28, v44);
  return (v45)(v34, v28);
}

uint64_t sub_1C5B49484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v99 = a5;
  v9 = sub_1C5BC89E4();
  v83 = v9;
  v98 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C5BC89B4();
  v95 = *(v11 - 8);
  v96 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s15ContextMenuViewVMa(0, a3, a4, v13);
  v94 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v67 - v15;
  WitnessTable = swift_getWitnessTable();
  v107 = v14;
  v108 = WitnessTable;
  v78 = v14;
  v79 = WitnessTable;
  v17 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = OpaqueTypeMetadata2;
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v77 = &v67 - v19;
  v107 = v14;
  v108 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = OpaqueTypeConformance2;
  v80 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v107 = OpaqueTypeMetadata2;
  v108 = v9;
  v109 = OpaqueTypeConformance2;
  v110 = v80;
  v87 = MEMORY[0x1E697CDE0];
  v85 = swift_getOpaqueTypeMetadata2();
  v90 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v73 = &v67 - v21;
  v76 = sub_1C5BC8AB4();
  v91 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v67 - v22;
  sub_1C5BC97C4();
  v86 = sub_1C5BC8AB4();
  v88 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v75 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v67 - v25;
  v68 = a4;
  v72 = _s19DefaultMetadataViewVMa(255, a3, a4, v26);
  v27 = sub_1C5BC8AB4();
  v28 = *(v27 - 8);
  v101 = v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v103 = &v67 - v31;
  v32 = *(a4 + 8);
  sub_1C59498C4(a1, a2, a3, v32);
  v33 = *(a4 + 224);
  swift_unknownObjectRetain();
  v33(a3, a4);
  swift_unknownObjectRelease();

  sub_1C59498C4(a1, a2, a3, v32);
  swift_unknownObjectRetain();
  v34 = v68;
  v33(a3, v68);
  swift_unknownObjectRelease();

  v35 = v34;
  sub_1C59DD5C4(&v107);
  v36 = v72;
  v37 = swift_getWitnessTable();
  v38 = v100;
  sub_1C5BCA184();
  (*(*(v36 - 8) + 8))(&v107, v36);
  v69 = sub_1C5B4BDD4(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v106[6] = v37;
  v106[7] = v69;
  v39 = v101;
  v70 = swift_getWitnessTable();
  sub_1C593EDC0(v38, v39, v70);
  v71 = *(v102 + 8);
  v72 = v102 + 8;
  v71(v38, v39);
  v40 = v89;
  sub_1C5A309FC(a3, v35, v89);
  v42 = v95;
  v41 = v96;
  v43 = v93;
  (*(v95 + 104))(v93, *MEMORY[0x1E697E6E8], v96);
  v45 = v77;
  v44 = v78;
  sub_1C5BC9F44();
  (*(v42 + 8))(v43, v41);
  (*(v94 + 8))(v40, v44);
  v46 = v97;
  sub_1C5BC8C44();
  v47 = v73;
  v49 = v82;
  v48 = v83;
  v51 = v80;
  v50 = v81;
  sub_1C5BC9E04();
  (*(v98 + 8))(v46, v48);
  (*(v92 + 8))(v45, v49);
  sub_1C5BC8F94();
  v107 = v49;
  v108 = v48;
  v109 = v50;
  v110 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v74;
  v54 = v85;
  sub_1C5BC9F04();
  (*(v90 + 8))(v47, v54);
  v106[4] = v52;
  v106[5] = MEMORY[0x1E69805A0];
  v55 = v76;
  v56 = swift_getWitnessTable();
  v57 = v75;
  sub_1C5BCA184();
  (*(v91 + 8))(v53, v55);
  v106[2] = v56;
  v106[3] = v69;
  v58 = v86;
  v59 = swift_getWitnessTable();
  v60 = v84;
  sub_1C593EDC0(v57, v58, v59);
  v61 = v88;
  v62 = *(v88 + 8);
  v62(v57, v58);
  v63 = v100;
  v64 = v101;
  (*(v102 + 16))(v100, v103, v101);
  v107 = v63;
  (*(v61 + 16))(v57, v60, v58);
  v108 = v57;
  v106[0] = v64;
  v106[1] = v58;
  v104 = v70;
  v105 = v59;
  sub_1C594226C(&v107, 2uLL, v106);
  v62(v60, v58);
  v65 = v71;
  v71(v103, v64);
  v62(v57, v58);
  return v65(v63, v64);
}

uint64_t sub_1C5B49F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a2;
  v22 = a3;
  v23 = a6;
  _s18HeaderMetadataViewVMa(255, a4, a5, a4);
  _s15ContextMenuViewVMa(255, a4, a5, v9);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = sub_1C5BC89E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v10 = sub_1C5BCA714();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1C5BC8FC4();
  v24 = a4;
  v25 = a5;
  v26 = a1;
  v27 = v21;
  v28 = v22;
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1C593EDC0(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_1C5B4A200@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v61 = a4;
  v6 = sub_1C5BC89E4();
  v50 = v6;
  *&v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC89B4();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15ContextMenuViewVMa(0, a2, a3, v10);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v42 - v12;
  WitnessTable = swift_getWitnessTable();
  v69 = v11;
  v70 = WitnessTable;
  v14 = WitnessTable;
  v47 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v46 = &v42 - v16;
  v69 = v11;
  v70 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = OpaqueTypeConformance2;
  v48 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v69 = OpaqueTypeMetadata2;
  v70 = v6;
  *&v71 = OpaqueTypeConformance2;
  *(&v71 + 1) = v48;
  v51 = MEMORY[0x1E697CDE0];
  v18 = swift_getOpaqueTypeMetadata2();
  v52 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v42 - v22;

  v66 = sub_1C59DDD40(v23, a2, a3);
  v67 = v24;
  *&v68 = v25;
  *(&v68 + 1) = v26;
  v27 = _s18HeaderMetadataViewVMa(0, a2, a3, v26);
  v43 = v27;
  v44 = swift_getWitnessTable();
  sub_1C593EDC0(&v66, v27, v44);

  swift_unknownObjectRelease();
  v28 = v53;
  sub_1C5A309FC(a2, a3, v53);
  v30 = v57;
  v29 = v58;
  v31 = v55;
  (*(v57 + 104))(v55, *MEMORY[0x1E697E6E8], v58);
  v32 = v46;
  sub_1C5BC9F44();
  (*(v30 + 8))(v31, v29);
  (*(v56 + 8))(v28, v11);
  v33 = v59;
  sub_1C5BC8C44();
  v34 = v50;
  v35 = v49;
  v36 = v48;
  sub_1C5BC9E04();
  (*(v60 + 8))(v33, v34);
  (*(v54 + 8))(v32, OpaqueTypeMetadata2);
  v66 = OpaqueTypeMetadata2;
  v67 = v34;
  *&v68 = v35;
  *(&v68 + 1) = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v45;
  sub_1C593EDC0(v20, v18, v37);
  v39 = v52;
  v40 = *(v52 + 8);
  v40(v20, v18);
  v66 = v69;
  v67 = v70;
  v60 = v71;
  v68 = v71;
  v65[0] = &v66;
  (*(v39 + 16))(v20, v38, v18);
  v65[1] = v20;
  swift_unknownObjectRetain();

  v64[0] = v43;
  v64[1] = v18;
  v62 = v44;
  v63 = v37;
  sub_1C594226C(v65, 2uLL, v64);
  v40(v38, v18);
  swift_unknownObjectRelease();

  v40(v20, v18);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5B4A8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v3 = sub_1C5BC90F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1C5BC8284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlayingColorSchemeModifier(0);
  v24 = v2;
  sub_1C594C704(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E697F600], v3);
  v14 = sub_1C5BC8274();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  if (v14 & 1) != 0 || (sub_1C59416B4(v27), v16 = v28, __swift_project_boxed_opaque_existential_0(v27, v28), LOBYTE(v16) = sub_1C596CB78(v16), __swift_destroy_boxed_opaque_existential_0(v27), (v16))
  {
    (*(v11 + 104))(v13, *MEMORY[0x1E697DBA8], v10);
  }

  else
  {
    sub_1C59421E4(v13);
  }

  KeyPath = swift_getKeyPath("@{[&");
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BA0, &unk_1C5BECA00);
  v19 = v25;
  v20 = (v25 + *(v18 + 36));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130, &qword_1C5BEA710);
  (*(v11 + 32))(v20 + *(v21 + 28), v13, v10);
  *v20 = KeyPath;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BA8, &qword_1C5BECA10);
  return (*(*(v22 - 8) + 16))(v19, v26, v22);
}

uint64_t sub_1C5B4ABDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingColorSchemeModifier(0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = swift_getKeyPath(byte_1C5BEC700, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v8 = *(v4 + 20);
  *(v7 + v8) = swift_getKeyPath(byte_1C5BEC738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v9 = v7 + *(v4 + 24);
  *v9 = swift_getKeyPath(byte_1C5BEC770);
  v9[40] = 0;
  MEMORY[0x1C694E550](v7, a1, v4, a2);
  return sub_1C5B4B494(v7);
}

uint64_t sub_1C5B4AD14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v11 - v1);
  v3 = sub_1C5BCA9E4();
  MEMORY[0x1EEE9AC00](v3);
  if (_UISolariumEnabled())
  {
    sub_1C5BCA9B4();
    result = sub_1C5BC85E4();
    v5 = xmmword_1C5BEC530;
    v6 = 13.0;
  }

  else
  {
    if (qword_1EC190678 != -1)
    {
      swift_once();
    }

    v7 = qword_1EC1A6AC0;
    v8 = *(v0 + 36);
    v9 = *MEMORY[0x1E6981DB8];
    v10 = sub_1C5BCAB54();
    (*(*(v10 - 8) + 104))(v2 + v8, v9, v10);
    *v2 = v7;
    sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);

    result = sub_1C5BC85E4();
    v5 = xmmword_1C5BEC520;
    v6 = 10.0;
  }

  xmmword_1EC1A6D80 = v5;
  qword_1EC1A6D90 = *&v6;
  qword_1EC1A6D98 = result;
  qword_1EC1A6DA0 = 0x4040000000000000;
  return result;
}

double static DeviceMetrics.Padding.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EC1908D8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EC198A98;
  *a1 = xmmword_1EC198A88;
  *(a1 + 16) = result;
  return result;
}

void sub_1C5B4B00C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  if (v2 == 9)
  {
    goto LABEL_2;
  }

  v4 = *(v1 + 24);
  if ((*(v1 + 32) & 1) == 0 && v4 == 1 || !*(v1 + 17))
  {
    v3 = 33.0;
    goto LABEL_17;
  }

  if (v2 != 3 || (v4 ? (v5 = 1) : (v5 = *(v1 + 32)), (v5 & 1) != 0))
  {
LABEL_2:
    v3 = 19.0;
  }

  else
  {
    v6 = a1;
    v7 = [objc_opt_self() currentTraitCollection];
    [v7 displayScale];
    v9 = v8;

    v10 = 1.0;
    if (v9 >= 1.0)
    {
      v10 = v9;
      if ((~*&v9 & 0x7FF0000000000000) == 0)
      {
        v10 = 1.0;
        if ((*&v9 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v10 = v9;
        }
      }
    }

    v3 = 1.0 / v10 + 17.0;
    a1 = v6;
  }

LABEL_17:
  *a1 = xmmword_1C5BDB0F0;
  *(a1 + 16) = v3;
}

void sub_1C5B4B10C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 17);
  v4 = *(v1 + 18);
  if (v4 != 1)
  {
    v7 = [objc_opt_self() currentTraitCollection];
    [v7 displayScale];
    v9 = v8;

    v10 = 1.0;
    if (v9 >= 1.0)
    {
      v10 = v9;
      if ((~*&v9 & 0x7FF0000000000000) == 0)
      {
        v10 = 1.0;
        if ((*&v9 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v10 = v9;
        }
      }
    }

    v6 = 1.0 / v10 + 54.0;
    v5 = 0.0;
    if (v4 && v4 != 3)
    {
      if (v3 <= 4 && ((1 << v3) & 0x16) != 0)
      {
        v5 = 34.0;
      }

      else
      {
        v5 = 14.0;
      }
    }

    goto LABEL_29;
  }

  v5 = 25.0;
  if (*(v1 + 17) <= 3u)
  {
    if (v3 - 1 >= 2)
    {
      v6 = 80.0;
      if (*(v1 + 17) && v3 != 3)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

LABEL_24:
    v6 = 80.0;
    v5 = 45.0;
    goto LABEL_29;
  }

  if (v3 == 4)
  {
    goto LABEL_24;
  }

  if (v3 == 6)
  {
    *&v15 = 79.0;
    goto LABEL_27;
  }

  if (v3 != 5)
  {
LABEL_25:
    *&v15 = 80.0;
LABEL_27:
    v6 = *&v15;
    v5 = 27.0;
    goto LABEL_29;
  }

  v11 = [objc_opt_self() currentTraitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 1.0;
  if (v13 >= 1.0)
  {
    v14 = v13;
    if ((~*&v13 & 0x7FF0000000000000) == 0)
    {
      v14 = 1.0;
      if ((*&v13 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v14 = v13;
      }
    }
  }

  v6 = 1.0 / v14 + 80.0;
LABEL_29:
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
}

uint64_t sub_1C5B4B300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_witness_table_11MediaCoreUI20NowPlayingControllerRzlAA0dE4ViewV24HeaderArtworkPlaceholderVyx_G05SwiftC00G0HPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_1C5B4B3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for NowPlayingColorSchemeModifier(uint64_t a1)
{
  result = qword_1EDA477B0;
  if (!qword_1EDA477B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5B4B494(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingColorSchemeModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C5B4B500(uint64_t a1)
{
  v1 = *(a1 + 17);
  v2 = *(a1 + 18);
  if (qword_1EC1908D0 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_1EC1A6D80 + 1);
  if (v2 > 1)
  {
    v8 = 0.0;
    v9 = 6.0;
    if (v1 < 3)
    {
      v9 = 12.0;
    }

    if (v2 == 2)
    {
      v8 = v9;
    }
  }

  else
  {
    if (v2)
    {
      goto LABEL_17;
    }

    if (!v1)
    {
      v8 = 12.0;
      return v3 + v8;
    }

    if (v1 != 1)
    {
LABEL_17:
      v8 = 6.0;
    }

    else
    {
      v4 = [objc_opt_self() currentTraitCollection];
      [v4 displayScale];
      v6 = v5;

      v7 = 1.0;
      if (v6 >= 1.0)
      {
        v7 = v6;
        if ((~*&v6 & 0x7FF0000000000000) == 0)
        {
          v7 = 1.0;
          if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v7 = v6;
          }
        }
      }

      v8 = 1.0 / v7 + 5.0;
    }
  }

  return v3 + v8;
}

void sub_1C5B4B674(uint64_t a1)
{
  sub_1C592EF38(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_1C5B4B748(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5B4B748(uint64_t a1)
{
  if (!qword_1EDA46778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC19A460, &unk_1C5BDD000);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46778);
    }
  }
}

uint64_t sub_1C5B4B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1C5B4B89C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_1C5B4B8AC(result, a2, a3, a4, BYTE1(a4) & 1);
  }

  return v5;
}

double sub_1C5B4B8AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
    return sub_1C59CC0D8(a1, a2, a3, a4 & 1);
  }

  return result;
}

double sub_1C5B4B8BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C5B4B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s19HeaderDismissButtonVMa(0, v5, v6, a4) - 8);
  v8 = (v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return sub_1C5B479A0(v8, v5, v6);
}

unint64_t sub_1C5B4B958()
{
  result = qword_1EC198BE0;
  if (!qword_1EC198BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BD8, &unk_1C5BECA40);
    sub_1C594C97C();
    sub_1C5924F54(&qword_1EC198BE8, &qword_1EC198BF0, &unk_1C5BECA50, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198BE0);
  }

  return result;
}

uint64_t sub_1C5B4BA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194DE0, &qword_1C5BDCD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5B4BA78()
{
  result = qword_1EC198C00;
  if (!qword_1EC198C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BC0, &qword_1C5BECA28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BB0, &qword_1C5BECA18);
    sub_1C5BC92E4();
    sub_1C5924F54(&qword_1EC198BF8, &qword_1EC198BB0, &qword_1C5BECA18, MEMORY[0x1E697D680]);
    sub_1C5B4BDD4(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198C00);
  }

  return result;
}

uint64_t sub_1C5B4BBF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1C5B4BDD4(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B4BCF0()
{
  result = qword_1EC198C38;
  if (!qword_1EC198C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BA0, &unk_1C5BECA00);
    sub_1C5924F54(&qword_1EC198C40, &qword_1EC198BA8, &qword_1C5BECA10, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130, &qword_1C5BEA710, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198C38);
  }

  return result;
}

uint64_t sub_1C5B4BDD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5B4BE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B4BE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B4BFA4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C5BC8F34() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((((((((*(v6 + 64) + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
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
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 16] & ~v11, v7, v5);
  }

  else
  {
    v21 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }
}

void sub_1C5B4C204(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC8F34() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((((((*(v8 + 64) + ((v13 + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
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
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((a1 + v13 + 16) & ~v13, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        *a1 = (a2 - 1);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *(a1 + v15) = v20;
      }

      else
      {
        *(a1 + v15) = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1C5B4C4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v88 = a7;
  v76 = a6;
  v75 = a4;
  v86 = a3;
  v85 = a2;
  v82 = a1;
  v87 = a8;
  v12 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  v83 = *(v12 - 8);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a4;
  v93 = a5;
  v74 = a5;
  v94 = a6;
  v95 = a7;
  v79 = _s23MiniPlayerAccessoryViewVMa(0, &v92);
  v78 = *(v79 - 8);
  v80 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = v63 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C48, &qword_1C5BECD60);
  _s24BackwardsTransportButtonVMa(255, a4, a6, v15);
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa(255, a4, a6, v16);
  sub_1C5BC92D4();
  v66 = _s23ForwardsTransportButtonVMa(255, a4, a6, v17);
  type metadata accessor for NowPlayingRouteButton.Content(255);
  v67 = sub_1C5BC92D4();
  v64 = sub_1C5BC92D4();
  v65 = _s15ContextMenuViewVMa(255, a4, a6, v18);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC92D4();
  v68 = sub_1C5BC92D4();
  v69 = sub_1C5BC92D4();
  v70 = sub_1C5BCA584();
  v71 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980, &qword_1C5BD5EC0);
  v72 = sub_1C5BC8AB4();
  v73 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v119 = WitnessTable;
  v120 = v20;
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v23 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
  v117 = v22;
  v118 = v23;
  v24 = swift_getWitnessTable();
  v115 = v21;
  v116 = v24;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getWitnessTable();
  v112 = v26;
  v113 = v27;
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x1E6981E60];
  v28 = swift_getWitnessTable();
  v108 = v25;
  v109 = v28;
  v107 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v106 = v88;
  v29 = swift_getWitnessTable();
  v30 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
  v103 = v29;
  v104 = v30;
  v101 = swift_getWitnessTable();
  v102 = MEMORY[0x1E697E040];
  v31 = v73;
  v32 = swift_getWitnessTable();
  v92 = v31;
  v33 = v31;
  v93 = v32;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50, &unk_1C5BECD68);
  v34 = sub_1C5BC8AB4();
  v35 = sub_1C5BC92E4();
  v71 = v35;
  v92 = v33;
  v93 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v99 = OpaqueTypeConformance2;
  v100 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50, &unk_1C5BECD68, MEMORY[0x1E69805E8]);
  v97 = v38;
  v98 = v39;
  v72 = v34;
  v40 = swift_getWitnessTable();
  v70 = v40;
  v69 = sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v92 = v34;
  v93 = v35;
  v94 = v40;
  v95 = v69;
  v68 = MEMORY[0x1E697CDE0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = OpaqueTypeMetadata2;
  v42 = sub_1C5924F54(&qword_1EDA45EC0, &qword_1EC198C48, &qword_1C5BECD60, MEMORY[0x1E69E6338]);
  v66 = v42;
  v65 = sub_1C594F984();
  v92 = v89;
  v93 = &type metadata for NowPlayingMiniPlayerAccessoryID;
  v94 = OpaqueTypeMetadata2;
  v95 = v42;
  v96 = v65;
  v43 = sub_1C5BCA8C4();
  v73 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v63 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47 = MEMORY[0x1EEE9AC00](v46).n128_u64[0];
  v64 = v63 - v48;
  v91 = v82;
  v63[1] = swift_getKeyPath(byte_1C5BECD78, v47);
  v49 = v78;
  v50 = v77;
  v51 = v79;
  (*(v78 + 16))(v77, v85, v79);
  v52 = v81;
  sub_1C5948550(v86, v81);
  v53 = (*(v49 + 80) + 48) & ~*(v49 + 80);
  v54 = (v80 + *(v83 + 80) + v53) & ~*(v83 + 80);
  v55 = swift_allocObject();
  v56 = v74;
  *(v55 + 2) = v75;
  *(v55 + 3) = v56;
  v57 = v88;
  *(v55 + 4) = v76;
  *(v55 + 5) = v57;
  (*(v49 + 32))(&v55[v53], v50, v51);
  sub_1C5B50394(v52, &v55[v54]);

  v92 = v72;
  v93 = v71;
  v94 = v70;
  v95 = v69;
  v62 = swift_getOpaqueTypeConformance2();
  sub_1C5BCA8A4();
  v90 = v62;
  v58 = swift_getWitnessTable();
  v59 = v64;
  sub_1C593EDC0(v45, v43, v58);
  v60 = *(v73 + 8);
  v60(v45, v43);
  sub_1C593EDC0(v59, v43, v58);
  return (v60)(v59, v43);
}

uint64_t sub_1C5B4D08C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v133 = a8;
  v134 = a7;
  v111 = a5;
  v120 = a4;
  v127 = a3;
  v122 = a1;
  v123 = a2;
  v138 = sub_1C5BC92E4();
  v132 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v131 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C5BC8C04();
  v129 = *(v11 - 8);
  v130 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5BC89B4();
  v125 = *(v13 - 8);
  v126 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s24BackwardsTransportButtonVMa(255, a4, a6, v15);
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa(255, a4, a6, v16);
  v103 = sub_1C5BC92D4();
  v121 = a6;
  OpaqueTypeMetadata2 = _s23ForwardsTransportButtonVMa(255, a4, a6, v17);
  type metadata accessor for NowPlayingRouteButton.Content(255);
  v110 = sub_1C5BC92D4();
  v102 = sub_1C5BC92D4();
  v104 = _s15ContextMenuViewVMa(255, a4, a6, v18);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v108 = sub_1C5BCB804();
  v109 = sub_1C5BC92D4();
  sub_1C5BC92D4();
  v137 = sub_1C5BC92D4();
  v136 = sub_1C5BCA584();
  v119 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v115 = &v87 - v19;
  v135 = sub_1C5BC8AB4();
  v118 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v114 = &v87 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980, &qword_1C5BD5EC0);
  v21 = sub_1C5BC8AB4();
  v116 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v87 - v22;
  v107 = v21;
  v23 = sub_1C5BC8AB4();
  v117 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v87 - v24;
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v172 = WitnessTable;
  v173 = v26;
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content, &protocol conformance descriptor for NowPlayingRouteButton.Content);
  v170 = v28;
  v171 = v29;
  v30 = swift_getWitnessTable();
  v168 = v27;
  v169 = v30;
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v167 = swift_getAssociatedConformanceWitness();
  v33 = swift_getWitnessTable();
  v165 = v32;
  v166 = v33;
  v163 = swift_getWitnessTable();
  v164 = MEMORY[0x1E6981E60];
  v34 = swift_getWitnessTable();
  v161 = v31;
  v162 = v34;
  v102 = swift_getWitnessTable();
  v160 = v102;
  v104 = swift_getWitnessTable();
  v158 = v104;
  v159 = v134;
  v35 = swift_getWitnessTable();
  v103 = v35;
  v36 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
  v156 = v35;
  v157 = v36;
  AssociatedConformanceWitness = swift_getWitnessTable();
  v154 = AssociatedConformanceWitness;
  v155 = MEMORY[0x1E697E040];
  v37 = v23;
  v38 = swift_getWitnessTable();
  v146 = v23;
  v147 = v38;
  v89 = v23;
  v90 = v38;
  v39 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v108 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v101 = &v87 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78, &unk_1C5BDE530);
  v41 = sub_1C5BC8AB4();
  v110 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v100 = &v87 - v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50, &unk_1C5BECD68);
  v96 = v41;
  v43 = sub_1C5BC8AB4();
  v109 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v99 = &v87 - v44;
  v146 = v37;
  v147 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = OpaqueTypeConformance2;
  v46 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
  v152 = OpaqueTypeConformance2;
  v153 = v46;
  v47 = swift_getWitnessTable();
  v95 = v47;
  v48 = sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50, &unk_1C5BECD68, MEMORY[0x1E69805E8]);
  v150 = v47;
  v151 = v48;
  v49 = swift_getWitnessTable();
  v92 = v49;
  v91 = sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v146 = v43;
  v147 = v138;
  v148 = v49;
  v149 = v91;
  v97 = MEMORY[0x1E697CDE0];
  v50 = swift_getOpaqueTypeMetadata2();
  v98 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v88 = &v87 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v94 = &v87 - v53;
  v54 = v121;
  v55 = *(v122 + 16);
  v56 = v120;
  v57 = v111;
  v139 = v120;
  v140 = v111;
  v58 = v134;
  v141 = v121;
  v142 = v134;
  v143 = *v122;
  v144 = v55;
  v59 = v123;
  v145 = v123;
  v60 = v115;
  sub_1C5BCA574();
  v146 = v56;
  v147 = v57;
  v148 = v54;
  v149 = v58;
  v61 = _s23MiniPlayerAccessoryViewVMa(0, &v146);
  v62 = v114;
  v63 = v136;
  MEMORY[0x1C694E550](v59 + *(v61 + 52), v136, v57, v104);
  (*(v119 + 8))(v60, v63);
  type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  v64 = v113;
  v65 = v135;
  sub_1C5BCA1F4();
  (*(v118 + 8))(v62, v65);
  sub_1C5BCAA54();
  v66 = v112;
  v67 = v107;
  sub_1C5950FCC();
  (*(v116 + 8))(v64, v67);
  v68 = v124;
  v69 = v125;
  v70 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x1E697E6E8], v126);
  v71 = v101;
  v72 = v89;
  sub_1C5BC9F44();
  (*(v69 + 8))(v68, v70);
  (*(v117 + 8))(v66, v72);
  sub_1C594E11C();
  v73 = v100;
  v74 = OpaqueTypeMetadata2;
  sub_1C5BC9E84();
  (*(v108 + 8))(v71, v74);
  v75 = v128;
  sub_1C5BC8BF4();
  sub_1C5B50530();
  v76 = v99;
  v77 = v96;
  sub_1C5BC9E94();
  (*(v129 + 8))(v75, v130);
  (*(v110 + 8))(v73, v77);
  v78 = v131;
  v79 = v138;
  v81 = v91;
  v80 = v92;
  sub_1C5AF76C4(v43);
  v82 = v88;
  sub_1C5BC9E04();
  (*(v132 + 8))(v78, v79);
  (*(v109 + 8))(v76, v43);
  v146 = v43;
  v147 = v79;
  v148 = v80;
  v149 = v81;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v94;
  sub_1C593EDC0(v82, v50, v83);
  v85 = *(v98 + 8);
  v85(v82, v50);
  sub_1C593EDC0(v84, v50, v83);
  return (v85)(v84, v50);
}