uint64_t sub_1D5E4C9BC()
{
  v1 = 0x73656D656874;
  v2 = 0x69747265706F7270;
  if (*v0 != 2)
  {
    v2 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    v1 = 0x3273656D656874;
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

unint64_t sub_1D5E4CA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5E4CE18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5E4CA64(uint64_t a1)
{
  v2 = sub_1D5E4C19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5E4CAA0(uint64_t a1)
{
  v2 = sub_1D5E4C19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FormatContentTheme.deinit()
{

  return v0;
}

uint64_t FormatContentTheme.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5E4CB54(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5B4A1A4(&qword_1EC880028, a2, type metadata accessor for FormatContentTheme, &protocol conformance descriptor for FormatContentTheme);
  a1[2] = sub_1D5B4A1A4(&qword_1EC880030, v3, type metadata accessor for FormatContentTheme, &protocol conformance descriptor for FormatContentTheme);
  result = sub_1D5B4A1A4(&qword_1EC880038, v4, type metadata accessor for FormatContentTheme, &protocol conformance descriptor for FormatContentTheme);
  a1[3] = result;
  return result;
}

void *sub_1D5E4CC24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatContentTheme.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D5E4CD14()
{
  result = qword_1EC880040;
  if (!qword_1EC880040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880040);
  }

  return result;
}

unint64_t sub_1D5E4CD6C()
{
  result = qword_1EDF10710;
  if (!qword_1EDF10710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10710);
  }

  return result;
}

unint64_t sub_1D5E4CDC4()
{
  result = qword_1EDF10718;
  if (!qword_1EDF10718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10718);
  }

  return result;
}

unint64_t sub_1D5E4CE18(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id SportsEmbedConfigurationKind.leagueTag.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 2)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        return [*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30) eventLeagueTag];
      }

      sub_1D5E4CF90(0);
      sub_1D725BE8C();
      v3 = *(v4 + 56);
      swift_unknownObjectRetain();

      return v3;
    }

    else
    {
      return [*(a1 + 48) eventLeagueTag];
    }
  }

  else
  {
    if (v1 <= 4)
    {
      return [*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30) eventLeagueTag];
    }

    return swift_unknownObjectRetain();
  }
}

void sub_1D5E4CF90(uint64_t a1)
{
  if (!qword_1EDF3B8A0)
  {
    sub_1D5E4CFF4(255);
    sub_1D5E4D04C();
    v1 = sub_1D725BEAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B8A0);
    }
  }
}

void sub_1D5E4CFF4(uint64_t a1)
{
  if (!qword_1EDF1AF90)
  {
    type metadata accessor for SportsBracketDataVisualization(255);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AF90);
    }
  }
}

unint64_t sub_1D5E4D04C()
{
  result = qword_1EDF1AF80;
  if (!qword_1EDF1AF80)
  {
    sub_1D5E4CFF4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AF80);
  }

  return result;
}

uint64_t SportsEmbedConfigurationKind.championshipTag.getter(unint64_t a1)
{
  if (a1 >> 61 != 1)
  {
    return 0;
  }

  sub_1D5E4CF90(0);
  sub_1D725BE8C();
  v1 = *(v3 + 64);
  swift_unknownObjectRetain();

  return v1;
}

uint64_t SportsEmbedConfigurationKind.umcCanonicalId.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 2)
  {
    if (v1 > 4)
    {
      v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      goto LABEL_10;
    }

LABEL_7:
    v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_10:

    return v2;
  }

  if (!v1)
  {
    v2 = *(a1 + 32);
    goto LABEL_10;
  }

  if (v1 != 1)
  {
    goto LABEL_7;
  }

  return SportsBracketGroupDataVisualization.umcCanonicalId.getter();
}

uint64_t SportsEmbedConfigurationKind.description.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  v2 = 0x726F635320786F42;
  v3 = 0x676E69646E617453;
  if (a1 >> 61 != 5)
  {
    v3 = 0x65726F6353;
  }

  v4 = 0x6F635320656E694CLL;
  if (v1 != 3)
  {
    v4 = 0x52207972756A6E49;
  }

  if (v1 <= 4)
  {
    v3 = v4;
  }

  v5 = 0x74656B63617242;
  if (v1 != 1)
  {
    v5 = 0x79616C502079654BLL;
  }

  if (v1)
  {
    v2 = v5;
  }

  if (v1 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D5E4D2B0()
{
  v1 = *v0 >> 61;
  v2 = 0x726F635320786F42;
  v3 = 0x676E69646E617453;
  if (v1 != 5)
  {
    v3 = 0x65726F6353;
  }

  v4 = 0x6F635320656E694CLL;
  if (v1 != 3)
  {
    v4 = 0x52207972756A6E49;
  }

  if (v1 <= 4)
  {
    v3 = v4;
  }

  v5 = 0x74656B63617242;
  if (v1 != 1)
  {
    v5 = 0x79616C502079654BLL;
  }

  if (v1)
  {
    v2 = v5;
  }

  if (v1 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t FormatSnippet.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSnippet.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatSnippet.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D5E4D570(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t FormatSnippet.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatSnippet.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D5E4D6C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t FormatSnippet.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1D5E4D7FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

uint64_t FormatSnippet.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1D5E4D92C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t FormatSnippet.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_1D5E4DA5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t FormatSnippet.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_1D5E4DB8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}

uint64_t FormatSnippet.types.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatSnippet.__allocating_init(identifier:name:description:children:options:selectors:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 48) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = a6;

  swift_beginAccess();
  *(v17 + 64) = a7;
  swift_beginAccess();
  *(v17 + 72) = a8;
  swift_beginAccess();
  *(v17 + 80) = a9;
  swift_beginAccess();
  *(v17 + 88) = a10;
  return v17;
}

uint64_t FormatSnippet.init(identifier:name:description:children:options:selectors:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 48) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  swift_beginAccess();
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;

  swift_beginAccess();
  *(v10 + 64) = a7;
  swift_beginAccess();
  *(v10 + 72) = a8;
  swift_beginAccess();
  *(v10 + 80) = a9;
  swift_beginAccess();
  *(v10 + 88) = a10;
  return v10;
}

void *FormatSnippet.deinit()
{

  return v0;
}

uint64_t FormatSnippet.__deallocating_deinit()
{
  FormatSnippet.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5E4DF90(uint64_t a1)
{
  result = sub_1D5B4B970(&qword_1EDF455A0, &protocol conformance descriptor for FormatSnippet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5E4DFD4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

unint64_t sub_1D5E4E0CC()
{
  sub_1D5C0F84C(v0, v2);
  switch(v3)
  {
    case 1:
    case 10:
    case 11:
      sub_1D5E4E3B4(v2);
      result = 0xD000000000000021;
      break;
    case 2:
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
    case 7:
      sub_1D5E4E3B4(v2);
      result = 0xD000000000000026;
      break;
    case 8:
    case 9:
      sub_1D5E4E3B4(v2);
      result = 0xD00000000000001DLL;
      break;
    case 12:
      sub_1D5E4E3B4(v2);
      result = 0xD000000000000020;
      break;
    case 13:
      if (v2[3] | v2[4] | v2[0] | v2[2] | v2[1])
      {
        result = 0x6C706D4920746F4ELL;
      }

      else
      {
        result = 0xD000000000000019;
      }

      break;
    default:
      __swift_destroy_boxed_opaque_existential_1(v2);
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

unint64_t sub_1D5E4E308()
{
  result = qword_1EDF0B008;
  if (!qword_1EDF0B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B008);
  }

  return result;
}

unint64_t sub_1D5E4E35C()
{
  result = qword_1EC880048;
  if (!qword_1EC880048)
  {
    type metadata accessor for UIUserInterfaceIdiom(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880048);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5E4E3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xE)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5E4E434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5E4E480(uint64_t result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 13;
    LOBYTE(a2) = 13;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1D5E4E4B8(uint64_t a1)
{
  result = sub_1D5C17350();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5E4E4E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D5E4E570(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 32))(a1, v3, v4);
  if (v5)
  {
    v6 = [*(v5 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
    sub_1D726207C();
  }

  v7 = [objc_opt_self() generalPasteboard];
  v8 = sub_1D726203C();

  [v7 setString_];
}

void *sub_1D5E4E6A4(uint64_t a1, uint64_t a2)
{
  sub_1D5E4F2F4(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v103 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v96 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v95 - v9);
  v11 = *(a1 + 112);
  v133[6] = *(a1 + 96);
  v133[7] = v11;
  v133[8] = *(a1 + 128);
  v134 = *(a1 + 144);
  v12 = *(a1 + 48);
  v133[2] = *(a1 + 32);
  v133[3] = v12;
  v13 = *(a1 + 80);
  v133[4] = *(a1 + 64);
  v133[5] = v13;
  v14 = *(a1 + 16);
  v133[0] = *a1;
  v133[1] = v14;
  sub_1D5E4F2F4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7279790;
  v111[2] = a2;
  sub_1D5ECF488(sub_1D5E4F3F0, v111, &unk_1F50F3C38);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v16, v112);

  *(v15 + 56) = &type metadata for FormatInspectionGroup;
  *(v15 + 64) = &off_1F518B2C0;
  v17 = swift_allocObject();
  *(v15 + 32) = v17;
  v97 = v15 + 32;
  v18 = v112[1];
  *(v17 + 16) = v112[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v113;
  v110[2] = a2;
  sub_1D5ECF488(sub_1D5E4F410, v110, &unk_1F50F3C70);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v19, v114);

  *(v15 + 96) = &type metadata for FormatInspectionGroup;
  *(v15 + 104) = &off_1F518B2C0;
  v20 = swift_allocObject();
  *(v15 + 72) = v20;
  v21 = v114[1];
  *(v20 + 16) = v114[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v115;
  v109[2] = a2;
  v109[3] = v133;
  v22 = sub_1D5FBB5A0(sub_1D5E4F430, v109, &unk_1F50F3C98);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v22, v116);

  *(v15 + 136) = &type metadata for FormatInspectionGroup;
  *(v15 + 144) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(v15 + 112) = v23;
  v24 = v116[1];
  *(v23 + 16) = v116[0];
  *(v23 + 32) = v24;
  *(v23 + 48) = v117;
  v108[2] = a2;
  v108[3] = v133;
  sub_1D5ECF488(sub_1D5E4F44C, v108, &unk_1F50F3D30);
  sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v25, v118);

  *(v15 + 176) = &type metadata for FormatInspectionGroup;
  *(v15 + 184) = &off_1F518B2C0;
  v26 = swift_allocObject();
  *(v15 + 152) = v26;
  v27 = v118[1];
  *(v26 + 16) = v118[0];
  *(v26 + 32) = v27;
  *(v26 + 48) = v119;
  v107[2] = a2;
  sub_1D5ECF488(sub_1D5E4F46C, v107, &unk_1F50F3D58);
  sub_1D6795150(0x74616F6C46, 0xE500000000000000, 0, 0, v28, v120);

  *(v15 + 216) = &type metadata for FormatInspectionGroup;
  *(v15 + 224) = &off_1F518B2C0;
  v29 = swift_allocObject();
  *(v15 + 192) = v29;
  v30 = v120[1];
  *(v29 + 16) = v120[0];
  *(v29 + 32) = v30;
  *(v29 + 48) = v121;
  v106[2] = a2;
  sub_1D7199984(sub_1D5E4F48C, v106, &unk_1F50F3CD0);
  v32 = sub_1D5F62998(v31);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v32, v122);

  *(v15 + 256) = &type metadata for FormatInspectionGroup;
  *(v15 + 264) = &off_1F518B2C0;
  v33 = swift_allocObject();
  *(v15 + 232) = v33;
  v34 = v122[1];
  *(v33 + 16) = v122[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v123;
  v105[2] = a2;
  sub_1D5ECF488(sub_1D5E4F4A8, v105, &unk_1F50F3D08);
  sub_1D6795150(5001813, 0xE300000000000000, 0, 0, v35, v124);

  *(v15 + 296) = &type metadata for FormatInspectionGroup;
  *(v15 + 304) = &off_1F518B2C0;
  v36 = swift_allocObject();
  *(v15 + 272) = v36;
  v37 = v124[1];
  *(v36 + 16) = v124[0];
  *(v36 + 32) = v37;
  *(v36 + 48) = v125;
  v104[2] = a2;
  sub_1D7199984(sub_1D5E4F4C8, v104, &unk_1F50F2F70);
  v39 = sub_1D5F62998(v38);

  sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v39, v126);

  *(v15 + 336) = &type metadata for FormatInspectionGroup;
  *(v15 + 344) = &off_1F518B2C0;
  v40 = swift_allocObject();
  v98 = v15;
  *(v15 + 312) = v40;
  v41 = v126[1];
  *(v40 + 16) = v126[0];
  *(v40 + 32) = v41;
  *(v40 + 48) = v127;
  v101 = type metadata accessor for FeedHeadline(0);
  *(&v131 + 1) = v101;
  v132 = sub_1D5E4F4E4(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v130);
  v102 = a2;
  sub_1D5C0C74C(a2, boxed_opaque_existential_1);
  sub_1D713A66C(&v130, v128);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v43 = *&v128[0];
  *&v128[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 0, 0);
  v44 = *&v128[0];
  if (v43)
  {
    while (1)
    {
      v45 = v43 & -v43;
      *&v130 = 91;
      *(&v130 + 1) = 0xE100000000000000;
      v111[4] = v45;
      v111[3] = sub_1D713AFE4();
      sub_1D5BBE0A8();
      sub_1D5E4F4E4(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
      v46 = sub_1D7261F3C();
      v48 = v47;

      MEMORY[0x1DA6F9910](v46, v48);

      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
      v49 = sub_1D5FD24A4(1uLL, v130, *(&v130 + 1));
      v51 = v50;

      result = sub_1D726398C();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      result = sub_1D726396C();
      if (v53)
      {
        v54 = v51;
      }

      else
      {
        v54 = result;
      }

      if (v54 >> 14 < v49 >> 14)
      {
        goto LABEL_20;
      }

      v55 = sub_1D72639BC();
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v62 = MEMORY[0x1DA6F97E0](v55, v57, v59, v61);
      v64 = v63;

      v65 = type metadata accessor for FormatInspectionItem(0);
      v66 = (v10 + *(v65 + 24));
      *v66 = 0;
      v66[1] = 0xE000000000000000;
      v67 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      *v10 = v62;
      v10[1] = v64;
      v10[2] = 0;
      v10[3] = 0;
      v68 = v10 + *(v65 + 28);
      *v68 = 0;
      *(v68 + 1) = 0;
      v68[16] = -1;
      (*(*(v65 - 8) + 56))(v10, 0, 1, v65);
      *&v128[0] = v44;
      v70 = *(v44 + 16);
      v69 = *(v44 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1D69972A4((v69 > 1), v70 + 1, 1);
        v44 = *&v128[0];
      }

      *(v44 + 16) = v70 + 1;
      sub_1D5E4F52C(v10, v44 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v70);
      v71 = v45 == v43;
      v43 ^= v45;
      if (v71)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v44, v128);

    v72 = v98;
    *(v98 + 376) = &type metadata for FormatInspectionGroup;
    *(v72 + 384) = &off_1F518B2C0;
    v73 = swift_allocObject();
    *(v72 + 352) = v73;
    v74 = v128[1];
    *(v73 + 16) = v128[0];
    *(v73 + 32) = v74;
    *(v73 + 48) = v129;
    v75 = FeedHeadline.State.selectors.getter();
    v76 = v75[2];
    if (v76)
    {
      *&v130 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v76, 0);
      v77 = v130;
      v78 = type metadata accessor for FormatInspectionItem(0);
      v79 = type metadata accessor for FormatInspectionItem.Value(0);
      v80 = *(v79 - 8);
      v101 = v78 - 8;
      v102 = v79;
      v81 = *(v80 + 56);
      v99 = v80 + 56;
      v100 = v81;
      v95[1] = v75;
      v82 = v75 + 5;
      v83 = v96;
      do
      {
        v84 = *(v82 - 1);
        v85 = *v82;
        v86 = (v83 + *(v78 + 24));
        *v86 = 0;
        v86[1] = 0xE000000000000000;
        v87 = v102;
        swift_storeEnumTagMultiPayload();
        v100(v86, 0, 1, v87);
        *v83 = v84;
        v83[1] = v85;
        v83[2] = 0;
        v83[3] = 0;
        v88 = v83 + *(v78 + 28);
        *v88 = 0;
        *(v88 + 1) = 0;
        v88[16] = -1;
        (*(*(v78 - 8) + 56))(v83, 0, 1, v78);
        *&v130 = v77;
        v90 = *(v77 + 16);
        v89 = *(v77 + 24);

        if (v90 >= v89 >> 1)
        {
          sub_1D69972A4((v89 > 1), v90 + 1, 1);
          v77 = v130;
        }

        *(v77 + 16) = v90 + 1;
        sub_1D5E4F52C(v83, v77 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v90);
        v82 += 2;
        --v76;
      }

      while (v76);
    }

    else
    {

      v77 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6795150(0x6553206574617453, 0xEF73726F7463656CLL, 0, 0, v77, &v130);

    v91 = v98;
    *(v98 + 416) = &type metadata for FormatInspectionGroup;
    *(v91 + 424) = &off_1F518B2C0;
    v92 = swift_allocObject();
    *(v91 + 392) = v92;
    v93 = v131;
    *(v92 + 16) = v130;
    *(v92 + 32) = v93;
    *(v92 + 48) = v132;
    v94 = sub_1D7073500(v91);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v94;
  }

  return result;
}

void sub_1D5E4F2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D5E4F38C()
{
  result = qword_1EC880AD0;
  if (!qword_1EC880AD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC880AD0);
  }

  return result;
}

uint64_t sub_1D5E4F4E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5E4F52C(uint64_t a1, uint64_t a2)
{
  sub_1D5E4F2F4(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

NewsFeed::FormatBlendMode_optional __swiftcall FormatBlendMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatBlendMode.rawValue.getter()
{
  result = 0x6C616D726F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0x796C7069746C756DLL;
      break;
    case 2:
      result = 0x6E6565726373;
      break;
    case 3:
      result = 0x79616C7265766FLL;
      break;
    case 4:
      result = 0x6E656B726164;
      break;
    case 5:
      result = 0x6E65746867696CLL;
      break;
    case 6:
      result = 0x646F44726F6C6F63;
      break;
    case 7:
      result = 0x727542726F6C6F63;
      break;
    case 8:
      v2 = 1952870259;
      goto LABEL_18;
    case 9:
      v2 = 1685217640;
LABEL_18:
      result = v2 | 0x6867694C00000000;
      break;
    case 0xA:
      result = 0x6E65726566666964;
      break;
    case 0xB:
      result = 0x6F6973756C637865;
      break;
    case 0xC:
      result = 6649192;
      break;
    case 0xD:
      result = 0x6974617275746173;
      break;
    case 0xE:
      result = 0x726F6C6F63;
      break;
    case 0xF:
      result = 0x69736F6E696D756CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5E4F7BC()
{
  v0 = FormatBlendMode.rawValue.getter();
  v2 = v1;
  if (v0 == FormatBlendMode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D5E4F85C()
{
  result = qword_1EC880050;
  if (!qword_1EC880050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880050);
  }

  return result;
}

uint64_t sub_1D5E4F8B0()
{
  sub_1D7264A0C();
  FormatBlendMode.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4F918(uint64_t a1)
{
  FormatBlendMode.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D5E4F97C(uint64_t a1)
{
  sub_1D7264A0C();
  FormatBlendMode.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4F9EC@<X0>(uint64_t *a1@<X8>)
{
  result = FormatBlendMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D5E4FA14(uint64_t a1)
{
  *(a1 + 8) = sub_1D5E4FA44();
  result = sub_1D5E4FA98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5E4FA44()
{
  result = qword_1EC880058;
  if (!qword_1EC880058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880058);
  }

  return result;
}

unint64_t sub_1D5E4FA98()
{
  result = qword_1EDF31AD0;
  if (!qword_1EDF31AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31AD0);
  }

  return result;
}

unint64_t sub_1D5E4FAEC(uint64_t a1)
{
  result = sub_1D5E4FB14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E4FB14()
{
  result = qword_1EC880060;
  if (!qword_1EC880060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880060);
  }

  return result;
}

unint64_t sub_1D5E4FB68(void *a1)
{
  a1[1] = sub_1D5E4FBA0();
  a1[2] = sub_1D5E4FBF4();
  result = sub_1D5E4F85C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5E4FBA0()
{
  result = qword_1EDF31AC8;
  if (!qword_1EDF31AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31AC8);
  }

  return result;
}

unint64_t sub_1D5E4FBF4()
{
  result = qword_1EDF119A0;
  if (!qword_1EDF119A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF119A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatBlendMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatBlendMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D5E4FE10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6997184(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v20 = v2 + 72;
    v21 = v1;
    v22 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = v5;
      v24 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = *(v25 + 16);
      v12 = *(v25 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997184((v12 > 1), v11 + 1, 1);
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v10;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v22;
      v13 = *(v22 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (v20 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1D5C25E1C(v4, v24, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v24, 0);
      }

LABEL_4:
      v5 = v23 + 1;
      v4 = v6;
      if (v23 + 1 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1D5E5004C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6997184(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v20 = v2 + 72;
    v21 = v1;
    v22 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = v5;
      v24 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = *(v25 + 16);
      v12 = *(v25 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997184((v12 > 1), v11 + 1, 1);
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v10 | 0x2000000000000000;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v22;
      v13 = *(v22 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (v20 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1D5C25E1C(v4, v24, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v24, 0);
      }

LABEL_4:
      v5 = v23 + 1;
      v4 = v6;
      if (v23 + 1 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1D5E5028C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6997184(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v20 = v2 + 72;
    v21 = v1;
    v22 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = v5;
      v24 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = *(v25 + 16);
      v12 = *(v25 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997184((v12 > 1), v11 + 1, 1);
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v10 | 0x4000000000000000;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v22;
      v13 = *(v22 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (v20 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1D5C25E1C(v4, v24, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v24, 0);
      }

LABEL_4:
      v5 = v23 + 1;
      v4 = v6;
      if (v23 + 1 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1D5E504CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6997184(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v20 = v2 + 72;
    v21 = v1;
    v22 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = v5;
      v24 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = *(v25 + 16);
      v12 = *(v25 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997184((v12 > 1), v11 + 1, 1);
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v10 | 0x6000000000000000;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v22;
      v13 = *(v22 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (v20 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1D5C25E1C(v4, v24, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v24, 0);
      }

LABEL_4:
      v5 = v23 + 1;
      v4 = v6;
      if (v23 + 1 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1D5E5070C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6997184(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v20 = v2 + 72;
    v21 = v1;
    v22 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = v5;
      v24 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = *(v25 + 16);
      v12 = *(v25 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997184((v12 > 1), v11 + 1, 1);
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v10 | 0x8000000000000000;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v22;
      v13 = *(v22 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (v20 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1D5C25E1C(v4, v24, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v24, 0);
      }

LABEL_4:
      v5 = v23 + 1;
      v4 = v6;
      if (v23 + 1 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1D5E5094C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6997184(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v20 = v2 + 72;
    v21 = v1;
    v22 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = v5;
      v24 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = *(v25 + 16);
      v12 = *(v25 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997184((v12 > 1), v11 + 1, 1);
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v10 | 0xA000000000000000;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v22;
      v13 = *(v22 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (v20 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1D5C25E1C(v4, v24, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v24, 0);
      }

LABEL_4:
      v5 = v23 + 1;
      v4 = v6;
      if (v23 + 1 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1D5E50B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D6997184(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v20 = v2 + 72;
    v21 = v1;
    v22 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v23 = v5;
      v24 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = *(v25 + 16);
      v12 = *(v25 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997184((v12 > 1), v11 + 1, 1);
      }

      *(v25 + 16) = v11 + 1;
      *(v25 + 8 * v11 + 32) = v10 | 0xC000000000000000;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v22;
      v13 = *(v22 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v24 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (v20 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1D5C25E1C(v4, v24, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v24, 0);
      }

LABEL_4:
      v5 = v23 + 1;
      v4 = v6;
      if (v23 + 1 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1D5E50DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D69976DC(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D7263B7C();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D69976DC((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D5C25E1C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D5C25E1C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_1D5E50FEC(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v79 - v11;
  v86 = sub_1D725BD1C();
  v13 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v14);
  v79 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v90 = &v79 - v18;
  v81 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v81, v19);
  v21 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEFE04(0, &unk_1EDF40210, sub_1D5C2AB28, v4);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v79 - v24;
  sub_1D5C2AB28(0);
  v98 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v88 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v99 = &v79 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v80 = &v79 - v35;
  v36 = *(a1 + 16);
  if (v36)
  {
    v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v83 = v8;
    v84 = v37;
    v38 = a1 + v37;
    v95 = *(v34 + 72);
    v89 = (v13 + 32);
    v91 = (v34 + 56);
    v92 = (v13 + 48);
    v87 = (v34 + 48);
    v93 = v12;
    v94 = MEMORY[0x1E69E7CC0];
    v96 = a2;
    v97 = v25;
    v39 = v79;
    while (1)
    {
      sub_1D5CEFE68(v38, v99, sub_1D5C2AB28);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v42 = v92;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
          v44 = v99;
          sub_1D5CEFF38(v99 + *(v43 + 48), v21, type metadata accessor for FormatMetadata);
          sub_1D5EA08F4(v44, type metadata accessor for FormatPackage);
        }

        else
        {
          sub_1D725BD3C();
          v48 = *v42;
          v49 = v86;
          if ((*v42)(v12, 1, v86) == 1)
          {
            sub_1D725BCDC();
            if (v48(v12, 1, v49) != 1)
            {
              sub_1D5CF274C(v12, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
            }
          }

          else
          {
            (*v89)(v90, v12, v49);
          }

          v50 = v83;
          sub_1D725BD3C();
          if (v48(v50, 1, v49) == 1)
          {
            sub_1D725BCCC();
            if (v48(v50, 1, v49) != 1)
            {
              sub_1D5CF274C(v83, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5CEFE04);
            }
          }

          else
          {
            (*v89)(v39, v50, v49);
          }

          v51 = v81;
          sub_1D725BD3C();
          *v21 = 0;
          v21[1] = 0;
          v52 = *v89;
          (*v89)(v21 + v51[5], v90, v49);
          v52(v21 + v51[6], v39, v49);
          v53 = MEMORY[0x1E69E7CD0];
          *(v21 + v51[8]) = MEMORY[0x1E69E7CD0];
          *(v21 + v51[9]) = v53;
          *(v21 + v51[10]) = v53;
          *(v21 + v51[11]) = v53;
        }
      }

      else
      {
        sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
        v46 = v99;
        sub_1D5CEFF38(v99 + *(v45 + 48), v21, type metadata accessor for FormatMetadata);
        v47 = sub_1D72585BC();
        (*(*(v47 - 8) + 8))(v46, v47);
      }

      v55 = *v21;
      v54 = v21[1];

      sub_1D5EA08F4(v21, type metadata accessor for FormatMetadata);
      if (v54)
      {
        v56 = *a2;
        if (*(*a2 + 16) && (v57 = sub_1D5B69D90(v55, v54), (v58 & 1) != 0))
        {
          v59 = *(*(v56 + 56) + 8 * v57);
          v60 = qword_1EDF3CA50;

          if (v60 != -1)
          {
            swift_once();
          }

          v61 = __swift_project_value_buffer(v86, qword_1EDF3CA58);
          MEMORY[0x1EEE9AC00](v61, v62);
          *(&v79 - 2) = v63;

          v64 = v85;
          sub_1D62ECF64(sub_1D5EA208C, (&v79 - 4), v59);
          v85 = v64;
          sub_1D5C2AF10(&qword_1EDF43A50, 255, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
          v82 = v59;
          v65 = v98;
          v66 = sub_1D72626AC();

          v67 = *(v66 + 16);
          if (v67)
          {
            v68 = v97;
            sub_1D5CEFE68(v66 + v84 + (v67 - 1) * v95, v97, sub_1D5C2AB28);

            (*v91)(v68, 0, 1, v65);
          }

          else
          {

            (*v91)(v97, 1, 1, v65);
          }

          a2 = v96;
          v39 = v79;
        }

        else
        {
          (*v91)(v97, 1, 1, v98);
        }

        sub_1D5B69D90(v55, v54);
        if (v69)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = *a2;
          v100 = *a2;
          *a2 = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6D7D6E4();
            v71 = v100;
          }

          sub_1D6716D80();
          *v96 = v71;

          a2 = v96;
        }

        v40 = v97;
        v72 = (*v87)(v97, 1, v98);
        v12 = v93;
        if (v72 != 1)
        {
          v73 = v80;
          sub_1D5CEFF38(v40, v80, sub_1D5C2AB28);
          sub_1D5CEFF38(v73, v88, sub_1D5C2AB28);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_1D5D57998(0, v94[2] + 1, 1, v94);
          }

          v75 = v94[2];
          v74 = v94[3];
          if (v75 >= v74 >> 1)
          {
            v94 = sub_1D5D57998((v74 > 1), v75 + 1, 1, v94);
          }

          v77 = v94;
          v76 = v95;
          v94[2] = v75 + 1;
          sub_1D5CEFF38(v88, v77 + v84 + v75 * v76, sub_1D5C2AB28);
          a2 = v96;
          goto LABEL_5;
        }
      }

      else
      {
        v40 = v97;
        (*v91)(v97, 1, 1, v98);
        v12 = v93;
      }

      sub_1D5CF274C(v40, &unk_1EDF40210, sub_1D5C2AB28, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_5:
      v38 += v95;
      if (!--v36)
      {
        return v94;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D5E51B18(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, void), uint64_t a5)
{
  v111 = a5;
  v110 = a4;
  sub_1D5C2AB28(0);
  v113 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v98 = &v88 - v14;
  sub_1D5E9B290(0);
  v109 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v106 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v105 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v94 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v93 = &v88 - v26;
  v27 = type metadata accessor for FormatContentSubgroup(0);
  v95 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v117 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v99 = &v88 - v32;
  sub_1D5E9D830(0, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290);
  v108 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v104 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v91 = &v88 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v92 = &v88 - v41;
  v97 = a1;
  v42 = *(a1 + 16);
  v116 = a2;
  v114 = *(a2 + 16);
  v112 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    if (i >= v114)
    {
      v44 = v114;
    }

    else
    {
      v44 = i;
    }

    if (v44 >= v42)
    {
      v45 = v42;
    }

    else
    {
      v45 = v44;
    }

    v128 = MEMORY[0x1E69E7CC0];
    sub_1D6997448(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      __break(1u);
      goto LABEL_62;
    }

    v46 = v128;
    v107 = v42;
    if (v45)
    {
      v89 = v44;
      v90 = v45;
      v47 = a3 & 0xFFFFFFFFFFFFFF8;
      v115 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((a3 & 0x8000000000000000) != 0)
      {
        v47 = a3;
      }

      v96 = v47;

      if (v42)
      {
        v48 = 0;
        v103 = a3 & 0xC000000000000001;
        v49 = v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v100 = *(v95 + 72);
        v101 = v90 - 1;
        v102 = a3;
        do
        {
          sub_1D5CEFE68(v49, v117, type metadata accessor for FormatContentSubgroup);
          if (v114 == v48)
          {
            goto LABEL_64;
          }

          sub_1D5CEFE68(v116 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v48, v11, sub_1D5C2AB28);
          if (v112)
          {
            v50 = sub_1D7263BFC();
          }

          else
          {
            v50 = *(v115 + 16);
          }

          if (v48 == v50)
          {
            goto LABEL_63;
          }

          if (v103)
          {
            v51 = v46;
            v52 = MEMORY[0x1DA6FB460](v48, a3);
          }

          else
          {
            if (v48 >= *(v115 + 16))
            {
              __break(1u);
              goto LABEL_58;
            }

            v51 = v46;
            v52 = *(a3 + 8 * v48 + 32);
          }

          v53 = v109;
          v54 = *(v109 + 48);
          v55 = v11;
          v56 = v11;
          v57 = v106;
          sub_1D5CEFF38(v56, v106, sub_1D5C2AB28);
          *(v57 + v54) = v52;
          v58 = v105;
          sub_1D5CEFF38(v57, v105, sub_1D5E9B290);
          v59 = v104;
          v60 = v104 + *(v108 + 48);
          sub_1D5CEFF38(v117, v104, type metadata accessor for FormatContentSubgroup);
          sub_1D5CEFF38(v58, v60, sub_1D5E9B290);
          v61 = v129;
          v110(&v123, v59, v60, *(v60 + *(v53 + 48)));
          if (v61)
          {
            v46 = v61;

            sub_1D5CF274C(v59, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
            return v46;
          }

          v129 = 0;
          sub_1D5CF274C(v59, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
          v121 = v126;
          v122 = v127;
          v119 = v124;
          v120 = v125;
          v118 = v123;
          v46 = v51;
          v128 = v51;
          v63 = *(v51 + 16);
          v62 = *(v51 + 24);
          v11 = (v63 + 1);
          if (v63 >= v62 >> 1)
          {
            sub_1D6997448((v62 > 1), v63 + 1, 1);
            v46 = v128;
          }

          *(v46 + 16) = v11;
          v64 = (v46 + 80 * v63);
          v64[2] = v118;
          v65 = v119;
          v66 = v120;
          v67 = v122;
          v64[5] = v121;
          v64[6] = v67;
          v64[3] = v65;
          v64[4] = v66;
          v42 = v107;
          if (v101 == v48)
          {
            a3 = v102;
            v45 = v90;
            if (v107 <= v89)
            {
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          ++v48;
          v49 += v100;
          a3 = v102;
          v11 = v55;
        }

        while (v107 != v48);
      }

LABEL_62:
      __break(1u);
LABEL_63:
      sub_1D5EA08F4(v11, sub_1D5C2AB28);
LABEL_64:
      result = sub_1D5EA08F4(v117, type metadata accessor for FormatContentSubgroup);
      __break(1u);
      return result;
    }

    if (v42 <= v44)
    {
      break;
    }

LABEL_34:
    v68 = a3 & 0xFFFFFFFFFFFFFF8;
    v117 = a3 & 0xFFFFFFFFFFFFFF8;
    if ((a3 & 0x8000000000000000) != 0)
    {
      v68 = a3;
    }

    v106 = v68;
    v115 = a3 & 0xC000000000000001;
    v69 = v91;
    while (v45 < v42)
    {
      sub_1D5CEFE68(v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v45, v99, type metadata accessor for FormatContentSubgroup);
      if (v114 == v45)
      {
        goto LABEL_53;
      }

      sub_1D5CEFE68(v116 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v45, v98, sub_1D5C2AB28);
      if (v112)
      {
        if (v45 == sub_1D7263BFC())
        {
LABEL_52:
          sub_1D5EA08F4(v98, sub_1D5C2AB28);
LABEL_53:
          sub_1D5EA08F4(v99, type metadata accessor for FormatContentSubgroup);
          goto LABEL_54;
        }
      }

      else if (v45 == *(v117 + 16))
      {
        goto LABEL_52;
      }

      if (v115)
      {
        v70 = v46;
        v11 = v45;
        v71 = MEMORY[0x1DA6FB460](v45, a3);
      }

      else
      {
        if (v45 >= *(v117 + 16))
        {
          goto LABEL_59;
        }

        v70 = v46;
        v11 = v45;
        v71 = *(a3 + 8 * v45 + 32);
      }

      v72 = v109;
      v73 = *(v109 + 48);
      v74 = v94;
      sub_1D5CEFF38(v98, v94, sub_1D5C2AB28);
      *(v74 + v73) = v71;
      v75 = v74;
      v76 = v93;
      sub_1D5CEFF38(v75, v93, sub_1D5E9B290);
      v77 = v108;
      v78 = *(v108 + 48);
      sub_1D5CEFF38(v99, v69, type metadata accessor for FormatContentSubgroup);
      sub_1D5CEFF38(v76, v69 + v78, sub_1D5E9B290);
      v79 = v92;
      sub_1D5E9E84C(v69, v92, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
      v46 = v111;
      v80 = v129;
      v110(&v123, v79, v79 + *(v77 + 48), *(v79 + *(v77 + 48) + *(v72 + 48)));
      v129 = v80;
      if (v80)
      {
        sub_1D5CF274C(v79, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);

        return v46;
      }

      sub_1D5CF274C(v79, &qword_1EDF29A70, type metadata accessor for FormatContentSubgroup, sub_1D5E9B290, sub_1D5E9D830);
      v121 = v126;
      v122 = v127;
      v119 = v124;
      v120 = v125;
      v118 = v123;
      v46 = v70;
      v128 = v70;
      v82 = *(v70 + 16);
      v81 = *(v70 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1D6997448((v81 > 1), v82 + 1, 1);
        v46 = v128;
      }

      v45 = (v11 + 1);
      *(v46 + 16) = v82 + 1;
      v83 = (v46 + 80 * v82);
      v83[2] = v118;
      v84 = v119;
      v85 = v120;
      v86 = v122;
      v83[5] = v121;
      v83[6] = v86;
      v83[3] = v84;
      v83[4] = v85;
      v42 = v107;
      if (v107 == v11 + 1)
      {
        goto LABEL_54;
      }
    }

LABEL_58:
    __break(1u);
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_54:

  return v46;
}

uint64_t FormatServiceType.resolve(content:pool:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FormatServiceType.resolveResult(content:pool:options:)(a1, a2, a3, a4, a5);
  if (!v5)
  {
    v7 = sub_1D725B92C();
    type metadata accessor for FormatContent.Resolved(0);
    v8 = sub_1D725BA8C();

    return v8;
  }

  return result;
}

uint64_t FormatServiceType.resolveResult(content:pool:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a1;
  v41 = a5;
  v37 = a2;
  v38 = a3;
  v6 = type metadata accessor for FormatServiceOptions(0);
  v39 = *(v6 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9;
  v10 = type metadata accessor for FormatContentPool(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatContent(0);
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, &qword_1EDF3B990, type metadata accessor for FormatServiceResult, MEMORY[0x1E69D6B18]);
  v33 = v22;
  (*(v17 + 16))(v21, v35, a4);
  sub_1D5CEFE68(v36, v16, type metadata accessor for FormatContent);
  sub_1D5CEFE68(v37, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v38, v9, type metadata accessor for FormatServiceOptions);
  v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24 = (v18 + *(v32 + 80) + v23) & ~*(v32 + 80);
  v25 = (v14 + *(v34 + 80) + v24) & ~*(v34 + 80);
  v26 = (v11 + *(v39 + 80) + v25) & ~*(v39 + 80);
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = a4;
  *(v27 + 24) = v28;
  (*(v17 + 32))(v27 + v23, v21, a4);
  sub_1D5CEFF38(v16, v27 + v24, type metadata accessor for FormatContent);
  sub_1D5CEFF38(v30, v27 + v25, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v31, v27 + v26, type metadata accessor for FormatServiceOptions);
  return sub_1D725BA6C();
}

uint64_t sub_1D5E52CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v15 = (*(a7 + 16) + **(a7 + 16));
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_1D5E52E3C;

  return v15(a3, a4, a5, a6, a7);
}

uint64_t sub_1D5E52E3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5EA2234, 0, 0);
  }
}

uint64_t sub_1D5E52F88(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(type metadata accessor for FormatContent(0) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for FormatContentPool(0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1D5B64680;

  return sub_1D5E52CF0(a1, v1 + v8, v1 + v10, v1 + v13, v1 + v16, v5, v6);
}

uint64_t sub_1D5E53190(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 472);
  if (v3 == 2)
  {
    if (qword_1EDF3C340 != -1)
    {
      swift_once();
    }

    sub_1D5C2AF10(qword_1EDF33048, a2, type metadata accessor for FormatService, &protocol conformance descriptor for FormatService);
    sub_1D725964C();
    LOBYTE(v3) = v5;
    *(v2 + 472) = v5;
  }

  return v3 & 1;
}

uint64_t sub_1D5E5327C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 473);
  if (v3 == 2)
  {
    if (qword_1EDF3C328 != -1)
    {
      swift_once();
    }

    sub_1D5C2AF10(qword_1EDF33048, a2, type metadata accessor for FormatService, &protocol conformance descriptor for FormatService);
    sub_1D725964C();
    LOBYTE(v3) = v5;
    *(v2 + 473) = v5;
  }

  return v3 & 1;
}

uint64_t FormatService.resolveResult(content:pool:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  type metadata accessor for FormatContentPool(0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for FormatServiceOptions(0);
  v4[22] = swift_task_alloc();
  type metadata accessor for FormatContent.Resolved(0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v5 = sub_1D725891C();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for FormatContent(0);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = *(type metadata accessor for FormatContentSubgroup(0) - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E53604, 0, 0);
}

uint64_t sub_1D5E53604()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 120);
  v3 = [*(*(v0 + 144) + 152) appConfigurationManager];
  type metadata accessor for FeedAppConfigManager();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  type metadata accessor for FormatFeedConfigManager();
  swift_initStackObject();
  sub_1D5B7B960();
  v99 = FeedAppConfigManager.segmentSetIds.getter();
  swift_unknownObjectRelease();

  v95 = v1;
  v5 = *(v2 + *(v1 + 68));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 296);
    v9 = MEMORY[0x1E69E7CC0];
    v96 = *(v5 + 16);
    while (v7 < *(v5 + 16))
    {
      v10 = *(v0 + 312);
      v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      inited = *(v8 + 72);
      sub_1D5CEFE68(v5 + v11 + inited * v7, v10, type metadata accessor for FormatContentSubgroup);
      v12 = sub_1D5E54884(v10, v99);
      v13 = *(v0 + 312);
      if (v12)
      {
        sub_1D5CEFF38(v13, *(v0 + 304), type metadata accessor for FormatContentSubgroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D69975AC(0, *(v9 + 16) + 1, 1);
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D69975AC((v14 > 1), v15 + 1, 1);
        }

        v16 = *(v0 + 304);
        *(v9 + 16) = v15 + 1;
        sub_1D5CEFF38(v16, v9 + v11 + v15 * inited, type metadata accessor for FormatContentSubgroup);
        v6 = v96;
      }

      else
      {
        sub_1D5EA08F4(v13, type metadata accessor for FormatContentSubgroup);
      }

      if (v6 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_21;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v17 = *(v0 + 240);
  v18 = *(v0 + 248);
  v82 = *(v0 + 224);
  v97 = *(v0 + 216);
  v19 = *(v0 + 208);
  v93 = *(v0 + 200);
  v20 = *(v0 + 120);

  *(v0 + 112) = v9;
  sub_1D5CEFE04(0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&unk_1EDF1B0C0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup);
  v90 = sub_1D72623CC();

  v21 = sub_1D72608BC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v23(v17, 1, 1, v21);
  v89 = *v20;
  v100 = *(v20 + 1);
  (*(v19 + 16))(v97, &v20[v18[5]], v93);
  v24 = v18[7];
  v25 = &v20[v18[6]];
  v87 = *v25;
  v98 = *(v25 + 1);
  v26 = *&v20[v24 + 8];
  v88 = *&v20[v24];
  v27 = &v20[v18[8]];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = &v20[v18[9]];
  v86 = *v30;
  v94 = *(v30 + 1);
  v31 = &v20[v18[10]];
  v84 = v28;
  v85 = *v31;
  v91 = v29;
  v92 = *(v31 + 1);
  sub_1D5E9E84C(v17, v82, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  v32 = *(v22 + 48);
  v79 = v26;
  if (v32(v82, 1, v21) == 1)
  {
    v33 = *(v0 + 224);
    sub_1D5CF23F8(*(v0 + 120) + *(*(v0 + 248) + 44), *(v0 + 232), &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    v34 = v32(v33, 1, v21);

    if (v34 != 1)
    {
      sub_1D5CF274C(*(v0 + 224), &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    }
  }

  else
  {
    v35 = *(v0 + 232);
    (*(v22 + 32))(v35, *(v0 + 224), v21);
    v23(v35, 0, 1, v21);
  }

  v36 = *(v0 + 280);
  v83 = *(v0 + 272);
  v37 = *(v0 + 248);
  v78 = *(v0 + 232);
  v39 = *(v0 + 208);
  v38 = *(v0 + 216);
  v40 = *(v0 + 200);
  v41 = *(v0 + 120);
  v42 = *(v41 + v37[12]);
  v43 = *(v41 + v37[13]);
  v44 = *(v41 + v37[14]);
  v81 = *(v0 + 168);
  v45 = *(v41 + v37[15]);
  v77 = *(v41 + v37[16]);
  v46 = *(v41 + v37[18]);
  v47 = *(v41 + v37[19]);
  v80 = *(v0 + 136);
  *v36 = v89;
  *(v36 + 8) = v100;
  (*(v39 + 32))(v36 + v18[5], v38, v40);
  v48 = (v36 + v18[6]);
  *v48 = v87;
  v48[1] = v98;
  v49 = (v36 + v18[7]);
  *v49 = v88;
  v49[1] = v79;
  v50 = (v36 + v18[8]);
  *v50 = v84;
  v50[1] = v91;
  v51 = (v36 + v18[9]);
  *v51 = v86;
  v51[1] = v94;
  v52 = (v36 + v18[10]);
  *v52 = v85;
  v52[1] = v92;
  sub_1D5E9E84C(v78, v36 + v37[11], &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5CEFE04);
  *(v36 + v37[12]) = v42;
  *(v36 + v37[13]) = v43;
  *(v36 + v37[14]) = v44;
  *(v36 + v37[15]) = v45;
  *(v36 + v37[16]) = v77;
  *(v36 + *(v95 + 68)) = v90;
  *(v36 + v37[18]) = v46;
  *(v36 + v37[19]) = v47;

  sub_1D67F2364(v80, v36, v83);
  if (*(v80 + *(v81 + 64)))
  {
    v53 = (v0 + 264);
    v54 = *(v0 + 272);
    sub_1D69FA534(v54, *(*(v0 + 136) + *(*(v0 + 168) + 52)), *(v0 + 264));
    sub_1D5EA08F4(v54, type metadata accessor for FormatContent);
  }

  else
  {
    v53 = (v0 + 272);
  }

  v8 = MEMORY[0x1E69E6158];
  v55 = *v53;
  v56 = *(v0 + 288);
  v57 = *(v0 + 168);
  v58 = *(v0 + 136);
  sub_1D5EA08F4(*(v0 + 280), type metadata accessor for FormatContent);
  sub_1D5CEFF38(v55, v56, type metadata accessor for FormatContent);
  v6 = *(v58 + *(v57 + 52));
  sub_1D5C384A0(0);
  inited = swift_allocObject();
  *(inited + 16) = xmmword_1D7279960;
  v60 = *v56;
  v59 = v56[1];
  *(inited + 56) = v8;
  v9 = sub_1D5B7E2C0();
  *(inited + 64) = v9;
  *(inited + 32) = v60;
  *(inited + 40) = v59;
  v61 = *(*(v56 + v37[16]) + 16);
  v62 = MEMORY[0x1E69E6530];
  v63 = MEMORY[0x1E69E65A8];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 104) = v63;
  *(inited + 72) = v61;
  v64 = *(*(v56 + *(v95 + 68)) + 16);
  *(inited + 136) = v62;
  *(inited + 144) = v63;
  *(inited + 112) = v64;
  v65 = qword_1EDF3CA50;

  if (v65 != -1)
  {
    goto LABEL_27;
  }

LABEL_21:
  v66 = sub_1D725BD1C();
  __swift_project_value_buffer(v66, qword_1EDF3CA58);
  v67 = sub_1D725BC9C();
  *(inited + 176) = v8;
  *(inited + 184) = v9;
  *(inited + 152) = v67;
  *(inited + 160) = v68;
  if (qword_1EDF3CA98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v66, qword_1EDF3CAA0);
  v69 = sub_1D725BC9C();
  *(inited + 216) = v8;
  *(inited + 224) = v9;
  *(inited + 192) = v69;
  *(inited + 200) = v70;
  v71 = sub_1D7262EDC();
  sub_1D725C30C("FormatService content %{public}@ resolving %ld themes and %ld subgroups against format version %{public}@ and app version %{public}@", 132, 2, &dword_1D5B42000, v6, v71, inited);

  v72 = swift_task_alloc();
  *(v0 + 320) = v72;
  *v72 = v0;
  v72[1] = sub_1D5E54034;
  v73 = *(v0 + 288);
  v74 = *(v0 + 136);
  v75 = *(v0 + 128);

  return sub_1D5E54E7C(v73, v75, v74);
}

uint64_t sub_1D5E54034(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E545D4, 0, 0);
  }

  else
  {
    v6 = OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent;
    v7 = swift_task_alloc();
    v4[43] = v7;
    *v7 = v5;
    v7[1] = sub_1D5E541D4;
    v8 = v4[24];
    v9 = v4[17];

    return FormatService.prefetch(content:options:)(v8, a1 + v6, v9);
  }
}

uint64_t sub_1D5E541D4()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D5E54728;
  }

  else
  {
    v2 = sub_1D5E542E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E542E8()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[32];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[16];
  sub_1D5CEFE68(v0[17], v6, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v2, v3, type metadata accessor for FormatContent);
  sub_1D5CEFE68(v9, v8, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v4, v5, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v1 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, v7, type metadata accessor for FormatContentPool);

  type metadata accessor for FormatServiceResult(0);
  v10 = swift_allocObject();
  sub_1D5CEFF38(v6, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v3, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, type metadata accessor for FormatContent);
  sub_1D5CEFF38(v8, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v5, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v7, v10 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, type metadata accessor for FormatContentPool);
  sub_1D5EA08F4(v2, type metadata accessor for FormatContent);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1D5E545D4()
{
  sub_1D5EA08F4(*(v0 + 288), type metadata accessor for FormatContent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E54728()
{

  sub_1D5EA08F4(*(v0 + 288), type metadata accessor for FormatContent);

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1D5E54884(uint64_t a1, uint64_t *a2)
{
  v35 = a2;
  sub_1D5C2CA80(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - v5;
  v7 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for FormatContentSubgroup(0) + 40);
  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v12 = *&v10[v7[10]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  v13 = *(v12 + 16);

  if (v13)
  {
    sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
    v14 = *&v10[v7[10]];

    sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
    if (qword_1EDF34A20 != -1)
    {
      swift_once();
    }

    v15 = sub_1D6183980(qword_1EDF34A28, unk_1EDF34A30, v14);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v16 = *&v10[v7[11]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  v17 = *(v16 + 16);

  if (v17)
  {
    sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
    v18 = *&v10[v7[11]];

    sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
    if (qword_1EDF34A20 != -1)
    {
      swift_once();
    }

    v19 = sub_1D6183980(qword_1EDF34A28, unk_1EDF34A30, v18);

    if (v19)
    {
      return 0;
    }
  }

  v34 = sub_1D5B5C758;
  v33 = type metadata accessor for FormatCodingDefault;
  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v20 = *&v10[v7[8]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  v21 = v7;
  v22 = v35;
  sub_1D609D1E4(v35, v20, &v36);

  *&v32 = v37;
  *(&v32 + 1) = v36;
  v23 = v38;
  sub_1D5E9DB98(a1 + v11, v6, &qword_1EDF45148, v34, &type metadata for FormatCodingMetadataStrategy, v33);
  sub_1D5CEFF38(v6, v10, type metadata accessor for FormatMetadata);
  v24 = *&v10[v21[9]];

  sub_1D5EA08F4(v10, type metadata accessor for FormatMetadata);
  sub_1D609D4B4(v22, v24, &v36);

  v26 = v36;
  v25 = v37;
  v27 = v38;
  sub_1D5EA20AC();
  if (!v23)
  {
    sub_1D5DF6958(v26, v25, v27);
    v28 = *(&v32 + 1);
    v29 = v32;
LABEL_14:
    v30 = 0;
    goto LABEL_17;
  }

  if (v23 == 1)
  {
    sub_1D5DF6958(v26, v25, v27);
    v28 = *(&v32 + 1);
    v29 = v32;
LABEL_12:
    v30 = 1;
LABEL_17:
    sub_1D5DF6958(v28, v29, v30);
    return 0;
  }

  if (v32 != 0)
  {
    v28 = v26;
    v29 = v25;
    v30 = v27;
    goto LABEL_17;
  }

  if (!v27)
  {
    v28 = v26;
    v29 = v25;
    goto LABEL_14;
  }

  if (v27 == 1)
  {
    v28 = v26;
    v29 = v25;
    goto LABEL_12;
  }

  return !(v25 | v26);
}

uint64_t sub_1D5E54E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1255] = v3;
  v4[1249] = a3;
  v4[1243] = a2;
  v4[1237] = a1;
  v4[1261] = type metadata accessor for FormatContent.Resolved(0);
  v4[1267] = swift_task_alloc();
  v5 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  v4[1273] = swift_task_alloc();
  sub_1D5E9B2C4(0, &qword_1EDF1B720, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E6158], "key value ");
  v4[1279] = v6;
  v4[1285] = swift_task_alloc();
  v4[1291] = swift_task_alloc();
  v7 = type metadata accessor for FormatService.ThemePackage(0);
  v4[1297] = v7;
  v4[1303] = *(v7 - 8);
  v4[1309] = swift_task_alloc();
  v4[1315] = swift_task_alloc();
  sub_1D5E9B290(0);
  v4[1321] = v8;
  v4[1327] = swift_task_alloc();
  v4[1333] = swift_task_alloc();
  v4[1339] = swift_task_alloc();
  v4[1345] = swift_task_alloc();
  v4[1351] = swift_task_alloc();
  sub_1D5E9B2C4(0, &qword_1EDF1ACA0, sub_1D5E9B290, MEMORY[0x1E69E6530], "offset element ");
  v4[1357] = v9;
  v4[1363] = swift_task_alloc();
  v4[1369] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v5);
  v4[1375] = swift_task_alloc();
  v4[1381] = swift_task_alloc();
  v10 = type metadata accessor for FormatContentSubgroup(0);
  v4[1387] = v10;
  v4[1393] = *(v10 - 8);
  v4[1399] = swift_task_alloc();
  sub_1D5C2AB28(0);
  v4[1405] = *(v11 - 8);
  v4[1411] = swift_task_alloc();
  v4[1417] = swift_task_alloc();
  v12 = type metadata accessor for FormatContent(0);
  v4[1423] = v12;
  v13 = *(v12 - 8);
  v4[1429] = v13;
  v4[1435] = *(v13 + 64);
  v4[1441] = swift_task_alloc();
  v4[1447] = swift_task_alloc();
  v4[1453] = swift_task_alloc();
  v4[1459] = swift_task_alloc();
  v4[1465] = swift_task_alloc();
  v4[1471] = swift_task_alloc();
  v4[1477] = swift_task_alloc();
  v4[1483] = swift_task_alloc();
  v4[1489] = swift_task_alloc();
  v4[1495] = swift_task_alloc();
  v4[1501] = swift_task_alloc();
  v4[1507] = swift_task_alloc();
  v4[1513] = swift_task_alloc();
  v14 = *(type metadata accessor for FormatContentPool(0) - 8);
  v4[1519] = v14;
  v4[1525] = *(v14 + 64);
  v4[1531] = swift_task_alloc();
  v4[1537] = swift_task_alloc();
  v4[1543] = swift_task_alloc();
  v4[1549] = swift_task_alloc();
  v4[1555] = swift_task_alloc();
  v4[1561] = swift_task_alloc();
  v4[1567] = swift_task_alloc();
  v4[1573] = swift_task_alloc();
  v4[1579] = swift_task_alloc();
  v4[1585] = swift_task_alloc();
  v4[1591] = swift_task_alloc();
  v4[1597] = swift_task_alloc();
  v4[1603] = swift_task_alloc();
  v4[1609] = swift_task_alloc();
  v4[1615] = swift_task_alloc();
  v15 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v4[1621] = v15;
  v4[1627] = *(v15 + 64);
  v4[1633] = swift_task_alloc();
  v4[1639] = swift_task_alloc();
  v4[1645] = swift_task_alloc();
  v4[1651] = swift_task_alloc();
  v4[1657] = swift_task_alloc();
  v4[1663] = swift_task_alloc();
  v4[1669] = swift_task_alloc();
  v4[1675] = swift_task_alloc();
  v4[1681] = swift_task_alloc();
  v4[1687] = swift_task_alloc();
  v4[1693] = swift_task_alloc();
  v4[1699] = swift_task_alloc();
  v4[1705] = swift_task_alloc();
  v4[1711] = swift_task_alloc();
  v4[1717] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E55530, 0, 0);
}

uint64_t sub_1D5E55530()
{
  v1 = *(v0 + 11384);
  v2 = *(v0 + 10040);
  v3 = *(v0 + 9944);
  v4 = *(v0 + 9896);
  sub_1D5B68374(v2 + 696, v0 + 9096);
  v5 = *(v2 + 488);
  sub_1D5B68374(v2 + 496, v0 + 9016);
  v6 = *v4;
  *(v0 + 13784) = *v4;
  v7 = v4[1];
  *(v0 + 13832) = v7;
  v8 = *(v4 + v1[19]);
  v9 = *(v4 + v1[18]);
  *(v0 + 13880) = v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v3;
  v11 = v5;

  sub_1D7195E7C(sub_1D5E9B334, v10, v9);
  v13 = v12;

  v14 = sub_1D5BA8750(v13, v8);

  type metadata accessor for FormatServiceResolverServices();
  v15 = swift_allocObject();
  *(v0 + 13928) = v15;
  sub_1D5B63F14((v0 + 9096), (v15 + 2));
  v15[7] = v11;
  sub_1D5B63F14((v0 + 9016), (v15 + 8));
  v15[13] = v6;
  v15[14] = v7;
  v15[15] = 0;
  v15[16] = 0;
  v66 = v15;
  v15[17] = v14;
  v16 = *(v4 + v1[17]);
  *(v0 + 13976) = v16;
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = *(v0 + 11240);
    v20 = *(v0 + 11144);
    v21 = *(v0 + 11096);
    v103 = MEMORY[0x1E69E7CC0];
    sub_1D699768C(0, v17, 0);
    v18 = v103;
    v22 = v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v23 = *(v20 + 72);
    do
    {
      v24 = *(v0 + 11336);
      v25 = *(v0 + 11192);
      sub_1D5CEFE68(v22, v25, type metadata accessor for FormatContentSubgroup);
      sub_1D5CEFE68(v25 + *(v21 + 20), v24, sub_1D5C2AB28);
      sub_1D5EA08F4(v25, type metadata accessor for FormatContentSubgroup);
      v27 = *(v103 + 16);
      v26 = *(v103 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D699768C((v26 > 1), v27 + 1, 1);
      }

      v28 = *(v0 + 11336);
      *(v103 + 16) = v27 + 1;
      sub_1D5CEFF38(v28, v103 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v27, sub_1D5C2AB28);
      v22 += v23;
      --v17;
    }

    while (v17);
  }

  *(v0 + 14024) = v18;
  v29 = *(v0 + 13736);
  v101 = *(v0 + 13688);
  v94 = *(v0 + 13640);
  v57 = *(v0 + 13592);
  v61 = *(v0 + 13544);
  v63 = *(v0 + 13496);
  v69 = *(v0 + 13448);
  v100 = *(v0 + 9896);
  v70 = *(v0 + 13400);
  v73 = *(v0 + 13352);
  v76 = *(v0 + 13304);
  v79 = *(v0 + 13256);
  v82 = *(v0 + 13208);
  v85 = *(v0 + 13160);
  v88 = *(v0 + 13112);
  v98 = *(v0 + 13016);
  v30 = *(v0 + 12968);
  v54 = *(v0 + 12920);
  v56 = *(v0 + 12872);
  v59 = *(v0 + 12824);
  v62 = *(v0 + 12776);
  v65 = *(v0 + 12728);
  v68 = *(v0 + 12680);
  v72 = *(v0 + 12632);
  v75 = *(v0 + 12584);
  v78 = *(v0 + 12536);
  v81 = *(v0 + 12488);
  v84 = *(v0 + 12440);
  v87 = *(v0 + 12392);
  v96 = *(v0 + 12200);
  v95 = *(v0 + 12152);
  v90 = *(v0 + 12104);
  v55 = *(v0 + 12056);
  v58 = *(v0 + 12008);
  v60 = *(v0 + 11960);
  v64 = *(v0 + 11912);
  v67 = *(v0 + 11864);
  v71 = *(v0 + 11816);
  v74 = *(v0 + 11768);
  v77 = *(v0 + 11720);
  v80 = *(v0 + 11672);
  v83 = *(v0 + 11624);
  v86 = *(v0 + 11576);
  v92 = *(v0 + 11480);
  v53 = *(v0 + 11432);
  v31 = *(v0 + 10040);
  v32 = *(v0 + 9992);
  v97 = *(v0 + 9944);
  v99 = sub_1D5E998E0(*(v100 + *(*(v0 + 11384) + 64)));
  *(v0 + 14072) = v99;
  sub_1D5CEFE68(v32, v29, type metadata accessor for FormatServiceOptions);
  v33 = *(v30 + 80);
  v34 = (v33 + 32) & ~v33;
  v35 = swift_allocObject();
  *(v0 + 14120) = v35;
  *(v35 + 16) = v31;
  *(v35 + 24) = v18;
  sub_1D5CEFF38(v29, v35 + v34, type metadata accessor for FormatServiceOptions);

  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v91 = v32;
  sub_1D5CEFE68(v32, v101, type metadata accessor for FormatServiceOptions);
  v36 = swift_allocObject();
  *(v0 + 14168) = v36;
  v89 = v31;
  *(v36 + 16) = v31;
  *(v36 + 24) = v99;
  sub_1D5CEFF38(v101, v36 + v34, type metadata accessor for FormatServiceOptions);

  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v54, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v32, v94, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v90, type metadata accessor for FormatContent);
  v102 = (*(v95 + 80) + 24) & ~*(v95 + 80);
  v37 = *(v53 + 80);
  v38 = (v96 + v33 + v102) & ~v33;
  v93 = ((v98 + v37 + v38) & ~v37) + v92;
  v39 = (v98 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  *(v0 + 14216) = v40;
  *(v40 + 16) = v89;
  sub_1D5CEFF38(v54, v40 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v94, v40 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v90, v40 + v39, type metadata accessor for FormatContent);
  *(v40 + ((v93 + 7) & 0xFFFFFFFFFFFFFFF8)) = v66;

  sub_1D5B9EE48(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v56, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v57, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v55, type metadata accessor for FormatContent);
  v41 = swift_allocObject();
  *(v0 + 14264) = v41;
  *(v41 + 16) = v89;
  sub_1D5CEFF38(v56, v41 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v57, v41 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v55, v41 + v39, type metadata accessor for FormatContent);

  sub_1D5E9C7CC(0, &qword_1EDF1B840, sub_1D5B9EE48);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v59, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v61, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v58, type metadata accessor for FormatContent);
  v42 = swift_allocObject();
  *(v0 + 14312) = v42;
  *(v42 + 16) = v89;
  sub_1D5CEFF38(v59, v42 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v61, v42 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v58, v42 + v39, type metadata accessor for FormatContent);

  sub_1D5E9BE1C(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v62, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v63, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v60, type metadata accessor for FormatContent);
  v43 = swift_allocObject();
  *(v0 + 14360) = v43;
  *(v43 + 16) = v89;
  sub_1D5CEFF38(v62, v43 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v63, v43 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v60, v43 + v39, type metadata accessor for FormatContent);

  sub_1D5C44E18(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v65, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v69, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v64, type metadata accessor for FormatContent);
  v44 = swift_allocObject();
  *(v0 + 14408) = v44;
  *(v44 + 16) = v89;
  sub_1D5CEFF38(v65, v44 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v69, v44 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v64, v44 + v39, type metadata accessor for FormatContent);

  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v68, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v70, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v67, type metadata accessor for FormatContent);
  v45 = swift_allocObject();
  *(v0 + 14456) = v45;
  *(v45 + 16) = v89;
  sub_1D5CEFF38(v68, v45 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v70, v45 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v67, v45 + v39, type metadata accessor for FormatContent);

  sub_1D5E9C38C(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v72, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v73, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v71, type metadata accessor for FormatContent);
  v46 = swift_allocObject();
  *(v0 + 14504) = v46;
  *(v46 + 16) = v89;
  sub_1D5CEFF38(v72, v46 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v73, v46 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v71, v46 + v39, type metadata accessor for FormatContent);

  sub_1D5E9C5AC(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v75, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v76, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v74, type metadata accessor for FormatContent);
  v47 = swift_allocObject();
  *(v0 + 14552) = v47;
  *(v47 + 16) = v89;
  sub_1D5CEFF38(v75, v47 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v76, v47 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v74, v47 + v39, type metadata accessor for FormatContent);

  sub_1D5E9C7CC(0, &qword_1EDF1B940, type metadata accessor for PuzzleStatistic);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v78, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v79, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v77, type metadata accessor for FormatContent);
  v48 = swift_allocObject();
  *(v0 + 14600) = v48;
  *(v48 + 16) = v89;
  sub_1D5CEFF38(v78, v48 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v79, v48 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v77, v48 + v39, type metadata accessor for FormatContent);

  sub_1D5B5FBFC();
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v81, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v82, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v80, type metadata accessor for FormatContent);
  v49 = swift_allocObject();
  *(v0 + 14648) = v49;
  *(v49 + 16) = v89;
  sub_1D5CEFF38(v81, v49 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v82, v49 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v80, v49 + v39, type metadata accessor for FormatContent);

  sub_1D5B5A7A0(0, &qword_1EDF1B050, &type metadata for SportsDataVisualization, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v84, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v85, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v83, type metadata accessor for FormatContent);
  v50 = swift_allocObject();
  *(v0 + 14696) = v50;
  *(v50 + 16) = v89;
  sub_1D5CEFF38(v84, v50 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v85, v50 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v83, v50 + v39, type metadata accessor for FormatContent);

  sub_1D5E9CD28(0);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v97, v87, type metadata accessor for FormatContentPool);
  sub_1D5CEFE68(v91, v88, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFE68(v100, v86, type metadata accessor for FormatContent);
  v51 = swift_allocObject();
  *(v0 + 14744) = v51;
  *(v51 + 16) = v89;
  sub_1D5CEFF38(v87, v51 + v102, type metadata accessor for FormatContentPool);
  sub_1D5CEFF38(v88, v51 + v38, type metadata accessor for FormatServiceOptions);
  sub_1D5CEFF38(v86, v51 + v39, type metadata accessor for FormatContent);

  sub_1D5E9C7CC(0, &qword_1EDF1B830, sub_1D5E9D658);
  swift_asyncLet_begin();
  *(v0 + 14792) = sub_1D5E71F40(v91, v100);
  *(v0 + 14840) = sub_1D5E72324(v91, v100);

  return MEMORY[0x1EEE6DEC0](v0 + 1936, v0 + 9752, sub_1D5E56730, v0 + 9760);
}

uint64_t sub_1D5E56730()
{
  v1[1861] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E59AA0, v1 + 1226);
  }

  else
  {
    v1[1867] = v1[1219];

    return MEMORY[0x1EEE6DEC0](v1 + 402, v1 + 1171, sub_1D5E56838, v1 + 1310);
  }
}

uint64_t sub_1D5E56838()
{
  v1[1873] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5A2F0, v1 + 1316);
  }

  else
  {
    v1[1879] = v1[1171];

    return MEMORY[0x1EEE6DEC0](v1 + 562, v1 + 1183, sub_1D5E56950, v1 + 1400);
  }
}

uint64_t sub_1D5E56950()
{
  v1[1885] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5AB40, v1 + 1406);
  }

  else
  {
    v1[1891] = v1[1183];

    return MEMORY[0x1EEE6DEC0](v1 + 722, v1 + 1195, sub_1D5E56A80, v1 + 1490);
  }
}

uint64_t sub_1D5E56A80()
{
  v1[1897] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5B390, v1 + 1496);
  }

  else
  {
    v1[1903] = v1[1195];

    return MEMORY[0x1EEE6DEC0](v1 + 882, v1 + 1207, sub_1D5E56BBC, v1 + 1580);
  }
}

uint64_t sub_1D5E56BBC()
{
  v1[1909] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5BBE0, v1 + 1586);
  }

  else
  {
    v1[1915] = v1[1207];

    return MEMORY[0x1EEE6DEC0](v1 + 1042, v1 + 1153, sub_1D5E56D10, v1 + 1670);
  }
}

uint64_t sub_1D5E56D10()
{
  v1[1921] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5C430, v1 + 1676);
  }

  else
  {
    v1[1927] = v1[1153];

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 1231, sub_1D5E56E6C, v1 + 1760);
  }
}

uint64_t sub_1D5E56E6C()
{
  v1[1933] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5CC80, v1 + 1766);
  }

  else
  {
    v1[1939] = v1[1231];

    return MEMORY[0x1EEE6DEC0](v1 + 482, v1 + 1189, sub_1D5E56FD4, v1 + 1850);
  }
}

uint64_t sub_1D5E56FD4()
{
  v1[1945] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5D4D0, v1 + 1856);
  }

  else
  {
    v1[1951] = v1[1189];

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 1177, sub_1D5E5714C, v1 + 1148);
  }
}

uint64_t sub_1D5E5714C()
{
  v1[1957] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5DD20, v1 + 1940);
  }

  else
  {
    v1[1963] = v1[1177];

    return MEMORY[0x1EEE6DEC0](v1 + 962, v1 + 1225, sub_1D5E572D4, v1 + 2024);
  }
}

uint64_t sub_1D5E572D4()
{
  v1[1969] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5E570, v1 + 2030);
  }

  else
  {
    v1[1975] = v1[1225];

    return MEMORY[0x1EEE6DEC0](v1 + 802, v1 + 1213, sub_1D5E5746C, v1 + 2114);
  }
}

uint64_t sub_1D5E5746C()
{
  v1[1981] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5EDBC, v1 + 2120);
  }

  else
  {
    v1[1987] = v1[1213];

    return MEMORY[0x1EEE6DEC0](v1 + 642, v1 + 1201, sub_1D5E57610, v1 + 2204);
  }
}

uint64_t sub_1D5E57610()
{
  v1[1993] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5F60C, v1 + 2210);
  }

  else
  {
    v1[1999] = v1[1201];

    return MEMORY[0x1EEE6DEC0](v1 + 162, v1 + 1165, sub_1D5E577C0, v1 + 2294);
  }
}

uint64_t sub_1D5E577C0()
{
  v1[2005] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 1159, sub_1D5E5FE5C, v1 + 2300);
  }

  else
  {
    v1[2011] = v1[1165];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 1159, sub_1D5E5797C, v1 + 2384);
  }
}

uint64_t sub_1D5E5797C()
{
  *(v1 + 16136) = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 656, v1 + 9272, sub_1D5E606AC, v1 + 19120);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E57B30, 0, 0);
  }
}

uint64_t sub_1D5E57B30()
{
  v1 = v0[1927];
  v2 = v0[1237];
  v0[2023] = v0[1159];

  v3 = sub_1D5E72628(v2, v1);
  v0[2029] = v3;
  v4 = swift_task_alloc();
  v0[2035] = v4;
  *v4 = v0;
  v4[1] = sub_1D5E57C00;
  v5 = v0[1381];
  v6 = v0[1249];
  v7 = v0[1243];
  v8 = v0[1237];

  return sub_1D5E7268C(v5, v7, v6, v8, v3);
}

uint64_t sub_1D5E57C00()
{
  *(*v1 + 16328) = v0;

  if (v0)
  {

    v2 = sub_1D5E60EFC;
  }

  else
  {
    v2 = sub_1D5E57E1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D5E57E1C()
{
  v211 = v0;
  v1 = v0[1891];
  v2 = v0[1423];
  v3 = v0[1237];
  v4 = sub_1D5E73BE0(v3, v0[1915]);
  v5 = sub_1D5E73C48(v3, v1);
  if (*(v3 + *(v2 + 24) + 8))
  {
    v6 = *(v0[1741] + 56);
    v7 = sub_1D726203C();
    v8 = [v6 subscriptionForTagID_];

    v9 = v0[2029];
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v9 = v0[2029];
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (([swift_unknownObjectRetain() isPurchaseSetup] & 1) != 0 || objc_msgSend(v9, sel_isAuthenticationSetup))
  {
    v10 = swift_unknownObjectRetain();
    FeedSubscriptionPaidAccess.init(paidAccessChecker:tag:)(v10, v9, v210);
    v11 = v210[0];
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_9:
  v11 = 3;
LABEL_10:
  v12 = v0[1915];
  v13 = sub_1D5E73DC8(v0[1237], v0[2011]);
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = sub_1D5C38490(v14, 0);
    v16 = sub_1D5E2A8B8();
    sub_1D5B87E38(v210[0]);
    if (v16 == v14)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v17 = v0[1927];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_1D5C38490(*(v17 + 16), 0);
    v20 = sub_1D5C38498(v210, v19 + 4, v18, v17);
    sub_1D5B87E38(v210[0]);
    if (v20 == v18)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v21 = v0[1975];
  v22 = *(v21 + 16);
  if (v22)
  {
    v206 = sub_1D5C38490(*(v21 + 16), 0);
    v23 = sub_1D5C38498(v210, v206 + 4, v22, v21);
    sub_1D5B87E38(v210[0]);
    if (v23 == v22)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  v206 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v24 = v0[1987];
  v25 = *(v24 + 16);
  v198 = v19;
  v200 = v15;
  if (v25)
  {
    v194 = sub_1D5C38490(v25, 0);
    v26 = sub_1D5C38498(v210, v194 + 4, v25, v24);
    sub_1D5B87E38(v210[0]);
    if (v26 == v25)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v194 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v27 = v0[1999];
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_1D5E23ECC(*(v27 + 16), 0);
    v30 = *(type metadata accessor for PuzzleStatistic(0) - 8);
    sub_1D5E25428(v210, v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v28, v27);
    v32 = v31;
    sub_1D5B87E38(v210[0]);
    if (v32 == v28)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v33 = *(v0[2011] + 16);
  v153 = v4;
  if (v33)
  {
    v34 = sub_1D5C38490(v33, 0);
    v35 = sub_1D5E2A8B8();
    sub_1D5B87E38(v210[0]);
    if (v35 == v33)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v185 = v34;
  v189 = v29;
  v149 = v11;
  v150 = v13;
  v151 = v8;
  v152 = v5;
  v36 = v0;
  v37 = v0[1243];
  v38 = *(v37 + 88);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = sub_1D5E23E30(*(v38 + 16), 0);
    v41 = sub_1D5E252A0(v210, v40 + 2, v39, v38);
    v42 = v210[0];

    v43 = sub_1D5B87E38(v42);
    if (v41 != v39)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v181 = v40;
    v47 = v36;
    v37 = v36[1243];
  }

  else
  {
    v181 = MEMORY[0x1E69E7CC0];
    v47 = v0;
  }

  v48 = *(v37 + 96);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v51 = sub_1D5E23D88(*(v48 + 16), 0);
    v52 = sub_1D5E25120(v210, v51 + 4, v49, v48);
    v53 = v210[0];

    v43 = sub_1D5B87E38(v53);
    if (v52 != v49)
    {
LABEL_96:
      __break(1u);
_swift_asyncLet_finish:
      MEMORY[0x1EEE6DEB0](v43, v44, v45, v46);
      return;
    }

    v50 = MEMORY[0x1E69E7CC0];
    v173 = v51;
  }

  else
  {
    v173 = MEMORY[0x1E69E7CC0];
  }

  v164 = v47[2023];
  v54 = v47[1963];
  v55 = v47[1951];
  v177 = v47[1939];
  v168 = v47[1903];
  v56 = v47[1891];
  v57 = v47[1855];
  v58 = v47[1849];
  v59 = v47[1759];
  v60 = v47[1543];
  v61 = v47[1375];
  sub_1D5CF23F8(v47[1381], v61, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  v62 = sub_1D605A5F8(v50);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v56, v168, v200, v198, v177, v62, v206, v194, v60, v189, v185, v164, v181, v173, v58, v57, v54, v55, v61);
  v210[0] = v50;
  v43 = sub_1D699763C(0, 0, 0);
  v63 = v210[0];
  v186 = *(v59 + 16);
  v190 = v59;
  v193 = v47;
  if (v186)
  {
    v64 = 0;
    v65 = v47[1879];
    v182 = v47[1405];
    v165 = v47[1321];
    v169 = v47[1357];
    v157 = v47[1297];
    v161 = v47[1303];
    v66 = v65 & 0xFFFFFFFFFFFFFF8;
    v174 = v65 & 0xC000000000000001;
    v154 = v65 + 32;
    v178 = v65 >> 62;
    v155 = v65 & 0xFFFFFFFFFFFFFF8;
    while (v64 < *(v190 + 16))
    {
      sub_1D5CEFE68(v47[1759] + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v64, v47[1411], sub_1D5C2AB28);
      if (v178)
      {
        v43 = sub_1D7263BFC();
        if (v64 == v43)
        {
LABEL_58:
          v85 = v47[1411];

          sub_1D5EA08F4(v85, sub_1D5C2AB28);
          goto LABEL_59;
        }
      }

      else
      {
        v43 = *(v66 + 16);
        if (v64 == v43)
        {
          goto LABEL_58;
        }
      }

      v207 = v63;
      if (v174)
      {
        v67 = MEMORY[0x1DA6FB460](v64, v47[1879]);
      }

      else
      {
        if (v64 >= *(v66 + 16))
        {
          goto LABEL_94;
        }

        v67 = *(v154 + 8 * v64);
      }

      v68 = v47[1411];
      v69 = v47[1369];
      v70 = v47[1363];
      v71 = v47[1351];
      v72 = v47[1345];
      v73 = v47[1339];
      v74 = v47[1333];
      v75 = v47[1327];
      v201 = v47[1315];
      v76 = *(v165 + 48);
      v195 = v75;
      sub_1D5CEFF38(v68, v72, sub_1D5C2AB28);
      *(v72 + v76) = v67;
      sub_1D5CEFF38(v72, v71, sub_1D5E9B290);
      v77 = *(v169 + 48);
      *v70 = v64;
      sub_1D5CEFF38(v71, v70 + v77, sub_1D5E9B290);
      sub_1D5E9DAC8(v70, v69, &qword_1EDF1ACA0, sub_1D5E9B290, MEMORY[0x1E69E6530], "offset element ");
      v78 = *v69;
      v79 = v69 + *(v169 + 48);
      v80 = *(v79 + *(v165 + 48));
      sub_1D5CEFE68(v79, v73, sub_1D5C2AB28);
      *(v73 + *(v165 + 48)) = v80;
      sub_1D5CEFE68(v73, v74, sub_1D5E9B290);

      sub_1D5CEFF38(v73, v195, sub_1D5E9B290);
      v81 = *(v195 + *(v165 + 48));
      *v201 = v78;
      sub_1D5CEFF38(v74, v201 + *(v157 + 20), sub_1D5C2AB28);
      *(v201 + *(v157 + 24)) = v81;
      sub_1D5EA08F4(v195, sub_1D5C2AB28);
      sub_1D5E9DB3C(v69, &qword_1EDF1ACA0, sub_1D5E9B290, MEMORY[0x1E69E6530], "offset element ");
      v63 = v207;
      v210[0] = v207;
      v83 = *(v207 + 16);
      v82 = *(v207 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1D699763C((v82 > 1), v83 + 1, 1);
        v63 = v210[0];
      }

      ++v64;
      v47 = v193;
      v84 = v193[1315];
      *(v63 + 16) = v83 + 1;
      v43 = sub_1D5CEFF38(v84, v63 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v83, type metadata accessor for FormatService.ThemePackage);
      v66 = v155;
      if (v186 == v64)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_93;
  }

LABEL_57:

LABEL_59:
  v86 = v47[2041];
  v47[1147] = v63;
  sub_1D5CEFE04(0, &qword_1EDF1B320, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B318, &qword_1EDF1B320, type metadata accessor for FormatService.ThemePackage);
  v87 = sub_1D72623DC();

  v88 = sub_1D5E73E7C(v87);

  v89 = *(v88 + 16);
  if (v89)
  {
    v158 = v86;
    v90 = v47[1303];
    v187 = v47[1279];
    v191 = v47[1285];
    v210[0] = MEMORY[0x1E69E7CC0];
    sub_1D699763C(0, v89, 0);
    v91 = v210[0];
    v92 = v88 + 64;
    v43 = sub_1D7263B7C();
    v93 = v43;
    v94 = 0;
    v95 = *(v88 + 36);
    v162 = v88 + 72;
    v166 = v89;
    v183 = v88 + 64;
    v170 = v95;
    v179 = v90;
    v175 = v88;
    while ((v93 & 0x8000000000000000) == 0 && v93 < 1 << *(v88 + 32))
    {
      v97 = v93 >> 6;
      if ((*(v92 + 8 * (v93 >> 6)) & (1 << v93)) == 0)
      {
        goto LABEL_88;
      }

      if (v95 != *(v88 + 36))
      {
        goto LABEL_89;
      }

      v196 = v94;
      v98 = v91;
      v99 = v47[1291];
      v100 = *(v187 + 48);
      v101 = v47[1309];
      v102 = v47[1285];
      v103 = (*(v88 + 48) + 16 * v93);
      v104 = v90;
      v106 = *v103;
      v105 = v103[1];
      v202 = v101;
      v208 = *(v104 + 72);
      sub_1D5CEFE68(*(v88 + 56) + v208 * v93, v99 + v100, type metadata accessor for FormatService.ThemePackage);
      *v102 = v106;
      *(v191 + 8) = v105;
      v107 = *(v187 + 48);
      v108 = v99 + v100;
      v91 = v98;
      sub_1D5CEFF38(v108, v102 + v107, type metadata accessor for FormatService.ThemePackage);
      sub_1D5CEFE68(v102 + v107, v202, type metadata accessor for FormatService.ThemePackage);

      sub_1D5E9DB3C(v102, &qword_1EDF1B720, type metadata accessor for FormatService.ThemePackage, MEMORY[0x1E69E6158], "key value ");
      v210[0] = v98;
      v109 = *(v98 + 16);
      v110 = *(v91 + 24);
      if (v109 >= v110 >> 1)
      {
        sub_1D699763C((v110 > 1), v109 + 1, 1);
        v91 = v210[0];
      }

      v47 = v193;
      v111 = v193[1309];
      *(v91 + 16) = v109 + 1;
      v90 = v179;
      v43 = sub_1D5CEFF38(v111, v91 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + v109 * v208, type metadata accessor for FormatService.ThemePackage);
      v88 = v175;
      v96 = 1 << *(v175 + 32);
      v92 = v183;
      if (v93 >= v96)
      {
        goto LABEL_90;
      }

      v112 = *(v183 + 8 * v97);
      if ((v112 & (1 << v93)) == 0)
      {
        goto LABEL_91;
      }

      v95 = v170;
      if (v170 != *(v175 + 36))
      {
        goto LABEL_92;
      }

      v113 = v112 & (-2 << (v93 & 0x3F));
      if (v113)
      {
        v96 = __clz(__rbit64(v113)) | v93 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v114 = v97 << 6;
        v115 = (v162 + 8 * v97);
        v116 = v97 + 1;
        while (v116 < (v96 + 63) >> 6)
        {
          v118 = *v115++;
          v117 = v118;
          v114 += 64;
          ++v116;
          if (v118)
          {
            v43 = sub_1D5C25E1C(v93, v170, 0);
            v96 = __clz(__rbit64(v117)) + v114;
            goto LABEL_62;
          }
        }

        v43 = sub_1D5C25E1C(v93, v170, 0);
      }

LABEL_62:
      v94 = v196 + 1;
      v93 = v96;
      if (v196 + 1 == v166)
      {

        v86 = v158;
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v91 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v210[0] = v91;

  sub_1D5E97CC0(v210);
  if (!v86)
  {
    v203 = v47[1867];
    v119 = v47[1753];
    v120 = v47;
    v121 = v47[1741];
    v122 = v120[1543];
    v123 = v120[1249];
    v124 = v120[1237];

    v125 = v210[0];
    v126 = swift_task_alloc();
    *(v126 + 16) = v123;
    *(v126 + 24) = v124;
    sub_1D5EC9AA8(sub_1D5E9D6C0, v126, v125);
    v209 = v127;

    v128 = swift_task_alloc();
    v128[2] = v123;
    v128[3] = v124;
    v128[4] = v122;
    v128[5] = v121;

    v130 = sub_1D5E51B18(v129, v119, v203, sub_1D5E9D6E0, v128);
    v120[2047] = 0;
    v131 = v120[2029];
    v132 = v130;
    v204 = v120[1741];
    v176 = v120[1729];
    v159 = v120[1735];
    v163 = v120[1723];
    v192 = v120[1537];
    v197 = v120[1531];
    v199 = v120[1543];
    v180 = v120[1633];
    v184 = v120[1441];
    v156 = v120[1381];
    v146 = v120[1273];
    v133 = v120[1267];
    v134 = v120[1261];
    v135 = v120[1249];
    v167 = v135;
    v171 = v120[1423];
    v188 = v120[1243];
    v145 = v120[1237];

    v136 = sub_1D5E9A1F8(v145, v135, v131, v132);

    type metadata accessor for FormatContentSubgroupNeighborsResolver();
    static FormatContentSubgroupNeighborsResolver.resolve(subgroups:)(v136, v210);
    v148 = v210[0];
    sub_1D5E766CC(v145, v136, v146);
    v137 = swift_task_alloc();
    *(v137 + 16) = v199;
    sub_1D7195F4C(sub_1D5E9D700, v137, v159);
    v147 = v138;

    v205 = *(v204 + 136);
    v139 = v171[5];
    v140 = v134[5];
    v141 = sub_1D725891C();
    (*(*(v141 - 8) + 16))(&v133[v140], v145 + v139, v141);
    v142 = MEMORY[0x1E69E6720];
    sub_1D5E9E84C(v146, &v133[v134[16]], qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v143 = *(v145 + v171[13]);
    v160 = *(v145 + v171[14]);
    v172 = *(v145 + v171[15]);
    sub_1D5E9E84C(v156, &v133[v134[21]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v142, sub_1D5CEFE04);
    *v133 = v163;
    *(v133 + 1) = v176;
    *&v133[v134[6]] = v160;
    *&v133[v134[7]] = v172;
    *&v133[v134[8]] = v209;
    *&v133[v134[9]] = v136;
    *&v133[v134[11]] = v147;
    *&v133[v134[13]] = v131;
    *&v133[v134[14]] = v153;
    *&v133[v134[15]] = v152;
    *&v133[v134[17]] = v150;
    *&v133[v134[18]] = v151;
    v133[v134[19]] = v149;
    *&v133[v134[20]] = v143;
    *&v133[v134[12]] = v205;
    *&v133[v134[10]] = v148;
    sub_1D5CEFE68(v167, v180, type metadata accessor for FormatServiceOptions);
    sub_1D5CEFE68(v145, v184, type metadata accessor for FormatContent);
    sub_1D5CEFE68(v188, v192, type metadata accessor for FormatContentPool);
    sub_1D5CEFE68(v199, v197, type metadata accessor for FormatContentPool);
    type metadata accessor for FormatServiceResult(0);
    v144 = swift_allocObject();
    v120[2053] = v144;
    sub_1D5CEFF38(v180, v144 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, type metadata accessor for FormatServiceOptions);
    sub_1D5CEFF38(v184, v144 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, type metadata accessor for FormatContent);
    sub_1D5CEFF38(v192, v144 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, type metadata accessor for FormatContentPool);
    sub_1D5CEFF38(v133, v144 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, type metadata accessor for FormatContent.Resolved);
    sub_1D5CEFF38(v197, v144 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, type metadata accessor for FormatContentPool);

    sub_1D5EA08F4(v199, type metadata accessor for FormatContentPool);
    v45 = sub_1D5E59254;
    v43 = (v120 + 82);
    v44 = v120 + 1159;
    v46 = v120 + 1934;

    goto _swift_asyncLet_finish;
  }
}

uint64_t sub_1D5E59600()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 16424);

  return v1(v2);
}

uint64_t sub_1D5E59E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5A69C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5AEEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5B73C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5BF8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5C7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5D02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5D87C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5E0CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5E918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5F168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E5F9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E60208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E60A58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E60EFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 9272, sub_1D5E60F70, v0 + 19792);
}

uint64_t sub_1D5E6131C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E61B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E620DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E621C0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 1936, v1, sub_1D5E62228, v0 + 2864);
}

uint64_t sub_1D5E622F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E623D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E62448()
{

  sub_1D5D09C48(v0 + 240);
  sub_1D5D05738(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void FormatService.createArrangementResolver<A>(content:templates:options:dataSourceResolver:)(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a8;
  v24 = a4;
  v13 = type metadata accessor for FormatArrangementResolverOptions(0, a6, a7, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - v16;
  v18 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE68(a1, v21, type metadata accessor for FormatContent);
  (*(v14 + 16))(v17, a3, v13);
  sub_1D5B68374(v22 + 496, v25);

  sub_1D608B924(v21, v17, v25, v24, a5, a6, a7, v23);
}

uint64_t sub_1D5E62660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if ((~a1[2] & 0xF000000000000007) != 0)
  {
    result = MEMORY[0x1E69E7CD0];
    *a3 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    if (*(*(a2 + 88) + 16))
    {
      v3 = a3;
      sub_1D5B69D90(*a1, a1[1]);
      if (v4)
      {
      }

      else
      {
        result = MEMORY[0x1E69E7CD0];
      }

      a3 = v3;
    }

    else
    {
      result = MEMORY[0x1E69E7CD0];
    }

    *a3 = result;
  }

  return result;
}

uint64_t sub_1D5E62700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E62864, 0, 0);
}

uint64_t sub_1D5E62864()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v20 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = sub_1D72585BC();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v0[2] = v8;
  v10 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v1, v2, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = (v20 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v0[14] = v13;
  *(v13 + 16) = v7;
  sub_1D5E9E84C(v2, v13 + v11, &qword_1EDF45B40, v10, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v4, v13 + v12, type metadata accessor for FormatServiceOptions);

  v14 = swift_task_alloc();
  v0[15] = v14;
  sub_1D5CEFE04(0, &qword_1EDF1B170, sub_1D5C2AB28, MEMORY[0x1E69E62F8]);
  v16 = v15;
  v17 = type metadata accessor for FormatPackageInventory(0);
  v18 = sub_1D5CF35F8(&qword_1EDF1B168, &qword_1EDF1B170, sub_1D5C2AB28);
  *v14 = v0;
  v14[1] = sub_1D5E62B00;

  return MEMORY[0x1EEE45320](&unk_1D7279F80, v13, v16, v17, v18);
}

uint64_t sub_1D5E62B00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_1D5E62D04;
  }

  else
  {
    v6 = *(v4 + 104);
    *(v4 + 136) = a1;
    sub_1D5CF274C(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);

    v5 = sub_1D5E62C80;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E62C80()
{
  **(v0 + 24) = *(v0 + 136);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E62D04()
{
  sub_1D5CF274C(*(v0 + 104), &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E62DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions(0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E62F38, 0, 0);
}

uint64_t sub_1D5E62F38()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v20 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = sub_1D72585BC();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v0[2] = v8;
  v10 = MEMORY[0x1E6968FB0];
  sub_1D5CF23F8(v1, v2, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = (v20 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v0[14] = v13;
  *(v13 + 16) = v7;
  sub_1D5E9E84C(v2, v13 + v11, &qword_1EDF45B40, v10, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  sub_1D5CEFF38(v4, v13 + v12, type metadata accessor for FormatServiceOptions);

  v14 = swift_task_alloc();
  v0[15] = v14;
  sub_1D5CEFE04(0, &qword_1EDF1B170, sub_1D5C2AB28, MEMORY[0x1E69E62F8]);
  v16 = v15;
  v17 = type metadata accessor for FormatPackageInventory(0);
  v18 = sub_1D5CF35F8(&qword_1EDF1B168, &qword_1EDF1B170, sub_1D5C2AB28);
  *v14 = v0;
  v14[1] = sub_1D5E631D4;

  return MEMORY[0x1EEE45320](&unk_1D7279DB0, v13, v16, v17, v18);
}

uint64_t sub_1D5E631D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_1D5EA21C4;
  }

  else
  {
    v6 = *(v4 + 104);
    *(v4 + 136) = a1;
    sub_1D5CF274C(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);

    v5 = sub_1D5EA21CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5E63354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1D5E52E3C;

  return sub_1D5E6341C(a3, a4, a5, a6);
}

uint64_t sub_1D5E6341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_1D725891C();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = sub_1D72585BC();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  sub_1D5C2CA80(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  v5[51] = swift_task_alloc();
  v5[52] = type metadata accessor for FormatArticleOverrides(0);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6372C, 0, 0);
}

uint64_t sub_1D5E6372C()
{
  v1 = *(v0 + 192);
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.articles.getter(v2);

  *(v0 + 152) = v3;
  sub_1D5CEFE04(0, &qword_1EDF1B330, type metadata accessor for FormatArticle, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B328, &qword_1EDF1B330, type metadata accessor for FormatArticle);
  v4 = sub_1D72623CC();

  v5 = MEMORY[0x1E69E7CC0];
  v197 = v0;
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  *(v0 + 168) = v5;
  v200 = (v0 + 168);
  v205 = v4;
  v6 = v4 >> 62;
  v174 = (v0 + 160);
  v157 = v1;
  if (*(v1 + 48))
  {
    if (v6)
    {
      goto LABEL_74;
    }

    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = (v0 + 168);
    if (!v7)
    {
      goto LABEL_77;
    }

    goto LABEL_4;
  }

  v63 = *(v1 + 40);
  if (v6)
  {
    v64 = sub_1D7263BFC();
    if (!v64)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v64 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
      goto LABEL_77;
    }
  }

  v65 = 0;
  v66 = *(v0 + 256);
  v171 = *(v0 + 216);
  v167 = *(v0 + 208);
  v168 = *(v0 + 416);
  v67 = **(v0 + 184);
  v199 = v4 & 0xC000000000000001;
  v193 = v4 & 0xFFFFFFFFFFFFFF8;
  v161 = (v66 + 32);
  v188 = (v66 + 56);
  v159 = (v66 + 8);
  v190 = (*(v0 + 232) + 8);
  v192 = (v66 + 48);
  v176 = (v0 + 352);
  v156 = (v0 + 328);
  v194 = MEMORY[0x1E69E7CC0];
  v206 = MEMORY[0x1E69E7CC0];
  v203 = v67;
  v169 = v64;
  while (1)
  {
    if (v199)
    {
      v69 = MEMORY[0x1DA6FB460](v65, v205);
      v70 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      goto LABEL_49;
    }

    if (v65 >= *(v193 + 16))
    {
      goto LABEL_72;
    }

    v69 = *(v205 + 8 * v65 + 32);

    v70 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

LABEL_49:
    if (!*(v67 + 16))
    {
      goto LABEL_39;
    }

    v72 = *(v69 + 16);
    v71 = *(v69 + 24);

    v73 = sub_1D5B69D90(v72, v71);
    v75 = v74;
    v67 = v203;

    if ((v75 & 1) == 0)
    {
      goto LABEL_39;
    }

    v76 = *(*(v203 + 56) + 8 * v73);
    swift_getObjectType();
    v77 = [swift_unknownObjectRetain() lastFetchedDate];
    if (!v77)
    {
      goto LABEL_38;
    }

    v78 = v77;
    sub_1D72588BC();

    sub_1D725887C();
    if (v63 < -v79)
    {
      (*v190)(*(v197 + 240), *(v197 + 224));
LABEL_38:
      swift_unknownObjectRelease();
LABEL_39:

      MEMORY[0x1DA6F9CE0](v68);
      if (*((*v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
        v67 = v203;
      }

      sub_1D726278C();

      v206 = *v200;
      goto LABEL_42;
    }

    v196 = v76;
    v80 = *(v197 + 448);
    v81 = *(v197 + 408);
    v82 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
    swift_beginAccess();
    sub_1D5E9DB98(v69 + v82, v81, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v81, v80, type metadata accessor for FormatArticleOverrides);
    v83 = [objc_msgSend(*(v171 + 152) configurationManager)];
    v30 = swift_unknownObjectRelease();
    v185 = v83;
    if (!v83)
    {
      goto LABEL_114;
    }

    v84 = *(v197 + 440);
    v85 = *(v197 + 408);
    v86 = *(v197 + 344);
    v180 = *(v171 + 136);
    v182 = *(v197 + 248);
    v165 = v167[13];
    v87 = v167[16];
    v163 = v167[15];
    v88 = v167[14];
    sub_1D5E9DB98(v69 + v82, v85, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v85, v84, type metadata accessor for FormatArticleOverrides);
    sub_1D5CF23F8(v84 + *(v168 + 36), v86, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v184 = v87;

    sub_1D5EA08F4(v84, type metadata accessor for FormatArticleOverrides);
    v89 = *v192;
    if ((*v192)(v86, 1, v182) == 1)
    {
      v90 = [v196 routeURL];
      v67 = v203;
      v173 = v88;
      if (v90)
      {
        v91 = v197;
        v92 = v90;
        sub_1D72584EC();

        v93 = 0;
      }

      else
      {
        v93 = 1;
        v91 = v197;
      }

      v98 = v91[43];
      v97 = v91[44];
      v99 = v91[42];
      v100 = v91[31];
      v183 = *v188;
      (*v188)(v99, v93, 1, v100);
      sub_1D5E9E84C(v99, v97, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      if (v89(v98, 1, v100) != 1)
      {
        sub_1D5CF274C(v91[43], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      v88 = v173;
      v96 = v176;
      if (!v173)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v94 = *(v197 + 352);
      v95 = *(v197 + 248);
      (*v161)(v94, *(v197 + 344), v95);
      v183 = *v188;
      (*v188)(v94, 0, 1, v95);
      v67 = v203;
      v96 = v176;
      if (!v88)
      {
        goto LABEL_65;
      }
    }

    v101 = v197;
    v102 = *(v197 + 328);
    v103 = *(v197 + 248);
    sub_1D5CF23F8(*(v197 + 352), v102, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v89(v102, 1, v103) != 1)
    {
      v106 = *(v197 + 360);
      v154 = *(v197 + 352);
      v107 = *(v197 + 272);
      v108 = v88;
      v109 = *(v197 + 248);
      (*v161)(v107, *(v197 + 328), v109);
      sub_1D69F65B4(v107, v165, v108, v163, v184, v106);
      (*v159)(v107, v109);
      sub_1D5CF274C(v154, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v183(v106, 0, 1, v109);

      goto LABEL_67;
    }

    sub_1D5CF274C(*v176, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v96 = v156;
LABEL_65:
    v101 = v197;
    v104 = *(v197 + 360);
    v105 = *(v197 + 248);
    sub_1D5CF274C(*v96, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v183(v104, 1, 1, v105);

LABEL_67:

    v110 = v101[56];
    v111 = v101[45];
    FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(v110, v185, v180, v111);
    swift_unknownObjectRelease();
    sub_1D5CF274C(v111, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v112 = sub_1D5EA08F4(v110, type metadata accessor for FormatArticleOverrides);
    MEMORY[0x1DA6F9CE0](v112);
    if (*((v101[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v113 = v101[30];
    v114 = v101[28];
    sub_1D726278C();
    swift_unknownObjectRelease();

    (*v190)(v113, v114);
    v194 = v101[20];
    v64 = v169;
LABEL_42:
    ++v65;
    if (v70 == v64)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  v7 = sub_1D7263BFC();
  v8 = v200;
  if (v7)
  {
LABEL_4:
    v9 = 0;
    v10 = *(v197 + 256);
    v189 = *(v197 + 216);
    v162 = *(v197 + 208);
    v164 = *(v197 + 416);
    v11 = **(v197 + 184);
    v191 = (v10 + 48);
    v158 = (v10 + 32);
    v187 = (v10 + 56);
    v155 = (v10 + 8);
    v154 = v197 + 368;
    v12 = &type metadata for FormatCodingArticleOverridesStrategy;
    v194 = MEMORY[0x1E69E7CC0];
    v206 = MEMORY[0x1E69E7CC0];
    v166 = v7;
    v160 = v11;
    while (1)
    {
      if ((v205 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA6FB460](v9, v205);
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v9 >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_71;
        }
      }

      v202 = v9;
      v16 = v12;
      v17 = v14;
      if (!*(v11 + 16) || (v198 = v15, v18 = *(v14 + 16), v19 = *(v14 + 24), , v20 = sub_1D5B69D90(v18, v19), v22 = v21, v15 = v198, v8 = v200, , (v22 & 1) == 0))
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v8 = v200;
        }

        sub_1D726278C();

        v206 = *v8;
        v12 = v16;
        goto LABEL_8;
      }

      v23 = v197;
      v24 = *(v197 + 464);
      v25 = *(v197 + 408);
      v26 = *(*(v11 + 56) + 8 * v20);
      v27 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
      swift_beginAccess();
      v12 = v16;
      sub_1D5E9DB98(v17 + v27, v25, &qword_1EDF402C0, sub_1D5E9E7F8, v16, type metadata accessor for FormatCodingDefault);
      sub_1D5CEFF38(v25, v24, type metadata accessor for FormatArticleOverrides);
      v28 = *(v189 + 152);
      v195 = v26;
      swift_unknownObjectRetain();
      v29 = [objc_msgSend(v28 configurationManager)];
      v30 = swift_unknownObjectRelease();
      v186 = v29;
      if (!v29)
      {
        goto LABEL_113;
      }

      v31 = *(v197 + 456);
      v32 = *(v197 + 408);
      v33 = *(v197 + 384);
      v177 = *(v197 + 248);
      swift_getObjectType();
      v181 = *(v189 + 136);
      v34 = v162[14];
      v35 = v162[16];
      v170 = v162[15];
      v172 = v162[13];
      sub_1D5E9DB98(v17 + v27, v32, &qword_1EDF402C0, sub_1D5E9E7F8, v12, type metadata accessor for FormatCodingDefault);
      v36 = v32;
      v37 = v34;
      sub_1D5CEFF38(v36, v31, type metadata accessor for FormatArticleOverrides);
      sub_1D5CF23F8(v31 + *(v164 + 36), v33, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v175 = v35;

      sub_1D5EA08F4(v31, type metadata accessor for FormatArticleOverrides);
      v38 = *v191;
      if ((*v191)(v33, 1, v177) == 1)
      {
        v39 = [v195 routeURL];
        v11 = v160;
        v40 = v34;
        if (v39)
        {
          v23 = v197;
          v41 = v39;
          sub_1D72584EC();

          v42 = 0;
        }

        else
        {
          v42 = 1;
          v23 = v197;
        }

        v48 = v23[48];
        v47 = v23[49];
        v49 = v23[47];
        v50 = v23[31];
        v178 = *v187;
        (*v187)(v49, v42, 1, v50);
        sub_1D5E9E84C(v49, v47, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        if (v38(v48, 1, v50) != 1)
        {
          sub_1D5CF274C(v23[48], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        }

        v37 = v40;
        v45 = v178;
        v46 = (v197 + 392);
        if (!v40)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v43 = *(v197 + 392);
        v44 = *(v197 + 248);
        (*v158)(v43, *(v197 + 384), v44);
        v45 = *v187;
        (*v187)(v43, 0, 1, v44);
        v11 = v160;
        v46 = (v197 + 392);
        if (!v37)
        {
          goto LABEL_29;
        }
      }

      v51 = v23[46];
      v52 = v23[31];
      sub_1D5CF23F8(v23[49], v51, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      if (v38(v51, 1, v52) != 1)
      {
        v56 = v23[49];
        v55 = v23[50];
        v57 = v37;
        v58 = v23[35];
        v179 = v45;
        v59 = v23[31];
        (*v158)(v58, v23[46], v59);
        sub_1D69F65B4(v58, v172, v57, v170, v175, v55);
        (*v155)(v58, v59);
        sub_1D5CF274C(v56, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v179(v55, 0, 1, v59);

        goto LABEL_31;
      }

      sub_1D5CF274C(*(v197 + 392), &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v46 = (v197 + 368);
LABEL_29:
      v53 = v23[50];
      v54 = v23[31];
      sub_1D5CF274C(*v46, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v45(v53, 1, 1, v54);

LABEL_31:

      v60 = v23[58];
      v61 = v23[50];
      FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(v60, v186, v181, v61);
      swift_unknownObjectRelease();
      sub_1D5CF274C(v61, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v62 = sub_1D5EA08F4(v60, type metadata accessor for FormatArticleOverrides);
      MEMORY[0x1DA6F9CE0](v62);
      if (*((v23[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_unknownObjectRelease();

      v194 = *v174;
      v15 = v198;
      v8 = v200;
      v7 = v166;
LABEL_8:
      v9 = v202 + 1;
      if (v15 == v7)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_77:
  v194 = MEMORY[0x1E69E7CC0];
  v206 = MEMORY[0x1E69E7CC0];
LABEL_78:
  v115 = v206;
  *(v197 + 480) = v206;
  *(v197 + 488) = v194;
  *(v197 + 472) = v194;
  v116 = *(v197 + 192);

  v117 = type metadata accessor for FormatServiceOptions(0);
  v118 = *(v116 + *(v117 + 52));
  sub_1D5C384A0(0);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1D7279970;
  v120 = MEMORY[0x1E69E6158];
  if (v194 >> 62)
  {
    v121 = sub_1D7263BFC();
  }

  else
  {
    v121 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = MEMORY[0x1E69E6530];
  v123 = MEMORY[0x1E69E65A8];
  *(v119 + 56) = MEMORY[0x1E69E6530];
  *(v119 + 64) = v123;
  *(v119 + 32) = v121;
  if (v206 >> 62)
  {
    v124 = sub_1D7263BFC();
  }

  else
  {
    v124 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v125 = *(v197 + 200);
  *(v119 + 96) = v122;
  *(v119 + 104) = v123;
  *(v119 + 72) = v124;
  v127 = *v125;
  v126 = v125[1];
  *(v119 + 136) = v120;
  *(v119 + 144) = sub_1D5B7E2C0();
  *(v119 + 112) = v127;
  *(v119 + 120) = v126;

  v128 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved headlines for %{public}@", 86, 2, &dword_1D5B42000, v118, v128, v119);

  if (v206 >> 62)
  {
    v129 = sub_1D7263BFC();
  }

  else
  {
    v129 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v129)
  {
    v130 = v174;
    sub_1D5B68374(*(v197 + 216) + 16, (v174 - 18));
    v131 = *(v197 + 40);
    v132 = *(v197 + 48);
    __swift_project_boxed_opaque_existential_1(v174 - 18, v131);
    if (v206 >> 62)
    {
      v133 = sub_1D7263BFC();
    }

    else
    {
      v133 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v134 = MEMORY[0x1E69E7CC0];
    if (!v133)
    {
      goto LABEL_98;
    }

    v208 = MEMORY[0x1E69E7CC0];
    v30 = sub_1D5BFC364(0, v133 & ~(v133 >> 63), 0);
    if (v133 < 0)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
    }

    else
    {
      v201 = v131;
      v204 = v117;
      v135 = 0;
      v134 = v208;
      do
      {
        if ((v206 & 0xC000000000000001) != 0)
        {
          v136 = MEMORY[0x1DA6FB460](v135, v115);
        }

        else
        {
          v136 = *(v115 + 8 * v135 + 32);
        }

        swift_beginAccess();
        v138 = *(v136 + 16);
        v137 = *(v136 + 24);

        v140 = *(v208 + 16);
        v139 = *(v208 + 24);
        if (v140 >= v139 >> 1)
        {
          sub_1D5BFC364((v139 > 1), v140 + 1, 1);
        }

        ++v135;
        *(v208 + 16) = v140 + 1;
        v141 = v208 + 16 * v140;
        *(v141 + 32) = v138;
        *(v141 + 40) = v137;
        v115 = v206;
      }

      while (v133 != v135);
      v130 = v174;
      v131 = v201;
      v117 = v204;
LABEL_98:
      v142 = *(v157 + 40);
      v143 = *(v157 + 48);
      v144 = objc_opt_self();
      if (v143 == 1)
      {
        v145 = v197;
        if (v142 == 0.0)
        {
          v146 = [v144 defaultCachePolicy];
        }

        else
        {
          v146 = [v144 cachedOnlyCachePolicy];
        }
      }

      else
      {
        v146 = [v144 cachePolicyWithSoftMaxAge_];
        v145 = v197;
      }

      v151 = v145[24];
      v152 = v146;
      v145[62] = HeadlineServiceType.headlines(for:failIfAnyMissing:cachePolicy:purpose:)(v134, 1, v152, *(v151 + *(v117 + 48)), v131, v132);

      v153 = swift_task_alloc();
      v145[63] = v153;
      *v153 = v145;
      v153[1] = sub_1D5E64FC0;
      v30 = (v130 + 2);
    }

    return MEMORY[0x1EEE44EE0](v30);
  }

  else
  {
    v148 = *(v197 + 192);
    v147 = *(v197 + 200);

    v207 = sub_1D5E770A4(v194, v148, v147, MEMORY[0x1E69E7CD0]);

    v149 = *(v197 + 8);

    return v149(v207);
  }
}

uint64_t sub_1D5E64FC0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {

    v3 = sub_1D5E65D88;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1D5E65100;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D5E65100()
{
  v1 = v0[22];
  if (v1 >> 62)
  {
    goto LABEL_29;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC8];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6FB460](v3, v1);
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

LABEL_9:
      v7 = v2;
      v8 = [v6 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      swift_unknownObjectRetain();
      v12 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v4;
      v14 = sub_1D5B69D90(v9, v11);
      v16 = v4[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_27;
      }

      v20 = v15;
      if (v12[3] < v19)
      {
        sub_1D6D66678(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_1D5B69D90(v9, v11);
        if ((v20 & 1) != (v21 & 1))
        {

          sub_1D726493C();
          return;
        }

LABEL_14:
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v25 = v14;
      sub_1D6D7DB48();
      v14 = v25;
      if (v20)
      {
LABEL_4:
        v5 = v14;

        v4 = v100;
        *(v100[7] + 8 * v5) = v6;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }

LABEL_15:
      v100[(v14 >> 6) + 8] |= 1 << v14;
      v22 = (v100[6] + 16 * v14);
      *v22 = v9;
      v22[1] = v11;
      *(v100[7] + 8 * v14) = v6;
      swift_unknownObjectRelease();
      v23 = v100[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_28;
      }

      v4 = v100;
      v100[2] = v24;
LABEL_5:
      ++v3;
      v2 = v7;
      if (v0 == v7)
      {
        goto LABEL_31;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v6 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v0 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v2 = sub_1D7263BFC();
    v94 = v0;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v26 = v94[60];

  v101 = MEMORY[0x1E69E7CC0];
  v27 = v94[60];
  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
    v29 = sub_1D7263BFC();
    v27 = v94[60];
    v30 = v4;
    if (v29)
    {
      goto LABEL_33;
    }

LABEL_64:
    v97 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v4;
  if (!v29)
  {
    goto LABEL_64;
  }

LABEL_33:
  v31 = 0;
  v86 = v94[52];
  v32 = v94[32];
  v33 = v94[27];
  v85 = v94[26];
  v34 = v27 & 0xC000000000000001;
  v35 = v27 + 32;
  v92 = (v32 + 48);
  v84 = (v32 + 32);
  v91 = (v32 + 56);
  v74 = (v32 + 8);
  v97 = MEMORY[0x1E69E7CC0];
  do
  {
    v36 = v31;
    while (1)
    {
      if (v34)
      {
        v37 = MEMORY[0x1DA6FB460](v36, v94[60]);
        v31 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v36 >= *(v28 + 16))
        {
          goto LABEL_69;
        }

        v37 = *(v35 + 8 * v36);

        v31 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          return;
        }
      }

      if (v30[2])
      {
        break;
      }

LABEL_36:
      ++v36;
      if (v31 == v29)
      {
        goto LABEL_65;
      }
    }

    v38 = sub_1D5B69D90(*(v37 + 16), *(v37 + 24));
    if ((v39 & 1) == 0)
    {

      v30 = v4;
      goto LABEL_36;
    }

    v93 = v33;
    v40 = v94[51];
    v95 = v94[54];
    v98 = *(v4[7] + 8 * v38);
    v41 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
    swift_beginAccess();
    v82 = v41;
    sub_1D5E9DB98(v37 + v41, v40, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v40, v95, type metadata accessor for FormatArticleOverrides);
    v42 = *(v93 + 152);
    swift_unknownObjectRetain_n();
    v43 = [objc_msgSend(v42 configurationManager)];
    swift_unknownObjectRelease();
    v81 = v43;
    if (!v43)
    {
      goto LABEL_70;
    }

    v87 = v94[53];
    v44 = v94[51];
    v75 = v94[38];
    v78 = v94[31];
    swift_getObjectType();
    v80 = *(v93 + 136);
    v73 = v85[13];
    v96 = v85[14];
    v45 = v85[16];
    v72 = v85[15];
    sub_1D5E9DB98(v37 + v82, v44, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D5CEFF38(v44, v87, type metadata accessor for FormatArticleOverrides);
    sub_1D5CF23F8(v87 + *(v86 + 36), v75, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v83 = v45;

    sub_1D5EA08F4(v87, type metadata accessor for FormatArticleOverrides);
    v88 = *v92;
    if ((*v92)(v75, 1, v78) == 1)
    {
      v46 = [v98 routeURL];
      if (v46)
      {
        v47 = v94;
        v48 = v46;
        sub_1D72584EC();

        v49 = 0;
      }

      else
      {
        v49 = 1;
        v47 = v94;
      }

      v71 = v47[39];
      v52 = v47[36];
      v53 = v47[31];
      v76 = v47[38];
      v79 = *v91;
      (*v91)(v52, v49, 1, v53);
      sub_1D5E9E84C(v52, v71, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      if (v88(v76, 1, v53) != 1)
      {
        sub_1D5CF274C(v47[38], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }
    }

    else
    {
      v50 = v94[39];
      v51 = v94[31];
      (*v84)(v50, v94[38], v51);
      v79 = *v91;
      (*v91)(v50, 0, 1, v51);
    }

    v54 = v94 + 39;
    if (v96)
    {
      v55 = v94;
      v56 = v94[37];
      v57 = v94[31];
      sub_1D5CF23F8(v94[39], v56, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      if (v88(v56, 1, v57) == 1)
      {
        sub_1D5CF274C(v94[39], &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
        v54 = v94 + 37;
        goto LABEL_57;
      }

      v62 = v94[40];
      v89 = v94[39];
      v63 = v94[33];
      v77 = v94[31];
      (*v84)(v63, v94[37]);
      sub_1D69F65B4(v63, v73, v96, v72, v83, v62);
      v64 = v63;
      v59 = v77;
      (*v74)(v64, v77);
      sub_1D5CF274C(v89, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v60 = v62;
      v61 = 0;
    }

    else
    {
LABEL_57:
      v55 = v94;
      v58 = v94[40];
      v59 = v94[31];
      sub_1D5CF274C(*v54, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
      v60 = v58;
      v61 = 1;
    }

    v79(v60, v61, 1, v59);

    v90 = v55[54];
    v65 = v55[40];
    FCHeadlineProviding.overridden(by:configuration:assetManager:routeURL:)(v90, v81, v80, v65);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    sub_1D5CF274C(v65, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v66 = sub_1D5EA08F4(v90, type metadata accessor for FormatArticleOverrides);
    MEMORY[0x1DA6F9CE0](v66);
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v97 = v101;
    v33 = v93;
    v30 = v4;
  }

  while (v31 != v29);
LABEL_65:
  v67 = v94[59];
  v69 = v94[24];
  v68 = v94[25];

  sub_1D6985684(v67);
  v99 = sub_1D5E770A4(v97, v69, v68, MEMORY[0x1E69E7CD0]);

  v70 = v94[1];

  v70(v99);
}

uint64_t sub_1D5E65D88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E65F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E65FF0(a3, a4, a5);
}

uint64_t sub_1D5E65FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E66014, 0, 0);
}

uint64_t sub_1D5E66014()
{
  v135 = v0;
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.articleLists.getter(v2);

  *(v0 + 56) = v3;
  sub_1D5CEFE04(0, &qword_1EDF1B2B0, type metadata accessor for FormatArticleList, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B2A8, &qword_1EDF1B2B0, type metadata accessor for FormatArticleList);
  v113 = v0 + 56;
  v128 = sub_1D72623CC();
  *(v0 + 128) = v128;

  v4 = FormatContent.requirements.getter();
  v5 = Array<A>.articles.getter(v4);

  if (v5 >> 62)
  {
LABEL_87:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v125 = v0;
  if (v6)
  {
    v134[0] = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v8 = 0;
    v9 = v134[0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);

      v134[0] = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        v9 = v134[0];
      }

      ++v8;
      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
    }

    while (v6 != v8);

    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D5B86020(v9);
  *(v0 + 136) = v16;

  v17 = sub_1D605A62C(v7);
  *(v0 + 64) = v7;
  v18 = v128;
  v19 = v113;
  if (v128 >> 62)
  {
    v107 = v17;
    v20 = sub_1D7263BFC();
    v17 = v107;
  }

  else
  {
    v20 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v124 = v16;
  v126 = v17;
  if (v20)
  {
    v21 = 0;
    v109 = *(v0 + 112);
    v110 = *(v0 + 120);
    v1 = MEMORY[0x1E69E7CC0];
    v108 = *(v0 + 104);
    v22 = *(*(v0 + 96) + 8);
    v112 = v20;
    v129 = v22;
    while (1)
    {
      if ((v128 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v21, v18);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v21 >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v5 = *(v18 + 8 * v21 + 32);

        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      v133 = v24;
      if (!*(v22 + 16) || (v25 = *(v5 + 16), v0 = *(v5 + 24), , v26 = sub_1D5B69D90(v25, v0), v28 = v27, v18 = v128, , (v28 & 1) == 0))
      {

        MEMORY[0x1DA6F9CE0](v51);
        if (*((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*(v19 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D726272C();
          v18 = v128;
        }

        sub_1D726278C();

        v1 = *(v19 + 8);
        goto LABEL_19;
      }

      v29 = *(*(v22 + 56) + 8 * v26);
      v0 = *(v5 + 24);
      v127 = *(v5 + 16);

      v30 = sub_1D5E780A8(v124, v29);
      v131 = v30;
      if (v30 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_42:

          goto LABEL_43;
        }
      }

      else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v120 = v29;
      v122 = v0;
      v123 = v1;
      v32 = v125[13];
      v31 = v125[14];
      v33 = *(v108 + 56);
      v34 = type metadata accessor for FormatServiceOptions(0);
      v35 = *(v32 + *(v34 + 52));
      sub_1D5C384A0(0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D7279970;
      v37 = *v31;
      v38 = *(v109 + 8);
      *(v36 + 56) = MEMORY[0x1E69E6158];
      v39 = sub_1D5B7E2C0();
      *(v36 + 64) = v39;
      v118 = v38;
      v119 = v37;
      *(v36 + 32) = v37;
      *(v36 + 40) = v38;
      swift_bridgeObjectRetain_n();
      v116 = v33;
      v40 = FCFeedFilterOptionsToNSString();
      v41 = sub_1D726207C();
      v43 = v42;

      *(v36 + 96) = MEMORY[0x1E69E6158];
      *(v36 + 104) = v39;
      v117 = v39;
      *(v36 + 72) = v41;
      *(v36 + 80) = v43;
      v44 = *(v32 + *(v34 + 44));
      v45 = *(v44 + 16);
      *(v36 + 136) = MEMORY[0x1E69E6530];
      *(v36 + 144) = MEMORY[0x1E69E65A8];
      *(v36 + 112) = v45;
      v46 = sub_1D7262EDC();
      v121 = v35;
      sub_1D725C30C("Format service content %{public}@ creating headline filter transform with options %{public}@ and deduping against %ld headlines", 127, 2, &dword_1D5B42000, v35, v46, v36);

      v47 = *(v110 + 152);
      v48 = [objc_msgSend(v47 configurationManager)];
      swift_unknownObjectRelease();
      v49 = *(v44 + 16);
      if (v49)
      {
        v50 = sub_1D5B9A6D8(*(v44 + 16), 0);
        v114 = sub_1D5B9A6EC(v134, v50 + 4, v49, v44);
        v0 = v134[2];
        v111 = v134[0];
        v1 = v134[4];

        sub_1D5B87E38(v111);
        if (v114 != v49)
        {
          goto LABEL_86;
        }
      }

      v115 = *(v125 + 13);
      v52 = objc_opt_self();
      v53 = MEMORY[0x1E69E6158];
      v54 = sub_1D726265C();

      v55 = [v52 transformationWithFilterOptions:v116 configuration:v48 context:v47 otherArticleIDs:v54];

      swift_unknownObjectRelease();
      sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
      v56 = sub_1D726265C();

      v57 = [v55 transformHeadlinesWithResult_];

      sub_1D5B5A498(0, &qword_1EDF1A758, 0x1E69B52F0);
      v58 = sub_1D726267C();

      v59 = swift_task_alloc();
      *(v59 + 16) = v115;
      v60 = sub_1D5FBBBBC(sub_1D5EA22C4, v59, v58);

      v125[11] = v60;
      sub_1D5B9EE48(0);
      sub_1D5C2AF10(&qword_1EDF1AE70, 255, sub_1D5B9EE48, MEMORY[0x1E69E6328]);
      v19 = v113;
      v131 = sub_1D72623CC();

      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1D7279970;
      *(v61 + 56) = v53;
      *(v61 + 64) = v117;
      *(v61 + 32) = v119;
      *(v61 + 40) = v118;
      if (v120 >> 62)
      {
        v62 = sub_1D7263BFC();
      }

      else
      {
        v62 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v128;
      v0 = v122;
      v1 = v123;

      *(v61 + 96) = MEMORY[0x1E69E6530];
      *(v61 + 104) = MEMORY[0x1E69E65A8];
      *(v61 + 72) = v62;
      if (v131 >> 62)
      {
        v63 = sub_1D7263BFC();
      }

      else
      {
        v63 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v61 + 136) = MEMORY[0x1E69E6530];
      *(v61 + 144) = MEMORY[0x1E69E65A8];
      *(v61 + 112) = v63;
      v64 = sub_1D7262EDC();
      sub_1D725C30C("Format service content %{public}@ finished filtering headlines from %ld to %ld", 78, 2, &dword_1D5B42000, v121, v64, v61);

LABEL_43:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = v126;
      v66 = sub_1D5B69D90(v127, v0);
      v68 = v126[2];
      v69 = (v67 & 1) == 0;
      v70 = __OFADD__(v68, v69);
      v71 = v68 + v69;
      if (v70)
      {
        goto LABEL_84;
      }

      v72 = v67;
      if (v126[3] < v71)
      {
        sub_1D6D666E4(v71, isUniquelyReferenced_nonNull_native);
        v66 = sub_1D5B69D90(v127, v0);
        if ((v72 & 1) != (v73 & 1))
        {

          return sub_1D726493C();
        }

LABEL_48:
        v20 = v112;
        if (v72)
        {
          goto LABEL_18;
        }

        goto LABEL_49;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_48;
      }

      v78 = v0;
      v79 = v66;
      sub_1D6D7DCE0();
      v66 = v79;
      v0 = v78;
      v18 = v128;
      v20 = v112;
      if (v72)
      {
LABEL_18:
        v23 = v66;

        v126 = v134[0];
        *(*(v134[0] + 56) + 8 * v23) = v131;

        goto LABEL_19;
      }

LABEL_49:
      v74 = v134[0];
      *(v134[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
      v75 = (v74[6] + 16 * v66);
      *v75 = v127;
      v75[1] = v0;
      *(v74[7] + 8 * v66) = v131;

      v76 = v74[2];
      v70 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v70)
      {
        goto LABEL_85;
      }

      v126 = v74;
      v74[2] = v77;
LABEL_19:
      v22 = v129;
      ++v21;
      if (v133 == v20)
      {
        goto LABEL_56;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_56:
  v125[19] = v1;
  v125[20] = v126;
  v125[18] = v126;
  v80 = v125[13];
  v81 = type metadata accessor for FormatServiceOptions(0);
  v125[21] = v81;
  v82 = *(v80 + *(v81 + 52));
  v125[22] = v82;
  sub_1D5C384A0(0);
  v125[23] = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1D7279970;
  v85 = v126[2];
  *(v84 + 56) = MEMORY[0x1E69E6530];
  *(v84 + 64) = MEMORY[0x1E69E65A8];
  *(v84 + 32) = v85;
  v133 = v81;
  if (v1 >> 62)
  {
    v86 = sub_1D7263BFC();
  }

  else
  {
    v86 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = v125[14];
  *(v84 + 96) = MEMORY[0x1E69E6530];
  *(v84 + 104) = MEMORY[0x1E69E65A8];
  *(v84 + 72) = v86;
  v88 = *v87;
  v125[24] = *v87;
  v89 = v87[1];
  v125[25] = v89;
  *(v84 + 136) = MEMORY[0x1E69E6158];
  v90 = sub_1D5B7E2C0();
  v125[26] = v90;
  *(v84 + 144) = v90;
  *(v84 + 112) = v88;
  *(v84 + 120) = v89;

  v91 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved article lists for %{public}@", 90, 2, &dword_1D5B42000, v82, v91, v84);

  if (v1 >> 62)
  {
    v5 = v113;
    if (sub_1D7263BFC())
    {
LABEL_60:
      sub_1D5B68374(v125[15] + 16, v5 - 40);
      v6 = v125[5];
      v0 = v125[6];
      __swift_project_boxed_opaque_existential_1((v5 - 40), v6);
      if (!(v1 >> 62))
      {
        v92 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_62;
      }

LABEL_91:
      v92 = sub_1D7263BFC();
LABEL_62:
      v93 = MEMORY[0x1E69E7CC0];
      if (v92)
      {
        v134[0] = MEMORY[0x1E69E7CC0];
        v94 = sub_1D5BFC364(0, v92 & ~(v92 >> 63), 0);
        if (v92 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE44EE0](v94);
        }

        v130 = v0;
        v132 = v6;
        v95 = 0;
        v93 = v134[0];
        v96 = v1 & 0xC000000000000001;
        v97 = v1;
        do
        {
          if (v96)
          {
            v98 = MEMORY[0x1DA6FB460](v95, v1);
          }

          else
          {
            v98 = *(v1 + 8 * v95 + 32);
          }

          v99 = *(v98 + 16);
          v100 = *(v98 + 24);

          v134[0] = v93;
          v102 = *(v93 + 16);
          v101 = *(v93 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_1D5BFC364((v101 > 1), v102 + 1, 1);
            v93 = v134[0];
          }

          ++v95;
          *(v93 + 16) = v102 + 1;
          v103 = v93 + 16 * v102;
          *(v103 + 32) = v99;
          *(v103 + 40) = v100;
          v1 = v97;
        }

        while (v92 != v95);
        v5 = v113;
        v0 = v130;
        v6 = v132;
      }

      v125[27] = (*(v0 + 16))(v93, *(v125[13] + *(v133 + 48)), v6, v0);

      v106 = swift_task_alloc();
      v125[28] = v106;
      *v106 = v125;
      v106[1] = sub_1D5E66E60;
      v94 = (v5 + 16);

      return MEMORY[0x1EEE44EE0](v94);
    }
  }

  else
  {
    v5 = v113;
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }
  }

  v104 = v125[1];

  return v104(v126);
}

uint64_t sub_1D5E66E60()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_1D5E677A8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1D5E66FBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D5E66FBC()
{
  v89 = v0;
  v72 = v0[13];
  v73 = v0[15];
  v1 = v0[9];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = v0[20];
  v71 = v0[21];
  v8 = v0[18];

  v9 = 0;
  v69 = v1;
  v70 = v0;
  v67 = v6;
  v68 = v1 + 64;
  while (v5)
  {
    v11 = v9;
LABEL_11:
    v12 = (v11 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(v1 + 56) + v12);
    v14 = *(*(v1 + 48) + v12);

    v83 = v14;
    v15 = [v14 identifier];
    if (!v15)
    {
      goto LABEL_44;
    }

    v16 = v15;
    v17 = v0[17];
    v85 = sub_1D726207C();
    v86 = v18;

    v84 = v13;
    v19 = sub_1D5E780A8(v17, v13);
    v87 = v19;
    if (v19 >> 62)
    {
      if (!sub_1D7263BFC())
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v79 = v8;
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    v80 = v0[22];
    v23 = v0[13];
    v24 = *(v72 + 56);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7279970;
    v26 = MEMORY[0x1E69E6158];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = v20;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    swift_bridgeObjectRetain_n();
    v78 = v24;
    v27 = FCFeedFilterOptionsToNSString();
    v28 = sub_1D726207C();
    v30 = v29;

    *(v25 + 96) = v26;
    *(v25 + 104) = v20;
    *(v25 + 72) = v28;
    *(v25 + 80) = v30;
    v31 = *(v23 + *(v71 + 44));
    v32 = *(v31 + 16);
    *(v25 + 136) = MEMORY[0x1E69E6530];
    *(v25 + 144) = MEMORY[0x1E69E65A8];
    *(v25 + 112) = v32;
    v33 = sub_1D7262EDC();
    sub_1D725C30C("Format service content %{public}@ creating headline filter transform with options %{public}@ and deduping against %ld headlines", 127, 2, &dword_1D5B42000, v80, v33, v25);

    v34 = *(v73 + 152);
    v35 = [objc_msgSend(v34 configurationManager)];
    swift_unknownObjectRelease();
    v36 = *(v31 + 16);
    if (v36)
    {
      v37 = sub_1D5B9A6D8(*(v31 + 16), 0);
      v81 = sub_1D5B9A6EC(&v88, v37 + 4, v36, v31);
      v76 = v88;

      sub_1D5B87E38(v76);
      if (v81 != v36)
      {
        goto LABEL_43;
      }
    }

    v0 = v70;
    v82 = v70[25];
    v75 = v70[26];
    v77 = v70[24];
    v74 = *(v70 + 13);
    v38 = objc_opt_self();
    v39 = MEMORY[0x1E69E6158];
    v40 = sub_1D726265C();

    v41 = [v38 transformationWithFilterOptions:v78 configuration:v35 context:v34 otherArticleIDs:v40];

    swift_unknownObjectRelease();
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    v42 = sub_1D726265C();

    v43 = [v41 transformHeadlinesWithResult_];

    sub_1D5B5A498(0, &qword_1EDF1A758, 0x1E69B52F0);
    v44 = sub_1D726267C();

    v45 = swift_task_alloc();
    *(v45 + 16) = v74;
    v46 = sub_1D5FBBBBC(sub_1D5EA22C4, v45, v44);

    v70[10] = v46;
    sub_1D5B9EE48(0);
    sub_1D5C2AF10(&qword_1EDF1AE70, 255, sub_1D5B9EE48, MEMORY[0x1E69E6328]);
    v87 = sub_1D72623CC();

    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7279970;
    *(v47 + 56) = v39;
    *(v47 + 64) = v75;
    *(v47 + 32) = v77;
    *(v47 + 40) = v82;
    if (v84 >> 62)
    {
      v48 = sub_1D7263BFC();
    }

    else
    {
      v48 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v68;
    v1 = v69;
    v6 = v67;

    *(v47 + 96) = MEMORY[0x1E69E6530];
    *(v47 + 104) = MEMORY[0x1E69E65A8];
    *(v47 + 72) = v48;
    if (v87 >> 62)
    {
      v49 = sub_1D7263BFC();
    }

    else
    {
      v49 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v70[22];
    *(v47 + 136) = MEMORY[0x1E69E6530];
    *(v47 + 144) = MEMORY[0x1E69E65A8];
    *(v47 + 112) = v49;
    v51 = sub_1D7262EDC();
    sub_1D725C30C("Format service content %{public}@ finished filtering headlines from %ld to %ld", 78, 2, &dword_1D5B42000, v50, v51, v47);

    v8 = v79;
LABEL_23:
    v52 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v52;
    v54 = sub_1D5B69D90(v85, v86);
    v56 = v52[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v60 = v55;
    if (v52[3] >= v59)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = v54;
        sub_1D6D7DCE0();
        v54 = v65;
      }
    }

    else
    {
      sub_1D6D666E4(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_1D5B69D90(v85, v86);
      if ((v60 & 1) != (v61 & 1))
      {

        sub_1D726493C();
        return;
      }
    }

    v5 &= v5 - 1;
    if (v60)
    {
      v10 = v54;

      v8 = v88;
      *(v88[7] + 8 * v10) = v87;
    }

    else
    {
      v8 = v88;
      v88[(v54 >> 6) + 8] |= 1 << v54;
      v62 = (v8[6] + 16 * v54);
      *v62 = v85;
      v62[1] = v86;
      *(v8[7] + 8 * v54) = v87;

      v63 = v8[2];
      v58 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v58)
      {
        goto LABEL_42;
      }

      v8[2] = v64;
    }

    v9 = v11;
    v7 = v8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v66 = v0[1];

  v66(v7);
}

uint64_t sub_1D5E677A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E678C4(a3, a4, a5);
}

uint64_t sub_1D5E678C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E678E8, 0, 0);
}

uint64_t sub_1D5E678E8(uint64_t a1)
{
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.issues.getter(v2);

  v1[10] = v3;
  sub_1D5CEFE04(0, &qword_1EDF1B408, type metadata accessor for FormatIssue, MEMORY[0x1E69E62F8]);
  sub_1D5CF35F8(&qword_1EDF1B400, &qword_1EDF1B408, type metadata accessor for FormatIssue);
  v4 = 0;
  v5 = sub_1D72623CC();

  v6 = MEMORY[0x1E69E7CC0];
  v1[11] = MEMORY[0x1E69E7CC0];
  v7 = v1 + 11;
  v1[12] = v6;
  v8 = v1 + 12;
  if (v5 >> 62)
  {
    v9 = sub_1D7263BFC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v1 + 11;
  v60 = v1;
  if (v9)
  {
    if (v9 >= 1)
    {
      v10 = 0;
      v67 = v5 & 0xC000000000000001;
      v11 = MEMORY[0x1E69E7CC0];
      v12 = *(v1[16] + 16);
      v63 = MEMORY[0x1E69E7CC0];
      v64 = v9;
      v61 = v5;
      v65 = v12;
      while (1)
      {
        if (v67)
        {
          v14 = MEMORY[0x1DA6FB460](v10, v5);
          if (!*(v12 + 16))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v14 = *(v5 + 8 * v10 + 32);

          if (!*(v12 + 16))
          {
            goto LABEL_6;
          }
        }

        v16 = v14[2];
        v15 = v14[3];

        v17 = sub_1D5B69D90(v16, v15);
        v19 = v18;
        v9 = v64;

        if (v19)
        {
          v70 = v11;
          v20 = *(*(v12 + 56) + 8 * v17);
          v21 = v14[7];
          if (v14[5])
          {
            v22 = objc_allocWithZone(MEMORY[0x1E69B5360]);

            v23 = v20;

            v24 = sub_1D726203C();
            if (!v21)
            {
              v25 = 0;
              goto LABEL_21;
            }

LABEL_20:
            v25 = sub_1D726203C();
LABEL_21:
            v27 = [v22 initWithTitle:v24 issueDescription:v25];

            [objc_allocWithZone(MEMORY[0x1E69B5348]) initWithIssue:v20 overrides:v27];

            v5 = v61;
            v7 = v62;
          }

          else
          {
            if (v21)
            {
              v22 = objc_allocWithZone(MEMORY[0x1E69B5360]);
              v26 = v20;

              v24 = 0;
              goto LABEL_20;
            }

            v28 = v20;
          }

          MEMORY[0x1DA6F9CE0]();
          v11 = v70;
          v9 = v64;
          if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v9 = v64;
          }

          sub_1D726278C();

          v63 = *v7;
          goto LABEL_9;
        }

LABEL_6:

        MEMORY[0x1DA6F9CE0](v13);
        if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v9 = v64;
        }

        sub_1D726278C();

        v11 = *v8;
LABEL_9:
        ++v10;
        v12 = v65;
        if (v9 == v10)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v5 = v60;
  v60[21] = v11;
  v60[22] = v63;
  v60[20] = v63;
  v29 = v60[17];

  v30 = *(v29 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D7279970;
  if (v63 >> 62)
  {
    v58 = v31;
    v32 = sub_1D7263BFC();
    v31 = v58;
  }

  else
  {
    v32 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69E6530];
  v35 = MEMORY[0x1E69E65A8];
  *(v31 + 56) = MEMORY[0x1E69E6530];
  *(v31 + 64) = v35;
  *(v31 + 32) = v32;
  v36 = v11 >> 62;
  v69 = v11;
  if (v11 >> 62)
  {
    v59 = v31;
    v37 = sub_1D7263BFC();
    v31 = v59;
  }

  else
  {
    v37 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v60[18];
  *(v31 + 96) = v34;
  *(v31 + 104) = v35;
  *(v31 + 72) = v37;
  v40 = *v38;
  v39 = v38[1];
  *(v31 + 136) = v33;
  v41 = v31;
  *(v31 + 144) = sub_1D5B7E2C0();
  *(v41 + 112) = v40;
  *(v41 + 120) = v39;

  v42 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved issues for %{public}@", 83, 2, &dword_1D5B42000, v30, v42, v41);

  if (v36)
  {
    v4 = v69;
    if (sub_1D7263BFC())
    {
LABEL_33:
      sub_1D5B68374(v60[19] + 56, (v62 - 9));
      v1 = v60[5];
      v7 = v60[6];
      __swift_project_boxed_opaque_existential_1(v62 - 9, v1);
      if (!(v4 >> 62))
      {
        v43 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_35;
      }

LABEL_56:
      v43 = sub_1D7263BFC();
LABEL_35:
      v44 = MEMORY[0x1E69E7CC0];
      if (v43)
      {
        v71 = MEMORY[0x1E69E7CC0];
        v45 = sub_1D5BFC364(0, v43 & ~(v43 >> 63), 0);
        if (v43 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE44EE0](v45);
        }

        v66 = v7;
        v68 = v1;
        v46 = 0;
        v44 = v71;
        v47 = v4 & 0xC000000000000001;
        do
        {
          if (v47)
          {
            v48 = MEMORY[0x1DA6FB460](v46, v69);
          }

          else
          {
            v48 = *(v69 + 8 * v46 + 32);
          }

          swift_beginAccess();
          v50 = *(v48 + 16);
          v49 = *(v48 + 24);

          v52 = *(v71 + 16);
          v51 = *(v71 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1D5BFC364((v51 > 1), v52 + 1, 1);
          }

          ++v46;
          *(v71 + 16) = v52 + 1;
          v53 = v71 + 16 * v52;
          *(v53 + 32) = v50;
          *(v53 + 40) = v49;
        }

        while (v43 != v46);
        v5 = v60;
        v7 = v66;
        v1 = v68;
      }

      *(v5 + 184) = (v7[1])(v44, v1, v7);

      v57 = swift_task_alloc();
      *(v5 + 192) = v57;
      *v57 = v5;
      v57[1] = sub_1D5E680F8;
      v45 = (v62 + 2);

      return MEMORY[0x1EEE44EE0](v45);
    }
  }

  else
  {
    v4 = v69;
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }
  }

  v60[15] = v63;
  sub_1D5B90088(0);
  sub_1D5C2AF10(&unk_1EDF1AE30, 255, sub_1D5B90088, MEMORY[0x1E69E6328]);
  sub_1D5E9E790();
  v54 = sub_1D72623BC();

  v55 = v60[1];

  return v55(v54);
}

uint64_t sub_1D5E680F8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_1D5E68840;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1D5E68238;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D5E68238()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v57 = (v1 & 0xFFFFFFFFFFFFFF8);
    v60 = v1 & 0xC000000000000001;
    v4 = MEMORY[0x1E69E7CC8];
    v55 = v1;
    while (1)
    {
      if (v60)
      {
        v9 = MEMORY[0x1DA6FB460](v3, v1);
      }

      else
      {
        if (v3 >= v57[2])
        {
          goto LABEL_25;
        }

        v9 = *(v1 + 8 * v3 + 32);
      }

      v10 = v9;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v1 = v2;
      v11 = [v9 identifier];
      v12 = sub_1D726207C();
      v14 = v13;

      v15 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v4;
      v17 = sub_1D5B69D90(v12, v14);
      v19 = v4[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_26;
      }

      v23 = v18;
      if (v4[3] < v22)
      {
        sub_1D6D66660(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_1D5B69D90(v12, v14);
        if ((v23 & 1) != (v24 & 1))
        {

          sub_1D726493C();
          return;
        }

LABEL_15:
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v28 = v17;
      sub_1D6D7DB30();
      v17 = v28;
      if (v23)
      {
LABEL_4:
        v5 = v17;

        v4 = v62;
        v6 = v62[7];
        v7 = *(v6 + 8 * v5);
        *(v6 + 8 * v5) = v15;

        goto LABEL_5;
      }

LABEL_16:
      v4 = v62;
      v62[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v62[6] + 16 * v17);
      *v25 = v12;
      v25[1] = v14;
      *(v62[7] + 8 * v17) = v15;

      v26 = v62[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_27;
      }

      v62[2] = v27;
LABEL_5:
      ++v3;
      v2 = v1;
      v8 = v0 == v1;
      v1 = v55;
      if (v8)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v2 = sub_1D7263BFC();
    v54 = v0;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_30:
  v29 = v54;
  v30 = v54[21];

  v63 = MEMORY[0x1E69E7CC0];
  v31 = v54[21];
  if (v30 >> 62)
  {
    v61 = v31 & 0xFFFFFFFFFFFFFF8;
    v32 = sub_1D7263BFC();
    v31 = v54[21];
    if (v32)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v61 = v31 & 0xFFFFFFFFFFFFFF8;
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
LABEL_32:
      v33 = 0;
      v34 = v31 & 0xC000000000000001;
      v35 = v31 + 32;
      v36 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v58 = v36;
        v37 = v33;
        while (1)
        {
          if (v34)
          {
            v38 = MEMORY[0x1DA6FB460](v37, v54[21]);
            v33 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (v37 >= *(v61 + 16))
            {
              goto LABEL_64;
            }

            v38 = *(v35 + 8 * v37);

            v33 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              return;
            }
          }

          if (v4[2])
          {
            v39 = v38[2];
            v40 = v38[3];

            v41 = sub_1D5B69D90(v39, v40);
            v43 = v42;

            if (v43)
            {
              break;
            }
          }

          ++v37;
          if (v33 == v32)
          {
            v29 = v54;
            v36 = v58;
            goto LABEL_60;
          }
        }

        v44 = *(v4[7] + 8 * v41);
        v45 = v38[7];
        if (v38[5])
        {
          v59 = objc_allocWithZone(MEMORY[0x1E69B5360]);

          v56 = v44;
          v46 = v44;

          v47 = sub_1D726203C();
          if (!v45)
          {
            v49 = 0;
            goto LABEL_51;
          }
        }

        else
        {
          if (!v45)
          {
            v44;

            goto LABEL_52;
          }

          v56 = v44;
          v59 = objc_allocWithZone(MEMORY[0x1E69B5360]);
          v48 = v44;

          v47 = 0;
        }

        v49 = sub_1D726203C();
LABEL_51:
        v50 = [v59 initWithTitle:v47 issueDescription:v49];

        [objc_allocWithZone(MEMORY[0x1E69B5348]) initWithIssue:v56 overrides:v50];

LABEL_52:
        MEMORY[0x1DA6F9CE0]();
        v29 = v54;
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v36 = v63;
        if (v33 == v32)
        {
          goto LABEL_60;
        }
      }
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_60:
  v51 = v29[20];

  sub_1D69856B0(v51);
  v29[14] = v36;
  sub_1D5B90088(0);
  sub_1D5C2AF10(&unk_1EDF1AE30, 255, sub_1D5B90088, MEMORY[0x1E69E6328]);
  sub_1D5E9E790();
  v52 = sub_1D72623BC();

  v53 = v29[1];

  v53(v52);
}

uint64_t sub_1D5E68840()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E688A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6895C(a3, a4, a5);
}

uint64_t sub_1D5E6895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5E68980, 0, 0);
}

uint64_t sub_1D5E68980(uint64_t a1)
{
  v110 = v1;
  v3 = FormatContent.requirements.getter();
  v4 = Array<A>.tags.getter(v3);

  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v109 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v6 = 0;
  v7 = v109;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6FB460](v6, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v6 + 32);
    }

    swift_beginAccess();
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);

    v109 = v7;
    v12 = *(v7 + 16);
    v11 = *(v7 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      v7 = v109;
    }

    ++v6;
    *(v7 + 16) = v12 + 1;
    v13 = v7 + 16 * v12;
    *(v13 + 32) = v10;
    *(v13 + 40) = v9;
  }

  while (v5 != v6);

LABEL_14:
  v108 = v1;
  v14 = v1[6];
  v107 = sub_1D5B86020(v7);

  v15 = sub_1D605A754(MEMORY[0x1E69E7CC0]);
  v16 = *(v14 + 24);
  v18 = *(v16 + 64);
  v2 = v16 + 64;
  v17 = v18;
  v19 = -1;
  v20 = -1 << *(*(v14 + 24) + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & v17;
  v4 = (63 - v20) >> 6;
  v106 = *(v14 + 24);

  v22 = 0;
  while (1)
  {
    v108[10] = v15;
    if (!v21)
    {
      break;
    }

    v24 = v22;
LABEL_23:
    v25 = __clz(__rbit64(v21)) | (v24 << 6);
    v26 = (*(v106 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(*(v106 + 56) + 8 * v25);
    swift_unknownObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v15;
    v31 = sub_1D5B69D90(v28, v27);
    v33 = v15[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_91;
    }

    v37 = v32;
    if (v15[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v31;
        sub_1D6D7D8F8();
        v31 = v42;
      }
    }

    else
    {
      sub_1D6D6630C(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1D5B69D90(v28, v27);
      if ((v37 & 1) != (v38 & 1))
      {
LABEL_79:

        return sub_1D726493C();
      }
    }

    v21 &= v21 - 1;
    if (v37)
    {
      v23 = v31;

      v15 = v109;
      *(v109[7] + 8 * v23) = v29;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v22 = v24;
    }

    else
    {
      v15 = v109;
      v109[(v31 >> 6) + 8] |= 1 << v31;
      v39 = (v15[6] + 16 * v31);
      *v39 = v28;
      v39[1] = v27;
      *(v15[7] + 8 * v31) = v29;
      swift_unknownObjectRelease();
      v40 = v15[2];
      v35 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v35)
      {
        goto LABEL_93;
      }

      v15[2] = v41;
      v22 = v24;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v24 >= v4)
    {
      break;
    }

    v21 = *(v2 + 8 * v24);
    ++v22;
    if (v21)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  v43 = -1;
  v44 = -1 << *(v107 + 32);
  if (-v44 < 64)
  {
    v43 = ~(-1 << -v44);
  }

  v45 = v43 & *(v107 + 56);
  v46 = (63 - v44) >> 6;
  v47 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v2 = v108;
  v108[11] = v47;
  v48 = v4;
  if (!v45)
  {
    goto LABEL_37;
  }

  do
  {
    v4 = v48;
LABEL_40:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v50 = (*(v107 + 48) + ((v4 << 10) | (16 * v49)));
    v52 = *v50;
    v51 = v50[1];
    v53 = v15[2];

    if (!v53 || (sub_1D5B69D90(v52, v51), (v54 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1D5B858EC(0, *(v47 + 2) + 1, 1, v47);
      }

      v56 = *(v47 + 2);
      v55 = *(v47 + 3);
      if (v56 >= v55 >> 1)
      {
        v47 = sub_1D5B858EC((v55 > 1), v56 + 1, 1, v47);
      }

      *(v47 + 2) = v56 + 1;
      v57 = &v47[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v51;
      goto LABEL_35;
    }

    v48 = v4;
  }

  while (v45);
  while (1)
  {
LABEL_37:
    v4 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_87;
    }

    if (v4 >= v46)
    {
      break;
    }

    v45 = *(v107 + 56 + 8 * v4);
    ++v48;
    if (v45)
    {
      goto LABEL_40;
    }
  }

  v58 = v108[7];
  v59 = v108[8];

  v60 = *(v58 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1D7279970;
  v62 = v15[2];
  v63 = MEMORY[0x1E69E6530];
  v64 = MEMORY[0x1E69E65A8];
  *(v61 + 56) = MEMORY[0x1E69E6530];
  *(v61 + 64) = v64;
  *(v61 + 32) = v62;
  v65 = *(v47 + 2);
  *(v61 + 96) = v63;
  *(v61 + 104) = v64;
  *(v61 + 72) = v65;
  v67 = *v59;
  v66 = v59[1];
  *(v61 + 136) = MEMORY[0x1E69E6158];
  *(v61 + 144) = sub_1D5B7E2C0();
  *(v61 + 112) = v67;
  *(v61 + 120) = v66;

  v68 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved tags for %{public}@", 81, 2, &dword_1D5B42000, v60, v68, v61);

  if (!*(v47 + 2))
  {
    v76 = v15[2];
    if (v76)
    {
      v77 = sub_1D5C38490(v15[2], 0);
      v78 = sub_1D5C38498(&v109, v77 + 4, v76, v15);
      v79 = v109;

      v80 = sub_1D5B87E38(v79);
      if (v78 != v76)
      {
        __break(1u);
        return MEMORY[0x1EEE44EE0](v80);
      }

      v2 = v108;
    }

    else
    {
      v77 = MEMORY[0x1E69E7CC0];
    }

    v4 = sub_1D5E76DE0(v77, *(v2 + 56), *(v2 + 64));

    if (!(v4 >> 62))
    {
      v81 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v81)
      {
LABEL_60:
        v82 = 0;
        v83 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x1DA6FB460](v82, v4);
            v86 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_88;
            }
          }

          else
          {
            if (v82 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v85 = *(v4 + 8 * v82 + 32);
            swift_unknownObjectRetain();
            v86 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_88;
            }
          }

          v87 = [v85 identifier];
          v88 = sub_1D726207C();
          v90 = v89;

          swift_unknownObjectRetain();
          v2 = swift_isUniquelyReferenced_nonNull_native();
          v109 = v83;
          v91 = sub_1D5B69D90(v88, v90);
          v93 = v83[2];
          v94 = (v92 & 1) == 0;
          v35 = __OFADD__(v93, v94);
          v95 = v93 + v94;
          if (v35)
          {
            goto LABEL_90;
          }

          v96 = v92;
          if (v83[3] < v95)
          {
            break;
          }

          if (v2)
          {
            goto LABEL_71;
          }

          v101 = v91;
          sub_1D6D7D8F8();
          v91 = v101;
          v2 = v108;
          if (v96)
          {
LABEL_61:
            v84 = v91;

            v83 = v109;
            *(v109[7] + 8 * v84) = v85;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_62;
          }

LABEL_72:
          v83 = v109;
          v109[(v91 >> 6) + 8] |= 1 << v91;
          v98 = (v83[6] + 16 * v91);
          *v98 = v88;
          v98[1] = v90;
          *(v83[7] + 8 * v91) = v85;
          swift_unknownObjectRelease();
          v99 = v83[2];
          v35 = __OFADD__(v99, 1);
          v100 = v99 + 1;
          if (v35)
          {
            goto LABEL_92;
          }

          v83[2] = v100;
LABEL_62:
          ++v82;
          if (v86 == v81)
          {
            goto LABEL_97;
          }
        }

        sub_1D6D6630C(v95, v2);
        v91 = sub_1D5B69D90(v88, v90);
        if ((v96 & 1) != (v97 & 1))
        {
          goto LABEL_79;
        }

LABEL_71:
        v2 = v108;
        if (v96)
        {
          goto LABEL_61;
        }

        goto LABEL_72;
      }

LABEL_96:
      v83 = MEMORY[0x1E69E7CC8];
LABEL_97:

      v105 = *(v2 + 8);

      return v105(v83);
    }

LABEL_95:
    v81 = sub_1D7263BFC();
    if (v81)
    {
      goto LABEL_60;
    }

    goto LABEL_96;
  }

  v69 = v108[9];
  v70 = v108[7];
  v71 = v69[15];
  v72 = v69[16];
  __swift_project_boxed_opaque_existential_1(v69 + 12, v71);
  v73 = *(v70 + 40);
  LODWORD(v70) = *(v70 + 48);
  v74 = objc_opt_self();
  if (v70 == 1)
  {
    if (v73 == 0.0)
    {
      v75 = [v74 defaultCachePolicy];
    }

    else
    {
      v75 = [v74 cachedOnlyCachePolicy];
    }
  }

  else
  {
    v75 = [v74 cachePolicyWithSoftMaxAge_];
  }

  v103 = v75;
  v108[12] = (*(v72 + 24))(v47, v103, v71, v72);

  v104 = swift_task_alloc();
  v108[13] = v104;
  *v104 = v108;
  v104[1] = sub_1D5E69354;
  v80 = (v108 + 5);

  return MEMORY[0x1EEE44EE0](v80);
}

uint64_t sub_1D5E69354()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1D5E69794;
  }

  else
  {
    v2 = sub_1D5E69498;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E69498()
{
  v1 = sub_1D5E76DE0(*(v0 + 40), *(v0 + 56), *(v0 + 64));

  if (v1 >> 62)
  {
LABEL_34:
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 80);

  if (v2)
  {
    v4 = 0;
    v26 = v0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v4, v1);
        v0 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v6 = *(v1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v0 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      v7 = [v6 identifier];
      v8 = sub_1D726207C();
      v10 = v9;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_1D5B69D90(v8, v10);
      v14 = v3[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_32;
      }

      v18 = v13;
      if (v3[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v23 = v12;
      sub_1D6D7D8F8();
      v12 = v23;
      if (v18)
      {
LABEL_5:
        v5 = v12;

        *(v3[7] + 8 * v5) = v6;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_6;
      }

LABEL_16:
      v3[(v12 >> 6) + 8] |= 1 << v12;
      v20 = (v3[6] + 16 * v12);
      *v20 = v8;
      v20[1] = v10;
      *(v3[7] + 8 * v12) = v6;
      swift_unknownObjectRelease();
      v21 = v3[2];
      v16 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v16)
      {
        goto LABEL_33;
      }

      v3[2] = v22;
LABEL_6:
      ++v4;
      if (v0 == v2)
      {
        v0 = v26;
        goto LABEL_24;
      }
    }

    sub_1D6D6630C(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1D5B69D90(v8, v10);
    if ((v18 & 1) != (v19 & 1))
    {

      return sub_1D726493C();
    }

LABEL_15:
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_24:

  v24 = *(v0 + 8);

  return v24(v3);
}

uint64_t sub_1D5E69794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E697F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E698B0(a3, a4, a5);
}

uint64_t sub_1D5E698B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_1D5CEFE04(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for FormatServiceOptions(0);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E699A4, 0, 0);
}

uint64_t sub_1D5E699A4(uint64_t a1)
{
  v3 = FormatContent.requirements.getter();
  v4 = Array<A>.tagFeeds.getter(v3);

  if (v4 >> 62)
  {
LABEL_64:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v80 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
LABEL_66:
      v39 = sub_1D7263BFC();
      goto LABEL_42;
    }

    v6 = 0;
    v7 = v80;
    v2 = v4 & 0xC000000000000001;
    do
    {
      if (v2)
      {
        v8 = MEMORY[0x1DA6FB460](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      swift_beginAccess();
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v12 = *(v80 + 16);
      v11 = *(v80 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v80 + 16) = v12 + 1;
      v13 = v80 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v5 != v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D5B86020(v7);
  v1[20] = v14;

  if (*(v14 + 16))
  {
    v15 = v1[19];
    v16 = v1[13];
    sub_1D5CEFE68(v1[14], v15, type metadata accessor for FormatServiceOptions);
    *(v15 + 56) |= 0x20024uLL;
    v78 = *(v16 + 40);
    v17 = *(v16 + 24);
    v18 = MEMORY[0x1E69E7CC0];
    v1[10] = MEMORY[0x1E69E7CC0];
    v4 = v14 + 56;
    v19 = -1;
    v20 = -1 << *(v14 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & *(v14 + 56);
    v22 = (63 - v20) >> 6;

    v23 = 0;
    v24 = v18;
    v79 = v18;
    v77 = v17;
LABEL_18:
    v76 = v24;
    v1[21] = v24;
    v25 = v23;
    while (1)
    {
      v1[22] = v79;
      if (!v21)
      {
        break;
      }

      v23 = v25;
LABEL_24:
      v26 = v14;
      v27 = (*(v14 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v21)))));
      v28 = *v27;
      v2 = v27[1];
      v29 = *(v17 + 16);

      if (!v29 || (sub_1D5B69D90(v28, v2), (v30 & 1) == 0))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1D5B858EC(0, *(v79 + 2) + 1, 1, v79);
        }

        v32 = *(v79 + 2);
        v31 = *(v79 + 3);
        if (v32 >= v31 >> 1)
        {
          v79 = sub_1D5B858EC((v31 > 1), v32 + 1, 1, v79);
        }

        *(v79 + 2) = v32 + 1;
        v33 = &v79[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v2;
        v1[10] = v79;
      }

      v21 &= v21 - 1;
      if (!*(v78 + 16) || (sub_1D5B69D90(v28, v2), (v34 & 1) == 0))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v24 = v76;
        }

        else
        {
          v24 = sub_1D5B858EC(0, *(v76 + 2) + 1, 1, v76);
        }

        v36 = *(v24 + 2);
        v35 = *(v24 + 3);
        if (v36 >= v35 >> 1)
        {
          v24 = sub_1D5B858EC((v35 > 1), v36 + 1, 1, v24);
        }

        *(v24 + 2) = v36 + 1;
        v37 = &v24[16 * v36];
        *(v37 + 4) = v28;
        *(v37 + 5) = v2;
        v17 = v77;
        v14 = v26;
        goto LABEL_18;
      }

      v25 = v23;
      v17 = v77;
      v14 = v26;
    }

    while (1)
    {
      v23 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v23 >= v22)
      {
        break;
      }

      v21 = *(v4 + 8 * v23);
      ++v25;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    v38 = FormatContent.requirements.getter();
    v2 = Array<A>.articles.getter(v38);

    if (v2 >> 62)
    {
      goto LABEL_66;
    }

    v39 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_42:
    if (v39)
    {
      v81 = MEMORY[0x1E69E7CC0];
      v40 = sub_1D5BFC364(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEE44EE0](v40);
      }

      v41 = 0;
      v42 = v81;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x1DA6FB460](v41, v2);
        }

        else
        {
          v43 = *(v2 + 8 * v41 + 32);
        }

        v44 = *(v43 + 16);
        v45 = *(v43 + 24);

        v47 = *(v81 + 16);
        v46 = *(v81 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1D5BFC364((v46 > 1), v47 + 1, 1);
        }

        ++v41;
        *(v81 + 16) = v47 + 1;
        v48 = v81 + 16 * v47;
        *(v48 + 32) = v44;
        *(v48 + 40) = v45;
      }

      while (v39 != v41);
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    v1[23] = sub_1D5B86020(v42);

    if (*(v76 + 2))
    {
      v52 = v1[15];
      v53 = *(v1[19] + *(v1[18] + 52));
      v1[24] = v53;
      sub_1D5C384A0(0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1D7279970;
      v55 = *(v77 + 16);
      v56 = MEMORY[0x1E69E6530];
      v57 = MEMORY[0x1E69E65A8];
      *(v54 + 56) = MEMORY[0x1E69E6530];
      *(v54 + 64) = v57;
      *(v54 + 32) = v55;
      v58 = *(v79 + 2);
      *(v54 + 96) = v56;
      *(v54 + 104) = v57;
      *(v54 + 72) = v58;
      v60 = *v52;
      v59 = v52[1];
      *(v54 + 136) = MEMORY[0x1E69E6158];
      *(v54 + 144) = sub_1D5B7E2C0();
      *(v54 + 112) = v60;
      *(v54 + 120) = v59;

      v61 = sub_1D7262EDC();
      sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved tags for %{public}@ for tag feed fetch", 100, 2, &dword_1D5B42000, v53, v61, v54);

      v62 = swift_task_alloc();
      v1[25] = v62;
      *v62 = v1;
      v62[1] = sub_1D5E6A218;
      v63 = v1[19];
      v64 = v1[16];

      return sub_1D5E775A8((v1 + 10), v77, v64, v63);
    }

    v65 = v1[18];
    v66 = v1[19];

    v67 = *(v66 + *(v65 + 52));
    sub_1D5C384A0(0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1D7273AE0;
    sub_1D5CEFE04(0, &unk_1EDF43A60, sub_1D5B9EE48, MEMORY[0x1E69D6B18]);
    v69 = MEMORY[0x1E69E6158];
    v70 = sub_1D7261DBC();
    v72 = v71;
    *(v68 + 56) = v69;
    *(v68 + 64) = sub_1D5B7E2C0();
    *(v68 + 32) = v70;
    *(v68 + 40) = v72;
    v73 = sub_1D7262EDC();
    sub_1D725C30C("Format service will resolve inflight tag feed fetches for %{public}@", 68, 2, &dword_1D5B42000, v67, v73, v68);

    v74 = sub_1D725B92C();
    v1[31] = sub_1D725BA5C();

    v75 = swift_task_alloc();
    v1[32] = v75;
    *v75 = v1;
    v75[1] = sub_1D5E6ABC4;
    v40 = (v1 + 12);

    return MEMORY[0x1EEE44EE0](v40);
  }

  v49 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);

  v50 = v1[1];

  return v50(v49);
}

uint64_t sub_1D5E6A218(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {

    v4 = sub_1D5E6AF04;
  }

  else
  {
    v4 = sub_1D5E6A358;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D5E6A358(uint64_t a1)
{
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.tagFeeds.getter(v2);

  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v6)
  {
    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v9 = v4 + 32;
    v10 = 0.0;
    v11 = 1;
    while (1)
    {
      if (v8)
      {
        v20 = v4;
        v18 = MEMORY[0x1DA6FB460](v7);
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return MEMORY[0x1EEE44EE0](v18);
        }

        v13 = *(v18 + 32);
        LODWORD(v12) = *(v18 + 40);
        swift_unknownObjectRelease();
        ++v7;
        v4 = v20;
        if (v11)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v7 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v14 = v7 + 1;
      v15 = *(v9 + 8 * v7);
      v13 = *(v15 + 32);
      LODWORD(v12) = *(v15 + 40);
      ++v7;
      if (v11)
      {
        goto LABEL_7;
      }

LABEL_12:
      if (v12)
      {
        if (v14 != v6)
        {
          do
          {
            if (v8)
            {
              v17 = v4;
              v18 = MEMORY[0x1DA6FB460](v14);
              v7 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_80;
              }

              v13 = *(v18 + 32);
              v19 = *(v18 + 40);
              swift_unknownObjectRelease();
              v4 = v17;
              if (v19 != 1)
              {
                goto LABEL_5;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              if (v14 >= *(v5 + 16))
              {
                goto LABEL_29;
              }

              v7 = v14 + 1;
              v16 = *(v9 + 8 * v14);
              if ((*(v16 + 40) & 1) == 0)
              {
                v13 = *(v16 + 32);
                goto LABEL_5;
              }
            }

            v14 = v7;
          }

          while (v7 != v6);
        }

        LOBYTE(v12) = 0;
        v13 = v10;
        goto LABEL_32;
      }

      v7 = v14;
LABEL_5:
      LOBYTE(v12) = 0;
      if (v10 > v13)
      {
        v13 = v10;
      }

LABEL_7:
      v11 = v12;
      v10 = v13;
      if (v7 == v6)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v21 = v4;
    v6 = sub_1D7263BFC();
    v4 = v21;
  }

  LOBYTE(v12) = 1;
  v13 = 0.0;
LABEL_32:

  v22 = FormatContent.requirements.getter();
  v23 = Array<A>.tagFeeds.getter(v22);

  v24 = v23;
  v25 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_79:
    v55 = v24;
    v26 = sub_1D7263BFC();
    v24 = v55;
  }

  else
  {
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v12;
  v59 = v1;
  if (!v26)
  {
    v31 = 0;
    LODWORD(v1) = 1;
    goto LABEL_61;
  }

  v12 = 0;
  v27 = 0;
  v28 = v24 & 0xC000000000000001;
  v29 = v24 + 32;
  v30 = 1;
  while (v28)
  {
    v57 = v24;
    v18 = MEMORY[0x1DA6FB460](v27);
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_81;
    }

    v31 = *(v18 + 48);
    v1 = *(v18 + 56);
    swift_unknownObjectRelease();
    ++v27;
    v24 = v57;
    if ((v30 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_39:
    v30 = v1;
    v12 = v31;
    if (v27 == v26)
    {
      goto LABEL_61;
    }
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v27 >= *(v25 + 16))
  {
    goto LABEL_78;
  }

  v32 = v27 + 1;
  v33 = *(v29 + 8 * v27);
  v31 = *(v33 + 48);
  v1 = *(v33 + 56);
  ++v27;
  if (v30)
  {
    goto LABEL_39;
  }

LABEL_44:
  if (!v1)
  {
    v27 = v32;
LABEL_37:
    v1 = 0;
    if (v31 <= v12)
    {
      v31 = v12;
    }

    goto LABEL_39;
  }

  if (v32 != v26)
  {
    do
    {
      if (v28)
      {
        v1 = v24;
        v18 = MEMORY[0x1DA6FB460](v32);
        v27 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_81;
        }

        v31 = *(v18 + 48);
        v35 = *(v18 + 56);
        swift_unknownObjectRelease();
        v24 = v1;
        if (v35 != 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (v32 >= *(v25 + 16))
        {
          goto LABEL_78;
        }

        v27 = v32 + 1;
        v34 = *(v29 + 8 * v32);
        if ((*(v34 + 56) & 1) == 0)
        {
          v31 = *(v34 + 48);
          goto LABEL_37;
        }
      }

      v32 = v27;
    }

    while (v27 != v26);
  }

  LODWORD(v1) = 0;
  v31 = v12;
LABEL_61:
  v36 = v59[16];

  sub_1D5B68374(v36 + 16, (v59 + 2));
  v37 = v59[5];
  v38 = v59[6];
  __swift_project_boxed_opaque_existential_1(v59 + 2, v37);
  if (v1)
  {
    v31 = *(v59[19] + 80);
  }

  v39 = v59[17];
  sub_1D725890C();
  v40 = sub_1D725891C();
  v41 = *(v40 - 8);
  (*(v41 + 56))(v39, 0, 1, v40);
  if (v58)
  {
    v13 = *(v59[19] + 72);
  }

  v42 = v59[17];
  if ((*(v41 + 48))(v42, 1, v40) == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_1D725881C();
    (*(v41 + 8))(v42, v40);
  }

  v44 = [objc_allocWithZone(MEMORY[0x1E69B5250]) initWithStartDate:v43 timeInterval:v13];

  if (!v44)
  {
    goto LABEL_82;
  }

  v45 = v59[19];

  v46 = *(v45 + 40);
  LODWORD(v45) = *(v45 + 48);
  v47 = objc_opt_self();
  if (v45 == 1)
  {
    if (v46 == 0.0)
    {
      v48 = [v47 defaultCachePolicy];
    }

    else
    {
      v48 = [v47 cachedOnlyCachePolicy];
    }
  }

  else
  {
    v48 = [v47 cachePolicyWithSoftMaxAge_];
  }

  v49 = v59[26];
  v50 = v59[24];
  v52 = v59[18];
  v51 = v59[19];
  v53 = v48;
  v59[28] = HeadlineServiceType.fetchFeedHeadlines(forTags:maxCountPerFeed:dateRange:fromFeedBin:cachePolicy:purpose:log:)(v49, v31, v44, 1, v53, *(v51 + *(v52 + 48)), v50, v37, v38);

  v54 = swift_task_alloc();
  v59[29] = v54;
  *v54 = v59;
  v54[1] = sub_1D5E6A920;
  v18 = (v59 + 11);

  return MEMORY[0x1EEE44EE0](v18);
}

uint64_t sub_1D5E6A920()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {

    v3 = sub_1D5E6AF9C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1D5E6AA74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5E6AA74()
{
  v1 = v0[23];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v1;
  sub_1D5B9EE48(0);
  v6 = sub_1D7261D6C();

  sub_1D5EA08F4(v2, type metadata accessor for FormatServiceOptions);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1D5E6ABC4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_1D5E6AE6C;
  }

  else
  {
    v2 = sub_1D5E6AD1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E6AD1C()
{
  v1 = v0[23];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v1;
  sub_1D5B9EE48(0);
  v6 = sub_1D7261D6C();

  sub_1D5EA08F4(v2, type metadata accessor for FormatServiceOptions);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1D5E6AE6C()
{
  sub_1D5EA08F4(*(v0 + 152), type metadata accessor for FormatServiceOptions);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6AF04()
{
  sub_1D5EA08F4(*(v0 + 152), type metadata accessor for FormatServiceOptions);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5E6AF9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1D5EA08F4(v0[19], type metadata accessor for FormatServiceOptions);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D5E6B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D5E52E3C;

  return sub_1D5E6B0F4(a3, a4, a5);
}

uint64_t sub_1D5E6B0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[191] = v3;
  v4[190] = a3;
  v4[189] = a2;
  v4[188] = a1;
  v5 = sub_1D7261ACC();
  v4[192] = v5;
  v4[193] = *(v5 - 8);
  v4[194] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E6B1C0, 0, 0);
}

uint64_t sub_1D5E6B1C0(uint64_t a1)
{
  v166 = v1;
  v2 = FormatContent.requirements.getter();
  v3 = Array<A>.puzzles.getter(v2);

  v4 = sub_1D605A770(MEMORY[0x1E69E7CC0]);
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v149 = v1;
  while (v5)
  {
    v6 = 0;
    v150 = v3 & 0xFFFFFFFFFFFFFF8;
    v153 = v3 & 0xC000000000000001;
    while (v153)
    {
      v9 = MEMORY[0x1DA6FB460](v6, v3);
      v1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v10 = v3;
      v3 = v5;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v4;
      v14 = sub_1D5B69D90(v12, v11);
      v16 = v4;
      v17 = v4[2];
      v18 = (v15 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_24;
      }

      v21 = v15;
      if (v16[3] < v20)
      {
        sub_1D6D669B0(v20, isUniquelyReferenced_nonNull_native);
        v14 = sub_1D5B69D90(v12, v11);
        if ((v21 & 1) != (v22 & 1))
        {
LABEL_99:

          return sub_1D726493C();
        }

LABEL_14:
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v26 = v14;
      sub_1D6D7DFD0();
      v14 = v26;
      if (v21)
      {
LABEL_4:
        v7 = v14;

        v4 = v157;
        *(*(v157 + 56) + 8 * v7) = v9;

        goto LABEL_5;
      }

LABEL_15:
      v4 = v157;
      *(v157 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v23 = (v4[6] + 16 * v14);
      *v23 = v12;
      v23[1] = v11;
      *(v4[7] + 8 * v14) = v9;

      v24 = v4[2];
      v19 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v19)
      {
        goto LABEL_25;
      }

      v4[2] = v25;
LABEL_5:
      ++v6;
      v5 = v3;
      v8 = v1 == v3;
      v3 = v10;
      if (v8)
      {
        goto LABEL_27;
      }
    }

    if (v6 >= *(v150 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(v3 + 8 * v6 + 32);

    v1 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v5 = sub_1D7263BFC();
    v149 = v1;
  }

LABEL_27:
  v141 = (v149 + 1168);
  __dst = (v149 + 1024);
  v27 = v4;
  *(v149 + 1560) = v4;
  v28 = *(v149 + 1504);

  v29 = sub_1D605A8C0(MEMORY[0x1E69E7CC0]);
  v30 = *(v28 + 48);
  v31 = *(v30 + 64);
  v151 = v30 + 64;
  v154 = v30;
  v32 = -1;
  v33 = -1 << *(v30 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & v31;
  v35 = (63 - v33) >> 6;

  v36 = 0;
  while (1)
  {
    *(v149 + 1568) = v29;
    if (!v34)
    {
      break;
    }

    v37 = v36;
LABEL_36:
    v38 = __clz(__rbit64(v34)) | (v37 << 6);
    v39 = (*(v154 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = *(*(v154 + 56) + 8 * v38);
    swift_unknownObjectRetain_n();

    v28 = v29;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v157 = v28;
    v44 = sub_1D5B69D90(v41, v40);
    v46 = *(v28 + 16);
    v47 = (v45 & 1) == 0;
    v19 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v19)
    {
      goto LABEL_107;
    }

    v49 = v45;
    if (*(v28 + 24) >= v48)
    {
      if ((v43 & 1) == 0)
      {
        v28 = &v157;
        v54 = v44;
        sub_1D6D7DB18();
        v44 = v54;
      }
    }

    else
    {
      sub_1D6D66648(v48, v43);
      v28 = v157;
      v44 = sub_1D5B69D90(v41, v40);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_99;
      }
    }

    v34 &= v34 - 1;
    if (v49)
    {
      v28 = v44;

      v29 = v157;
      *(*(v157 + 56) + 8 * v28) = v42;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v36 = v37;
    }

    else
    {
      v29 = v157;
      *(v157 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v51 = (v29[6] + 16 * v44);
      *v51 = v41;
      v51[1] = v40;
      *(v29[7] + 8 * v44) = v42;
      swift_unknownObjectRelease();
      v52 = v29[2];
      v19 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v19)
      {
        goto LABEL_109;
      }

      v29[2] = v53;
      v36 = v37;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
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
      goto LABEL_110;
    }

    if (v37 >= v35)
    {
      break;
    }

    v34 = *(v151 + 8 * v37);
    ++v36;
    if (v34)
    {
      goto LABEL_36;
    }
  }

  v37 = (v27 + 8);
  v55 = -1;
  v56 = -1 << *(v27 + 32);
  if (-v56 < 64)
  {
    v55 = ~(-1 << -v56);
  }

  v57 = v55 & v27[8];
  v58 = (63 - v56) >> 6;

  v59 = 0;
  v60 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v143 = v60;
  *(v149 + 1576) = v60;
  v61 = v59;
  if (!v57)
  {
    goto LABEL_50;
  }

  do
  {
    v59 = v61;
LABEL_53:
    v62 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v63 = (v27[6] + ((v59 << 10) | (16 * v62)));
    v65 = *v63;
    v64 = v63[1];
    v66 = v29[2];

    if (!v66 || (v28 = v29, sub_1D5B69D90(v65, v64), (v67 & 1) == 0))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v60 = v143;
      }

      else
      {
        v60 = sub_1D5B858EC(0, *(v143 + 2) + 1, 1, v143);
      }

      v69 = *(v60 + 2);
      v68 = *(v60 + 3);
      v28 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        v60 = sub_1D5B858EC((v68 > 1), v69 + 1, 1, v60);
      }

      *(v60 + 2) = v28;
      v70 = &v60[16 * v69];
      *(v70 + 4) = v65;
      *(v70 + 5) = v64;
      goto LABEL_48;
    }

    v61 = v59;
  }

  while (v57);
  while (1)
  {
LABEL_50:
    v59 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_103;
    }

    if (v59 >= v58)
    {
      break;
    }

    v57 = *(v37 + 8 * v59);
    ++v61;
    if (v57)
    {
      goto LABEL_53;
    }
  }

  v71 = *(v149 + 1520);
  v72 = *(v149 + 1512);

  v73 = *(v72 + *(type metadata accessor for FormatServiceOptions(0) + 52));
  sub_1D5C384A0(0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1D7279970;
  v75 = v29[2];
  v76 = MEMORY[0x1E69E6530];
  v77 = MEMORY[0x1E69E65A8];
  *(v74 + 56) = MEMORY[0x1E69E6530];
  *(v74 + 64) = v77;
  *(v74 + 32) = v75;
  v78 = *(v143 + 2);
  *(v74 + 96) = v76;
  *(v74 + 104) = v77;
  *(v74 + 72) = v78;
  v80 = *v71;
  v79 = v71[1];
  *(v74 + 136) = MEMORY[0x1E69E6158];
  *(v74 + 144) = sub_1D5B7E2C0();
  *(v74 + 112) = v80;
  *(v74 + 120) = v79;

  v81 = sub_1D7262EDC();
  sub_1D725C30C("Format service will resolve %ld prefetched and %ld unresolved puzzles for %{public}@", 84, 2, &dword_1D5B42000, v73, v81, v74);

  if (*(v143 + 2))
  {
    v82 = *(v149 + 1552);
    v83 = *(v149 + 1544);
    v84 = *(v149 + 1536);
    v85 = *(v149 + 1528);
    v86 = v85[33];
    v87 = v85[34];
    __swift_project_boxed_opaque_existential_1(v85 + 30, v86);
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    (*(v83 + 104))(v82, *MEMORY[0x1E69E7F88], v84);
    v88 = sub_1D72630CC();
    *(v149 + 1584) = v88;
    (*(v83 + 8))(v82, v84);
    v155 = (*(v87 + 88) + **(v87 + 88));
    v89 = swift_task_alloc();
    *(v149 + 1592) = v89;
    *v89 = v149;
    v89[1] = sub_1D5E6BE84;

    return v155(v143, 1, v88, v86, v87);
  }

  v91 = v29[2];
  if (v91)
  {
    v146 = sub_1D5C38490(v29[2], 0);
    v92 = sub_1D5C38498(&v157, (v146 + 32), v91, v29);
    v93 = v157;

    result = sub_1D5B87E38(v93);
    if (v92 != v91)
    {
      __break(1u);
      return result;
    }

    v37 = v149;
    v28 = v146;
    if ((v146 & 0x8000000000000000) != 0)
    {
LABEL_110:
      v94 = sub_1D7263BFC();
      if (!v94)
      {
        goto LABEL_111;
      }

LABEL_74:
      v95 = 0;
      v145 = v28 & 0xC000000000000001;
      v96 = MEMORY[0x1E69E7CC8];
      v147 = v28;
      v144 = v94;
      while (2)
      {
        if (v145)
        {
          v97 = MEMORY[0x1DA6FB460](v95, v28);
          v98 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v95 >= *(v28 + 16))
          {
            goto LABEL_105;
          }

          v97 = *(v28 + 8 * v95 + 32);
          swift_unknownObjectRetain();
          v98 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_104;
          }
        }

        v148 = v98;
        swift_getObjectType();
        v99 = [v97 identifier];
        v152 = sub_1D726207C();
        v156 = v100;

        v101 = [v97 identifier];
        v102 = sub_1D726207C();
        v104 = v103;

        if (v27[2])
        {
          v105 = sub_1D5B69D90(v102, v104);
          v107 = v106;

          if (v107)
          {
            v108 = *(v27[7] + 8 * v105);
            swift_beginAccess();
            *v141 = v108[2];
            v109 = v108[3];
            v110 = v108[4];
            v111 = v108[6];
            *(v149 + 1216) = v108[5];
            *(v149 + 1232) = v111;
            *(v149 + 1184) = v109;
            *(v149 + 1200) = v110;
            v112 = v108[7];
            v113 = v108[8];
            v114 = v108[10];
            *(v149 + 1280) = v108[9];
            *(v149 + 1296) = v114;
            *(v149 + 1248) = v112;
            *(v149 + 1264) = v113;
            memmove(__dst, v108 + 2, 0x90uLL);
            nullsub_1();
            sub_1D5E9E6F8(v141, v37 + 1312);
            v115 = *(v149 + 1136);
            *(v37 + 832) = *(v149 + 1120);
            *(v37 + 848) = v115;
            *(v37 + 864) = *(v149 + 1152);
            v116 = *(v149 + 1072);
            *(v37 + 768) = *(v149 + 1056);
            *(v37 + 784) = v116;
            v117 = *(v149 + 1104);
            *(v37 + 800) = *(v149 + 1088);
            *(v37 + 816) = v117;
            v118 = *(v149 + 1040);
            *(v37 + 736) = *__dst;
            *(v37 + 752) = v118;
            goto LABEL_85;
          }
        }

        else
        {
        }

        sub_1D5E9E664((v37 + 736));
LABEL_85:
        v119 = *(v37 + 848);
        v163 = *(v37 + 832);
        v164 = v119;
        v165 = *(v37 + 864);
        v120 = *(v37 + 784);
        v159 = *(v37 + 768);
        v160 = v120;
        v121 = *(v37 + 816);
        v161 = *(v37 + 800);
        v162 = v121;
        v122 = *(v37 + 752);
        v157 = *(v37 + 736);
        v158 = v122;
        v123 = FCPuzzleProviding.overridden(by:)(&v157);
        v124 = v164;
        *(v37 + 976) = v163;
        *(v37 + 992) = v124;
        *(v37 + 1008) = v165;
        v125 = v160;
        *(v37 + 912) = v159;
        *(v37 + 928) = v125;
        v126 = v162;
        *(v37 + 944) = v161;
        *(v37 + 960) = v126;
        v127 = v158;
        *(v37 + 880) = v157;
        *(v37 + 896) = v127;
        sub_1D5E9E688(v37 + 880, &unk_1EDF123B0, &type metadata for FormatPuzzle.Overrides);
        v128 = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = v96;
        v28 = v96;
        v130 = sub_1D5B69D90(v152, v156);
        v131 = *(v96 + 2);
        v132 = (v129 & 1) == 0;
        v133 = v131 + v132;
        if (__OFADD__(v131, v132))
        {
          goto LABEL_106;
        }

        v134 = v129;
        if (*(v96 + 3) >= v133)
        {
          if (v128)
          {
            v37 = v149;
            if ((v129 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v28 = &v157;
            sub_1D6D7DB18();
            v37 = v149;
            if ((v134 & 1) == 0)
            {
              goto LABEL_92;
            }
          }
        }

        else
        {
          sub_1D6D66648(v133, v128);
          v28 = v157;
          v135 = sub_1D5B69D90(v152, v156);
          if ((v134 & 1) != (v136 & 1))
          {
            goto LABEL_99;
          }

          v130 = v135;
          v37 = v149;
          if ((v134 & 1) == 0)
          {
LABEL_92:
            v96 = v157;
            *(v157 + 8 * (v130 >> 6) + 64) |= 1 << v130;
            v137 = (*(v96 + 6) + 16 * v130);
            *v137 = v152;
            v137[1] = v156;
            *(*(v96 + 7) + 8 * v130) = v123;
            swift_unknownObjectRelease();
            v138 = *(v96 + 2);
            v19 = __OFADD__(v138, 1);
            v139 = v138 + 1;
            if (v19)
            {
              goto LABEL_108;
            }

            *(v96 + 2) = v139;
            goto LABEL_76;
          }
        }

        v96 = v157;
        *(*(v157 + 56) + 8 * v130) = v123;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_76:
        ++v95;
        v28 = v147;
        if (v148 == v144)
        {
          goto LABEL_112;
        }

        continue;
      }
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v37 = v149;
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }
  }

  if ((v28 & 0x4000000000000000) != 0)
  {
    goto LABEL_110;
  }

  v94 = *(v28 + 16);
  if (v94)
  {
    goto LABEL_74;
  }

LABEL_111:
  v96 = MEMORY[0x1E69E7CC8];
LABEL_112:

  v140 = *(v37 + 8);

  return v140(v96);
}