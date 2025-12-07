uint64_t sub_2174C625C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t AnyPropertyProvider.knownProperties.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_57();
  v2(v1);
  OUTLINED_FUNCTION_15_1(v6);
  v3 = OUTLINED_FUNCTION_44_1();
  v4(v3);
  return OUTLINED_FUNCTION_80_11(v6);
}

uint64_t sub_2174C6330(void *__src)
{
  memcpy(__dst, __src, 0x161uLL);
  sub_217269EF4(__dst, &v3);
  return AnyPropertyProvider.identifierSet.setter(__src);
}

uint64_t AnyPropertyProvider.identifierSet.setter(void *__src)
{
  v2 = v1;
  memcpy(v11, __src, sizeof(v11));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = OUTLINED_FUNCTION_33_20();
  v4(v3);
  v5 = v13;
  v6 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(*(v6 + 8) + 32))(v11, v5);
  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  *&v11[24] = v7;
  *&v11[32] = *(v8 + 8);
  __swift_allocate_boxed_opaque_existential_0(v11);
  OUTLINED_FUNCTION_41_0();
  (*(v9 + 16))();
  __swift_destroy_boxed_opaque_existential_1(v2);
  sub_2171F3F0C(v11, v2);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t AnyPropertyProvider.staticPropertyProvider.setter(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v8 = v3;
  v9 = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_0(&v7);
  OUTLINED_FUNCTION_41_0();
  (*(v5 + 16))();
  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_2171F3F0C(&v7, v1);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*AnyPropertyProvider.identifierSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x5D0uLL);
  *a1 = v3;
  v3[185] = v1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = OUTLINED_FUNCTION_17_24();
  v5(v4);
  return sub_2174C65D4;
}

void sub_2174C65D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[185];
  if (a2)
  {
    memcpy(v2 + 90, v2, 0x161uLL);
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v6 = *(v5 + 96);
    sub_217269EF4((v2 + 90), (v2 + 135));
    v6(v4, v5);
    __swift_mutable_project_boxed_opaque_existential_1((v2 + 180), v2[183]);
    memcpy(__dst, v2 + 90, sizeof(__dst));
    OUTLINED_FUNCTION_60_16();
    v7();
    v8 = v2[183];
    v9 = v2[184];
    __swift_project_boxed_opaque_existential_1(v2 + 180, v8);
    v2[138] = v8;
    v2[139] = *(v9 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 135);
    OUTLINED_FUNCTION_41_0();
    (*(v10 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C((v2 + 135), v3);
    __swift_destroy_boxed_opaque_existential_1(v2 + 180);
    memcpy(v2 + 45, v2, 0x161uLL);
    sub_217269F50((v2 + 45));
  }

  else
  {
    memcpy(__dst, v2, sizeof(__dst));
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    OUTLINED_FUNCTION_71_13();
    v11 = OUTLINED_FUNCTION_17_24();
    v12(v11);
    __swift_mutable_project_boxed_opaque_existential_1((v2 + 45), v2[48]);
    OUTLINED_FUNCTION_60_16();
    v13();
    v14 = v2[48];
    v15 = v2[49];
    __swift_project_boxed_opaque_existential_1(v2 + 45, v14);
    v2[93] = v14;
    v2[94] = *(v15 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 90);
    OUTLINED_FUNCTION_41_0();
    (*(v16 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C(v2 + 45, v3);
    __swift_destroy_boxed_opaque_existential_1(v2 + 45);
  }

  free(v2);
}

void (*AnyPropertyProvider.staticPropertyProvider.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v3;
  v3[15] = v1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_71_13();
  v4 = OUTLINED_FUNCTION_17_24();
  v5(v4);
  return sub_2174C68DC;
}

void sub_2174C68DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  if (a2)
  {
    sub_2171FF30C(*a1, (v2 + 5));
    v4 = v2[8];
    v5 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v4);
    v2[13] = v4;
    v2[14] = *(v5 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 10);
    OUTLINED_FUNCTION_41_0();
    (*(v6 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C(v2 + 5, v3);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    v7 = v2[3];
    v8 = v2[4];
    __swift_project_boxed_opaque_existential_1(*a1, v7);
    v2[8] = v7;
    v2[9] = *(v8 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 5);
    OUTLINED_FUNCTION_41_0();
    (*(v9 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C((v2 + 5), v3);
  }

  v10 = OUTLINED_FUNCTION_80_11(v2);

  free(v10);
}

uint64_t AnyPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2174C6A98(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 112))(v5, v2, v3);
  return sub_217753238();
}

unint64_t sub_2174C6B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28690;
  if (!qword_27CB28690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28690);
  }

  return result;
}

uint64_t (*sub_2174C6B74(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = AnyPropertyProvider.identifierSet.modify(v2);
  return sub_2174C6BD0;
}

void sub_2174C6BD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2174C6C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2174C6B0C(a1, a2, a3);

  return PropertyProvider<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_2174C6DC8()
{
  OUTLINED_FUNCTION_25_1();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return PropertyProvider<>.combine(into:)(a1, a2, v5, WitnessTable);
}

uint64_t sub_2174C6E80()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_27CB286A0, type metadata accessor for PlaylistEntryPropertyProvider, &protocol conformance descriptor for PlaylistEntryPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6EF4()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&unk_280BE3748, type metadata accessor for StationPropertyProvider, &protocol conformance descriptor for StationPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6F68()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE7BD8, type metadata accessor for SongPropertyProvider, &protocol conformance descriptor for SongPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6FDC()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE3760, type metadata accessor for CuratorPropertyProvider, &protocol conformance descriptor for CuratorPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C7050()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(qword_280BE3A60, type metadata accessor for AlbumPropertyProvider, &protocol conformance descriptor for AlbumPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C70C4()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_27CB28698, type metadata accessor for RecordLabelPropertyProvider, &protocol conformance descriptor for RecordLabelPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C7138()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE3A50, type metadata accessor for GenrePropertyProvider, &protocol conformance descriptor for GenrePropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C71AC()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&unk_280BE3958, type metadata accessor for ArtistPropertyProvider, &protocol conformance descriptor for ArtistPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C7220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudArtist.Attributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174C7284(uint64_t a1)
{
  v2 = type metadata accessor for CloudArtist.Attributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2174C72E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2174C7360(uint64_t a1)
{
  OUTLINED_FUNCTION_78_9();
  OUTLINED_FUNCTION_78_9();
  v1 = OUTLINED_FUNCTION_38_16();
  return v2(v1);
}

unint64_t sub_2174C7444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB286B8;
  if (!qword_27CB286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286B8);
  }

  return result;
}

unint64_t sub_2174C74A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB286C0;
  if (!qword_27CB286C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286C0);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_41_0();
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_61_9();
  v5(v0 + v4);
  (*(v3 + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2174C7610(uint64_t a1)
{
  OUTLINED_FUNCTION_78_9();
  OUTLINED_FUNCTION_78_9();
  v1 = OUTLINED_FUNCTION_38_16();
  return v2(v1);
}

double sub_2174C770C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v8 + 1) = v6[7];
  *&v8 = v6[5];
  *&result = Dictionary<>.structuredValue<A, B>(for:keyDescription:existingDecoder:configuration:)(a2, a3, a4, a5, 0, v6[10], a1, v6[3], a6, v8, v6[9]).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_45_18()
{
  result = v0;
  *(v2 - 168) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_18()
{
  result = *(v1 - 128);
  *(v1 - 136) = v0;
  return result;
}

void OUTLINED_FUNCTION_55_13()
{
  *(v0 - 144) = 46;
  *(v0 - 136) = 0xE100000000000000;
  *(v0 - 256) = v0 - 144;
}

__n128 OUTLINED_FUNCTION_56_13()
{
  v1 = *(v0 - 176);
  *(v0 - 240) = *(v0 - 192);
  *(v0 - 224) = v1;
  result = *(v0 - 160);
  *(v0 - 208) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_68_13()
{
  v1 = *(v0 - 224);
  *(v0 - 144) = *(v0 - 240);
  *(v0 - 128) = v1;
  result = *(v0 - 208);
  *(v0 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217751308();
}

void *sub_2174C7A58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 64))
  {
    goto LABEL_6;
  }

  if (*(a1 + 64) == 1)
  {
LABEL_5:
    OUTLINED_FUNCTION_13_30(a1);
    v3 = off_280BEBCD0;

    (v3)(v48, v4);

    v5 = __swift_project_boxed_opaque_existential_1(v48, v49);
    OUTLINED_FUNCTION_9_34(v5, v6, v7, v8, v9, v10, v11, v12, v44, v45, v46, v47, v48[0], v48[1], v48[2], v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v13 = OUTLINED_FUNCTION_1_58();
    sub_2174C952C(v13, v14, v15, v16);
    goto LABEL_7;
  }

  if (*(a1 + 48) == 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_13_30(a1);
    v3 = off_280BEBCD0;

    (v3)(v48, v17);

    v18 = __swift_project_boxed_opaque_existential_1(v48, v49);
    OUTLINED_FUNCTION_9_34(v18, v19, v20, v21, v22, v23, v24, v25, v44, v45, v46, v47, v48[0], v48[1], v48[2], v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v26 = OUTLINED_FUNCTION_1_58();
    sub_2174C90C0(v26, v27, v28, v29);
  }

  else
  {
    if (!(*(a1 + 48) ^ 1 | *(a1 + 56)))
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_13_30(a1);
    v3 = off_280BEBCD0;

    (v3)(v48, v31);

    v32 = __swift_project_boxed_opaque_existential_1(v48, v49);
    OUTLINED_FUNCTION_9_34(v32, v33, v34, v35, v36, v37, v38, v39, v44, v45, v46, v47, v48[0], v48[1], v48[2], v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v40 = OUTLINED_FUNCTION_1_58();
    sub_2174C8C54(v40, v41, v42, v43);
  }

LABEL_7:
  result = sub_21733AB9C(v51);
  if (!v3)
  {
    memcpy(__dst, __src, sizeof(__dst));
    return memcpy(a2, __dst, 0x221uLL);
  }

  return result;
}

unint64_t Artist.LegacyModelArtistPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001CLL;
  switch(*v0)
  {
    case 1:
    case 6:
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
      result = 0xD000000000000031;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 0xA:
      result = 0xD000000000000025;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xC:
    case 0xD:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2174C7D28(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v121 = a7;
  v122 = a6;
  v123 = a5;
  v119 = a3;
  v120 = a4;
  v124 = a9;
  v13 = sub_217752B48();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v126 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v110 - v17);
  v19 = sub_217752B38();
  v117 = *(v19 - 8);
  v118 = v19;
  MEMORY[0x28223BE20](v19);
  v115 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &v110 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AE8, &qword_217766150);
  MEMORY[0x28223BE20](v23 - 8);
  v125 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v110 - v26;
  sub_2172A497C(v140);
  v141 = v27;
  v28 = v27;
  v29 = v13;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v13);
  v138[0] = 46;
  v138[1] = 0xE100000000000000;
  v128[2] = v138;
  sub_217751DE8();
  sub_2176B5914(1, 1, sub_2172CB708, v128, a1, a2, v30);
  v32 = v31;
  v33 = v31[2];
  v127 = v9;
  if (v33 != 2)
  {

    if (*(a8 + 16) && (v72 = sub_21763246C(a1, a2), (v73 & 1) != 0))
    {
      v74 = *(a8 + 56) + 24 * v72;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      v136[0] = *v74;
      v75 = v136[0];
      v136[1] = v76;
      v137 = v77;
      sub_21726A5E0(v136[0], v76, v77);
      v78 = v127;
      (v122)(v138, v136);
      v127 = v78;
      if (v78)
      {
        sub_2171F0738(v141, &qword_27CB26AE8, &qword_217766150);
        sub_21726A608(v75, v76, v77);
        return;
      }

      memcpy(v134, v138, 0x221uLL);
      memcpy(v135, v138, 0x221uLL);
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v135) == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
        v98 = swift_allocObject();
        v122 = v98;
        *(v98 + 16) = xmmword_2177586E0;
        *(v98 + 56) = &type metadata for DynamicCodingKey;
        *(v98 + 64) = sub_21738B390(v98, v99, v100);
        *(v98 + 32) = a1;
        *(v98 + 40) = a2;
        v129 = 0;
        v130 = 0xE000000000000000;
        sub_217751DE8();
        sub_217752AA8();
        v132 = v129;
        v133 = v130;
        MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177AC710);
        MEMORY[0x21CEA23B0](0x6B726F77747241, 0xE700000000000000);
        MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177AC730);
        MEMORY[0x21CEA23B0](v119, v120);
        MEMORY[0x21CEA23B0](0x2065756C6176203BLL, 0xEC000000203A7369);
        v129 = v75;
        v130 = v76;
        v131 = v77;
        v101 = JSONValue.description.getter();
        v102 = v14;
        v104 = v103;
        v105 = sub_21726A608(v75, v76, v77);
        MEMORY[0x21CEA23B0](v101, v104, v105);
        v14 = v102;

        MEMORY[0x21CEA23B0](46, 0xE100000000000000, v106);
        v107 = v116;
        sub_217752B08();
        v70 = v141;
        sub_2171F0738(v141, &qword_27CB26AE8, &qword_217766150);
        v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
        *v70 = &type metadata for Artwork;
        (*(v117 + 32))(&v70[v108], v107, v118);
        (*(v102 + 104))(v70, *MEMORY[0x277D84160], v29);
        __swift_storeEnumTagSinglePayload(v70, 0, 1, v29);
        v97 = v134;
        goto LABEL_27;
      }

      sub_21726A608(v75, v76, v77);
      v80 = v138;
    }

    else
    {
      v80 = v140;
    }

    memcpy(v139, v80, 0x221uLL);
    goto LABEL_18;
  }

  v34 = v9;
  v114 = v14;
  v35 = v31[4];
  v36 = v31[5];
  v38 = v31[6];
  v37 = v31[7];
  sub_217751DE8();
  v39 = MEMORY[0x21CEA2320](v35, v36, v38, v37);
  v41 = v40;

  if (!*(a8 + 16) || (v42 = sub_21763246C(v39, v41), (v43 & 1) == 0))
  {

    v79 = v140;
LABEL_15:
    memcpy(v139, v79, 0x221uLL);
    v14 = v114;
LABEL_18:
    v70 = v141;
    goto LABEL_19;
  }

  v113 = v39;
  v44 = *(a8 + 56) + 24 * v42;
  v46 = *v44;
  v45 = *(v44 + 8);
  v47 = *(v44 + 16);
  if (v47 == 5)
  {
    if (v32[2] < 2uLL)
    {
      __break(1u);
      return;
    }

    v48 = v32[8];
    v110 = v32[9];
    v111 = v48;
    v50 = v32[10];
    v49 = v32[11];
    v112 = v45;
    sub_21726A5E0(v46, v45, 5);
    sub_217751DE8();

    v52 = MEMORY[0x21CEA2320](v111, v110, v50, v49, v51);
    v54 = v53;

    sub_2174C7D28(v52, v54, v119, v120, 0, v122, v121, v46, v138);
    if (v34)
    {
      sub_21726A608(v46, v112, 5);

      v138[0] = v34;
      v55 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
      if (swift_dynamicCast())
      {
        v56 = v114;
        v57 = (*(v114 + 88))(v18, v29);
        if (v57 == *MEMORY[0x277D84160])
        {
          v58 = v57;

          (*(v56 + 96))(v18, v29);
          v127 = *v18;
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
          v60 = *(v59 + 48);
          v61 = v117;
          v62 = v118;
          v121 = *(v117 + 32);
          v122 = v59;
          v63 = v18 + v60;
          v64 = v116;
          v121(v116, v63, v118);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_2177586E0;
          *(v65 + 56) = &type metadata for DynamicCodingKey;
          *(v65 + 64) = sub_21738B390(v65, v66, v67);
          *(v65 + 32) = v113;
          *(v65 + 40) = v41;
          v135[0] = v65;
          v68 = sub_217752B18();
          sub_217543F4C(v68);
          sub_217752B28();
          v69 = v115;
          sub_217752B08();
          (*(v61 + 8))(v64, v62);
          v70 = v141;
          sub_2171F0738(v141, &qword_27CB26AE8, &qword_217766150);
          v71 = *(v122 + 48);
          *v70 = v127;
          v121(&v70[v71], v69, v62);
          v14 = v114;
          (*(v114 + 104))(v70, v58, v29);
          __swift_storeEnumTagSinglePayload(v70, 0, 1, v29);

          memcpy(v139, v140, 0x221uLL);
          v127 = 0;
          goto LABEL_19;
        }

        sub_2171F0738(v141, &qword_27CB26AE8, &qword_217766150);

        (*(v56 + 8))(v18, v29, v109);
      }

      else
      {
        sub_2171F0738(v141, &qword_27CB26AE8, &qword_217766150);
      }

      return;
    }

    v127 = 0;

    sub_21726A608(v46, v112, 5);

    v79 = v138;
    goto LABEL_15;
  }

  v85 = *(v44 + 8);
  sub_21726A5E0(*v44, v85, *(v44 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_2177586E0;
  *(v86 + 56) = &type metadata for DynamicCodingKey;
  *(v86 + 64) = sub_21738B390(v86, v87, v88);
  *(v86 + 32) = v113;
  *(v86 + 40) = v41;
  v138[0] = 0;
  v138[1] = 0xE000000000000000;
  sub_217752AA8();
  v135[0] = v138[0];
  v135[1] = v138[1];
  MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177AC750);
  MEMORY[0x21CEA23B0](v119, v120);
  MEMORY[0x21CEA23B0](0x2065756C6176203BLL, 0xEC000000203A7369);
  v89 = v46;
  v138[0] = v46;
  v138[1] = v85;
  LOBYTE(v138[2]) = v47;
  v90 = JSONValue.description.getter();
  v92 = v91;
  v93 = sub_21726A608(v89, v85, v47);
  MEMORY[0x21CEA23B0](v90, v92, v93);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v94);
  v95 = v116;
  sub_217752B08();
  v70 = v141;
  sub_2171F0738(v141, &qword_27CB26AE8, &qword_217766150);
  v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
  *v70 = &type metadata for Artwork;
  (*(v117 + 32))(&v70[v96], v95, v118);
  v14 = v114;
  (*(v114 + 104))(v70, *MEMORY[0x277D84160], v29);
  __swift_storeEnumTagSinglePayload(v70, 0, 1, v29);
  v97 = v140;
LABEL_27:
  memcpy(v139, v97, 0x221uLL);
LABEL_19:
  v81 = v125;
  sub_2171F5110(v70, v125, &qword_27CB26AE8, &qword_217766150);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v29);
  v83 = v126;
  if (EnumTagSinglePayload == 1)
  {
    sub_2171F0738(v70, &qword_27CB26AE8, &qword_217766150);
    sub_2171F0738(v81, &qword_27CB26AE8, &qword_217766150);
    memcpy(v124, v139, 0x221uLL);
  }

  else
  {
    (*(v14 + 32))(v126, v81, v29);
    if (v123)
    {
      v138[0] = 0;
      v138[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AC6E0);
      sub_217752C78();
      sub_217751828();
    }

    swift_allocError();
    (*(v14 + 16))(v84, v83, v29);
    swift_willThrow();
    sub_2171F0738(v139, &qword_27CB24400, &unk_21775E9A0);
    (*(v14 + 8))(v83, v29);
    sub_2171F0738(v70, &qword_27CB26AE8, &qword_217766150);
  }
}

void *sub_2174C8AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_217751378();
  swift_allocObject();
  sub_217751368();
  sub_2172CA838(a4, __src);
  v13 = JSONEncoder.dataRequestConfiguration.setter(__src);
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3;
  sub_21733AC44(v13, v14, v15);
  v16 = sub_217751358();
  if (v6)
  {
  }

  v18 = v16;
  v19 = v17;
  if (!a5)
  {
    sub_217751348();
    swift_allocObject();
    sub_217751338();
  }

  sub_2172CA838(a4, __src);

  v20 = JSONDecoder.dataRequestConfiguration.setter(__src);
  sub_2174C7444(v20, v21, v22);
  sub_217751308();

  sub_217275694(v18, v19);

  memcpy(__dst, __src, sizeof(__dst));
  nullsub_1();
  return memcpy(a6, __dst, 0x221uLL);
}

void *sub_2174C8C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v44 = a2;
  v32 = a4;
  sub_2172A497C(v43);
  v10 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  (*(v9 + 96))(v39, v10, v9);
  v11 = v39[3];
  v12 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v13 = (*(*(v12 + 8) + 16))(v11);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v39[0] = a1;
  v33[2] = v39;
  LOBYTE(v11) = sub_2173DDC78(sub_2174A6244, v33, v13);

  if (v11)
  {
    v14 = v6[3];
    v15 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v14);
    (*(v15 + 96))(v34, v14, v15);
    v16 = v35;
    v17 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(*(v17 + 8) + 8))(v37, a1, &type metadata for Artist, &type metadata for Artwork, v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
    memcpy(v38, v37, sizeof(v38));
    memcpy(v39, v38, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v39) != 1)
    {
      v25 = v38;
      goto LABEL_10;
    }

    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    if (dynamic_cast_existential_1_conditional(&type metadata for Artwork, &type metadata for Artwork, &protocol descriptor for JSONValueBasedInitializable))
    {
      v20 = v38;
      goto LABEL_7;
    }

    v26 = v38;
LABEL_14:
    v27 = memcpy(v42, v26, 0x221uLL);
    MEMORY[0x28223BE20](v27);
    v31[2] = a3;
    sub_21725CF68(v44, v38);
    sub_2172CA838(a3, v37);
    v28 = swift_allocObject();
    v29 = *&v38[16];
    *(v28 + 16) = *v38;
    *(v28 + 32) = v29;
    *(v28 + 48) = *&v38[32];
    v30 = *&v37[16];
    *(v28 + 72) = *v37;
    *(v28 + 64) = *&v38[48];
    *(v28 + 88) = v30;
    *(v28 + 104) = *&v37[32];
    sub_2174CA7FC(v18, v19, a3, sub_2174CCFCC, v28, sub_2174CCF68, v31, v39);
    sub_2171F0738(v42, &qword_27CB24400, &unk_21775E9A0);

    if (!v5)
    {
      memcpy(v40, v39, sizeof(v40));
      return memcpy(v32, v40, 0x221uLL);
    }

    return result;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  if (!dynamic_cast_existential_1_conditional(&type metadata for Artwork, &type metadata for Artwork, &protocol descriptor for JSONValueBasedInitializable))
  {
    v26 = v43;
    goto LABEL_14;
  }

  v20 = v43;
LABEL_7:
  memcpy(v41, v20, 0x221uLL);
  sub_21725CF68(v44, v38);
  sub_2172CA838(a3, v37);
  v21 = swift_allocObject();
  v22 = *&v38[16];
  *(v21 + 16) = *v38;
  *(v21 + 32) = v22;
  *(v21 + 48) = *&v38[32];
  v23 = *&v37[16];
  *(v21 + 72) = *v37;
  *(v21 + 64) = *&v38[48];
  *(v21 + 88) = v23;
  *(v21 + 104) = *&v37[32];
  sub_2174C4E54();
  sub_2171F0738(v41, &qword_27CB24400, &unk_21775E9A0);

  if (!v5)
  {
    v25 = v39;
LABEL_10:
    memcpy(v40, v25, sizeof(v40));
    return memcpy(v32, v40, 0x221uLL);
  }

  return result;
}

void *sub_2174C90C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v44 = a2;
  v32 = a4;
  sub_2172A497C(v43);
  v10 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  (*(v9 + 96))(v39, v10, v9);
  v11 = v39[3];
  v12 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v13 = (*(*(v12 + 8) + 16))(v11);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v39[0] = a1;
  v33[2] = v39;
  LOBYTE(v11) = sub_2173DDC78(sub_2174A6244, v33, v13);

  if (v11)
  {
    v14 = v6[3];
    v15 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v14);
    (*(v15 + 96))(v34, v14, v15);
    v16 = v35;
    v17 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(*(v17 + 8) + 8))(v37, a1, &type metadata for Artist, &type metadata for Artwork, v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
    memcpy(v38, v37, sizeof(v38));
    memcpy(v39, v38, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v39) != 1)
    {
      v25 = v38;
      goto LABEL_10;
    }

    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    if (dynamic_cast_existential_1_conditional(&type metadata for Artwork, &type metadata for Artwork, &protocol descriptor for JSONValueBasedInitializable))
    {
      v20 = v38;
      goto LABEL_7;
    }

    v26 = v38;
LABEL_14:
    v27 = memcpy(v42, v26, 0x221uLL);
    MEMORY[0x28223BE20](v27);
    v31[2] = a3;
    sub_21725CF68(v44, v38);
    sub_2172CA838(a3, v37);
    v28 = swift_allocObject();
    v29 = *&v38[16];
    *(v28 + 16) = *v38;
    *(v28 + 32) = v29;
    *(v28 + 48) = *&v38[32];
    v30 = *&v37[16];
    *(v28 + 72) = *v37;
    *(v28 + 64) = *&v38[48];
    *(v28 + 88) = v30;
    *(v28 + 104) = *&v37[32];
    sub_2174C97D8(v18, v19, a3, sub_2174CCFCC, v28, sub_2174CCD40, v31, v39);
    sub_2171F0738(v42, &qword_27CB24400, &unk_21775E9A0);

    if (!v5)
    {
      memcpy(v40, v39, sizeof(v40));
      return memcpy(v32, v40, 0x221uLL);
    }

    return result;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  if (!dynamic_cast_existential_1_conditional(&type metadata for Artwork, &type metadata for Artwork, &protocol descriptor for JSONValueBasedInitializable))
  {
    v26 = v43;
    goto LABEL_14;
  }

  v20 = v43;
LABEL_7:
  memcpy(v41, v20, 0x221uLL);
  sub_21725CF68(v44, v38);
  sub_2172CA838(a3, v37);
  v21 = swift_allocObject();
  v22 = *&v38[16];
  *(v21 + 16) = *v38;
  *(v21 + 32) = v22;
  *(v21 + 48) = *&v38[32];
  v23 = *&v37[16];
  *(v21 + 72) = *v37;
  *(v21 + 64) = *&v38[48];
  *(v21 + 88) = v23;
  *(v21 + 104) = *&v37[32];
  sub_2174C13F4();
  sub_2171F0738(v41, &qword_27CB24400, &unk_21775E9A0);

  if (!v5)
  {
    v25 = v39;
LABEL_10:
    memcpy(v40, v25, sizeof(v40));
    return memcpy(v32, v40, 0x221uLL);
  }

  return result;
}

void *sub_2174C952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v32 = a2;
  sub_2172A497C(v31);
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  (*(v11 + 96))(v28, v10, v11);
  v12 = v28[3];
  v13 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v14 = (*(*(v13 + 8) + 16))(v12);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v28[0] = a1;
  v22[2] = v28;
  LOBYTE(v12) = sub_2173DDC78(sub_2174A6244, v22, v14);

  if (v12)
  {
    v15 = v6[3];
    v16 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v15);
    (*(v16 + 96))(v23, v15, v16);
    v18 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(*(v17 + 8) + 8))(__src, a1, &type metadata for Artist, &type metadata for Artwork, v18);
    __swift_destroy_boxed_opaque_existential_1(v23);
    memcpy(__dst, __src, 0x221uLL);
    memcpy(v28, __dst, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v28) != 1)
    {
      v21 = __dst;
      goto LABEL_11;
    }

    v19 = __dst;
  }

  else
  {
    v19 = v31;
  }

  memcpy(v29, v19, 0x221uLL);
  sub_2174CA104(a1);
  if (v5)
  {
    return sub_2171F0738(v29, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_2171F0738(v29, &qword_27CB24400, &unk_21775E9A0);
  memcpy(__dst, v28, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    sub_2174CA33C(a1, v32, a3, __src);
    v21 = __src;
  }

  else
  {
    v21 = v28;
  }

LABEL_11:
  memcpy(v30, v21, sizeof(v30));
  return memcpy(a4, v30, 0x221uLL);
}

void sub_2174C97D8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(__n128)@<X3>, uint64_t a5@<X4>, void (*a6)(_BYTE *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v10 = v8;
  v69 = a6;
  v62 = a5;
  v63 = a4;
  v60 = a8;
  v15 = sub_217753268();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x28223BE20](v15);
  v71 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for CloudArtist.Attributes(0);
  MEMORY[0x28223BE20](v70);
  v83 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  MEMORY[0x28223BE20](v18 - 8);
  v72 = &v59 - v19;
  sub_2172A497C(v82);
  v81[0] = 46;
  v81[1] = 0xE100000000000000;
  v73[2] = v81;
  swift_bridgeObjectRetain_n();
  sub_2176B5914(1, 1, sub_2171F87CC, v73, a1, a2, v20);
  v22 = v9;
  v23 = v21[2];
  v66 = a7;
  v67 = a1;
  v68 = a2;
  v59 = a3;
  if (v23 == 2)
  {
    v24 = v21[4];
    v25 = v21[5];
    v26 = v21[6];
    v27 = v21[7];
    sub_217751DE8();

    v29 = MEMORY[0x21CEA2320](v24, v25, v26, v27, v28);
    v31 = v30;
  }

  else
  {

    v29 = a1;
    v31 = a2;
  }

  v32 = v8[3];
  v33 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v32);
  (*(v33 + 96))(v76, v32, v33);
  v34 = *&v76[24];
  v35 = *&v76[32];
  __swift_project_boxed_opaque_existential_1(v76, *&v76[24]);
  v36 = (*(*(v35 + 8) + 64))(v34);
  __swift_destroy_boxed_opaque_existential_1(v76);
  if (*(v36 + 16))
  {
    sub_21763246C(v29, v31);
    v38 = v37;

    if (v38)
    {
      memcpy(v80, v82, 0x221uLL);
      goto LABEL_22;
    }
  }

  else
  {
  }

  v61 = v9;
  v40 = v72;
  v63(v39);
  v41 = v40 + *(type metadata accessor for CloudArtist(0) + 20);
  v42 = v83;
  sub_2174CCD5C(v41, v83, type metadata accessor for CloudArtist.Attributes);
  *&v76[24] = v70;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
  sub_2174CCD5C(v42, boxed_opaque_existential_0, type metadata accessor for CloudArtist.Attributes);
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!*&v76[40])
    {

      v77 = 0u;
      v78 = 0u;
      v79 = 0u;

      goto LABEL_21;
    }

    *v75 = *v76;
    *&v75[16] = *&v76[16];
    *&v75[32] = *&v76[32];
    if (*&v76[8])
    {
      v44 = *v75 == v29 && *&v75[8] == v31;
      if (v44 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0738(v75, &qword_27CB286B0, &unk_21776E190);
  }

  v77 = *v75;
  v78 = *&v75[16];
  v79 = *&v75[32];

  if (!*(&v79 + 1))
  {
LABEL_21:
    (*(v64 + 8))(v71, v65);
    sub_2174CCDBC(v83, type metadata accessor for CloudArtist.Attributes);
    sub_2171F0738(v72, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0738(&v77, &qword_27CB286A8, &unk_21776DFA0);
    memcpy(v80, v82, 0x221uLL);
    v22 = v61;
    goto LABEL_22;
  }

  sub_217751378();
  swift_allocObject();
  sub_217751368();
  v45 = v59;
  sub_2172CA838(v59, v76);
  JSONEncoder.dataRequestConfiguration.setter(v76);
  sub_2174CCE14();
  v46 = v83;
  v47 = v61;
  v48 = sub_217751358();
  if (v47)
  {

    (*(v64 + 8))(v71, v65);
    sub_2174CCDBC(v46, type metadata accessor for CloudArtist.Attributes);
    sub_2171F0738(v72, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0738(&v77, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_27;
  }

  v57 = v48;
  v70 = v49;
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v45, v76);
  JSONDecoder.dataRequestConfiguration.setter(v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2174CCE6C();
  sub_217751308();
  v63 = v57;
  v69(v76, *v76, v67, v68);
  v22 = 0;

  sub_217275694(v63, v70);

  (*(v64 + 8))(v71, v65, v58);
  sub_2174CCDBC(v83, type metadata accessor for CloudArtist.Attributes);
  sub_2171F0738(v72, &qword_27CB24728, &qword_217758CB0);
  sub_2171F0738(&v77, &qword_27CB286A8, &unk_21776DFA0);
  memcpy(v74, v76, 0x221uLL);
  memcpy(v75, v76, sizeof(v75));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v75) != 1)
  {

    v56 = v74;
    goto LABEL_25;
  }

  memcpy(v80, v76, 0x221uLL);
LABEL_22:
  v50 = v67;
  v51 = v10[3];
  v52 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v51);
  (*(v52 + 96))(v75, v51, v52);
  v53 = *&v75[24];
  v54 = *&v75[32];
  __swift_project_boxed_opaque_existential_1(v75, *&v75[24]);
  v55 = (*(*(v54 + 8) + 64))(v53);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v69(v76, v55, v50, v68);
  if (!v22)
  {
    sub_2171F0738(v80, &qword_27CB24400, &unk_21775E9A0);

    v56 = v76;
LABEL_25:
    memcpy(v81, v56, 0x221uLL);
    memcpy(v60, v81, 0x221uLL);
    return;
  }

  sub_2171F0738(v80, &qword_27CB24400, &unk_21775E9A0);

LABEL_27:
}

void sub_2174CA09C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5[2] = a4;
  v5[3] = 0;
  sub_2174C7D28(a2, a3, 0x7475626972747461, 0xE900000000000065, 1, sub_2174CCF24, v5, a1, a5);
}

void sub_2174CA104(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 1)
  {
    v3 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v3);
    (*(v4 + 96))(&v12, v3, v4);
    v6 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    (*(*(v5 + 8) + 72))(v6);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&v12);
    sub_2174C2668();

    return;
  }

  if (v2 == 2 && !*(a1 + 56) && *(a1 + 48) == 1)
  {
    v8 = v1[3];
    v9 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v8);
    (*(v9 + 96))(&v12, v8, v9);
    v11 = v13;
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    (*(*(v10 + 8) + 80))(v11);
    goto LABEL_10;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
  type metadata accessor for AnyMusicProperty();
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
  sub_217752D08();
  __break(1u);
}

void *sub_2174CA33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a4;
  v7 = *(a1 + 64);
  if (v7 == 1)
  {
    MEMORY[0x28223BE20](a1);
    v26 = &type metadata for AnyPropertyProvider;
    v27 = &type metadata for Artwork;
    v28 = &type metadata for Artist;
    v29 = &type metadata for AnyMusicDataRequestConfiguration;
    v30 = &protocol witness table for AnyPropertyProvider;
    v31 = sub_2174C7444(v8, v9, v10);
    v32 = sub_2172E2188(v31, v11, v12);
    v33 = &protocol witness table for AnyMusicDataRequestConfiguration;
    swift_getKeyPath(byte_21776E1D8, &v26);
    sub_21725CF68(a2, &v37);
    sub_2172CA838(a3, &v34);
    v13 = swift_allocObject();
    v14 = v38;
    *(v13 + 16) = v37;
    *(v13 + 32) = v14;
    *(v13 + 48) = v39;
    v15 = v35;
    *(v13 + 72) = v34;
    *(v13 + 64) = v40;
    *(v13 + 88) = v15;
    *(v13 + 104) = v36;

    sub_2174C35FC();
  }

  else
  {
    if (v7 != 2 || (!*(a1 + 56) ? (v16 = *(a1 + 48) == 1) : (v16 = 0), !v16))
    {
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
      type metadata accessor for AnyMusicProperty();
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
      result = sub_217752D08();
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](a1);
    v26 = &type metadata for AnyPropertyProvider;
    v27 = &type metadata for Artwork;
    v28 = &type metadata for Artist;
    v29 = &type metadata for AnyMusicDataRequestConfiguration;
    v30 = &protocol witness table for AnyPropertyProvider;
    v31 = sub_2174C7444(v17, v18, v19);
    v32 = sub_2172E2188(v31, v20, v21);
    v33 = &protocol witness table for AnyMusicDataRequestConfiguration;
    swift_getKeyPath(byte_21776E1A8, &v26);
    sub_21725CF68(a2, &v37);
    sub_2172CA838(a3, &v34);
    v22 = swift_allocObject();
    v23 = v38;
    *(v22 + 16) = v37;
    *(v22 + 32) = v23;
    *(v22 + 48) = v39;
    v24 = v35;
    *(v22 + 72) = v34;
    *(v22 + 64) = v40;
    *(v22 + 88) = v24;
    *(v22 + 104) = v36;

    sub_2174C30F0();
  }

  if (!v4)
  {
    memcpy(v42, v41, sizeof(v42));
    return memcpy(v43, v42, 0x221uLL);
  }

  return result;
}

uint64_t sub_2174CA750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  return a4(v8);
}

void sub_2174CA7FC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(__n128)@<X3>, uint64_t a5@<X4>, void (*a6)(_BYTE *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v68 = a7;
  v71 = a6;
  v65 = a5;
  v66 = a4;
  v62 = a8;
  v13 = sub_217753268();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v60 - v16);
  sub_2172A497C(v82);
  v81[0] = 46;
  v81[1] = 0xE100000000000000;
  v72[2] = v81;
  swift_bridgeObjectRetain_n();
  sub_2176B5914(1, 1, sub_2172CB708, v72, a1, a2, v18);
  v20 = v19[2];
  v83 = v9;
  v69 = a1;
  v70 = a2;
  v61 = a3;
  if (v20 == 2)
  {
    v21 = v19[4];
    v22 = v19[5];
    v23 = v19[6];
    v24 = v19[7];
    sub_217751DE8();

    v26 = MEMORY[0x21CEA2320](v21, v22, v23, v24, v25);
    v28 = v27;
  }

  else
  {

    v26 = a1;
    v28 = a2;
  }

  v29 = v8;
  v30 = v8[3];
  v31 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v30);
  (*(v31 + 96))(v78, v30, v31);
  v32 = *&v78[24];
  v33 = *&v78[32];
  __swift_project_boxed_opaque_existential_1(v78, *&v78[24]);
  v34 = (*(*(v33 + 8) + 88))(v32);
  __swift_destroy_boxed_opaque_existential_1(v78);
  if (*(v34 + 16))
  {
    sub_21763246C(v26, v28);
    v36 = v35;

    if (v36)
    {
LABEL_25:
      v50 = v82;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v66(v37);
  v38 = *(v17 + *(type metadata accessor for CloudArtist(0) + 32));
  if (v38 == 1)
  {
    v39 = &qword_27CB24728;
    v40 = &qword_217758CB0;
    v41 = v17;
LABEL_24:
    sub_2171F0738(v41, v39, v40);
    goto LABEL_25;
  }

  v66 = v17;
  v79 = v38;
  *&v78[24] = &type metadata for CloudArtist.Metadata;
  *v78 = v38;
  sub_217221020(v38);
  sub_217751DE8();
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!*&v78[40])
    {

      v75 = 0u;
      v76 = 0u;
      v77 = 0u;

      goto LABEL_23;
    }

    v74[0] = *v78;
    v74[1] = *&v78[16];
    v74[2] = *&v78[32];
    if (*&v78[8])
    {
      v42 = *&v74[0] == v26 && *(&v74[0] + 1) == v28;
      if (v42 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0738(v74, &qword_27CB286B0, &unk_21776E190);
  }

  v75 = v74[0];
  v76 = v74[1];
  v77 = v74[2];

  if (!*(&v77 + 1))
  {
LABEL_23:
    (*(v63 + 8))(v67, v64);

    sub_2171F0738(v66, &qword_27CB24728, &qword_217758CB0);
    v39 = &qword_27CB286A8;
    v40 = &unk_21776DFA0;
    v41 = &v75;
    goto LABEL_24;
  }

  sub_217751378();
  swift_allocObject();
  sub_217751368();
  v43 = v61;
  sub_2172CA838(v61, v78);
  v44 = JSONEncoder.dataRequestConfiguration.setter(v78);
  sub_2174C74A0(v44, v45, v46);
  v47 = v83;
  v48 = sub_217751358();
  if (v47)
  {

    (*(v63 + 8))(v67, v64);

    sub_2171F0738(v66, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0738(&v75, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_28;
  }

  v57 = v48;
  v58 = v49;
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v43, v78);
  JSONDecoder.dataRequestConfiguration.setter(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2174CCE6C();
  sub_217751308();
  v71(v78, *v78, v69, v70);
  v83 = 0;

  sub_217275694(v57, v58);

  (*(v63 + 8))(v67, v64, v59);

  sub_2171F0738(v66, &qword_27CB24728, &qword_217758CB0);
  sub_2171F0738(&v75, &qword_27CB286A8, &unk_21776DFA0);
  memcpy(v73, v78, sizeof(v73));
  memcpy(v74, v78, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v74) != 1)
  {

    memcpy(v81, v73, 0x221uLL);
    goto LABEL_30;
  }

  v50 = v78;
LABEL_26:
  memcpy(v80, v50, 0x221uLL);
  v51 = v29[3];
  v52 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v51);
  (*(v52 + 96))(v74, v51, v52);
  v53 = *(&v74[1] + 1);
  v54 = *&v74[2];
  __swift_project_boxed_opaque_existential_1(v74, *(&v74[1] + 1));
  v55 = (*(*(v54 + 8) + 88))(v53);
  __swift_destroy_boxed_opaque_existential_1(v74);
  v56 = v83;
  v71(v78, v55, v69, v70);
  if (!v56)
  {
    sub_2171F0738(v80, &qword_27CB24400, &unk_21775E9A0);

    memcpy(v81, v78, 0x221uLL);
LABEL_30:
    memcpy(v62, v81, 0x221uLL);
    return;
  }

  sub_2171F0738(v80, &qword_27CB24400, &unk_21775E9A0);

LABEL_28:
}

void sub_2174CB03C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5[2] = a4;
  v5[3] = 0;
  sub_2174C7D28(a2, a3, 0x617461646174656DLL, 0xE800000000000000, 1, sub_2174CCFD0, v5, a1, a5);
}

uint64_t Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v133 = a4;
  v134 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_6_1();
  v132 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v131 = &v124 - v12;
  MEMORY[0x28223BE20](v13);
  v130 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB286C8, &qword_217795300);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v124 - v16;
  v18 = type metadata accessor for ArtistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v124 - v24;
  memcpy(v146, a1, 0x161uLL);
  v137 = a2;
  if (([a2 respondsToSelector_] & 1) != 0 && (v26 = objc_msgSend(v137, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v27 = v26;
    v28 = sub_217751D98();
  }

  else
  {
    v28 = sub_217751DC8();
  }

  *&v136 = sub_21729F770(v28, v29, v30, v31, v32, v33, v34, v35, v124, v125, v126, countAndFlagsBits, v128, v129, v130, v131, v132, v133, v134, object, v136, *(&v136 + 1), v137, *v138, *&v138[8], *&v138[16], *&v138[24], *&v138[32], *&v138[40], *&v138[48], *&v138[56], *&v138[64], *&v138[72], *&v138[80], *&v138[88], *&v138[96], *&v138[104], *&v138[112]);

  memcpy(v142, a1, 0x161uLL);
  if (qword_280BE4A68 != -1)
  {
    swift_once();
  }

  v140[0] = xmmword_280BE4A70;
  LOBYTE(v140[1]) = byte_280BE4A80;
  v36 = qword_280BE4B80;
  sub_217751DE8();
  if (v36 != -1)
  {
    swift_once();
  }

  v139[0] = qword_280BE4B88;
  v139[1] = unk_280BE4B90;
  LOBYTE(v139[2]) = byte_280BE4B98;
  sub_217751DE8();
  v147.value.rawValue._countAndFlagsBits = v140;
  v147.value.rawValue._object = v139;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v141, v147, v148);

  object = v141[0].id.rawValue._object;
  countAndFlagsBits = v141[0].type.rawValue._countAndFlagsBits;
  v37 = v141[0].type.rawValue._object;
  HIDWORD(v128) = v141[0].type.isLibraryType;
  v129 = v141[0].href.value._countAndFlagsBits;
  v38 = v141[0].href.value._object;
  sub_2171F5110(a3, v141, &qword_27CB27590, &qword_21776ADF0);
  if (!v141[0].type.rawValue._object)
  {
    sub_2171F0738(v141, &qword_27CB27590, &qword_21776ADF0);
    memset(v142, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v142, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v142[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v142, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  sub_2171F3F0C(v142, v143);
  v39 = v144;
  v40 = v145;
  __swift_project_boxed_opaque_existential_1(v143, v144);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
    sub_2174CCA44(v17, v22);
    sub_2174CCD5C(v22, v25, type metadata accessor for ArtistPropertyProvider);
    memcpy(v142, v146, 0x161uLL);
    v41 = v18[46];
    memcpy(v139, (v22 + v41), 0x161uLL);
    memcpy(v138, (v22 + v41), sizeof(v138));
    sub_217269EF4(v139, v141);
    MusicIdentifierSet.union(_:)();
    memcpy(v140, v138, 0x161uLL);
    sub_217269F50(v140);
    sub_2174CCDBC(v22, type metadata accessor for ArtistPropertyProvider);
    sub_217269F50(v146);
    v42 = v18[46];
    memcpy(v142, &v25[v42], 0x161uLL);
    sub_217269F50(v142);
    memcpy(&v25[v42], v141, 0x161uLL);
    v43 = &v25[v18[47]];
    sub_217751DE8();

    *v43 = countAndFlagsBits;
    *(v43 + 1) = v37;
    v43[16] = BYTE4(v128);
    v44 = &v25[v18[48]];

    *v44 = v129;
    *(v44 + 1) = v38;
    __swift_destroy_boxed_opaque_existential_1(v143);
    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  sub_2171F0738(v17, &qword_27CB286C8, &qword_217795300);
  __swift_destroy_boxed_opaque_existential_1(v143);
LABEL_17:
  sub_217751DE8();
  sub_217751DE8();
  v126 = OUTLINED_FUNCTION_7_39();
  v125 = OUTLINED_FUNCTION_7_39();
  v124 = OUTLINED_FUNCTION_7_39();
  v45 = OUTLINED_FUNCTION_7_39();
  sub_2172A497C(v142);
  memcpy(v25, v142, 0x221uLL);
  *(v25 + 552) = 0u;
  v46 = v18[6];
  sub_2177516D8();
  OUTLINED_FUNCTION_15_10(&v25[v46]);
  *&v25[v18[7]] = 0;
  v47 = &v25[v18[8]];
  *v47 = xmmword_2177586D0;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  *(v47 + 3) = 0u;
  *&v25[v18[9]] = 0;
  *&v25[v18[10]] = 0;
  v25[v18[11]] = 2;
  v25[v18[12]] = 2;
  v25[v18[13]] = 2;
  v25[v18[14]] = 2;
  memcpy(&v25[v18[15]], v142, 0x221uLL);
  v48 = &v25[v18[16]];
  *v48 = 0;
  *(v48 + 1) = 0;
  OUTLINED_FUNCTION_15_10(&v25[v18[17]]);
  OUTLINED_FUNCTION_12_0(v18[18]);
  OUTLINED_FUNCTION_12_0(v18[19]);
  OUTLINED_FUNCTION_12_0(v18[20]);
  OUTLINED_FUNCTION_12_0(v18[21]);
  v49 = v18[22];
  sub_2177517D8();
  OUTLINED_FUNCTION_15_10(&v25[v49]);
  v25[v18[23]] = 3;
  OUTLINED_FUNCTION_15_10(&v25[v18[24]]);
  OUTLINED_FUNCTION_12_0(v18[25]);
  v50 = &v25[v18[26]];
  *(v50 + 12) = 0;
  *(v50 + 4) = 0u;
  *(v50 + 5) = 0u;
  *(v50 + 2) = 0u;
  *(v50 + 3) = 0u;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  OUTLINED_FUNCTION_0_58(v18[27], 0);
  v51 = &v25[v18[28]];
  v51[6] = v52;
  v51[7] = v52;
  v51[4] = v52;
  v51[5] = v52;
  v51[2] = v52;
  v51[3] = v52;
  *v51 = v52;
  v51[1] = v52;
  OUTLINED_FUNCTION_0_58(v18[29], v52);
  OUTLINED_FUNCTION_0_58(v18[30], v53);
  OUTLINED_FUNCTION_0_58(v18[31], v54);
  OUTLINED_FUNCTION_0_58(v18[32], v55);
  OUTLINED_FUNCTION_0_58(v18[33], v56);
  OUTLINED_FUNCTION_0_58(v18[34], v57);
  OUTLINED_FUNCTION_0_58(v18[35], v58);
  OUTLINED_FUNCTION_0_58(v18[36], v59);
  OUTLINED_FUNCTION_0_58(v18[37], v60);
  OUTLINED_FUNCTION_0_58(v18[38], v61);
  OUTLINED_FUNCTION_0_58(v18[39], v62);
  OUTLINED_FUNCTION_0_58(v18[40], v63);
  OUTLINED_FUNCTION_0_58(v18[41], v64);
  OUTLINED_FUNCTION_0_58(v18[42], v65);
  OUTLINED_FUNCTION_0_58(v18[43], v66);
  *&v25[v18[44]] = 0;
  if (qword_280BE3968 != -1)
  {
    swift_once();
  }

  v67 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v123 = sub_217752D28();

    object = v67;
    v67 = v123;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *&v25[v18[45]] = v67;
  v68 = &v25[v18[48]];
  memcpy(&v25[v18[46]], v146, 0x161uLL);
  v69 = &v25[v18[47]];
  *v69 = countAndFlagsBits;
  *(v69 + 1) = v37;
  v69[16] = BYTE4(v128);
  *v68 = v129;
  *(v68 + 1) = v38;
  v70 = v125;
  *&v25[v18[49]] = v126;
  *&v25[v18[50]] = v70;
  *&v25[v18[51]] = v124;
  *&v25[v18[52]] = v45;
LABEL_22:
  v71 = v136;
  v72 = sub_2172A3BC4(1, v136);
  v73 = v130;
  if ((v74 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v72, v18[18]);
  }

  sub_2174AFB9C(v137, v138);
  if (*&v138[24])
  {
    sub_2171F3F0C(v138, v139);
    sub_2171FF30C(v139, v142);
    v141[0].id.rawValue._countAndFlagsBits = 1;
    v141[0].id.rawValue._object = 0;
    v141[0].type.rawValue._object = 0;
    v141[0].type.rawValue._countAndFlagsBits = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v142, 0, 0, v141, v140);
    memcpy(v141, v140, 0x221uLL);
    nullsub_1();
    memcpy(v142, v25, 0x221uLL);
    sub_2171F0738(v142, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v25, v141, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v139);
  }

  else
  {
    sub_2171F0738(v138, &qword_27CB28308, &qword_21776C430);
  }

  v75 = sub_2172A3BC4(2, v71);
  if ((v76 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v75, v18[19]);
  }

  v77 = sub_2172A3BC4(3, v71);
  if ((v78 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v77, v18[20]);
  }

  v79 = sub_2172A3BC4(4, v71);
  if ((v80 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v79, v18[21]);
  }

  sub_2172A3B98(9, v71, v73);
  object = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v73, 1, object) != 1)
  {
    v81 = v131;
    sub_2171F5110(v73, v131, &qword_27CB241C0, &qword_217759480);
    v82 = v18[22];
    sub_2171F0738(&v25[v82], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v81, &v25[v82]);
  }

  v83 = a3;
  v84 = sub_2171F0738(v73, &qword_27CB241C0, &qword_217759480);
  if (qword_280BE8040 != -1)
  {
    v84 = OUTLINED_FUNCTION_14_3(&qword_280BE8040);
  }

  v87 = qword_280BE8048;
  v88 = unk_280BE8050;
  v89 = byte_280BE8058;
  v90 = qword_280BE8060;
  v91 = unk_280BE8068;
  v92 = byte_280BE8070;
  *(&v142[1] + 1) = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v142[2] = sub_2171FEF88(v84, v85, v86);
  v93 = swift_allocObject();
  *&v142[0] = v93;
  *(v93 + 16) = v87;
  *(v93 + 24) = v88;
  *(v93 + 32) = v89;
  *(v93 + 40) = v90;
  *(v93 + 48) = v91;
  *(v93 + 56) = v92;
  LOBYTE(v87) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v142);
  v94 = v83;
  v95 = v132;
  v96 = v136;
  if (v87)
  {
    sub_2172A3B80(6, v136);
    OUTLINED_FUNCTION_7_1();
    if (!v98)
    {
      v99 = v97;
      sub_2172A3B80(7, v96);
      OUTLINED_FUNCTION_7_1();
      if (!v98)
      {
        if (v99)
        {
          if (v100)
          {
            v102 = 0;
          }

          else
          {
            v102 = 2;
          }
        }

        else
        {
          v102 = v100 & 1;
        }

        goto LABEL_53;
      }
    }

    sub_2172A3B80(7, v96);
    OUTLINED_FUNCTION_7_1();
    if (!v98 && (v101 & 1) != 0)
    {
      v102 = 1;
LABEL_53:
      v25[v18[23]] = v102;
      goto LABEL_54;
    }

    sub_2172A3B80(6, v96);
    OUTLINED_FUNCTION_7_1();
    if (!v98 && (v103 & 1) != 0)
    {
      v102 = 2;
      goto LABEL_53;
    }
  }

LABEL_54:
  v104 = v18[13];
  if (v25[v104] == 2)
  {
    sub_2172A3B80(5, v96);
    OUTLINED_FUNCTION_7_1();
    if (!v98)
    {
      v25[v104] = v105;
    }
  }

  sub_2172A3B80(8, v96);
  OUTLINED_FUNCTION_7_1();
  if (!v98)
  {
    v25[v18[14]] = v106;
  }

  sub_2172A3B98(10, v96, v95);
  if (__swift_getEnumTagSinglePayload(v95, 1, object) != 1)
  {
    v107 = v131;
    sub_2171F5110(v95, v131, &qword_27CB241C0, &qword_217759480);
    v108 = v18[24];
    sub_2171F0738(&v25[v108], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v107, &v25[v108]);
  }

  sub_2171F0738(v95, &qword_27CB241C0, &qword_217759480);
  v109 = &v25[v18[16]];
  if (!v109[1])
  {
    v110 = sub_2172A3B68(11, v96);
    if (v111)
    {
      *v109 = v110;
      v109[1] = v111;
    }
  }

  v112 = sub_2172A3BC4(12, v96);
  if ((v113 & 1) == 0)
  {
    v112 = OUTLINED_FUNCTION_16_2(v112, v18[25]);
  }

  if (qword_280BE6870 != -1)
  {
    v112 = OUTLINED_FUNCTION_11_0(&qword_280BE6870);
  }

  *&v142[0] = qword_280BE6878;
  MEMORY[0x28223BE20](v112);
  *(&v124 - 2) = v142;
  v114 = sub_2173DDC78(sub_2174A5E68, (&v124 - 4), v133);

  if (v114)
  {
    v115 = sub_2174AFB24(v96, 13);

    if (v115)
    {
      if (qword_280BE2A80 != -1)
      {
        swift_once();
      }

      v117 = qword_280BE2A98;
      v116 = unk_280BE2AA0;
      v136 = xmmword_280BE2A88;
      v118 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v141[0].id = v136;
      v141[0].type.rawValue._countAndFlagsBits = v117;
      v141[0].type.rawValue._object = v116;
      *&v140[0] = &unk_28295B368;
      LOBYTE(v139[0]) = 4;
      sub_217751DE8();
      sub_2172B6904(v118, &v141[0].id.rawValue._countAndFlagsBits, v140, v139, v142);
      memset(v140, 0, 40);
      swift_unknownObjectRetain();
      Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v115, v140, v141);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24620, &qword_217758B60);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_2177586E0;
      sub_217284130(v141, v119 + 32);
      sub_2174AA468(v119);
      v120 = v18[29];
      sub_2171F0738(&v25[v120], &qword_27CB25320, &unk_21776E020);
      memcpy(&v25[v120], v142, 0x68uLL);
      swift_unknownObjectRelease();
      sub_21728418C(v141);
    }
  }

  else
  {
  }

  *(&v142[1] + 1) = v18;
  *&v142[2] = &protocol witness table for ArtistPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v142);
  sub_2174CCD5C(v25, boxed_opaque_existential_0, type metadata accessor for ArtistPropertyProvider);
  Artist.init(propertyProvider:)(v142, v134);
  swift_unknownObjectRelease();
  sub_2171F0738(v94, &qword_27CB27590, &qword_21776ADF0);
  return sub_2174CCDBC(v25, type metadata accessor for ArtistPropertyProvider);
}

uint64_t Artist.convertToLegacyModelStorageDictionary(for:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_6_1();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v193 - v7;
  HIDWORD(v194) = *a1;
  sub_2172A52D8(v9, v10, v11);
  v12 = MEMORY[0x277D84F90];
  v202 = sub_217751DC8();
  if (qword_280BE6A00 != -1)
  {
    swift_once();
  }

  v13 = sub_2172A44CC();
  if (v20)
  {
    v13 = 0;
    v21 = 0;
    v200[2] = 0;
    v200[1] = 0;
  }

  else
  {
    v21 = MEMORY[0x277D83B88];
  }

  v200[0] = v13;
  v200[3] = v21;
  sub_21729D26C(v200, 1, v14, v15, v16, v17, v18, v19, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  swift_allocObject();
  *&v192 = v12;
  *(&v192 + 1) = v12;
  v22 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v192, v12, qword_282959AF8);
  sub_2174C7A58(v22, v200);

  memcpy(v198, v200, 0x221uLL);
  memcpy(v199, v200, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v199) == 1)
  {
    memset(v201, 0, sizeof(v201));
  }

  else
  {
    memcpy(v195, v199, sizeof(v195));
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v201);
    sub_2171F0738(v198, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D26C(v201, 0, v23, v24, v25, v26, v27, v28, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE6938 != -1)
  {
    swift_once();
  }

  v29 = sub_2172A44CC();
  if (v30)
  {
    v29 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v31 = MEMORY[0x277D83B88];
  }

  v32 = OUTLINED_FUNCTION_2_63(v29, v31);
  sub_21729D26C(v32, 2, v33, v34, v35, v36, v37, v38, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE68C0 != -1)
  {
    swift_once();
  }

  v39 = sub_2172A44CC();
  if (v40)
  {
    v39 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v41 = MEMORY[0x277D83B88];
  }

  v42 = OUTLINED_FUNCTION_2_63(v39, v41);
  sub_21729D26C(v42, 3, v43, v44, v45, v46, v47, v48, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE68D8 != -1)
  {
    swift_once();
  }

  v49 = sub_2172A44CC();
  if (v50)
  {
    v49 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v51 = MEMORY[0x277D83B88];
  }

  v52 = OUTLINED_FUNCTION_2_63(v49, v51);
  sub_21729D26C(v52, 4, v53, v54, v55, v56, v57, v58, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE69B8 != -1)
  {
    swift_once();
  }

  sub_2176CAA04(qword_280C021B0, v59, v60, v61, v62, v63, v64, v65, v193, v194, *v195, *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88], *&v195[96], *&v195[104], *&v195[112], *&v195[120], *&v195[128], *&v195[136], *&v195[144], *&v195[152]);
  v66 = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v66) == 1)
  {
    sub_2171F0738(v8, &qword_27CB241C0, &qword_217759480);
    memset(v195, 0, 32);
  }

  else
  {
    *&v195[24] = v66;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v195);
    (*(*(v66 - 8) + 32))(boxed_opaque_existential_0, v8, v66);
  }

  v68 = OUTLINED_FUNCTION_6_41();
  v75 = sub_21729D26C(v68, 9, v69, v70, v71, v72, v73, v74, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE8040 != -1)
  {
    v75 = OUTLINED_FUNCTION_14_3(&qword_280BE8040);
  }

  v78 = qword_280BE8048;
  v79 = unk_280BE8050;
  v80 = byte_280BE8058;
  v81 = qword_280BE8060;
  v82 = unk_280BE8068;
  v83 = byte_280BE8070;
  *&v195[24] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v195[32] = sub_2171FEF88(v75, v76, v77);
  v84 = swift_allocObject();
  *v195 = v84;
  *(v84 + 16) = v78;
  *(v84 + 24) = v79;
  *(v84 + 32) = v80;
  *(v84 + 40) = v81;
  *(v84 + 48) = v82;
  *(v84 + 56) = v83;
  LOBYTE(v78) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v195);
  v92 = MEMORY[0x277D839B0];
  if (v78)
  {
    if (qword_280BE6960 != -1)
    {
      OUTLINED_FUNCTION_10_33(&qword_280BE6960);
    }

    sub_2176CAA24(qword_280C02198, v85, v86, v87, v88, v89, v90, v91, v193, v194, *v195, *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88], *&v195[96], *&v195[104], *&v195[112], *&v195[120], *&v195[128], *&v195[136]);
    *&v195[24] = v92;
    v195[0] = v195[0] == 2;
    v93 = OUTLINED_FUNCTION_6_41();
    sub_21729D26C(v93, 6, v94, v95, v96, v97, v98, v99, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  }

  if (qword_280BE6960 != -1)
  {
    OUTLINED_FUNCTION_10_33(&qword_280BE6960);
  }

  sub_2176CAA24(qword_280C02198, v85, v86, v87, v88, v89, v90, v91, v193, v194, *v195, *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88], *&v195[96], *&v195[104], *&v195[112], *&v195[120], *&v195[128], *&v195[136]);
  *&v195[24] = v92;
  v195[0] = v195[0] == 1;
  v100 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v100, 7, v101, v102, v103, v104, v105, v106, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE68B0 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02148, v107, v108, v109, v110, v111, v112, v113, v193, v194, *v195, *&v195[8], *&v195[16], *&v195[24], *&v195[28], v195[30], v195[31], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  *&v195[24] = v92;
  v195[0] = v114 & 1;
  v115 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v115, 5, v116, v117, v118, v119, v120, v121, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE6840 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02130, v122, v123, v124, v125, v126, v127, v128, v193, v194, *v195, *&v195[8], *&v195[16], *&v195[24], *&v195[28], v195[30], v195[31], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  *&v195[24] = v92;
  v195[0] = v129 & 1;
  v130 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v130, 8, v131, v132, v133, v134, v135, v136, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE6918 != -1)
  {
    swift_once();
  }

  sub_2176CAA04(qword_280C02178, v137, v138, v139, v140, v141, v142, v143, v193, v194, *v195, *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88], *&v195[96], *&v195[104], *&v195[112], *&v195[120], *&v195[128], *&v195[136], *&v195[144], *&v195[152]);
  if (__swift_getEnumTagSinglePayload(v5, 1, v66) == 1)
  {
    sub_2171F0738(v5, &qword_27CB241C0, &qword_217759480);
    memset(v195, 0, 32);
  }

  else
  {
    *&v195[24] = v66;
    v144 = __swift_allocate_boxed_opaque_existential_0(v195);
    (*(*(v66 - 8) + 32))(v144, v5, v66);
  }

  v145 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v145, 10, v146, v147, v148, v149, v150, v151, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE6898 != -1)
  {
    swift_once();
  }

  v152 = sub_2172A3FF0();
  if (v153)
  {
    v154 = v152;
  }

  else
  {
    v154 = 0;
  }

  v155 = 0xE000000000000000;
  *&v195[24] = MEMORY[0x277D837D0];
  if (v153)
  {
    v155 = v153;
  }

  *v195 = v154;
  *&v195[8] = v155;
  v156 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v156, 11, v157, v158, v159, v160, v161, v162, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE69F8 != -1)
  {
    swift_once();
  }

  v163 = sub_2172A44CC();
  if (v164)
  {
    v163 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v165 = MEMORY[0x277D83B88];
  }

  v166 = OUTLINED_FUNCTION_2_63(v163, v165);
  sub_21729D26C(v166, 12, v167, v168, v169, v170, v171, v172, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  if (qword_280BE6870 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280BE6870);
  }

  sub_2176CA750(qword_280BE6878, v173, v174, v175, v176, v177, v178, v179, v193, v194, *v195, *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88], *&v195[96], *&v195[104], *&v195[112], *&v195[120], *&v195[128], *&v195[136], *&v195[144], *&v195[152]);
  if (!*&v195[88])
  {
    v181 = &qword_27CB25320;
    v182 = &unk_21776E020;
    v183 = v195;
LABEL_65:
    sub_2171F0738(v183, v181, v182);
    memset(v195, 0, 32);
    goto LABEL_66;
  }

  sub_2172CE898();
  sub_2171F0738(v195, &qword_27CB27C80, &unk_21775D420);
  if (!v197[1])
  {
    v181 = &unk_27CB27760;
    v182 = &unk_21775A2D0;
    v183 = v197;
    goto LABEL_65;
  }

  v196 = BYTE4(v194);
  v180 = sub_2172A2B9C(&v196);
  sub_21728418C(v197);
  *&v195[24] = sub_2173AB24C();
  *v195 = v180;
LABEL_66:
  v184 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v184, 13, v185, v186, v187, v188, v189, v190, v193, v194, v195[0], *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88]);
  return v202;
}

void Artist.LegacyModelArtistPropertyKey.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 14;
  if (v3 < 0xE)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t sub_2174CC9F8@<X0>(unint64_t *a1@<X8>)
{
  result = Artist.LegacyModelArtistPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2174CCA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2174CCAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8570;
  if (!qword_280BE8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8570);
  }

  return result;
}

unint64_t sub_2174CCB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A52D8(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_2174CCB30(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2174CCB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB286D0;
  if (!qword_27CB286D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286D0);
  }

  return result;
}

unint64_t sub_2174CCB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB286D8;
  if (!qword_27CB286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286D8);
  }

  return result;
}

uint64_t _s28LegacyModelArtistPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s28LegacyModelArtistPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2174CCD5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2174CCDBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2174CCE14()
{
  result = qword_280BE53E0;
  if (!qword_280BE53E0)
  {
    type metadata accessor for CloudArtist.Attributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE53E0);
  }

  return result;
}

unint64_t sub_2174CCE6C()
{
  result = qword_280BE2388;
  if (!qword_280BE2388)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733AD70(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2388);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2174CCFF4(uint64_t a1)
{
  v5 = MEMORY[0x277D83428] + 64;
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  result = _s6LoaderC12LoadingStateOMa(319, v4);
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v7 = "\t";
    v8 = &unk_21776E230;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2174CD0B4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2174CD0F4(a1);
  return v2;
}

char *sub_2174CD0F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *(v1 + 2) = v5;
  OUTLINED_FUNCTION_0_41();
  v8 = *(v3 + 80);
  (*(*(v8 - 8) + 32))(&v1[*(v7 + 120)], a1, v8);
  v9 = *(v3 + 104);
  v14 = v8;
  v15 = *(v4 + 88);
  v16 = v9;
  _s6LoaderC12LoadingStateOMa(0, &v14);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_41();
  v11 = &v1[*(v10 + 128)];
  *v11 = 0;
  v11[8] = 1;
  OUTLINED_FUNCTION_0_41();
  v1[*(v12 + 136)] = 2;
  return v1;
}

uint64_t sub_2174CD25C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  sub_2174CD2B4(a1, a2, a3 & 1);
  return v6;
}

uint64_t sub_2174CD2B4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_41();
  v8 = v7;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *(v9 + 16) = v10;
  *v10 = 0;
  *(v3 + 16) = v9;
  OUTLINED_FUNCTION_0_41();
  v12 = v3 + *(v11 + 120);
  *v12 = a1;
  *(v12 + 8) = a2;
  a3 &= 1u;
  *(v12 + 16) = a3;
  v13 = *(v8 + 96);
  v18[0] = *(v8 + 80);
  v18[1] = v13;
  _s6LoaderC12LoadingStateOMa(0, v18);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_41();
  v15 = v3 + *(v14 + 128);
  *v15 = a2;
  *(v15 + 8) = 0;
  OUTLINED_FUNCTION_0_41();
  *(v3 + *(v16 + 136)) = a3;
  return v3;
}

uint64_t sub_2174CD3C0()
{

  UnfairLock.locked<A>(_:)(sub_2174CEE54);
}

uint64_t sub_2174CD450@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_2177528F8();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v75 - v9;
  v10 = *(v5 - 8);
  MEMORY[0x28223BE20](v11);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - v14;
  v16 = *(v3 + 104);
  v103[0] = v5;
  *&v103[1] = *(v4 + 88);
  v103[3] = v16;
  v17 = _s6LoaderC12LoadingStateOMa(0, v103);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  v23 = *(v3 + 120);
  swift_beginAccess();
  v90 = v18;
  (*(v18 + 16))(v22, &a1[v23], v17);
  v88 = v17;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v10 + 32))(v91, v22, v5);
  }

  v83 = v23;
  v84 = v10;
  v25 = v5;
  v26 = *v22;
  v27 = *(v22 + 1);
  if (v22[16])
  {
    v28 = *v22;
    v29 = dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
    if (v29)
    {
      v31 = v29;
      v32 = v30;
      v85 = v25;
      v33 = dynamic_cast_existential_1_conditional(v25, v25, &protocol descriptor for MusicItemTypeValueProviding);
      if (v33)
      {
        v35 = v33;
        v36 = v34;
        v77 = v32;
        v78 = v31;
        v37 = dynamic_cast_existential_1_conditional(v85, v85, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
        v75 = v38;
        v76 = v37;
        if (v37)
        {
          v39 = [v28 identifiersForSectionAtIndex_];
          v40 = v36;
          v41 = *(v36 + 8);
          swift_unknownObjectRetain();
          v41(v102, v35, v40);
          v99 = v102[0];
          v100 = v102[1];
          *&v96 = &unk_28295F850;
          LOBYTE(v93) = 4;
          v79 = v39;
          sub_2172B6904(v39, &v99, &v96, &v93, v103);
          memcpy(v102, v103, 0x161uLL);
          sub_217269EF4(v103, &v99);
          v80 = v28;
          v42 = [v28 sectionItemAtIndexPathBlock];
          *(swift_allocObject() + 16) = v42;
          v101 = 0;
          v99 = 0u;
          v100 = 0u;
          v41(&v96, v35, v40);
          v93 = v96;
          v94 = v97;
          v95 = v98;
          v92 = 1;
          v43 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
          swift_allocObject();
          LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
          *(&v100 + 1) = v43;
          v101 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
          *&v99 = v44;
          v45 = *(v77 + 8);

          v45(&v96);
          v47 = v75;
          v46 = v76;
          v48 = *(v75 + 24);
          *(&v102[1] + 1) = v76;
          *&v102[2] = v75;
          __swift_allocate_boxed_opaque_existential_0(v102);
          v48(&v99, &v96, v46, v47);
          sub_2171FF30C(v102, &v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
          v49 = v87;
          v50 = v85;
          if (swift_dynamicCast())
          {
            swift_unknownObjectRelease();

            sub_217269F50(v103);

            __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
            v51 = v84;
            v52 = *(v84 + 32);
            v53 = v86;
            v52(v86, v49, v50);
            (*(v51 + 16))(v91, v53, v50);
            v54 = v89;
            v52(v89, v53, v50);
            v55 = v88;
            swift_storeEnumTagMultiPayload();
            v56 = v83;
            swift_beginAccess();
            (*(v90 + 40))(&a1[v56], v54, v55);
            swift_endAccess();
            return __swift_destroy_boxed_opaque_existential_1(v102);
          }

          __swift_storeEnumTagSinglePayload(v49, 1, 1, v50);
          (*(v81 + 8))(v49, v82);
          *&v99 = 0;
          *(&v99 + 1) = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177AED10);
          sub_217752C78();
          MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AED30);
          v73 = sub_217753348();
          MEMORY[0x21CEA23B0](v73);

          MEMORY[0x21CEA23B0](46, 0xE100000000000000, v74);
        }

        else
        {
          v103[0] = 0;
          v103[1] = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AAED0);
          v69 = sub_217753348();
          MEMORY[0x21CEA23B0](v69);

          MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60, v70);
        }
      }

      else
      {
        v103[0] = 0;
        v103[1] = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AAED0);
        v67 = sub_217753348();
        MEMORY[0x21CEA23B0](v67);

        MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0, v68);
      }
    }

    else
    {
      v103[0] = 0;
      v103[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AAED0);
      v65 = sub_217753348();
      MEMORY[0x21CEA23B0](v65);

      MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AAF20, v66);
    }
  }

  else
  {
    *&v102[0] = [*v22 sectionAtIndex_];
    if (swift_dynamicCast())
    {
      v58 = v103[0];
      v57 = v103[1];
      sub_217751DE8();
      v59 = v85;
      if (swift_dynamicCast())
      {

        __swift_storeEnumTagSinglePayload(v59, 0, 1, v5);
        v60 = v84;
        v61 = *(v84 + 32);
        v61(v15, v59, v25);
        (*(v60 + 16))(v91, v15, v25);
        v62 = v89;
        v61(v89, v15, v25);
        v63 = v88;
        swift_storeEnumTagMultiPayload();
        v64 = v83;
        swift_beginAccess();
        (*(v90 + 40))(&a1[v64], v62, v63);
        return swift_endAccess();
      }

      __swift_storeEnumTagSinglePayload(v59, 1, 1, v5);
      (*(v81 + 8))(v59, v82);
      v103[0] = 0;
      v103[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177AED10);
      *&v102[0] = v58;
      *(&v102[0] + 1) = v57;
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AED30);
      v71 = sub_217753348();
      MEMORY[0x21CEA23B0](v71);

      MEMORY[0x21CEA23B0](46, 0xE100000000000000, v72);
    }
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2174CE07C()
{
  OUTLINED_FUNCTION_0_41();
  v2 = v1;

  OUTLINED_FUNCTION_0_41();
  v4 = *(v3 + 120);
  v5 = *(v2 + 96);
  v8[0] = *(v2 + 80);
  v8[1] = v5;
  v6 = _s6LoaderC12LoadingStateOMa(0, v8);
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  return v0;
}

uint64_t sub_2174CE12C()
{
  sub_2174CE07C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2174CE1BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB286E0, qword_21776E280);
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v2;
  type metadata accessor for MusicLibrarySection.Kind(255, v6);
  result = swift_getTupleTypeMetadata3();
  if (v4 <= 0x3F)
  {
    v7 = result;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v8 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2174CE284(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2174CE3A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

BOOL sub_2174CE5B4(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = *a1;
  v5 = *(a1 + *(*a1 + 136));
  v6 = *(a2 + *(*a2 + 136));
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == 2)
    {
      return 0;
    }

    a1 = sub_217686748(v5 & 1, v6 & 1);
    if ((a1 & 1) == 0)
    {
      return 0;
    }

    v4 = *v3;
  }

  v8 = v3 + *(v4 + 128);
  v9 = *v8;
  v10 = v8[8];
  v11 = a2 + *(*a2 + 128);
  if ((v10 & 1) == 0)
  {
    if (v11[8])
    {
      return 0;
    }

    v12 = v9 == *v11;
    if (v9 != *v11)
    {
      return 0;
    }

LABEL_14:
    MEMORY[0x28223BE20](a1);

    sub_21720BA7C();

    return v12;
  }

  if (v11[8])
  {
    v12 = 1;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_2174CE74C(uint64_t a1)
{

  sub_21720BA7C();
}

uint64_t sub_2174CE7B8(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v48 = a4;
  v49 = a3;
  v6 = *a1;
  v51 = *(*(*a1 + 80) - 8);
  MEMORY[0x28223BE20](a1);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - v9;
  v10 = *(v6 + 104);
  v52 = v11;
  v55 = v11;
  v56 = *(v12 + 88);
  v57 = v10;
  v13 = _s6LoaderC12LoadingStateOMa(255, &v55);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  v54 = TupleTypeMetadata2;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v44 - v15;
  v17 = *(v13 - 8);
  MEMORY[0x28223BE20](v18);
  v50 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = *(v6 + 120);
  swift_beginAccess();
  v24 = *(v17 + 16);
  v24(v22, &a1[v23], v13);
  v25 = *(*a2 + 120);
  swift_beginAccess();
  v26 = v54;
  v27 = *(v54 + 48);
  v45 = v17;
  v28 = v22;
  v29 = v27;
  (*(v17 + 32))(v16, v28, v13);
  v30 = (a2 + v25);
  v31 = v16;
  v24(&v16[v29], v30, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = v26;
LABEL_6:
    v42 = v53;
    return (*(v42 + 8))(v31, v13);
  }

  v32 = v26;
  v33 = v50;
  v24(v50, v16, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v51 + 8))(v33, v52);
    v13 = v32;
    goto LABEL_6;
  }

  v35 = v51;
  v34 = v52;
  v36 = *(v51 + 32);
  v37 = v46;
  v36(v46, v33, v52);
  v38 = v47;
  v36(v47, &v16[v29], v34);
  v39 = sub_217751F08();
  v40 = *(v35 + 8);
  v41 = v38;
  v31 = v16;
  v40(v41, v34);
  v40(v37, v34);
  *v49 = v39 & 1;
  v42 = v45;
  return (*(v42 + 8))(v31, v13);
}

uint64_t sub_2174CEC2C(uint64_t a1)
{
  v2 = *v1;
  v8 = *(v1 + *(*v1 + 136));
  v3 = *(v2 + 96);
  v7[0] = *(v2 + 80);
  v7[1] = v3;
  type metadata accessor for MusicLibrarySection.Kind(255, v7);
  sub_2177528F8();
  swift_getWitnessTable();
  sub_217752908();
  v4 = (v1 + *(*v1 + 128));
  if (*(v4 + 8) == 1)
  {
    return sub_217753208();
  }

  v6 = *v4;
  sub_217753208();
  return MEMORY[0x21CEA3550](v6);
}

uint64_t sub_2174CED4C()
{
  sub_2177531E8();
  sub_2174CEC2C(v1);
  return sub_217753238();
}

uint64_t sub_2174CEDD4(uint64_t a1)
{
  sub_2177531E8();
  sub_2174CEC2C(v2);
  return sub_217753238();
}

double sub_2174CEE70@<D0>(uint64_t x8_0@<X8>)
{
  v3 = sub_217752338();

  return CloudResourceCollection.init(data:)(v3, x8_0);
}

__n128 sub_2174CEEB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = *a11;
  v14 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = v14;
  *(a9 + 104) = *(a11 + 32);
  *(a9 + 112) = a12;
  *(a9 + 120) = a13;
  return result;
}

uint64_t CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  return sub_2174CF204(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_2174D2834);
}

{
  return sub_2174CF204(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_2174D2D9C);
}

void MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_35_17(v3, v4, v5, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_74_11();
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v7, v8, &qword_27CB24188, &dword_217758930);
    if (*(&v35 + 1))
    {
      OUTLINED_FUNCTION_64_17();
      v10 = OUTLINED_FUNCTION_34_2();
      v2(v10);
      sub_217283154(&v34);
    }

    else
    {
      OUTLINED_FUNCTION_74_11();
      sub_2171F0738(&v34, &qword_27CB24188, &dword_217758930);
    }
  }

  v11 = MusicItemCollection.items.getter(v0);
  v19 = OUTLINED_FUNCTION_70_12(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_95_12();
  v20 = OUTLINED_FUNCTION_25_6();
  type metadata accessor for CloudResource(v20, v21, v22, v23);
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_68_14(WitnessTable, v25, v26, v27, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v28);

  OUTLINED_FUNCTION_86_9();
  if (v1)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v29, v30, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_85_10();
  OUTLINED_FUNCTION_37_18(v31, v32);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_35_17(v3, v4, v5, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_74_11();
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v7, v8, &qword_27CB24188, &dword_217758930);
    if (*(&v35 + 1))
    {
      OUTLINED_FUNCTION_64_17();
      v10 = OUTLINED_FUNCTION_34_2();
      v2(v10);
      sub_217283154(&v34);
    }

    else
    {
      OUTLINED_FUNCTION_74_11();
      sub_2171F0738(&v34, &qword_27CB24188, &dword_217758930);
    }
  }

  v11 = MusicItemCollection.items.getter(v0);
  v19 = OUTLINED_FUNCTION_70_12(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_95_12();
  v20 = OUTLINED_FUNCTION_25_6();
  type metadata accessor for CloudResource(v20, v21, v22, v23);
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_68_14(WitnessTable, v25, v26, v27, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v28);

  OUTLINED_FUNCTION_86_9();
  if (v1)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v29, v30, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_85_10();
  OUTLINED_FUNCTION_37_18(v31, v32);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t CloudResourceCollection.compactMap<A>(resourceElementTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = v4[1];
  v15 = *v4;
  *&v16[0] = v4[2];
  sub_2171FB568(v15, v14);
  sub_217752418();
  sub_217751DE8();
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  sub_217752148();

  v5 = sub_21738C4B0((v4 + 9), v16, &qword_27CB24188, &dword_217758930);
  OUTLINED_FUNCTION_31_21(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16[0], v16[1], v17);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2174CF204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, void (*a10)(char *, uint64_t))
{
  v12 = v11;
  *&v41[0] = v11[2];
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v36 = a2;
  v37 = a1;
  v14 = sub_217752418();
  v15 = OUTLINED_FUNCTION_57_0();
  v18 = type metadata accessor for RelatedItem(v15, v16, a8, v17);
  sub_217751DE8();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_2175FA70C(a10, v30, v14, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

  sub_21738C4B0(a3, &v38, &qword_27CB24188, &dword_217758930);
  if (*(&v39 + 1))
  {
    v41[0] = v38;
    v41[1] = v39;
    v42 = v40;
  }

  else
  {
    sub_217380098(a6, a9, v41);
    if (*(&v39 + 1))
    {
      sub_2171F0738(&v38, &qword_27CB24188, &dword_217758930);
    }
  }

  v22 = *v11;
  v23 = v12[1];
  if (v23 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = *v12;
  }

  if (v23 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v12[1];
  }

  sub_217741DEC(v21, 0, v41, v24, v25, v12[3], v12[4], v12[14], x8_0, v12[15]);
  sub_2171FB568(v22, v23);
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void CloudResourceCollection.init<A, B>(merging:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v41 = v1;
  v42 = v0;
  v43 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v40 = v9;
  v10 = *(v3 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v36 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  memset(v49, 0, 128);
  v37 = v10;
  v38 = v8;
  (*(v10 + 16))(v13, v8, v4);
  sub_217752128();
  v39 = v4;
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_217752968();
    if (v48[2] == 1)
    {
      break;
    }

    memcpy(v46, v48, sizeof(v46));
    if (v46[2])
    {
      memcpy(v47, v48, sizeof(v47));
      v23 = type metadata accessor for CloudResourceCollection(255, v6, v21, v22);
      v24 = sub_2177528F8();
      v25 = *(v24 - 8);
      (*(v25 + 16))(v45, v49, v24);
      if (v45[2])
      {
        memcpy(v46, v45, sizeof(v46));
        v44 = 0;
        CloudResourceCollection.merging<A>(_:configuration:incrementalLoadingEncoding:)(v47, &v44, v45);
        OUTLINED_FUNCTION_41_0();
        v27 = *(v26 + 8);
        v27(v46, v23);
        v27(v47, v23);
        (*(v25 + 8))(v49, v24);
        v28 = v45;
      }

      else
      {
        v30 = *(v25 + 8);
        v30(v49, v24);
        v30(v45, v24);
        v28 = v47;
      }

      memcpy(v49, v28, 0x80uLL);
    }

    else
    {
      type metadata accessor for CloudResourceCollection(255, v6, v19, v20);
      sub_2177528F8();
      OUTLINED_FUNCTION_43();
      (*(v29 + 8))(v46);
    }
  }

  OUTLINED_FUNCTION_41_0();
  (*(v31 + 8))();
  (*(v37 + 8))(v38, v39);
  (*(v36 + 8))(v18, AssociatedTypeWitness);
  memcpy(v48, v49, sizeof(v48));
  if (v48[2])
  {
    memcpy(v40, v49, 0x80uLL);
  }

  else
  {
    type metadata accessor for CloudResourceCollection(255, v6, v32, v33);
    sub_2177528F8();
    OUTLINED_FUNCTION_43();
    (*(v34 + 8))(v48);
    OUTLINED_FUNCTION_88_9(v40, 0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_2174CF9BC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v63 = v2;
  v74 = type metadata accessor for CloudTrack(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v73 = v5 - v4;
  v72 = type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v82 = v8 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v70 = &v60 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  OUTLINED_FUNCTION_0_0();
  v68 = v14;
  v69 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v81 = &v60 - v16;
  v17 = *v1;
  v18 = v1[1];
  v62 = v1;
  v19 = v1[2];
  v20 = *(v19 + 16);
  if (v20)
  {
    v60 = v18;
    v61 = v17;
    sub_2171FB568(v17, v18);
    v86 = MEMORY[0x277D84F90];
    sub_217276738(0, v20, 0);
    v21 = 0;
    v64 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v65 = v20;
    v22 = v86;
    v66 = v19;
    v67 = v10;
    while (v21 < *(v19 + 16))
    {
      v23 = v70;
      sub_21738C4B0(v64 + *(v10 + 72) * v21, v70, &qword_27CB24820, &unk_2177650E0);
      v24 = v73;
      sub_2174D7D60(v23, v73);
      swift_getEnumCaseMultiPayload();
      v83 = v22;
      v25 = v24;
      v26 = v82;
      sub_2174D7E80(v25, v82);
      swift_storeEnumTagMultiPayload();
      v27 = v81;
      sub_2174D7D60(v26, v81);
      v28 = v71[10];
      v29 = v23 + v71[9];
      v30 = *v29;
      v76 = *(v29 + 8);
      v77 = *(v29 + 16);
      v31 = v23 + v28;
      v32 = *(v23 + v28);
      v33 = *(v31 + 8);
      v78 = v30;
      v79 = v32;
      v34 = v71[11];
      memcpy(v85, (v23 + v34), sizeof(v85));
      v35 = v71[13];
      v36 = *(v23 + v71[12]);
      v80 = v21;
      v75 = *(v23 + v35);
      v37 = *(v23 + v71[14]);
      v38 = *(v23 + v71[15]);
      v39 = v69;
      v40 = v27 + v69[9];
      v41 = v76;
      *v40 = v78;
      *(v40 + 8) = v41;
      *(v40 + 16) = v77;
      v42 = (v27 + v39[10]);
      *v42 = v79;
      v42[1] = v33;
      memcpy((v27 + v39[11]), (v23 + v34), 0x180uLL);
      *(v27 + v39[12]) = v36;
      *(v27 + v39[13]) = v75;
      *(v27 + v39[14]) = v37;
      v43 = v39[15];
      v22 = v83;
      *(v27 + v43) = v38;
      sub_217751DE8();
      sub_217751DE8();
      sub_21738C4B0(v85, &v84, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174D7DB8(v82, type metadata accessor for CloudPlaylistEntry);
      sub_2171F0738(v23, &qword_27CB24820, &unk_2177650E0);
      v86 = v22;
      v45 = *(v22 + 16);
      v44 = *(v22 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_217276738((v44 > 1), v45 + 1, 1);
        v22 = v86;
      }

      v46 = v81;
      v21 = v80 + 1;
      *(v22 + 16) = v45 + 1;
      sub_2174D7E10(v46, v22 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v45);
      v19 = v66;
      v10 = v67;
      if (v65 == v21)
      {
        v48 = v60;
        v47 = v61;
        v83 = v22;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v47 = v17;
    v48 = v18;
    sub_2171FB568(v17, v18);
    v83 = MEMORY[0x277D84F90];
LABEL_9:
    v49 = v62;
    v50 = v63;
    v51 = v62[3];
    v52 = v62[4];
    v53 = v62[6];
    v81 = v62[5];
    v82 = v51;
    v55 = v62[7];
    v54 = v62[8];
    sub_21738C4B0((v62 + 9), (v63 + 9), &qword_27CB24188, &dword_217758930);
    v56 = v49[14];
    v57 = v49[15];
    *v50 = v47;
    v50[1] = v48;
    v58 = v82;
    v50[2] = v83;
    v50[3] = v58;
    v59 = v81;
    v50[4] = v52;
    v50[5] = v59;
    v50[6] = v53;
    v50[7] = v55;
    v50[8] = v54;
    v50[14] = v56;
    v50[15] = v57;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }
}

uint64_t CloudResourceCollection.map<A>(resourceElementTransform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v24 = v5[1];
  v25 = *v5;
  v9 = v5[2];
  v30 = a2;
  *&v31[0] = v9;
  v27 = *(a3 + 16);
  v28 = a4;
  v29 = a1;
  sub_2171FB568(v25, v24);
  v10 = sub_217752418();
  sub_217751DE8();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2175FA70C(sub_2174D32A8, v26, v10, a4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v15 = v5[3];
  v14 = v5[4];
  v17 = v5[5];
  v16 = v5[6];
  v18 = v6[7];
  v19 = v6[8];
  sub_21738C4B0((v6 + 9), v31, &qword_27CB24188, &dword_217758930);
  v20 = v31[1];
  *(a5 + 72) = v31[0];
  v22 = v6[14];
  v21 = v6[15];
  *a5 = v25;
  *(a5 + 8) = v24;
  *(a5 + 16) = v13;
  *(a5 + 24) = v15;
  *(a5 + 32) = v14;
  *(a5 + 40) = v17;
  *(a5 + 48) = v16;
  *(a5 + 56) = v18;
  *(a5 + 64) = v19;
  *(a5 + 88) = v20;
  *(a5 + 104) = v32;
  *(a5 + 112) = v22;
  *(a5 + 120) = v21;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void CloudResourceCollection<A>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v83 = v21;
  v23 = v22;
  v25 = v24;
  v82 = v26;
  v28 = type metadata accessor for CloudResourceCollection.CodingKeys(255, v22, v21, v27);
  OUTLINED_FUNCTION_6_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_101();
  sub_217752ED8();
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v32 = v25[3];
  v84 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v32);
  sub_2177532C8();
  if (v20)
  {
    v33 = v84;
  }

  else
  {
    v34 = v83;
    v80 = v23;
    v79 = v28;
    v81 = v30;
    v35 = sub_217751DC8();
    LOBYTE(v88) = 0;
    if (sub_217752EC8())
    {

      sub_2174D331C(v38, v39, v40);
      sub_217752EA8();
      v33 = v84;
      v48 = v88;
      LOBYTE(v86[0]) = 0;
      sub_217752E08();
      sub_2174D79C8();
      v85[0] = v48;
      sub_217751DE8();
      v77 = Dictionary<>.init<A>(from:skippingValuesFoundIn:)(v86, v85, &type metadata for CloudResourceCollectionAttributes);
      v78 = v48;
      __swift_destroy_boxed_opaque_existential_1(&v88);
    }

    else
    {
      v77 = v35;
      *&v78 = 0;
      *(&v78 + 1) = 1;
      v33 = v84;
    }

    v41 = v80;
    type metadata accessor for CloudResourceCollectionEntry(255, v80, v36, v37);
    OUTLINED_FUNCTION_101();
    sub_217752418();
    LOBYTE(v86[0]) = 1;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v42 = sub_217752EA8();
    v43 = MEMORY[0x28223BE20](v42);
    *(&v72 - 2) = v41;
    *(&v72 - 1) = v34;
    KeyPath = swift_getKeyPath(byte_21776E328, v43);
    v84 = &v72;
    MEMORY[0x28223BE20](KeyPath);
    *(&v72 - 2) = v34;
    *(&v72 - 1) = v44;
    OUTLINED_FUNCTION_32_0();
    swift_getWitnessTable();
    v45 = sub_217752148();

    OUTLINED_FUNCTION_15_33();
    v46 = sub_217752EC8();
    v47 = *(&v78 + 1);
    if (v46)
    {
      OUTLINED_FUNCTION_15_33();
      KeyPath = sub_217752E68();
      v84 = v45;
    }

    else
    {
      v84 = v45;
      KeyPath = 0;
    }

    OUTLINED_FUNCTION_15_33();
    if (sub_217752EC8())
    {
      OUTLINED_FUNCTION_15_33();
      v74 = sub_217752E68();
      v81 = v49;
    }

    else
    {
      v74 = 0;
      v81 = 0;
    }

    OUTLINED_FUNCTION_15_33();
    if (sub_217752EC8())
    {
      OUTLINED_FUNCTION_15_33();
      v50 = sub_217752E68();
      OUTLINED_FUNCTION_83_11();
      v52 = v51;
    }

    else
    {
      OUTLINED_FUNCTION_83_11();
      v50 = 0;
      v52 = 0;
    }

    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    LOBYTE(v86[0]) = 5;
    if (sub_217752EC8())
    {
      sub_2174D79C8();
      AnyMusicItemCollectionIncrementalLoader.init(from:)(v85, v86);
      v73 = v50;
      sub_2171F0738(&v88, &qword_27CB24188, &dword_217758930);
      v88 = v86[0];
      v89 = v86[1];
      v90 = v87;
    }

    else
    {
      v73 = v50;
    }

    sub_2174D79C8();
    sub_2174D1CFC(v80, v53, v54, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
    v56 = sub_217752C68();

    v62 = Dictionary<>.init(from:skippingValuesFor:)(v86, v56, v57, v58, v59, v60, v61);
    v63 = OUTLINED_FUNCTION_84_9();
    v64(v63, v83);
    v65 = v90;
    v94 = v90;
    v67 = v88;
    v66 = v89;
    v92 = v88;
    v93 = v89;
    v68 = v82;
    *v82 = v78;
    v68[1] = v47;
    v69 = v73;
    v68[2] = v84;
    v68[3] = v69;
    v70 = KeyPath;
    v68[4] = v52;
    v68[5] = v70;
    v71 = v74;
    v68[6] = v75;
    v68[7] = v71;
    v68[8] = v81;
    *(v68 + 9) = v67;
    *(v68 + 11) = v66;
    v68[13] = v65;
    v68[14] = v77;
    v68[15] = v62;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_170();
}

void CloudResourceCollection<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v22 = v20;
  v80 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB286F0, &qword_21776E360);
  OUTLINED_FUNCTION_0_0();
  v81 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = &v78 - v31;
  v33 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_21738B390(v33, v34, v35);
  v82 = v32;
  sub_2177532F8();
  v38 = v20[14];
  v39 = v20[1];
  if (*(v38 + 16))
  {
    if (v39 == 1)
    {
      sub_217751DE8();
    }

    else
    {
      v47 = *v22;
      sub_2174D79C8();
      sub_217751DE8();
      sub_2171FB568(v47, v39);
      v48 = sub_2174D63F4(v47, v39, &v85);
      if (v21)
      {

        (*(v81 + 8))(v82, v28, v49);
LABEL_18:
        OUTLINED_FUNCTION_170();
        return;
      }

      v21 = 0;
      v38 = sub_2174D37FC(v38, v48);
      if (!*(v38 + 16))
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v83 = v38;
    LOBYTE(v88) = 0;
    type metadata accessor for CloudResourceCollection.CodingKeys(0, *(v25 + 16), v40, v41);
    OUTLINED_FUNCTION_6_42();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_91_10();
    CodingKey.convertToDynamicCodingKey()();
    v88 = v85;
    v89 = v86;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v43 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_61_10(v43);
    if (v21)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v39 != 1)
  {
    v85 = *v22;
    v86 = v39;
    LOBYTE(v83) = 0;
    type metadata accessor for CloudResourceCollection.CodingKeys(0, *(v25 + 16), v36, v37);
    OUTLINED_FUNCTION_6_42();
    swift_getWitnessTable();
    v44 = CodingKey.convertToDynamicCodingKey()();
    v83 = v88;
    v84 = v89;
    sub_2174D65EC(v44.stringValue._countAndFlagsBits, v44.stringValue._object, v45);
    v42 = v82;
    sub_217752F88();

    if (v21)
    {
      goto LABEL_17;
    }
  }

LABEL_15:
  v83 = v22[2];
  LOBYTE(v88) = 1;
  v50 = OUTLINED_FUNCTION_25_6();
  type metadata accessor for CloudResourceCollection.CodingKeys(v50, v51, v52, v53);
  sub_217751DE8();
  OUTLINED_FUNCTION_6_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_10_5();
  CodingKey.convertToDynamicCodingKey()();
  v88 = v85;
  v89 = v86;
  OUTLINED_FUNCTION_25_6();
  v42 = sub_217752418();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_61_10(WitnessTable);
  if (v21)
  {
LABEL_16:

LABEL_17:
    (*(v81 + 8))(v42, v28, v46);
    goto LABEL_18;
  }

  if (v22[8])
  {
    LOBYTE(v88) = 4;
    OUTLINED_FUNCTION_91_10();
    OUTLINED_FUNCTION_10_5();
    CodingKey.convertToDynamicCodingKey()();
    OUTLINED_FUNCTION_58_15();
  }

  if (v22[4])
  {
    LOBYTE(v88) = 2;
    OUTLINED_FUNCTION_91_10();
    OUTLINED_FUNCTION_10_5();
    CodingKey.convertToDynamicCodingKey()();
    OUTLINED_FUNCTION_58_15();
    v80 = v28;
  }

  else
  {
    v80 = v28;
  }

  v55 = v22[15];
  v56 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v55 + 64);
  v60 = (v57 + 63) >> 6;
  v79 = v55;
  sub_217751DE8();
  for (i = 0; v59; i = v62)
  {
    v62 = i;
LABEL_31:
    v63 = __clz(__rbit64(v59)) | (v62 << 6);
    v64 = (*(v79 + 48) + 16 * v63);
    v66 = *v64;
    v65 = v64[1];
    v67 = *(v79 + 56) + 24 * v63;
    v68 = *(v67 + 8);
    v69 = *(v67 + 16);
    v85 = *v67;
    v86 = v68;
    v87 = v69;
    v88 = v66;
    v89 = v65;
    sub_217751DE8();
    v70 = OUTLINED_FUNCTION_10_5();
    v72 = sub_21726A5E0(v70, v71, v69);
    sub_21733AC44(v72, v73, v74);
    sub_217752F88();
    v59 &= v59 - 1;

    v75 = OUTLINED_FUNCTION_10_5();
    sub_21726A608(v75, v76, v69);
  }

  while (1)
  {
    v62 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v62 >= v60)
    {

      (*(v81 + 8))(v82, v80, v77);
      goto LABEL_18;
    }

    v59 = *(v56 + 8 * v62);
    ++i;
    if (v59)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
}

void sub_2174D0DD8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v51 = v12;
  v52 = v11;
  v13 = v0;
  v56 = v14;
  if (v0[6])
  {
    v15 = v0[5];
    v53 = v0[6];
    v54 = v15;
  }

  else
  {
    v16 = *v0;
    v17 = v13[1];
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13[1];
    }

    if (v17 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v13;
    }

    v53 = v18;
    v54 = v19;
    v0 = sub_2171FB568(v16, v17);
  }

  *&v60[0] = v13[2];
  MEMORY[0x28223BE20](v0);
  v46[2] = v8;
  v47 = v6;
  v48 = v4;
  v49 = v2;
  OUTLINED_FUNCTION_57_0();
  v50 = v2;
  v20 = sub_217752418();
  v21 = OUTLINED_FUNCTION_57_0();
  v55 = v4;
  v24 = type metadata accessor for RelatedItem(v21, v22, v4, v23);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_2175FA70C(sub_2174D7704, v46, v20, v24, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v26);

  sub_21738C4B0(v10, &v57, &qword_27CB24188, &dword_217758930);
  if (*(&v58 + 1))
  {

    sub_2171F0738(v10, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_41_0();
    (*(v28 + 8))(v52, v6);
    v60[0] = v57;
    v60[1] = v58;
    v61 = v59;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_57_0();
    type metadata accessor for CloudResourceCollection(v29, v30, v31, v32);
    v33 = v52;
    sub_217380098(v6, v50, v60);

    sub_2171F0738(v10, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_41_0();
    (*(v34 + 8))(v33, v6);
    if (*(&v58 + 1))
    {
      sub_2171F0738(&v57, &qword_27CB24188, &dword_217758930);
    }
  }

  v35 = v13[3];
  v36 = v13[4];
  v37 = v13[14];
  v38 = v13[15];
  v39 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for CloudResourceCollection(v39, v40, v41, v42);
  OUTLINED_FUNCTION_43();
  v44 = *(v43 + 8);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v45 = OUTLINED_FUNCTION_10_5();
  v44(v45);
  v47 = v8;
  v48 = v55;
  sub_217741DEC(v27, 0, v60, v54, v53, v35, v36, v37, v56, v38);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174D10C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_21738C4B0(v2 + 16, &v22, &qword_27CB24188, &dword_217758930);
  v6 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    v6 = (*(v7 + 8))(v6, v7);
    v9 = v8;
    sub_217283154(&v22);
  }

  else
  {
    sub_2171F0738(&v22, &qword_27CB24188, &dword_217758930);
    v9 = 0;
  }

  v11 = *(v2 + 56);
  v10 = *(v2 + 64);
  swift_bridgeObjectRetain_n();
  v12 = MusicItemCollection.items.getter(a1);
  v13 = *(v3 + 72);
  if (v9)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  else
  {
    v21 = *(v3 + 72);
    sub_21738C4B0(v3 + 16, &v22, &qword_27CB24188, &dword_217758930);
    v13 = v21;
  }

  *&v14 = v11;
  *(&v14 + 1) = v10;
  *(a2 + 40) = v14;
  v15 = v23;
  *(a2 + 72) = v22;
  if (v10 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  v19 = *(v3 + 88);
  v18 = *(v3 + 96);
  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 56) = v6;
  *(a2 + 64) = v9;
  *(a2 + 88) = v15;
  *(a2 + 104) = v24;
  *(a2 + 112) = v19;
  *(a2 + 120) = v18;
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2174D1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2174D134C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2174D13D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28730, &unk_21776E8D8);
  OUTLINED_FUNCTION_0_0();
  v26 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2174D765C(v30, v31, v32);
  sub_2177532F8();
  sub_217752EF8();
  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D14F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2174D1564()
{
  OUTLINED_FUNCTION_98_13();
  sub_217753208();
  if (v0)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void *sub_2174D15C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28720, &qword_21776E8D0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174D765C(v9, v10, v11);
  sub_2177532C8();
  if (!v1)
  {
    v9 = sub_217752E18();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_2174D1718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174D134C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2174D1744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174D765C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174D1780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174D765C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_2174D17BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2174D15C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2174D1828(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

double CloudResourceCollection.init(data:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_66_12();
  v4 = sub_217751DC8();
  OUTLINED_FUNCTION_66_12();
  v5 = sub_217751DC8();
  *a2 = xmmword_2177586D0;
  *(a2 + 16) = a1;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 112) = v4;
  *(a2 + 120) = v5;
  return result;
}

uint64_t CloudResourceCollection.isEmpty.getter(uint64_t a1)
{
  sub_217752418();
  OUTLINED_FUNCTION_33();
  swift_getWitnessTable();
  return sub_217752738() & 1;
}

uint64_t CloudResourceCollection.nonEmptyResourceCollection.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  OUTLINED_FUNCTION_88_9(a2, 0);
  result = CloudResourceCollection.isEmpty.getter(v5);
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_57_0();
    sub_2177528F8();
    OUTLINED_FUNCTION_43();
    (*(v7 + 8))(a2);
    OUTLINED_FUNCTION_41_0();
    v9 = *(v8 + 16);

    return v9(a2, v2, a1);
  }

  return result;
}

uint64_t CloudResourceCollectionIncrementalLoadingEncoding.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t CloudResourceCollection.replacingIncrementalLoader(with:encoding:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if (v7)
  {
    goto LABEL_2;
  }

  sub_21738C4B0(a1, v24, &qword_27CB24188, &dword_217758930);
  v9 = v25;
  if (!v25)
  {
    sub_2171F0738(&v27, &qword_27CB24188, &dword_217758930);
    v8 = v24;
    goto LABEL_7;
  }

  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  sub_217283154(v24);
  if (!v13)
  {
LABEL_2:
    v8 = &v27;
LABEL_7:
    sub_2171F0738(v8, &qword_27CB24188, &dword_217758930);
    sub_21738C4B0(a1, &v27, &qword_27CB24188, &dword_217758930);
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = *(v4 + 8);
  v17 = *(v4 + 16);
  v16 = *(v4 + 24);
  v18 = *(v4 + 48);
  v19 = *(v4 + 112);
  v20 = *(v4 + 120);
  *a3 = *v4;
  *(a3 + 8) = v15;
  *(a3 + 16) = v17;
  *(a3 + 24) = v16;
  *(a3 + 32) = *(v4 + 32);
  *(a3 + 48) = v18;
  *(a3 + 56) = v11;
  *(a3 + 64) = v13;
  v21 = v27;
  v22 = v29;
  *(a3 + 88) = v28;
  *(a3 + 72) = v21;
  *(a3 + 104) = v22;
  *(a3 + 112) = v19;
  *(a3 + 120) = v20;
  sub_2171FB568(v14, v15);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

unint64_t sub_2174D1CB0()
{
  OUTLINED_FUNCTION_92_11();
  v0 = sub_217752DC8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_2174D1CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for CloudResourceCollection.CodingKeys(255, a1, a3, a4);
  OUTLINED_FUNCTION_57_0();
  sub_217752FD8();
  swift_allocObject();
  v5 = sub_2177522C8();
  *v6 = 50462976;
  *(v6 + 4) = 1284;

  sub_21726B91C(v5, v4);
}

unint64_t sub_2174D1D6C(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      result = 1635017060;
      break;
    case 2:
      result = 1717924456;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 1954047342;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174D1E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174D1E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v6);
}

uint64_t sub_2174D1EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174D1F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_2174D1FCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2174D1CB0();
  *a1 = result;
  return result;
}

unint64_t sub_2174D1FFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2174D1D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2174D2030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2174D1CF8();
  *a1 = result;
  return result;
}

uint64_t sub_2174D2084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2174D20D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static CloudResourceCollection<A>.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4 == 1)
  {
    if (v5 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 == 1)
    {
      goto LABEL_13;
    }

    if (v4)
    {
      if (!v5)
      {
        goto LABEL_13;
      }

      v11 = *a1 == *a2 && v4 == v5;
      if (!v11 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v5)
    {
      goto LABEL_13;
    }
  }

  if ((sub_217752448() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = a1[3] == a2[3] && v6 == v7;
    if (!v8 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    goto LABEL_13;
  }

  v12 = a1[6];
  v13 = a2[6];
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = a1[5] == a2[5] && v12 == v13;
    if (!v14 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v13)
  {
    goto LABEL_13;
  }

  v15 = a1[8];
  v16 = a2[8];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = a1[7] == a2[7] && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v16)
  {
    goto LABEL_13;
  }

  sub_21738C4B0((a1 + 9), v29, &qword_27CB24188, &dword_217758930);
  sub_21738C4B0((a2 + 9), &v31, &qword_27CB24188, &dword_217758930);
  if (v30)
  {
    sub_21738C4B0(v29, v26, &qword_27CB24188, &dword_217758930);
    if (*(&v32 + 1))
    {
      v24[0] = v31;
      v24[1] = v32;
      v25 = v33;
      v18 = v27;
      v19 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v20 = *(v19 + 32);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      v22 = v20(v24, v21, v18, v19);
      sub_217283154(v24);
      sub_217283154(v26);
      sub_2171F0738(v29, &qword_27CB24188, &dword_217758930);
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }

    sub_217283154(v26);
LABEL_53:
    sub_2171F0738(v29, &qword_27CB24928, &unk_21775E020);
    goto LABEL_13;
  }

  if (*(&v32 + 1))
  {
    goto LABEL_53;
  }

  sub_2171F0738(v29, &qword_27CB24188, &dword_217758930);
LABEL_50:
  sub_217261FB0(a1[14], a2[14]);
  if (v23)
  {
    sub_217261FB0(a1[15], a2[15]);
    return v9 & 1;
  }

LABEL_13:
  v9 = 0;
  return v9 & 1;
}

uint64_t CloudResourceCollection<A>.hash(into:)(const void *a1)
{
  v3 = v1[1];
  if (v3 == 1 || (OUTLINED_FUNCTION_119(), !v3))
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  sub_217752438();
  if (v1[4])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_73_12();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v1[6])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_73_12();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v1[8])
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_73_12();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21738C4B0((v1 + 9), &v10, &qword_27CB24188, &dword_217758930);
  if (*(&v11 + 1))
  {
    v7 = v10;
    v8 = v11;
    v9 = v12;
    OUTLINED_FUNCTION_119();
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    v4 = OUTLINED_FUNCTION_66_12();
    v5(v4);
    sub_217283154(&v7);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_217265A08(a1, v1[14]);
  return sub_217265A08(a1, v1[15]);
}

uint64_t CloudResourceCollection<A>.hashValue.getter()
{
  OUTLINED_FUNCTION_98_13();
  CloudResourceCollection<A>.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2174D2648(uint64_t a1)
{
  sub_2177531E8();
  CloudResourceCollection<A>.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2174D269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  type metadata accessor for RelatedItem(0, a2, a3, v6);
  return swift_storeEnumTagMultiPayload();
}

double sub_2174D2728@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v20 = CloudResource.id.getter(v19);
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a1;
  v32 = a3;
  v33 = a2;
  sub_2176F3544(v20, v21, a2, sub_2174D7EF0, v25, a4, a9);
}

uint64_t sub_2174D2860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v29[1] = a8;
  v16 = *(a6 - 8);
  v29[0] = a10;
  MEMORY[0x28223BE20](a1);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v29 - v24;
  (*(v26 + 16))(v29 - v24, a2, v23);
  (*(v16 + 16))(v18, a3, a6);
  v27 = *(a7 + 24);

  return v27(v25, v18, a4, a6, v29[0], a5, a7);
}

double sub_2174D2A60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v18);
  v20 = CloudResource.id.getter(v19);
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a1;
  v32 = a3;
  v33 = a2;
  sub_2176F3544(v20, v21, a2, sub_2174D7ED8, v25, a4, a9);
}

uint64_t sub_2174D2B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v29[1] = a8;
  v16 = *(a6 - 8);
  v29[0] = a10;
  MEMORY[0x28223BE20](a1);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for CloudResource(0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v29 - v24;
  (*(v26 + 16))(v29 - v24, a2, v23);
  (*(v16 + 16))(v18, a3, a6);
  v27 = *(a7 + 24);

  return v27(v25, v18, a4, a6, v29[0], a5, a7);
}

uint64_t CloudResourceCollection.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = v3[1];
  v14 = *v3;
  *&v15[0] = v3[2];
  sub_2171FB568(v14, v13);
  sub_217752418();
  sub_217751DE8();
  swift_getWitnessTable();
  sub_217752BB8();
  v4 = sub_21738C4B0((v3 + 9), v15, &qword_27CB24188, &dword_217758930);
  OUTLINED_FUNCTION_31_21(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15[0], v15[1], v16);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t CloudResourceCollection.merging<A>(_:configuration:incrementalLoadingEncoding:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *a2;
  sub_21738C4B0((v4 + 9), &v42, &qword_27CB24188, &dword_217758930);
  if (*(&v43 + 1))
  {
    v45[0] = v42;
    v45[1] = v43;
    v46 = v44;
  }

  else
  {
    OUTLINED_FUNCTION_87_12();
    sub_217380098(v9, v10, v11);
    if (*(&v43 + 1))
    {
      sub_2171F0738(&v42, &qword_27CB24188, &dword_217758930);
    }
  }

  sub_21738C4B0(a1 + 72, &v39, &qword_27CB24188, &dword_217758930);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    OUTLINED_FUNCTION_87_12();
    sub_217380098(v12, v13, v14);
    if (*(&v40 + 1))
    {
      sub_2171F0738(&v39, &qword_27CB24188, &dword_217758930);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25660, &unk_21775D5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217759200;
  sub_21738C4B0(v45, inited + 32, &qword_27CB24188, &dword_217758930);
  sub_21738C4B0(&v42, inited + 72, &qword_27CB24188, &dword_217758930);
  sub_2174D3370(inited, &v39);

  if (v8)
  {
    v36 = 0;
    v16 = 0;
  }

  else
  {
    sub_21738C4B0(&v39, v37, &qword_27CB24188, &dword_217758930);
    v16 = v38;
    if (v38)
    {
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v17 = OUTLINED_FUNCTION_15();
      v36 = v18(v17);
      v16 = v19;
      sub_217283154(v37);
    }

    else
    {
      sub_2171F0738(v37, &qword_27CB24188, &dword_217758930);
      v36 = 0;
    }
  }

  v20 = *v5;
  v21 = v5[1];
  v22 = OUTLINED_FUNCTION_34_2();
  sub_2171FB568(v22, v23);
  v24 = sub_217752318();
  sub_2171F0738(&v42, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v45, &qword_27CB24188, &dword_217758930);
  v25 = v5[3];
  v26 = v5[6];
  v35 = *(v5 + 2);
  if (v16)
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(&v39, &qword_27CB24188, &dword_217758930);
    v27 = 0;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  else
  {
    v33 = v39;
    v34 = v40;
    v27 = v41;
    sub_217751DE8();
    sub_217751DE8();
    v28 = v33;
    v29 = v34;
  }

  v30 = v5[14];
  v31 = v5[15];
  *a4 = v20;
  *(a4 + 8) = v21;
  *(a4 + 16) = v24;
  *(a4 + 24) = v25;
  *(a4 + 32) = v35;
  *(a4 + 48) = v26;
  *(a4 + 56) = v36;
  *(a4 + 64) = v16;
  *(a4 + 72) = v28;
  *(a4 + 88) = v29;
  *(a4 + 104) = v27;
  *(a4 + 112) = v30;
  *(a4 + 120) = v31;
  sub_217751DE8();
  return sub_217751DE8();
}

unint64_t sub_2174D331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB286E8;
  if (!qword_27CB286E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286E8);
  }

  return result;
}

void sub_2174D3370(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = a1 + 32;
    do
    {
      sub_21738C4B0(v4, &v46, &qword_27CB24188, &dword_217758930);
      v40 = v46;
      v41 = v47;
      v42 = v48;
      if (*(&v47 + 1))
      {
        v43 = v46;
        v44 = v47;
        v45 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172B2028();
          v3 = v9;
        }

        v5 = *(v3 + 16);
        if (v5 >= *(v3 + 24) >> 1)
        {
          sub_2172B2028();
          v3 = v10;
        }

        *(v3 + 16) = v5 + 1;
        v6 = v3 + 40 * v5;
        v7 = v43;
        v8 = v44;
        *(v6 + 64) = v45;
        *(v6 + 32) = v7;
        *(v6 + 48) = v8;
      }

      else
      {
        sub_2171F0738(&v40, &qword_27CB24188, &dword_217758930);
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = *(v3 + 16);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_2172CE81C(v3, &v46);
LABEL_16:

      v12 = a2;
      sub_2171F0738(a2, &qword_27CB24188, &dword_217758930);
      v13 = v47;
      *a2 = v46;
      *(a2 + 16) = v13;
      v14 = v48;
    }

    else
    {
      v15 = 0;
      v37 = v3 + 32;
      v16 = MEMORY[0x277D84F90];
      v35 = *(v3 + 16);
      v36 = v3;
      do
      {
        if (v15 >= *(v3 + 16))
        {
          goto LABEL_47;
        }

        v38 = v15;
        sub_2172830F8(v37 + 40 * v15, &v46);
        sub_2174D79C8();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        if (swift_dynamicCast())
        {
          v18 = v41;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D80, &unk_217759FA0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_2177586E0;
          sub_2172830F8(&v46, v18 + 32);
        }

        v39 = *(v18 + 16);
        if (v39)
        {
          v19 = 0;
          while (2)
          {
            if (v19 >= *(v18 + 16))
            {
              __break(1u);
LABEL_47:
              __break(1u);
              return;
            }

            v20 = v19 + 1;
            sub_2172830F8(v18 + 32 + 40 * v19, &v43);
            v21 = 0;
            v22 = *(v16 + 16);
            v23 = v16 + 32;
            while (v22 != v21)
            {
              if (v21 >= *(v16 + 16))
              {
                __break(1u);
                goto LABEL_18;
              }

              sub_2172830F8(v23, &v40);
              v24 = *(&v41 + 1);
              v25 = v42;
              __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
              v26 = (v25[4])(&v43, v17, v24, v25);
              sub_217283154(&v40);
              if (v26)
              {
                sub_217283154(&v43);
                goto LABEL_38;
              }

              ++v21;
              v23 += 40;
            }

            sub_2172830F8(&v43, &v40);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2172B2028();
              v16 = v31;
            }

            v27 = *(v16 + 16);
            if (v27 >= *(v16 + 24) >> 1)
            {
              sub_2172B2028();
              v16 = v32;
            }

            sub_217283154(&v43);
            *(v16 + 16) = v27 + 1;
            v28 = v16 + 40 * v27;
            v29 = v42;
            v30 = v41;
            *(v28 + 32) = v40;
            *(v28 + 48) = v30;
            *(v28 + 64) = v29;
LABEL_38:
            v19 = v20;
            if (v20 != v39)
            {
              continue;
            }

            break;
          }
        }

        v15 = v38 + 1;
        sub_217283154(&v46);

        v3 = v36;
      }

      while (v38 + 1 != v35);

      v33 = *(v16 + 16);
      if (!v33)
      {
        goto LABEL_18;
      }

      if (v33 == 1)
      {
        sub_2172CE81C(v16, &v46);
        goto LABEL_16;
      }

      v12 = a2;
      sub_2171F0738(a2, &qword_27CB24188, &dword_217758930);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = v16;
      *(a2 + 24) = &type metadata for MusicItemCollectionCombinationIncrementalLoader;
      v14 = &off_282971898;
    }

    *(v12 + 32) = v14;
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_2174D37FC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2174D6E38(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_2174D3880(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudStation.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB25A08, type metadata accessor for CloudStation.Attributes, &protocol conformance descriptor for CloudStation.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_49_18();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_49_18();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D39D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudPlaylist.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB257B0, type metadata accessor for CloudPlaylist.Attributes, &protocol conformance descriptor for CloudPlaylist.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_47_16();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_47_16();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3B30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudAlbum.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB252E0, type metadata accessor for CloudAlbum.Attributes, &protocol conformance descriptor for CloudAlbum.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_46_20();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_46_20();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3C88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudMusicVideo.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB25878, type metadata accessor for CloudMusicVideo.Attributes, &protocol conformance descriptor for CloudMusicVideo.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_45_19();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_45_19();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3DE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudSong.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB25738, type metadata accessor for CloudSong.Attributes, &protocol conformance descriptor for CloudSong.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_44_17();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_44_17();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3F38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudSocialProfile.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB287C0, type metadata accessor for CloudSocialProfile.Attributes, &protocol conformance descriptor for CloudSocialProfile.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_43_12();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_43_12();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4090(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudGenre.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB25840, type metadata accessor for CloudGenre.Attributes, &protocol conformance descriptor for CloudGenre.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_42_16();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_42_16();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D41E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudRadioShow.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB25998, type metadata accessor for CloudRadioShow.Attributes, &protocol conformance descriptor for CloudRadioShow.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_41_17();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_41_17();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4340(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudCurator.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB25A40, type metadata accessor for CloudCurator.Attributes, &protocol conformance descriptor for CloudCurator.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_40_18();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_40_18();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D4498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v7);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_12_27();
  v10 = Encoder.dataRequestConfiguration.getter(v8, v9);
  v12 = OUTLINED_FUNCTION_59_10(v10, v11);
  sub_2174D7920(v12, v13, v14);
  sub_217751358();
  v15 = a4;
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(a5);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();

    v16 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v16);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v17 = OUTLINED_FUNCTION_19_21();
    v18 = OUTLINED_FUNCTION_63_14(v17);
    OUTLINED_FUNCTION_69_14(v18, v19);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v20, v21, v22, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();

    v23 = OUTLINED_FUNCTION_15();
    sub_217275694(v23, v24);

    OUTLINED_FUNCTION_54_14();
  }

  return v15;
}

uint64_t sub_2174D4658()
{
  OUTLINED_FUNCTION_92_11();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v3);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v4 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v4, v5);
  v6 = JSONEncoder.dataRequestConfiguration.setter(v19);
  sub_21733C798(v6, v7, v8);
  sub_217751358();
  if (v1)
  {
    memcpy(v19, __dst, sizeof(v19));
    sub_21733C7EC(v19);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    memcpy(v19, __dst, sizeof(v19));
    sub_21733C7EC(v19);
    v9 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v9);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v10 = OUTLINED_FUNCTION_19_21();
    v11 = OUTLINED_FUNCTION_63_14(v10);
    OUTLINED_FUNCTION_69_14(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v16 = OUTLINED_FUNCTION_15();
    sub_217275694(v16, v17);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

void sub_2174D47F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudRecordLabel.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB259D0, type metadata accessor for CloudRecordLabel.Attributes, &protocol conformance descriptor for CloudRecordLabel.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_39_14();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_39_14();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4950(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudArtist.Attributes(0);
  v9 = sub_2174D7D18(&qword_280BE53E0, type metadata accessor for CloudArtist.Attributes, &protocol conformance descriptor for CloudArtist.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_38_17();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_38_17();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D4ADC(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v6);
  sub_217751368();
  v7 = a1[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_19_21();
  Encoder.dataRequestConfiguration.getter(v8, v7);
  v9 = JSONEncoder.dataRequestConfiguration.setter(v20);
  a2(v9);
  sub_217751358();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    v10 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_19_21();
    v12 = OUTLINED_FUNCTION_63_14(v11);
    OUTLINED_FUNCTION_69_14(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v14, v15, v16, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v17 = OUTLINED_FUNCTION_15();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

void sub_2174D4D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_26();
  v8 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v8);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_13_31();
  v11 = OUTLINED_FUNCTION_77_10(v9, v10);
  v12 = v7(v11);
  OUTLINED_FUNCTION_24_26(v12);
  if (v4)
  {
    v5(v6);

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_75_11(v14);
    OUTLINED_FUNCTION_76_10(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    v20 = OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28(v20, v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_23_29();
    v26(v25);

    v27 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v27, v28);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4E44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v6 = OUTLINED_FUNCTION_7_40();
  v8 = Encoder.dataRequestConfiguration.getter(v6, v7);
  v10 = OUTLINED_FUNCTION_59_10(v8, v9);
  sub_21733C020(v10, v11, v12);
  sub_217751358();
  if (v4)
  {
    sub_217284234(v3);

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v19 = sub_21733ACEC(v16, v17, v18, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v19);
    sub_217284234(v3);

    v20 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v20, v21);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_26();
  v8 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v8);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_13_31();
  v11 = OUTLINED_FUNCTION_77_10(v9, v10);
  v12 = v7(v11);
  OUTLINED_FUNCTION_24_26(v12);
  if (v4)
  {
    v5(v6);

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_75_11(v14);
    OUTLINED_FUNCTION_76_10(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    v20 = OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28(v20, v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_23_29();
    v26(v25);

    v27 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v27, v28);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D52C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_26();
  v8 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v8);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_13_31();
  v11 = OUTLINED_FUNCTION_77_10(v9, v10);
  v12 = v7(v11);
  OUTLINED_FUNCTION_24_26(v12);
  if (v4)
  {
    v5(v6);

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_75_11(v14);
    OUTLINED_FUNCTION_76_10(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    v20 = OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28(v20, v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_23_29();
    v26(v25);

    v27 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v27, v28);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D54B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_26();
  v8 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v8);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_13_31();
  v11 = OUTLINED_FUNCTION_77_10(v9, v10);
  v12 = v7(v11);
  OUTLINED_FUNCTION_24_26(v12);
  if (v4)
  {
    v5(v6);

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_75_11(v14);
    OUTLINED_FUNCTION_76_10(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    v20 = OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28(v20, v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_23_29();
    v26(v25);

    v27 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v27, v28);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_26();
  v8 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v8);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_13_31();
  v11 = OUTLINED_FUNCTION_77_10(v9, v10);
  v12 = v7(v11);
  OUTLINED_FUNCTION_24_26(v12);
  if (v4)
  {
    v5(v6);

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_75_11(v14);
    OUTLINED_FUNCTION_76_10(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    v20 = OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28(v20, v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_23_29();
    v26(v25);

    v27 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v27, v28);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5914(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v6 = OUTLINED_FUNCTION_7_40();
  v8 = Encoder.dataRequestConfiguration.getter(v6, v7);
  v10 = OUTLINED_FUNCTION_59_10(v8, v9);
  sub_21733C27C(v10, v11, v12);
  sub_217751358();
  if (v4)
  {
    sub_21728463C(v3);

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v19 = sub_21733ACEC(v16, v17, v18, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v19);
    sub_21728463C(v3);

    v20 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v20, v21);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_26();
  v8 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v8);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_13_31();
  v11 = OUTLINED_FUNCTION_77_10(v9, v10);
  v12 = v7(v11);
  OUTLINED_FUNCTION_24_26(v12);
  if (v4)
  {
    v5(v6);

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_75_11(v14);
    OUTLINED_FUNCTION_76_10(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    v20 = OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28(v20, v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_23_29();
    v26(v25);

    v27 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v27, v28);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D5C54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v7 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v7);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_12_27();
  Encoder.dataRequestConfiguration.getter(v8, v9);
  v10 = JSONEncoder.dataRequestConfiguration.setter(v23);
  sub_217362478(v10, v11, v12);
  sub_217751358();
  OUTLINED_FUNCTION_68_5();
  sub_217221010(v24);
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(a5);
  }

  else
  {

    v13 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_63_14(v14);
    OUTLINED_FUNCTION_69_14(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v20 = OUTLINED_FUNCTION_15();
    sub_217275694(v20, v21);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

uint64_t sub_2174D5DD4(uint64_t a1)
{
  OUTLINED_FUNCTION_89_11(a1);
  v24 = *(v3 + 32);
  v4 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_12_27();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  v9 = OUTLINED_FUNCTION_59_10(v7, v8);
  sub_2174D7A78(v9, v10, v11);
  sub_217751358();
  OUTLINED_FUNCTION_68_5();
  v12 = v24;
  sub_217221010(v23);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  else
  {

    v13 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_63_14(v14);
    OUTLINED_FUNCTION_69_14(v15, v16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();

    v20 = OUTLINED_FUNCTION_15();
    sub_217275694(v20, v21);

    OUTLINED_FUNCTION_54_14();
  }

  return v12;
}

uint64_t sub_2174D5FFC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v19[5] = a1;
  v7 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v7);
  sub_217751368();
  v8 = a2[3];
  v9 = a2[4];
  OUTLINED_FUNCTION_2_64();
  Encoder.dataRequestConfiguration.getter(v8, v9);
  v10 = JSONEncoder.dataRequestConfiguration.setter(v19);
  a3(v10);
  sub_217751358();
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_68_5();

    v11 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v11);
    sub_217751338();
    v12 = a2[3];
    OUTLINED_FUNCTION_2_64();
    OUTLINED_FUNCTION_63_14(v12);
    JSONDecoder.dataRequestConfiguration.setter(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_5_47();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v16 = OUTLINED_FUNCTION_15();
    sub_217275694(v16, v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return OUTLINED_FUNCTION_55_14();
}

uint64_t sub_2174D6200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v6 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v6);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v7 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v7, v8);
  v9 = JSONEncoder.dataRequestConfiguration.setter(v20);
  sub_2174D7728(v9, v10, v11);
  sub_217751358();
  OUTLINED_FUNCTION_68_5();
  sub_2172E141C(v21, v22, v23);
  if (!v4)
  {
    v12 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v12);
    sub_217751338();
    v13 = a4[3];
    OUTLINED_FUNCTION_2_64();
    OUTLINED_FUNCTION_63_14(v13);
    JSONDecoder.dataRequestConfiguration.setter(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v14, v15, v16, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_5_47();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v17 = OUTLINED_FUNCTION_15();
    sub_217275694(v17, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a4);
  return OUTLINED_FUNCTION_55_14();
}

uint64_t sub_2174D63F4(uint64_t a1, uint64_t a2, void *a3)
{
  v19[5] = a1;
  v19[6] = a2;
  sub_217751378();
  swift_allocObject();
  v5 = sub_217751368();
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  Encoder.dataRequestConfiguration.getter(v6, v7);
  v8 = v5;
  v9 = JSONEncoder.dataRequestConfiguration.setter(v19);
  sub_2174D65EC(v9, v10, v11);
  v12 = sub_217751358();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v14 = v12;
    v15 = v13;

    sub_217751348();
    swift_allocObject();
    sub_217751338();
    v16 = a3[3];
    v17 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v16);
    Encoder.dataRequestConfiguration.getter(v16, v17);
    JSONDecoder.dataRequestConfiguration.setter(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v14, v15);

    v8 = v19[0];
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  return v8;
}

unint64_t sub_2174D65EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB286F8;
  if (!qword_27CB286F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286F8);
  }

  return result;
}

void sub_2174D66DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v9 = sub_2174D7D18(&qword_27CB25778, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes, &protocol conformance descriptor for LegacyModelCodablePlaylistEntry.Attributes);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_36_19();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_36_19();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D6834()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_92_11();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v3);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v4 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v4, v5);
  v6 = JSONEncoder.dataRequestConfiguration.setter(v18);
  sub_2172DEF94(v6, v7, v8);
  sub_217751358();
  if (v1)
  {
    memcpy(v18, __dst, sizeof(v18));
    sub_2172A9D90(v18);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    memcpy(v18, __dst, sizeof(v18));
    sub_2172A9D90(v18);
    v9 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v9);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v10 = OUTLINED_FUNCTION_19_21();
    v11 = OUTLINED_FUNCTION_63_14(v10);
    OUTLINED_FUNCTION_69_14(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v16 = OUTLINED_FUNCTION_15();
    sub_217275694(v16, v17);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D69C4(uint64_t a1)
{
  OUTLINED_FUNCTION_89_11(a1);
  v23 = *(v3 + 48);
  v4 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_12_27();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  v9 = OUTLINED_FUNCTION_59_10(v7, v8);
  sub_2174D76B0(v9, v10, v11);
  sub_217751358();
  v12 = v23;
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();

    v13 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v13);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_63_14(v14);
    OUTLINED_FUNCTION_69_14(v15, v16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18, v19, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();

    v20 = OUTLINED_FUNCTION_15();
    sub_217275694(v20, v21);

    OUTLINED_FUNCTION_54_14();
  }

  return v12;
}

uint64_t sub_2174D6B68(__int128 *a1, void *a2)
{
  v4 = a1[1];
  v45 = *a1;
  v46 = v4;
  v5 = a1[3];
  v47 = a1[2];
  v48 = v5;
  v6 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v6);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v7 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v7, v8);
  v9 = JSONEncoder.dataRequestConfiguration.setter(v44);
  sub_2172DF1E4(v9, v10, v11);
  v12 = sub_217751358();
  if (v2)
  {
    OUTLINED_FUNCTION_78_10(v12, v13, v14, v15, v16, v17, v18, v19, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v45, v46);

    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_78_10(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v45, v46);
    v28 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v28);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v29 = OUTLINED_FUNCTION_19_21();
    v30 = OUTLINED_FUNCTION_63_14(v29);
    OUTLINED_FUNCTION_69_14(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v32, v33, v34, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v35 = OUTLINED_FUNCTION_15();
    sub_217275694(v35, v36);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

void sub_2174D6CE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_26();
  v4 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7, v8);
  type metadata accessor for CloudPreviewAsset(0);
  v9 = sub_2174D7D18(&qword_280BE3D80, type metadata accessor for CloudPreviewAsset, &protocol conformance descriptor for CloudPreviewAsset);
  OUTLINED_FUNCTION_9_35(v9);
  if (v3)
  {
    OUTLINED_FUNCTION_48_16();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    v16 = sub_21733ACEC(v13, v14, v15, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_4_61(v16);
    OUTLINED_FUNCTION_48_16();

    v17 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D6E38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v73 = a5;
  sub_217747F44();
  v5 = v68;
  v6 = v70;
  v7 = v71;
  v53 = v72;
  v54 = v67;
  v8 = (v69 + 64) >> 6;
  sub_217751DE8();

  v51 = v8;
  v52 = v68;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v54 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(v54 + 56) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v58[0] = *v13;
    v58[1] = v14;
    v59 = v17;
    v60 = v16;
    v61 = v18;
    sub_217751DE8();
    sub_21726A5E0(v17, v16, v18);
    v53(&v62, v58);
    v19 = v59;
    v20 = v60;
    v21 = v61;

    sub_21726A608(v19, v20, v21);
    v22 = v63;
    if (!v63)
    {
LABEL_19:
      sub_2172303F0(v54);
    }

    v23 = v62;
    v25 = v64;
    v24 = v65;
    v56 = v66;
    v26 = *v73;
    v28 = sub_21763246C(v62, v63);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217747120(v31, a4 & 1);
      v33 = sub_21763246C(v23, v22);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_23;
      }

      v28 = v33;
    }

    v55 = (v9 - 1) & v9;
    v35 = *v73;
    if (v32)
    {
      v36 = 3 * v28;
      v37 = v35[7] + 8 * v36;
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      sub_21726A5E0(*v37, v39, v40);
      sub_21726A608(v25, v24, v56);

      v41 = v35[7] + 8 * v36;
      v42 = *v41;
      v43 = *(v41 + 8);
      *v41 = v38;
      *(v41 + 8) = v39;
      v44 = *(v41 + 16);
      *(v41 + 16) = v40;
      sub_21726A608(v42, v43, v44);
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v45 = (v35[6] + 16 * v28);
      *v45 = v23;
      v45[1] = v22;
      v46 = v35[7] + 24 * v28;
      *v46 = v25;
      *(v46 + 8) = v24;
      *(v46 + 16) = v56;
      v47 = v35[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_22;
      }

      v35[2] = v49;
    }

    a4 = 1;
    v6 = v10;
    v8 = v51;
    v5 = v52;
    v7 = v55;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

unint64_t sub_2174D716C()
{
  result = qword_27CB28700;
  if (!qword_27CB28700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28708, &qword_21776E368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28700);
  }

  return result;
}

unint64_t sub_2174D71D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28710;
  if (!qword_27CB28710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28710);
  }

  return result;
}

uint64_t sub_2174D7270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2174D72AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174D72EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudResourceCollectionIncrementalLoadingEncoding(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2174D7428(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174D747C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_2174D74E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2174D75D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28718;
  if (!qword_27CB28718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28718);
  }

  return result;
}

unint64_t sub_2174D765C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28728;
  if (!qword_27CB28728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28728);
  }

  return result;
}

unint64_t sub_2174D76B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28738;
  if (!qword_27CB28738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28738);
  }

  return result;
}

unint64_t sub_2174D7728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28740;
  if (!qword_27CB28740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28740);
  }

  return result;
}

unint64_t sub_2174D777C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28748;
  if (!qword_27CB28748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28748);
  }

  return result;
}

unint64_t sub_2174D77D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28750;
  if (!qword_27CB28750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28750);
  }

  return result;
}

unint64_t sub_2174D7824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28758;
  if (!qword_27CB28758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28758);
  }

  return result;
}

unint64_t sub_2174D7878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28760;
  if (!qword_27CB28760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28760);
  }

  return result;
}

unint64_t sub_2174D78CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28768;
  if (!qword_27CB28768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28768);
  }

  return result;
}

unint64_t sub_2174D7920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28770;
  if (!qword_27CB28770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28770);
  }

  return result;
}

uint64_t sub_2174D79C8()
{
  OUTLINED_FUNCTION_92_11();
  *(v0 + 24) = *(v1 + 24);
  *(v0 + 32) = *(v1 + 32);
  OUTLINED_FUNCTION_41_0();
  (*v2)(v0);
  return v0;
}

unint64_t sub_2174D7A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28778;
  if (!qword_27CB28778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28778);
  }

  return result;
}

unint64_t sub_2174D7A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28780;
  if (!qword_27CB28780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28780);
  }

  return result;
}

unint64_t sub_2174D7ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28788;
  if (!qword_27CB28788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28788);
  }

  return result;
}

unint64_t sub_2174D7B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28790;
  if (!qword_27CB28790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28790);
  }

  return result;
}

unint64_t sub_2174D7B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28798;
  if (!qword_27CB28798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28798);
  }

  return result;
}

unint64_t sub_2174D7BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287A0;
  if (!qword_27CB287A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287A0);
  }

  return result;
}

unint64_t sub_2174D7C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287A8;
  if (!qword_27CB287A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287A8);
  }

  return result;
}

unint64_t sub_2174D7C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287B0;
  if (!qword_27CB287B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287B0);
  }

  return result;
}

unint64_t sub_2174D7CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287B8;
  if (!qword_27CB287B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287B8);
  }

  return result;
}

uint64_t sub_2174D7D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2174D7D60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

uint64_t sub_2174D7DB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2174D7E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174D7E80(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudResourceCollectionAttributes.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2174D7FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287C8;
  if (!qword_27CB287C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287C8);
  }

  return result;
}

unint64_t sub_2174D804C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287D0;
  if (!qword_27CB287D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287D0);
  }

  return result;
}

unint64_t sub_2174D80A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287D8;
  if (!qword_27CB287D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_34()
{

  return sub_217751378();
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217751308();
}

uint64_t OUTLINED_FUNCTION_40_18()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudCurator.Attributes);
}

uint64_t OUTLINED_FUNCTION_41_17()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudRadioShow.Attributes);
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudGenre.Attributes);
}

uint64_t OUTLINED_FUNCTION_43_12()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudSocialProfile.Attributes);
}

uint64_t OUTLINED_FUNCTION_45_19()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudMusicVideo.Attributes);
}

uint64_t OUTLINED_FUNCTION_46_20()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudAlbum.Attributes);
}

uint64_t OUTLINED_FUNCTION_47_16()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudPlaylist.Attributes);
}

uint64_t OUTLINED_FUNCTION_48_16()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudPreviewAsset);
}

uint64_t OUTLINED_FUNCTION_49_18()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudStation.Attributes);
}

uint64_t OUTLINED_FUNCTION_50_16()
{

  return sub_217751348();
}

uint64_t OUTLINED_FUNCTION_51_16()
{

  return sub_217752418();
}

uint64_t OUTLINED_FUNCTION_54_14()
{

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_58_15()
{
  v2 = *(v0 - 128);
  *(v0 - 96) = *(v0 - 136);
  *(v0 - 88) = v2;

  return sub_217752F48();
}

uint64_t OUTLINED_FUNCTION_59_10(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return JSONEncoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_60_17(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return JSONDecoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_61_10(uint64_t a1)
{

  return sub_217752F88();
}

uint64_t OUTLINED_FUNCTION_63_14(uint64_t a1)
{

  return Encoder.dataRequestConfiguration.getter(a1, v1);
}

uint64_t OUTLINED_FUNCTION_64_17()
{
  __swift_project_boxed_opaque_existential_1((v2 - 128), v0);
  *(v2 - 176) = v1;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_68_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2175FA70C(v8, v11, v10, v9, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_69_14(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return JSONDecoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_70_12(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 168) = &a9;
  *(v9 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_14()
{
}

uint64_t OUTLINED_FUNCTION_73_12()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_74_11()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_76_10(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return JSONDecoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_77_10(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return JSONEncoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_78_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20)
{
  a15 = a19;
  a16 = a20;
  v22 = *(v20 + 48);
  a17 = *(v20 + 32);
  a18 = v22;

  return sub_2174D7974(&a15);
}

double OUTLINED_FUNCTION_82_10()
{
}

__n128 OUTLINED_FUNCTION_85_10()
{
  result = *(v1 - 128);
  *(v0 + 72) = result;
  return result;
}

void OUTLINED_FUNCTION_88_9(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[6] = a2;
  a1[7] = a2;
  a1[4] = a2;
  a1[5] = a2;
  a1[2] = a2;
  a1[3] = a2;
  *a1 = a2;
  a1[1] = a2;
}

uint64_t OUTLINED_FUNCTION_96_11()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_98_13()
{

  return sub_2177531E8();
}

uint64_t OUTLINED_FUNCTION_99_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21738C4B0(v4 + 16, v5 - 128, a3, a4);
}

double Date.convertToLegacyModelRawValue()()
{
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for CloudFormatter(0);
  __swift_project_value_buffer(v1, qword_280BE8918);
  return CloudFormatter.dateComponents(from:)(v0);
}

uint64_t Date.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_217751558();
  v7 = sub_217751568();
  (*(*(v7 - 8) + 8))(a1, v7);
  v8 = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    sub_2172CCAB0(v6);
    v9 = 1;
  }

  else
  {
    (*(*(v8 - 8) + 32))(a2, v6, v8);
    v9 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v9, 1, v8);
}

void *CloudCreditArtist.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, const void *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  v10 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  memcpy((a7 + 16), __src, 0x1D0uLL);
  result = memcpy((a7 + 480), a4, 0x80uLL);
  *(a7 + 609) = v9;
  *(a7 + 608) = v10;
  return result;
}

void *CloudCreditArtist.Attributes.init(artwork:name:roleNames:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = memcpy(a5, __src, 0x1B8uLL);
  a5[55] = a2;
  a5[56] = a3;
  a5[57] = a4;
  return result;
}

uint64_t CloudCreditArtist.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_2174A87A0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

BOOL static CloudCreditArtist.Attributes.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_18_29(v22);
  v5 = v4[55];
  v6 = v4[56];
  v7 = v4[57];
  OUTLINED_FUNCTION_17_26(v23);
  v9 = v2[55];
  v8 = v2[56];
  v10 = v2[57];
  OUTLINED_FUNCTION_18_29(__src);
  OUTLINED_FUNCTION_17_26(&__src[440]);
  OUTLINED_FUNCTION_18_29(v24);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v24) == 1)
  {
    OUTLINED_FUNCTION_17_26(__dst);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
    {
      OUTLINED_FUNCTION_18_29(v21);
      sub_2174A87A0(v22, v18, &qword_27CB25000, &unk_21776EA00);
      sub_2174A87A0(v23, v18, &qword_27CB25000, &unk_21776EA00);
      sub_2171F06D8(v21, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_8;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_2174A87A0(v22, v21, &qword_27CB25000, &unk_21776EA00);
    sub_2174A87A0(v23, v21, &qword_27CB25000, &unk_21776EA00);
    sub_2171F06D8(__dst, &qword_27CB25008, &qword_21778F850);
    return 0;
  }

  OUTLINED_FUNCTION_17_26(v18);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v18) == 1)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_17_26(&v16);
  OUTLINED_FUNCTION_17_26(__dst);
  OUTLINED_FUNCTION_18_29(v21);
  sub_2174A87A0(v22, v17, &qword_27CB25000, &unk_21776EA00);
  sub_2174A87A0(v23, v17, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v13 = v12;
  sub_2171F06D8(&v16, &qword_27CB25000, &unk_21776EA00);
  OUTLINED_FUNCTION_18_29(v17);
  sub_2171F06D8(v17, &qword_27CB25000, &unk_21776EA00);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v14 = v5 == v9 && v6 == v8;
    if (!v14 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v7)
  {
    if (v10)
    {
      OUTLINED_FUNCTION_93();
      sub_217270790();
      if (v15)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v10;
}

uint64_t sub_2174D8C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D614E656C6F72 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2174D8D20(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x656D614E656C6F72;
}

uint64_t sub_2174D8D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174D8C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174D8DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DADE4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174D8DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DADE4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudCreditArtist.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB287F0, &qword_21776EA10);
  OUTLINED_FUNCTION_0_0();
  v31 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = v46 - v33;
  memcpy(v50, v23, 0x1B8uLL);
  v35 = v23[55];
  v46[1] = v23[56];
  v46[2] = v35;
  v46[0] = v23[57];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v36 = sub_2174A87A0(v50, v49, &qword_27CB25000, &unk_21776EA00);
  sub_2174DADE4(v36, v37, v38);
  sub_2177532F8();
  memcpy(v49, v50, sizeof(v49));
  a13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v39 = sub_2174DAE38(&qword_280BE42D8);
  OUTLINED_FUNCTION_28_12(v49, &a13, v40, v41, v39);
  if (v24)
  {
    memcpy(v48, v49, sizeof(v48));
    sub_2171F06D8(v48, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    v42 = v46[0];
    memcpy(v48, v49, sizeof(v48));
    sub_2171F06D8(v48, &qword_27CB25000, &unk_21776EA00);
    LOBYTE(v47) = 1;
    sub_217752EF8();
    v47 = v42;
    a12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    v43 = sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_28_12(&v47, &a12, v44, v45, v43);
  }

  (*(v31 + 8))(v34, v29);
  OUTLINED_FUNCTION_170();
}

void CloudCreditArtist.Attributes.hash(into:)(const void *a1)
{
  v3 = v1[54];
  v5 = v1[56];
  v4 = v1[57];
  memcpy(__dst, v1, sizeof(__dst));
  v8 = v3;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_25();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  memcpy(v6, v1, sizeof(v6));
  OUTLINED_FUNCTION_24();
  CloudArtwork.hash(into:)(a1);
  sub_217751DE8();
  sub_217265A08(a1, v3);

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_24();
    sub_217281100();
    return;
  }

LABEL_7:
  OUTLINED_FUNCTION_25();
}

uint64_t CloudCreditArtist.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudCreditArtist.Attributes.hash(into:)(v1);
  return sub_217753238();
}

void CloudCreditArtist.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28800, &unk_21776EA18);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_21_2();
  v29 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v32 = sub_2174DADE4(v29, v30, v31);
  OUTLINED_FUNCTION_139(&type metadata for CloudCreditArtist.Attributes.CodingKeys, v33, v32);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_2174DAE38(&qword_280BE42D0);
    OUTLINED_FUNCTION_8_1();
    sub_217752E58();
    memcpy(v47, v46, sizeof(v47));
    v41[0] = 1;
    OUTLINED_FUNCTION_8_1();
    v38 = sub_217752E18();
    v39 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2172DF950(&unk_280BE2318);
    sub_217752E58();
    v35 = OUTLINED_FUNCTION_5_0();
    v36(v35);
    v37 = v45;
    memcpy(v40, v47, 0x1B8uLL);
    v40[55] = v38;
    v40[56] = v39;
    v40[57] = v45;
    memcpy(v27, v40, 0x1D0uLL);
    sub_2174DAE9C(v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v25);
    memcpy(v41, v47, sizeof(v41));
    v42 = v38;
    v43 = v39;
    v44 = v37;
    sub_2174DAED4(v41);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D9510(uint64_t a1)
{
  sub_2177531E8();
  CloudCreditArtist.Attributes.hash(into:)(v2);
  return sub_217753238();
}

void CloudCreditArtist.Relationships.CodingKeys.init(rawValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

void CloudCreditArtist.Relationships.CodingKeys.init(stringValue:)(BOOL *a2@<X8>)
{
  v3 = sub_217752DC8();

  *a2 = v3 != 0;
}

uint64_t sub_2174D96B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DAF04(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174D96EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DAF04(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudCreditArtist.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2174A87A0(a1, v7, &qword_27CB24280, &unk_21775D680);
  sub_2174A87A0(a2, v9, &qword_27CB24280, &unk_21775D680);
  if (v8)
  {
    sub_2174A87A0(v7, v6, &qword_27CB24280, &unk_21775D680);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE010(v6, v5);
      sub_2171F06D8(v5, &qword_27CB24288, &qword_217758F80);
      sub_2171F06D8(v6, &qword_27CB24288, &qword_217758F80);
      sub_2171F06D8(v7, &qword_27CB24280, &unk_21775D680);
      return (v3 & 1) != 0;
    }

    sub_2171F06D8(v6, &qword_27CB24288, &qword_217758F80);
  }

  else if (!v9[2])
  {
    sub_2171F06D8(v7, &qword_27CB24280, &unk_21775D680);
    return 1;
  }

  sub_2171F06D8(v7, &qword_27CB25068, &qword_21775B528);
  return 0;
}

uint64_t CloudCreditArtist.Relationships.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28808, &unk_21776EA28);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174DAF04(v8, v9, v10);
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
  sub_2174DB034(&qword_27CB250A0);
  sub_217752F38();
  return (*(v4 + 8))(v7, v2);
}

uint64_t CloudCreditArtist.Relationships.hash(into:)(uint64_t a1)
{
  sub_2174A87A0(v1, __src, &qword_27CB24280, &unk_21775D680);
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE754(a1);
  return sub_2171F06D8(v4, &qword_27CB24288, &qword_217758F80);
}

uint64_t CloudCreditArtist.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24280, &unk_21775D680);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v4);
    sub_2171F06D8(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudCreditArtist.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v14 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28818, &qword_21776EA38);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_2();
  v9 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2174DAF04(v9, v10, v11);
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2174DB034(&qword_27CB25148);
    sub_217752E58();
    (*(v7 + 8))(v1, v5);
    memcpy(v13, v12, sizeof(v13));
    memcpy(v14, v13, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D9D3C(uint64_t a1)
{
  sub_2177531E8();
  sub_2174A87A0(v1, __src, &qword_27CB24280, &unk_21775D680);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v5);
    sub_2171F06D8(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2174D9DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DB0B8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174D9E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DB0B8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2174D9F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DB10C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174D9F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DB10C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2174D9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCreditArtist.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_22_27(v5);
  memcpy(a1, (v1 + 16), 0x1D0uLL);
  return sub_2174DAE9C(v5, v4);
}

uint64_t sub_2174DA224()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4BD0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4BE0;
  v2 = byte_280BE4BE8;
  *(v0 + 32) = qword_280BE4BD8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_280BE3DA8 = v0;

  return sub_217751DE8();
}

uint64_t static CloudCreditArtist.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_217753058(), v6 = 0, (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_22_27(v13);
    OUTLINED_FUNCTION_22_27(v12);
    memcpy(__dst, (a2 + 16), sizeof(__dst));
    memcpy(__src, (a2 + 16), sizeof(__src));
    sub_2174DAE9C(v13, v10);
    sub_2174DAE9C(__dst, v10);
    v7 = static CloudCreditArtist.Attributes.== infix(_:_:)(v12);
    memcpy(v15, __src, sizeof(v15));
    sub_2174DAED4(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_2174DAED4(v16);
    if (v7)
    {
      sub_2174A87A0((a1 + 60), v12, &qword_27CB249D8, &unk_217758F70);
      sub_2174A87A0(a2 + 480, &v12[16], &qword_27CB249D8, &unk_217758F70);
      if (v12[2] == 1)
      {
        if (v12[18] == 1)
        {
          sub_2171F06D8(v12, &qword_27CB249D8, &unk_217758F70);
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      sub_2174A87A0(v12, __src, &qword_27CB249D8, &unk_217758F70);
      if (v12[18] == 1)
      {
        sub_217283F7C(__src);
LABEL_12:
        sub_2171F06D8(v12, &qword_27CB28840, &qword_21776EA58);
        goto LABEL_15;
      }

      memcpy(v10, &v12[16], 0x80uLL);
      v8 = static CloudCreditArtist.Relationships.== infix(_:_:)(__src, v10);
      sub_217283F7C(v10);
      sub_217283F7C(__src);
      sub_2171F06D8(v12, &qword_27CB249D8, &unk_217758F70);
      if (v8)
      {
LABEL_14:
        if (*(a1 + 608) == *(a2 + 608))
        {
          v6 = *(a1 + 609) ^ *(a2 + 609) ^ 1;
          return v6 & 1;
        }
      }
    }

LABEL_15:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2174DA518(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 1635018093;
      break;
    case 4:
      result = 0x7377656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174DA5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2174DA600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DB160(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174DA63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174DB160(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudCreditArtist.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28848, &qword_21776EA60);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-v9 - 8];
  v11 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2174DB160(v11, v12, v13);
  v14 = sub_2177532F8();
  v15 = v2[1];
  v34 = *v2;
  v35 = v15;
  v33[471] = 0;
  sub_2172E1B18(v14, v16, v17);
  OUTLINED_FUNCTION_2_65();
  sub_217752F88();
  if (!v1)
  {
    memcpy(v33, v2 + 2, 0x1D0uLL);
    memcpy(v32, v2 + 2, sizeof(v32));
    v31[471] = 1;
    v18 = sub_2174DAE9C(v33, v31);
    sub_2174DB1B4(v18, v19, v20);
    OUTLINED_FUNCTION_2_65();
    sub_217752F88();
    memcpy(v31, v32, 0x1D0uLL);
    v21 = sub_2174DAED4(v31);
    HIBYTE(v30) = 2;
    sub_2174DB208(v21, v22, v23);
    OUTLINED_FUNCTION_2_65();
    v24 = sub_217752F38();
    HIBYTE(v30) = *(v2 + 608);
    BYTE6(v30) = 3;
    sub_2174DB25C(v24, v25, v26);
    OUTLINED_FUNCTION_2_65();
    v27 = sub_217752F38();
    HIBYTE(v30) = *(v2 + 609);
    BYTE6(v30) = 4;
    sub_2174DB2B0(v27, v28, v29);
    OUTLINED_FUNCTION_2_65();
    sub_217752F38();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCreditArtist.hash(into:)(const void *a1)
{
  sub_217751FF8();
  OUTLINED_FUNCTION_22_27(__src);
  CloudCreditArtist.Attributes.hash(into:)(a1);
  sub_2174A87A0(v1 + 480, __src, &qword_27CB249D8, &unk_217758F70);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    sub_2174A87A0(__dst, v5, &qword_27CB24280, &unk_21775D680);
    if (v5[2])
    {
      memcpy(v4, v5, sizeof(v4));
      OUTLINED_FUNCTION_24();
      sub_2172DE754(a1);
      sub_2171F06D8(v4, &qword_27CB24288, &qword_217758F80);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217283F7C(__dst);
  }

  sub_217753208();
  return sub_217753208();
}

uint64_t CloudCreditArtist.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudCreditArtist.hash(into:)(v1);
  return sub_217753238();
}

void CloudCreditArtist.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28878, &qword_21776EA68);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v33 = v2;
  v6 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v9 = sub_2174DB160(v6, v7, v8);
  v11 = OUTLINED_FUNCTION_139(&type metadata for CloudCreditArtist.CodingKeys, v10, v9);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v28[0] = 0;
    sub_2172E1C68(v11, v12, v13);
    OUTLINED_FUNCTION_8_1();
    v14 = sub_217752EA8();
    v30[0] = v29[0];
    v30[1] = v29[1];
    v28[135] = 1;
    sub_2174DB304(v14, v15, v16);
    OUTLINED_FUNCTION_8_1();
    sub_217752EA8();
    v17 = memcpy(v31, v29, sizeof(v31));
    sub_2174DB358(v17, v18, v19);
    OUTLINED_FUNCTION_1_59();
    sub_217752E58();
    v20 = memcpy(v32, v28, 0x80uLL);
    sub_2174DB3AC(v20, v21, v22);
    OUTLINED_FUNCTION_1_59();
    v23 = sub_217752E58();
    v32[128] = v28[0];
    sub_2174DB400(v23, v24, v25);
    OUTLINED_FUNCTION_1_59();
    sub_217752E58();
    v26 = OUTLINED_FUNCTION_82();
    v27(v26);
    v32[129] = v28[0];
    sub_2174DB454(v30, v4);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_2174DB48C(v30);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174DADA8(uint64_t a1)
{
  sub_2177531E8();
  CloudCreditArtist.hash(into:)(v2);
  return sub_217753238();
}

unint64_t sub_2174DADE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB287F8;
  if (!qword_27CB287F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287F8);
  }

  return result;
}

unint64_t sub_2174DAE38(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    v6 = sub_2172DEF40(v3, v4, v5);
    v9 = sub_2172DEF94(v6, v7, v8);
    result = OUTLINED_FUNCTION_20_2(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DAF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28810;
  if (!qword_27CB28810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28810);
  }

  return result;
}

unint64_t sub_2174DAF58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24728, &qword_217758CB0);
    sub_2174DAFF4(&unk_27CB250B0);
    v3 = sub_2174DAFF4(&unk_27CB250B8);
    result = OUTLINED_FUNCTION_20_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DAFF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    type metadata accessor for CloudArtist(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DB034(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24288, &qword_217758F80);
    sub_2174DAF58(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DB0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28828;
  if (!qword_27CB28828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28828);
  }

  return result;
}

unint64_t sub_2174DB10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28838;
  if (!qword_27CB28838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28838);
  }

  return result;
}

unint64_t sub_2174DB160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28850;
  if (!qword_27CB28850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28850);
  }

  return result;
}

unint64_t sub_2174DB1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28858;
  if (!qword_27CB28858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28858);
  }

  return result;
}

unint64_t sub_2174DB208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28860;
  if (!qword_27CB28860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28860);
  }

  return result;
}

unint64_t sub_2174DB25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28868;
  if (!qword_27CB28868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28868);
  }

  return result;
}

unint64_t sub_2174DB2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28870;
  if (!qword_27CB28870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28870);
  }

  return result;
}

unint64_t sub_2174DB304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28880;
  if (!qword_27CB28880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28880);
  }

  return result;
}

unint64_t sub_2174DB358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28888;
  if (!qword_27CB28888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28888);
  }

  return result;
}

unint64_t sub_2174DB3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28890;
  if (!qword_27CB28890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28890);
  }

  return result;
}

unint64_t sub_2174DB400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28898;
  if (!qword_27CB28898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28898);
  }

  return result;
}

unint64_t sub_2174DB4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288A0;
  if (!qword_27CB288A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288A0);
  }

  return result;
}

unint64_t sub_2174DB518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288A8;
  if (!qword_27CB288A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288A8);
  }

  return result;
}

unint64_t sub_2174DB570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288B0;
  if (!qword_27CB288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288B0);
  }

  return result;
}

unint64_t sub_2174DB5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288B8;
  if (!qword_27CB288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288B8);
  }

  return result;
}

unint64_t sub_2174DB620()
{
  result = qword_27CB288C0;
  if (!qword_27CB288C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB288C8, &qword_21776EC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288C0);
  }

  return result;
}

unint64_t sub_2174DB688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288D0;
  if (!qword_27CB288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288D0);
  }

  return result;
}

unint64_t sub_2174DB6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288D8;
  if (!qword_27CB288D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288D8);
  }

  return result;
}

unint64_t sub_2174DB738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288E0;
  if (!qword_27CB288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288E0);
  }

  return result;
}

unint64_t sub_2174DB7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288E8;
  if (!qword_27CB288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C7ArtworkVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit17CloudCreditArtistV13RelationshipsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174DB848(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 610))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174DB888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 608) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 610) = 1;
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

    *(result + 610) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}