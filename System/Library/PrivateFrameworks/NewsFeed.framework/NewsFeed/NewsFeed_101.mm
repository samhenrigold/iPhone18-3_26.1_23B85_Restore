uint64_t sub_1D64664B4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6465626D45626577;
    v6 = 0x6575737369;
    if (a1 != 2)
    {
      v6 = 0x70756F7267;
    }

    if (a1)
    {
      v5 = 0x656E696C64616568;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656C7A7A7570;
    v2 = 0x7453656C7A7A7570;
    if (a1 != 7)
    {
      v2 = 0x657069636572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 6775156;
    if (a1 != 4)
    {
      v3 = 0x76457374726F7073;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6466610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64664B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D646668C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668218C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64666C4(uint64_t a1)
{
  v2 = sub_1D5CD8274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6466700(uint64_t a1)
{
  v2 = sub_1D5CD8274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBorderEdge.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v40;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v40 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t FormatBoxNodeResize.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667C804(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667C898(0);
  sub_1D5B58B84(&qword_1EDF0C580, sub_1D667C898, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBoxNodeResize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667CA18(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D667C898(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C580, sub_1D667C898, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBoxNodeResize, v17, v19, v14, &type metadata for FormatBoxNodeResize, v17, &type metadata for FormatVersions.DawnburstC, v15, v11, v18, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v48 = v13;
  v45[3] = 0;
  v45[4] = 0;
  v46 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v49 = 0;
  v25 = swift_allocObject();
  v45[1] = v45;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v49;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D67088B4;
  v44 = v27;
  v49 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v49;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D667CAAC(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EC886828, sub_1D667CAAC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v45[0] = v30;
  v31 = sub_1D72647CC();
  v49 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v49;
  v33 = &v11[*(v8 + 36)];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v45[-4] = sub_1D615B4A4;
  v45[-3] = &v45[-6];
  v43 = sub_1D67088B4;
  v44 = v28;
  v40 = v45[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v41, sub_1D615B4A4, &v45[-6], v34, v35);
  if (v40)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667CA18);
}

uint64_t sub_1D64674F8(uint64_t a1)
{
  v2 = sub_1D667C970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6467534(uint64_t a1)
{
  v2 = sub_1D667C970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6467570()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x68746150656C6966;
  v4 = 0x646C696863;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701734764;
  if (v1 != 1)
  {
    v5 = 0x6E6D756C6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6467618@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66823C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6467650(uint64_t a1)
{
  v2 = sub_1D665FB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646768C(uint64_t a1)
{
  v2 = sub_1D665FB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBundle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667CBA4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667CC38(0);
  sub_1D5B58B84(&qword_1EDF24CA8, sub_1D667CC38, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBundle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667CDB8(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D667CC38(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF24CA8, sub_1D667CC38, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBundle, v17, v19, v14, &type metadata for FormatBundle, v17, &type metadata for FormatVersions.StarSkyE, v15, v11, v18, &off_1F51F6CB8);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v48 = v13;
  v45[3] = 0;
  v45[4] = 0;
  v46 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v49 = 0;
  v25 = swift_allocObject();
  v45[1] = v45;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v49;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D67088B4;
  v44 = v27;
  v49 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v49;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D667CE4C(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02B88, sub_1D667CE4C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v45[0] = v30;
  v31 = sub_1D72647CC();
  v49 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v49;
  v33 = &v11[*(v8 + 36)];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v45[-4] = sub_1D615B4A4;
  v45[-3] = &v45[-6];
  v43 = sub_1D67088B4;
  v44 = v28;
  v40 = v45[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v41, sub_1D615B4A4, &v45[-6], v34, v35);
  if (v40)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667CDB8);
}

uint64_t sub_1D6467EB0(uint64_t a1)
{
  v2 = sub_1D667CD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6467EEC(uint64_t a1)
{
  v2 = sub_1D667CD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6467F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66825C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6467F60(uint64_t a1)
{
  v2 = sub_1D5CCFC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6467F9C(uint64_t a1)
{
  v2 = sub_1D5CCFC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6467FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461526874646977;
  v4 = 0xEA00000000006F69;
  if (v2 != 1)
  {
    v3 = 1702521203;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6152746867696568;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB000000006F6974;
  }

  v7 = 0x7461526874646977;
  v8 = 0xEA00000000006F69;
  if (*a2 != 1)
  {
    v7 = 1702521203;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6152746867696568;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB000000006F6974;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D64680D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6468180(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6468214(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64682B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663EC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64682E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006F6974;
  v4 = 0xEA00000000006F69;
  v5 = 0x7461526874646977;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6152746867696568;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D64683FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6682730(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6468440(uint64_t a1)
{
  v2 = sub_1D5C65C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646847C(uint64_t a1)
{
  v2 = sub_1D5C65C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatButtonNodeAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v119 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v118 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v117 = &v110 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v113 = &v110 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v112 = &v110 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v115 = &v110 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v111 = &v110 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v114 = &v110 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v116 = &v110 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v110 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v110 = &v110 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v110 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v110 - v44;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v2;
  v51 = a1[3];
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v51);
  v53 = sub_1D5C30408();
  v127 = v49;
  sub_1D5D2EE70(&type metadata for FormatButtonNodeAction, &type metadata for FormatCodingKeys, v54, v51, &type metadata for FormatButtonNodeAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v52, v49, v53, &off_1F51F6C78);
  v55 = v50 >> 60;
  if ((v50 >> 60) > 5)
  {
    if (v55 > 8)
    {
      if (v55 == 9)
      {
        v87 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v123[0] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v123[1] = v87;
        v123[2] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v124 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        sub_1D667D2A8(v123, v120);
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v88 = sub_1D725BD1C();
        v89 = __swift_project_value_buffer(v88, qword_1EDFFCC90);
        v34 = v117;
        (*(*(v88 - 8) + 16))(v117, v89, v88);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D639CFEC(10, v123, v34);
        sub_1D667D304(v123);
      }

      else if (v55 == 10)
      {
        v70 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v125[0] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v125[1] = v70;
        v125[2] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v126 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        sub_1D667D1F8(v125, v120);
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v71 = sub_1D725BD1C();
        v72 = __swift_project_value_buffer(v71, qword_1EDFFCC90);
        v34 = v118;
        (*(*(v71 - 8) + 16))(v118, v72, v71);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D639D194(11, v125, v34);
        sub_1D667D254(v125);
      }

      else
      {
        if (qword_1EDF31F10 != -1)
        {
          swift_once();
        }

        v107 = sub_1D725BD1C();
        v108 = __swift_project_value_buffer(v107, qword_1EDFFCDF8);
        v34 = v111;
        (*(*(v107 - 8) + 16))(v111, v108, v107);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D641DCF0(6, v34);
      }
    }

    else if (v55 == 6)
    {
      v81 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v121[1] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v121[2] = v81;
      v121[3] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v122 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v121[0] = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D614F7FC(v121, v120);
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCD98);
      v34 = v115;
      (*(*(v82 - 8) + 16))(v115, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639CB1C(7, v121, v34);
      sub_1D614F7CC(v121);
    }

    else if (v55 == 7)
    {
      v62 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v63 = sub_1D725BD1C();
      v64 = __swift_project_value_buffer(v63, qword_1EDFFCD50);
      v34 = v112;
      (*(*(v63 - 8) + 16))(v112, v64, v63);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639CCC4(8, v62, v34);
    }

    else
    {
      v96 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCE80);
      v34 = v113;
      (*(*(v97 - 8) + 16))(v113, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639CE58(9, v96, v34);
    }

    goto LABEL_49;
  }

  if (v55 > 2)
  {
    if (v55 == 3)
    {
      v84 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD30);
      (*(*(v85 - 8) + 16))(v34, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639C61C(3, v84, v34);
    }

    else
    {
      if (v55 == 4)
      {
        v65 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v66 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v67 = qword_1EDF31EB0;

        if (v67 != -1)
        {
          swift_once();
        }

        v68 = sub_1D725BD1C();
        v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
        v34 = v116;
        (*(*(v68 - 8) + 16))(v116, v69, v68);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = v127;
        sub_1D639C7B0(4, v65, v66, v34);
      }

      else
      {
        v99 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v100 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v102 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v101 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v103 = qword_1EDF31EA8;

        if (v103 != -1)
        {
          swift_once();
        }

        v104 = sub_1D725BD1C();
        v105 = __swift_project_value_buffer(v104, qword_1EDFFCD18);
        v34 = v114;
        (*(*(v104 - 8) + 16))(v114, v105, v104);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v106 = v102;
        v60 = v127;
        sub_1D639C984(5, v99, v100, v106, v101, v34);
      }
    }

LABEL_49:
    v61 = v34;
LABEL_50:
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
    v80 = v60;
    return sub_1D5D2CFE8(v80, sub_1D5D30DC4);
  }

  if (v55)
  {
    if (v55 == 1)
    {
      v56 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v57 = qword_1EDF31EB0;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
      (*(*(v58 - 8) + 16))(v41, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v127;
      sub_1D639C2B4(1, v56, v41);

      v61 = v41;
      goto LABEL_50;
    }

    v90 = swift_projectBox();
    v91 = v119;
    sub_1D6706BB4(v90, v119, type metadata accessor for FormatCommandOpenURL);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v92 = sub_1D725BD1C();
    v93 = __swift_project_value_buffer(v92, qword_1EDFFCD30);
    v94 = v110;
    (*(*(v92 - 8) + 16))(v110, v93, v92);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v95 = v127;
    sub_1D639C448(2, v91, v94);
    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v91, type metadata accessor for FormatCommandOpenURL);
    v80 = v95;
  }

  else
  {
    v73 = *(v50 + 16);
    v74 = *(v50 + 24);
    v75 = *(v50 + 32);
    v76 = qword_1EDF31F10;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = sub_1D725BD1C();
    v78 = __swift_project_value_buffer(v77, qword_1EDFFCDF8);
    (*(*(v77 - 8) + 16))(v45, v78, v77);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v79 = v127;
    sub_1D639C11C(0, v73, v74, v75, v45);

    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
    v80 = v79;
  }

  return sub_1D5D2CFE8(v80, sub_1D5D30DC4);
}

uint64_t sub_1D6469320(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6775626564;
    v7 = 0x7373696D736964;
    if (a1 != 10)
    {
      v7 = 0x746E697270;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6F72687473736170;
    v9 = 0x6573616863727570;
    if (a1 != 7)
    {
      v9 = 0x676E69646E6962;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1970169197;
    v2 = 0x6574756F72;
    v3 = 0x686374697773;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x646E616D6D6F63;
    if (a1 != 1)
    {
      v4 = 0x4C52556E65706FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D64694F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6469320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatButtonNodeBinding.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51145B8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D667D358();
    v27 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v28 > 1u)
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28 == 2)
      {
        sub_1D667D3AC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0x80;
      }

      else
      {
        sub_1D62E4F88();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = -64;
      }
    }

    else
    {
      v23 = v26;
      v27 = xmmword_1D7279980;
      if (v28)
      {
        sub_1D667D400();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 64;
      }

      else
      {
        sub_1D667D454();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatButtonNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatButtonNodeBinding, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatButtonNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  v28 = v23 >> 6;
  if (v23 >> 6 > 1)
  {
    if (v28 == 2)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v32 = sub_1D725BD1C();
      v33 = __swift_project_value_buffer(v32, qword_1EDFFCCE8);
      (*(*(v32 - 8) + 16))(v10, v33, v32);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6395C74(2, v10);
      v31 = v10;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCCA8);
      (*(*(v36 - 8) + 16))(v6, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6395E00(3, v6);
      v31 = v6;
    }
  }

  else if (v28)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD50);
    (*(*(v34 - 8) + 16))(v14, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6395AE8(1, v14);
    v31 = v14;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
    (*(*(v29 - 8) + 16))(v18, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6395950(0, v23 & 1, v18);
    v31 = v18;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D6469EA4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6469F60(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D646A008(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D646A0C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66641BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D646A0F0(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656E696C64616568;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  if (*v1 != 2)
  {
    v5 = 0x656C7A7A7570;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6575737369;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FormatButtonNodeStateMask.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667D4A8(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D5C958E8(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EDF250A8, sub_1D5C958E8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatButtonNodeStateMask, v18, v20, v15, &type metadata for FormatButtonNodeStateMask, v18, &type metadata for FormatVersions.JazzkonC, v16, v13, v19, &off_1F51F6C78);
  v21 = qword_1EDF31EB0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  (*(*(v22 - 8) + 16))(v8, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v24 = &v13[*(v10 + 44)];
  v26 = *v24;
  v25 = *(v24 + 1);
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v26;
  *(v27 + 48) = v25;
  sub_1D5E1BB5C(0);
  sub_1D5B58B84(&qword_1EDF03038, sub_1D5E1BB5C, MEMORY[0x1E69E6F60]);

  v28 = sub_1D72647CC();
  v44 = 0;
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = v28;
  *(v29 + 40) = v44;
  v30 = &v13[*(v10 + 36)];
  v31 = *(v30 + 3);
  v32 = *(v30 + 4);
  v33 = __swift_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v43 - 4) = sub_1D5B4AA6C;
  *(&v43 - 3) = 0;
  v41 = sub_1D667D53C;
  v42 = v27;
  v38 = sub_1D5D2F7A4(v8, sub_1D615B49C, v37, sub_1D615B4A4, (&v43 - 6), v31, v32);
  if (v3)
  {
    sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v39 = v38;

    if (v39)
    {
      sub_1D5E07168(v14, v13, 0, 0, 0);
    }

    sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v13, sub_1D667D4A8);
}

void sub_1D646A688(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D646A770(uint64_t a1)
{
  v2 = sub_1D5C9596C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646A7AC(uint64_t a1)
{
  v2 = sub_1D5C9596C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCellSelection.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v36 = *(v1 + 16);
  v39 = v17;
  v19 = *(v1 + 32);
  v18 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = *(v1 + 56);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  v40 = v16;
  sub_1D5D2EE70(&type metadata for FormatCellSelection, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatCellSelection, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v23, v16, v24, &off_1F51F6C78);
  if (v21)
  {
    if (v21 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
      v28 = v37;
      (*(*(v26 - 8) + 16))(v37, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v40;
      sub_1D6439078(1, v39, v28);
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
      v28 = v38;
      (*(*(v33 - 8) + 16))(v38, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v40;
      sub_1D6421988(2, v28);
    }

    v32 = v28;
  }

  else
  {
    v41[0] = v39;
    v41[1] = v36;
    v42 = v19;
    v43 = v18;
    v44 = v20;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v12, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v29 = v40;
    sub_1D6438ED0(0, v41, v12);
    v32 = v12;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v29, sub_1D5D30DC4);
}

uint64_t FormatCellSelection.Background.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D667D60C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667D6A0(0);
  sub_1D5B58B84(&qword_1EC886860, sub_1D667D6A0, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v34;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6619940();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v31 = 0uLL;
  LOBYTE(v32) = 0;
  sub_1D726427C();
  v18 = v29;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  sub_1D5CD49DC();
  sub_1D726427C();
  v27 = v32;
  v28 = v31;
  v24 = v33;
  v31 = xmmword_1D7297410;
  LOBYTE(v32) = 0;
  sub_1D5C35218();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v29;
  *v13 = v18;
  v26 = v28;
  *(v13 + 24) = v27;
  *(v13 + 8) = v26;
  *(v13 + 40) = v24;
  *(v13 + 48) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCellSelection.Background.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v116 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v115 = &v104 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v104 - v12;
  sub_1D667D820(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v111 = *(v1 + 24);
  v110 = *(v1 + 8);
  LODWORD(v114) = *(v1 + 40);
  v112 = *(v1 + 48);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D667D6A0(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC886860, sub_1D667D6A0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCellSelection.Background, v23, v25, v20, &type metadata for FormatCellSelection.Background, v23, &type metadata for FormatVersions.JazzkonC, v21, v18, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v119 = *(v28 + 16);
  v120 = v27;
  v118 = v28 + 16;
  v119(v13);
  v117 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v123 = 0uLL;
  LOBYTE(v124) = 0;
  v29 = &v18[*(v15 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v125) = 0;
  v32 = swift_allocObject();
  v34 = v32;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v125;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  v122 = v18;
  v113 = v15;
  *&v121 = v2;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v109 = v26;
    v106 = &v104;
    *&v125 = v19;
    MEMORY[0x1EEE9AC00](v32, v33);
    v105 = &v104 - 6;
    *(&v104 - 4) = sub_1D5B4AA6C;
    *(&v104 - 3) = 0;
    v102 = sub_1D67089C0;
    v103 = v34;
    v127 = 0;
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = v127;
    *(v47 + 40) = v30;
    *(v47 + 48) = v31;
    swift_retain_n();
    sub_1D5CFCFAC(v19);
    sub_1D667D8B4(0);
    v49 = v48;
    v50 = sub_1D5B58B84(&qword_1EC886878, sub_1D667D8B4, MEMORY[0x1E69E6F60]);
    v107 = v30;
    v104 = v49;
    v51 = sub_1D72647CC();
    v127 = 0;
    v52 = swift_allocObject();
    v108 = v31;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 16) = v51;
    *(v52 + 40) = v127;
    v53 = &v18[*(v15 + 36)];
    v54 = *(v53 + 3);
    v55 = *(v53 + 4);
    v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
    MEMORY[0x1EEE9AC00](v56, v57);
    MEMORY[0x1EEE9AC00](v58, v59);
    v60 = v105;
    *(&v104 - 4) = sub_1D615B4A4;
    *(&v104 - 3) = v60;
    v102 = sub_1D67089C0;
    v103 = v47;
    v61 = v121;
    v63 = sub_1D5D2F7A4(v13, sub_1D615B49C, v62, sub_1D615B4A4, (&v104 - 6), v54, v55);
    if (v61)
    {

      sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
      goto LABEL_14;
    }

    v96 = v63;
    *&v121 = v50;
    v97 = v108;

    if (v96)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v36 = v115;
      v26 = v109;
      v31 = v97;
      *&v121 = 0;

      v30 = v107;
    }

    else
    {
      *&v121 = 0;

      v36 = v115;
      v31 = v97;
      v30 = v107;
      v26 = v109;
    }

    v35 = v116;
  }

  else
  {

    v35 = v116;
    v36 = v115;
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  (v119)(v36, v120, v26);
  swift_storeEnumTagMultiPayload();
  v115 = xmmword_1D728CF30;
  v125 = xmmword_1D728CF30;
  v126 = 0;
  LOBYTE(v123) = 0;
  v37 = swift_allocObject();
  v39 = v37;
  *(v37 + 16) = v115;
  *(v37 + 32) = v123;
  *(v37 + 40) = v30;
  *(v37 + 48) = v31;
  if (v114)
  {

    v40 = v121;
    goto LABEL_7;
  }

  v109 = v26;
  v114 = &v104;
  v123 = v110;
  v124 = v111;
  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v104 - 4) = sub_1D5B4AA6C;
  *(&v104 - 3) = 0;
  v102 = sub_1D67089C0;
  v103 = v39;
  v127 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = v115;
  *(v64 + 32) = v127;
  *(v64 + 40) = v30;
  *(v64 + 48) = v31;
  sub_1D667D8B4(0);
  v65 = sub_1D5B58B84(&qword_1EC886878, sub_1D667D8B4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v107 = v30;
  v66 = v122;
  v67 = sub_1D72647CC();
  v108 = v31;
  v68 = v67;
  v127 = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v115;
  *(v69 + 40) = v127;
  v70 = &v66[*(v113 + 36)];
  v71 = *(v70 + 3);
  v72 = *(v70 + 4);
  v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v104 - 4) = sub_1D615B4A4;
  *(&v104 - 3) = (&v104 - 6);
  v102 = sub_1D67089C0;
  v103 = v64;
  v77 = v121;
  v79 = sub_1D5D2F7A4(v36, sub_1D615B49C, v78, sub_1D615B4A4, (&v104 - 6), v71, v72);
  if (!v77)
  {
    v98 = v79;
    *&v121 = v65;
    v99 = v107;
    v31 = v108;

    if (v98)
    {
      sub_1D667D9C4();
      sub_1D72647EC();
      v40 = 0;
      v26 = v109;
      v30 = v99;
    }

    else
    {
      v40 = 0;
      v30 = v99;
      v26 = v109;
    }

    v35 = v116;
LABEL_7:
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    (v119)(v35, v120, v26);
    swift_storeEnumTagMultiPayload();
    v121 = xmmword_1D7297410;
    v123 = xmmword_1D7297410;
    LOBYTE(v124) = 0;
    LOBYTE(v125) = 0;
    v41 = swift_allocObject();
    v43 = v41;
    *(v41 + 16) = v121;
    *(v41 + 32) = v125;
    *(v41 + 40) = v30;
    *(v41 + 48) = v31;
    v44 = v30;
    v45 = v112;
    if ((~v112 & 0xF000000000000007) == 0)
    {

LABEL_9:

      v46 = v122;
LABEL_27:
      sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
      v80 = v46;
      return sub_1D5D2CFE8(v80, sub_1D667D820);
    }

    v120 = &v104;
    *&v125 = v112;
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v104 - 4) = sub_1D5B4AA6C;
    *(&v104 - 3) = 0;
    v102 = sub_1D67089C0;
    v103 = v43;
    v127 = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v121;
    *(v81 + 32) = v127;
    *(v81 + 40) = v44;
    *(v81 + 48) = v31;
    swift_retain_n();
    sub_1D5D04BD4(v45);
    sub_1D667D8B4(0);
    v83 = v82;
    sub_1D5B58B84(&qword_1EC886878, sub_1D667D8B4, MEMORY[0x1E69E6F60]);
    v84 = v122;
    v119 = v83;
    v85 = sub_1D72647CC();
    v127 = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v121;
    *(v86 + 40) = v127;
    v87 = &v84[*(v113 + 36)];
    v88 = *(v87 + 3);
    v89 = *(v87 + 4);
    v90 = __swift_project_boxed_opaque_existential_1(v87, v88);
    MEMORY[0x1EEE9AC00](v90, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    *(&v104 - 4) = sub_1D615B4A4;
    *(&v104 - 3) = (&v104 - 6);
    v35 = v116;
    v102 = sub_1D667D948;
    v103 = v81;
    v95 = sub_1D5D2F7A4(v116, sub_1D615B49C, v94, sub_1D615B4A4, (&v104 - 6), v88, v89);
    if (v40)
    {

      v46 = v122;
    }

    else
    {
      v100 = v95;

      if ((v100 & 1) == 0)
      {

        goto LABEL_9;
      }

      sub_1D5C3526C();
      v46 = v122;
      sub_1D72647EC();
    }

    goto LABEL_27;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

LABEL_14:
  v80 = v122;
  return sub_1D5D2CFE8(v80, sub_1D667D820);
}

uint64_t sub_1D646BDA0()
{
  v1 = 0x726F6C6F63;
  v2 = 0x615272656E726F63;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x65736E4965676465;
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

uint64_t sub_1D646BE1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6682DC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D646BE54(uint64_t a1)
{
  v2 = sub_1D667D778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646BE90(uint64_t a1)
{
  v2 = sub_1D667D778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCellSelection.DimContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D667DA18(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667DAAC(0);
  sub_1D5B58B84(&qword_1EC8868A8, sub_1D667DAAC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x6168706C61, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C35218();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCellSelection.DimContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667DC2C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D667DAAC(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC8868A8, sub_1D667DAAC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCellSelection.DimContent, v16, v18, v13, &type metadata for FormatCellSelection.DimContent, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v21 = &v11[*(v8 + 44)];
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v55) = 0;
  v24 = swift_allocObject();
  v26 = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v55;
  *(v24 + 40) = v22;
  *(v24 + 48) = v23;
  if ((~v12 & 0xF000000000000007) != 0)
  {
    v49 = &v47;
    v55 = v12;
    MEMORY[0x1EEE9AC00](v24, v25);
    v48 = &v47 - 6;
    *(&v47 - 4) = sub_1D5B4AA6C;
    *(&v47 - 3) = 0;
    v45 = sub_1D67089C4;
    v46 = v26;
    v51 = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v51;
    *(v27 + 40) = v22;
    *(v27 + 48) = v23;
    swift_retain_n();
    sub_1D5D04BD4(v12);
    sub_1D667DCC0(0);
    v29 = v28;
    sub_1D5B58B84(&qword_1EC8868C0, sub_1D667DCC0, MEMORY[0x1E69E6F60]);
    v47 = v29;
    v30 = sub_1D72647CC();
    v51 = 0;
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 16) = v30;
    *(v31 + 40) = v51;
    v32 = &v11[*(v8 + 36)];
    v33 = *(v32 + 3);
    v34 = *(v32 + 4);
    v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
    MEMORY[0x1EEE9AC00](v35, v36);
    MEMORY[0x1EEE9AC00](v37, v38);
    v39 = v48;
    *(&v47 - 4) = sub_1D615B4A4;
    *(&v47 - 3) = v39;
    v45 = sub_1D667DD54;
    v46 = v27;
    v40 = v50;
    v42 = sub_1D5D2F7A4(v6, sub_1D615B49C, v41, sub_1D615B4A4, (&v47 - 6), v33, v34);
    if (v40)
    {
    }

    else
    {
      v43 = v42;

      if (v43)
      {
        sub_1D5C3526C();
        sub_1D72647EC();
      }
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D667DC2C);
}

uint64_t sub_1D646C6E4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6168706C61;
  }
}

void sub_1D646C714(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D646C7FC(uint64_t a1)
{
  v2 = sub_1D667DB84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646C838(uint64_t a1)
{
  v2 = sub_1D667DB84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorAndExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D667E4D8(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667E304(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C4B0, sub_1D667E304, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorAndExpression, v19, v21, v16, &type metadata for FormatColorAndExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v85 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v85;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708868;
  v69 = v31;
  v85 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D667E56C(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF030D8, sub_1D667E56C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v85 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v85;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v45 = v83;
  v46 = v84;
  v68 = sub_1D6708868;
  v69 = v32;
  sub_1D5D2BC70(v84, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v38;
    v49 = v78;
    v48 = v79;
    v83 = v28;

    v50 = sub_1D667E664();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708868;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708868;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667E4D8);
}

uint64_t sub_1D646D1A8(uint64_t a1)
{
  v2 = sub_1D667E3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646D1E4(uint64_t a1)
{
  v2 = sub_1D667E3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorAssignComponentProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v70 - v8;
  sub_1D667E920(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D667E74C(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24D88, sub_1D667E74C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorAssignComponentProcessor, v20, v22, v17, &type metadata for FormatColorAssignComponentProcessor, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v74 = v24;
  v75 = v23;
  v70[2] = (v25 + 16);
  v71 = v26;
  (v26)(v9);
  v70[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v81) = v15;
  v83 = 0uLL;
  v84 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v82 = 0;
  v30 = swift_allocObject();
  v78 = v70;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v82;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v80 = v9;
  v70[-4] = sub_1D5B4AA6C;
  v70[-3] = 0;
  v68 = sub_1D67089C8;
  v69 = v32;
  v82 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v82;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D667E9B4(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02C88, sub_1D667E9B4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v76 = v36;
  v77 = v35;
  v37 = sub_1D72647CC();
  v82 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v82;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v70[-4] = sub_1D615B4A4;
  v70[-3] = &v70[-6];
  v46 = v79;
  v47 = v80;
  v68 = sub_1D667EA48;
  v69 = v33;
  sub_1D5D2BC70(v80, sub_1D615B49C, v48, sub_1D615B4A4, &v70[-6], v40, v41);
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70[0] = v39;
    v50 = v74;
    v49 = v75;
    v79 = v29;

    sub_1D667EAC4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v52 = v73;
    v71(v73, v50, v49);
    swift_storeEnumTagMultiPayload();
    v81 = v16;
    v80 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    v82 = 0;
    v53 = swift_allocObject();
    v78 = v70;
    *(v53 + 16) = v80;
    *(v53 + 32) = v82;
    v54 = v72;
    v55 = v79;
    *(v53 + 40) = v72;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    v70[-4] = sub_1D5B4AA6C;
    v70[-3] = 0;
    v68 = sub_1D67089C8;
    v69 = v57;
    v82 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v80;
    *(v58 + 32) = v82;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v82 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v80;
    *(v60 + 40) = v82;
    v61 = v70[0][3];
    v62 = v70[0][4];
    v63 = __swift_project_boxed_opaque_existential_1(v70[0], v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    v70[-4] = sub_1D615B4A4;
    v70[-3] = &v70[-6];
    v68 = sub_1D67089C8;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, &v70[-6], v61, v62);

    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667E920);
}

uint64_t sub_1D646DAF4(uint64_t a1)
{
  v2 = sub_1D667E824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646DB30(uint64_t a1)
{
  v2 = sub_1D667E824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v65 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v63 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v62 - v29;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v1;
  v67 = *(v1 + 8);
  v68 = v35;
  v62 = *(v1 + 16);
  v36 = *(v1 + 24);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = sub_1D5C30408();
  v69 = v34;
  sub_1D5D2EE70(&type metadata for FormatColorBinding, &type metadata for FormatCodingKeys, v40, v37, &type metadata for FormatColorBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v38, v34, v39, &off_1F51F6C78);
  if (v36 > 3)
  {
    if (v36 > 5)
    {
      v45 = v69;
      if (v36 == 6)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCCA8);
        v18 = v64;
        (*(*(v51 - 8) + 16))(v64, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AE9BC(6, v68, v67, v18);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCE38);
        v18 = v66;
        (*(*(v60 - 8) + 16))(v66, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AEB54(7, v68, v18);
      }
    }

    else
    {
      v45 = v69;
      if (v36 == 4)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCD50);
        v18 = v63;
        (*(*(v46 - 8) + 16))(v63, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AE684(4, v68, v67, v18);
      }

      else
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCD68);
        v18 = v65;
        (*(*(v56 - 8) + 16))(v65, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AE824(5, v68, v67, v18);
      }
    }

    goto LABEL_32;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD98);
      (*(*(v48 - 8) + 16))(v22, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v69;
      sub_1D63AE358(2, v68, v22);
      v50 = v22;
      goto LABEL_33;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
    (*(*(v58 - 8) + 16))(v18, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v45 = v69;
    sub_1D63AE4EC(3, v68, v67, v62, v18);
LABEL_32:
    v50 = v18;
LABEL_33:
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    v55 = v45;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  v41 = v69;
  if (v36)
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCCE8);
    (*(*(v53 - 8) + 16))(v26, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AE1C4(1, v68, v26);
    sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
    v55 = v41;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v42 = sub_1D725BD1C();
  v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
  (*(*(v42 - 8) + 16))(v30, v43, v42);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63AE030(0, v68, v30);
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v41, sub_1D5D30DC4);
}

void sub_1D646E450(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xEA00000000006570;
  v6 = 0x7954656C7A7A7570;
  if (v2 != 6)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  if (v2 != 4)
  {
    v8 = 0x76457374726F7073;
    v7 = 0xEB00000000746E65;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6575737369;
  if (v2 != 2)
  {
    v10 = 0x6E6F6974706FLL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t FormatColorBlendProcessor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D667EC14(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667ECA8(0);
  sub_1D5B58B84(&qword_1EDF25098, sub_1D667ECA8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x6168706C61, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v17 = v25;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D5B57870();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v25;
  v24 = v26;
  *v13 = v17;
  *(v13 + 8) = v23;
  *(v13 + 16) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorBlendProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v68 - v8;
  sub_1D667EE28(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  LODWORD(v73) = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D667ECA8(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25098, sub_1D667ECA8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorBlendProcessor, v20, v22, v17, &type metadata for FormatColorBlendProcessor, v20, &type metadata for FormatVersions.StarSkyC, v18, v14, v21, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD00);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v70 = v24;
  v71 = v23;
  v68[1] = v25 + 16;
  v69 = v26;
  (v26)(v9);
  v68[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v81 = 0uLL;
  v82 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v80 = 0;
  v30 = swift_allocObject();
  v77 = v68;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v80;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v79 = v9;
  v68[-4] = sub_1D5B4AA6C;
  v68[-3] = 0;
  v66 = sub_1D67089CC;
  v67 = v32;
  v80 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v80;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D667EEBC(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF03028, sub_1D667EEBC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v75 = v36;
  v76 = v35;
  v37 = sub_1D72647CC();
  v80 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v80;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v68[-4] = sub_1D615B4A4;
  v68[-3] = &v68[-6];
  v46 = v78;
  v47 = v79;
  v66 = sub_1D67089CC;
  v67 = v33;
  sub_1D5D2BC70(v79, sub_1D615B49C, v48, sub_1D615B4A4, &v68[-6], v40, v41);
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v49 = v14;
  }

  else
  {
    v78 = v39;

    sub_1D5B55CBC();
    v49 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v50 = v74;
    v69(v74, v70, v71);
    swift_storeEnumTagMultiPayload();
    v79 = xmmword_1D728CF30;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    LOBYTE(v83) = 0;
    v51 = swift_allocObject();
    v53 = v51;
    *(v51 + 16) = v79;
    *(v51 + 32) = v83;
    v54 = v72;
    *(v51 + 40) = v72;
    *(v51 + 48) = v29;
    if (v73)
    {
    }

    else
    {
      v73 = v68;
      v83 = v16;
      MEMORY[0x1EEE9AC00](v51, v52);
      v68[-4] = sub_1D5B4AA6C;
      v68[-3] = 0;
      v66 = sub_1D67089CC;
      v67 = v53;
      v80 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v79;
      *(v56 + 32) = v80;
      *(v56 + 40) = v54;
      *(v56 + 48) = v29;
      swift_retain_n();
      v77 = v49;
      v57 = sub_1D72647CC();
      v80 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v79;
      *(v58 + 40) = v80;
      v59 = *(v78 + 3);
      v60 = *(v78 + 4);
      v61 = __swift_project_boxed_opaque_existential_1(v78, v59);
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      v68[-4] = sub_1D615B4A4;
      v68[-3] = &v68[-6];
      v50 = v74;
      v66 = sub_1D667EF50;
      v67 = v56;
      LOBYTE(v59) = sub_1D5D2F7A4(v74, sub_1D615B49C, v65, sub_1D615B4A4, &v68[-6], v59, v60);

      if (v59)
      {
        sub_1D5B578C4();
        v49 = v77;
        sub_1D72647EC();
      }

      else
      {
        v49 = v77;
      }
    }

    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v49, sub_1D667EE28);
}

uint64_t sub_1D646F144()
{
  v1 = 0x6168706C61;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D646F190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D644039C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D646F1C8(uint64_t a1)
{
  v2 = sub_1D667ED80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646F204(uint64_t a1)
{
  v2 = sub_1D667ED80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorColorExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D667EFCC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667F060(0);
  sub_1D5B58B84(&qword_1EDF0C370, sub_1D667F060, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x6973736572707865, 0xEA00000000006E6FLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D667E484();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorColorExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D667F1E0(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667F060(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C370, sub_1D667F060, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorColorExpression, v19, v21, v16, &type metadata for FormatColorColorExpression, v19, &type metadata for FormatVersions.StarSky, v17, v14, v20, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v77 = v23;
  v78 = v22;
  v72 = v24 + 16;
  v73 = v25;
  (v25)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v15;
  v85 = 0uLL;
  v86 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v81 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v83 = v9;
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D67089D0;
  v68 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D667F274(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF029C8, sub_1D667F274, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v84 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v84;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v45 = v82;
  v46 = v83;
  v67 = sub_1D667F308;
  v68 = v32;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v38;
    v49 = v77;
    v48 = v78;
    v82 = v28;

    sub_1D5B55CBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v51 = v76;
    v73(v76, v49, v48);
    swift_storeEnumTagMultiPayload();
    v87 = v75;
    v83 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v84 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v84;
    v53 = v74;
    v54 = v82;
    *(v52 + 40) = v74;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D67089D0;
    v68 = v56;
    v84 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v83;
    *(v57 + 32) = v84;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v84 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v83;
    *(v59 + 40) = v84;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D67089D0;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D667E664();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667F1E0);
}

uint64_t sub_1D646FDF0()
{
  v1 = 0x6973736572707865;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D646FE44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6682F34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D646FE7C(uint64_t a1)
{
  v2 = sub_1D667F138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646FEB8(uint64_t a1)
{
  v2 = sub_1D667F138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v41 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  v48 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v51;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v35 = v49;
  v36 = v49[3];
  v40 = v49[4];
  v51 = __swift_project_boxed_opaque_existential_1(v49, v36);
  if (v48 <= 2)
  {
    if (!v48)
    {
      v38 = v41;
      v32(v41, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v36, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }

    if (v48 == 1)
    {
      v37 = v42;
      v32(v42, v31, v30);
    }

    else
    {
      v37 = v43;
      v32(v43, v31, v30);
    }
  }

  else if (v48 > 4)
  {
    if (v48 == 5)
    {
      v37 = v46;
      v32(v46, v31, v30);
    }

    else
    {
      v37 = v47;
      v32(v47, v31, v30);
    }
  }

  else if (v48 == 3)
  {
    v37 = v44;
    v32(v44, v31, v30);
  }

  else
  {
    v37 = v45;
    v32(v45, v31, v30);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v36, v40);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t FormatColorComponentExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667F384(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667F418(0);
  sub_1D5B58B84(&qword_1EDF0C430, sub_1D667F418, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6619AD8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667E8CC();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D5B57870();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v25 = v30;
  *v13 = v18;
  *(v13 + 1) = v19;
  *(v13 + 8) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorComponentExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v94 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v102 = &v92 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v92 - v11);
  sub_1D667F598(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v95 = v1[1];
  v19 = *(v1 + 1);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D667F418(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF0C430, sub_1D667F418, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorComponentExpression, v23, v25, v20, &type metadata for FormatColorComponentExpression, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v99 = v27;
  v100 = v26;
  v97 = v28 + 16;
  v98 = v29;
  (v29)(v12);
  v96 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v109) = v18;
  v111 = 0uLL;
  v112 = 0;
  v30 = &v17[*(v14 + 44)];
  v105 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v110 = 0;
  v33 = swift_allocObject();
  v107 = &v92;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v110;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v92 - 4) = sub_1D5B4AA6C;
  *(&v92 - 3) = 0;
  v90 = sub_1D67089D4;
  v91 = v35;
  v110 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v110;
  v101 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D667F62C(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF02DD8, sub_1D667F62C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v103 = v39;
  v104 = v38;
  v40 = sub_1D72647CC();
  v110 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v110;
  v42 = *(v14 + 36);
  v43 = v105;
  v44 = &v17[v42];
  v106 = v17;
  v45 = *&v17[v42 + 24];
  v46 = *&v17[v42 + 32];
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v92 - 4) = sub_1D615B4A4;
  *(&v92 - 3) = (&v92 - 6);
  v90 = sub_1D667F6C0;
  v91 = v36;
  v51 = v108;
  sub_1D5D2BC70(v43, sub_1D615B49C, v52, sub_1D615B4A4, (&v92 - 6), v45, v46);
  if (v51)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v53 = v106;
  }

  else
  {
    v92 = v44;
    v93 = v32;

    sub_1D667EAC4();
    v53 = v106;
    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v55 = v102;
    v98(v102, v99, v100);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v109) = v95;
    v108 = xmmword_1D728CF30;
    v111 = xmmword_1D728CF30;
    v112 = 0;
    v110 = 0;
    v56 = swift_allocObject();
    v105 = &v92;
    *(v56 + 16) = v108;
    *(v56 + 32) = v110;
    v57 = v101;
    v58 = v93;
    *(v56 + 40) = v101;
    *(v56 + 48) = v58;
    MEMORY[0x1EEE9AC00](v56, v59);
    v107 = 0;
    *(&v92 - 4) = sub_1D5B4AA6C;
    *(&v92 - 3) = 0;
    v90 = sub_1D67089D4;
    v91 = v60;
    v110 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v108;
    *(v61 + 32) = v110;
    *(v61 + 40) = v57;
    *(v61 + 48) = v58;
    swift_retain_n();
    v62 = sub_1D72647CC();
    v110 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v108;
    *(v63 + 40) = v110;
    v64 = v92;
    v65 = *(v92 + 3);
    v66 = *(v92 + 4);
    v67 = __swift_project_boxed_opaque_existential_1(v92, v65);
    MEMORY[0x1EEE9AC00](v67, v68);
    MEMORY[0x1EEE9AC00](v69, v70);
    *(&v92 - 4) = sub_1D615B4A4;
    *(&v92 - 3) = (&v92 - 6);
    v90 = sub_1D67089D4;
    v91 = v61;
    v71 = v107;
    sub_1D5D2BC70(v55, sub_1D615B49C, v72, sub_1D615B4A4, (&v92 - 6), v65, v66);
    if (v71 || (, , sub_1D60566E4(), sub_1D72647EC(), sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement), , v55 = v94, v98(v94, v99, v100), swift_storeEnumTagMultiPayload(), v109 = v19, v108 = xmmword_1D7297410, v111 = xmmword_1D7297410, v112 = 0, v110 = 0, v73 = swift_allocObject(), v105 = &v92, *(v73 + 16) = v108, *(v73 + 32) = v110, v74 = v64, v75 = v101, v76 = v93, *(v73 + 40) = v101, *(v73 + 48) = v76, MEMORY[0x1EEE9AC00](v73, v77), v107 = 0, *(&v92 - 4) = sub_1D5B4AA6C, *(&v92 - 3) = 0, v90 = sub_1D67089D4, v91 = v78, v110 = 0, v79 = swift_allocObject(), *(v79 + 16) = v108, *(v79 + 32) = v110, *(v79 + 40) = v75, *(v79 + 48) = v76, swift_retain_n(), v80 = sub_1D72647CC(), v110 = 0, v81 = swift_allocObject(), *(v81 + 16) = v80, *(v81 + 24) = v108, *(v81 + 40) = v110, v82 = *(v74 + 3), v83 = *(v74 + 4), v84 = __swift_project_boxed_opaque_existential_1(v74, v82), MEMORY[0x1EEE9AC00](v84, v85), MEMORY[0x1EEE9AC00](v86, v87), *(&v92 - 4) = sub_1D615B4A4, *(&v92 - 3) = (&v92 - 6), v90 = sub_1D67089D4, v91 = v79, v88 = v107, sub_1D5D2BC70(v55, sub_1D615B49C, v89, sub_1D615B4A4, (&v92 - 6), v82, v83), v88))
    {
      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5B578C4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v53, sub_1D667F598);
}

uint64_t sub_1D6471540()
{
  v1 = 0x6E656E6F706D6F63;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x726F74617265706FLL;
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

uint64_t sub_1D64715B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6683050(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64715EC(uint64_t a1)
{
  v2 = sub_1D667F4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6471628(uint64_t a1)
{
  v2 = sub_1D667F4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v36 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v36 = v7;
    v11 = v37;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51146F8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v36 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D667F73C();
    v39 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v38 <= 1u)
    {
      v23 = v11;
      if (v38)
      {
        v38 = xmmword_1D7279980;
        sub_1D667F8C8();
        sub_1D726431C();
        (*(v36 + 8))(v10, v6);
        v34 = v39;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v33 = v35 | 0x2000000000000000;
      }

      else
      {
        v38 = xmmword_1D7279980;
        sub_1D667F91C();
        sub_1D726431C();
        (*(v36 + 8))(v10, v6);
        v28 = v39;
        v33 = swift_allocObject();
        *(v33 + 16) = v28;
      }
    }

    else
    {
      v23 = v11;
      if (v38 == 2)
      {
        v39 = xmmword_1D7279980;
        sub_1D667F838();
        sub_1D726431C();
        (*(v36 + 8))(v10, v6);
        v29 = v38;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v33 = v30 | 0x4000000000000000;
      }

      else
      {
        v24 = v36;
        if (v38 == 3)
        {
          v38 = xmmword_1D7279980;
          sub_1D667F7E4();
          sub_1D726431C();
          (*(v24 + 8))(v10, v6);
          v25 = v39;
          v26 = *(&v39 + 1);
          v27 = swift_allocObject();
          *(v27 + 16) = v25;
          *(v27 + 24) = v26;
          v33 = v27 | 0x6000000000000000;
        }

        else
        {
          v38 = xmmword_1D7279980;
          sub_1D667F790();
          sub_1D726431C();
          (*(v24 + 8))(v10, v6);
          v31 = v39;
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          v33 = v32 | 0x8000000000000000;
        }
      }
    }

    *v23 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v64 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v67 = v25;
  sub_1D5D2EE70(&type metadata for FormatColorExpression, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatColorExpression, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  v31 = v26 >> 61;
  if ((v26 >> 61) <= 1)
  {
    if (v31)
    {
      v58 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v59 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v60 = qword_1EDF31EB0;

      if (v60 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCD30);
      (*(*(v61 - 8) + 16))(v17, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v67;
      sub_1D63A0EA0(1, v58, v59, v17);

      v47 = v17;
    }

    else
    {
      v42 = *(v26 + 16);
      v43 = *(v26 + 24);
      v44 = qword_1EDF31EB0;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
      (*(*(v45 - 8) + 16))(v21, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v67;
      sub_1D63A0D0C(0, v42, v43, v21);

      v47 = v21;
    }
  }

  else if (v31 == 2)
  {
    v48 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v49 = qword_1EDF31EB0;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_1D725BD1C();
    v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
    (*(*(v50 - 8) + 16))(v13, v51, v50);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = v67;
    sub_1D63A1034(2, v48, v13);

    v47 = v13;
  }

  else
  {
    if (v31 == 3)
    {
      v32 = v26 & 0x1FFFFFFFFFFFFFFFLL;
      v33 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v34 = *(v32 + 17);
      v35 = *(v32 + 24);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
      (*(*(v36 - 8) + 16))(v9, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38 = v33 | (v34 << 8);
      v40 = v66;
      v39 = v67;
      sub_1D63A11C8(3, v38, v9, v35);
      if (!v40)
      {
        v41 = v9;
LABEL_24:
        v47 = v41;
        goto LABEL_25;
      }
    }

    else
    {
      v52 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = qword_1EDF31ED0;

      if (v54 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD50);
      v41 = v65;
      (*(*(v55 - 8) + 16))(v65, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v66;
      v39 = v67;
      sub_1D63A1368(4, v52, v53, v41);
      if (!v57)
      {

        goto LABEL_24;
      }

      v9 = v41;
    }

    v47 = v9;
  }

LABEL_25:
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t sub_1D647229C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6472364(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6472418(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64724DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663F10(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D647250C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6581857;
  v5 = 0xE300000000000000;
  v6 = 7630702;
  v7 = 0xE900000000000074;
  v8 = 0x6E656E6F706D6F63;
  if (v2 != 3)
  {
    v8 = 0x726F6C6F63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 29295;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D647269C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = a2(0);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, a5, &unk_1D7321584);
  sub_1D7264B0C();
  v15 = v6;
  if (v6)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v15);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = v33;
  v19 = v34;
  v20 = v14;
  v21 = v35;
  if (v17)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v24 - 2);
      v26 = *(v24 - 1);

      v28 = sub_1D6627E68(0x6E656E6F706D6F63, 0xE900000000000074, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v15 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v20, v19);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667E8CC();
  v36 = 0uLL;
  v37 = 0;
  sub_1D726431C();
  v25 = v38;
  v36 = xmmword_1D728CF30;
  v37 = 0;
  sub_1D5B57870();
  sub_1D726431C();
  (*(v18 + 8))(v14, v19);
  v31 = v38;
  *v21 = v25;
  *(v21 + 8) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorModifyComponentProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v70 - v8;
  sub_1D667FB84(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D667FA04(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF0C3E0, sub_1D667FA04, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorModifyComponentProcessor, v20, v22, v17, &type metadata for FormatColorModifyComponentProcessor, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v74 = v24;
  v75 = v23;
  v70[2] = (v25 + 16);
  v71 = v26;
  (v26)(v9);
  v70[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v81) = v15;
  v83 = 0uLL;
  v84 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v82 = 0;
  v30 = swift_allocObject();
  v78 = v70;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v82;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v80 = v9;
  v70[-4] = sub_1D5B4AA6C;
  v70[-3] = 0;
  v68 = sub_1D67089C8;
  v69 = v32;
  v82 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v82;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D667FC18(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02C78, sub_1D667FC18, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v76 = v36;
  v77 = v35;
  v37 = sub_1D72647CC();
  v82 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v82;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v70[-4] = sub_1D615B4A4;
  v70[-3] = &v70[-6];
  v46 = v79;
  v47 = v80;
  v68 = sub_1D67089C8;
  v69 = v33;
  sub_1D5D2BC70(v80, sub_1D615B49C, v48, sub_1D615B4A4, &v70[-6], v40, v41);
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70[0] = v39;
    v50 = v74;
    v49 = v75;
    v79 = v29;

    sub_1D667EAC4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v52 = v73;
    v71(v73, v50, v49);
    swift_storeEnumTagMultiPayload();
    v81 = v16;
    v80 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    v82 = 0;
    v53 = swift_allocObject();
    v78 = v70;
    *(v53 + 16) = v80;
    *(v53 + 32) = v82;
    v54 = v72;
    v55 = v79;
    *(v53 + 40) = v72;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    v70[-4] = sub_1D5B4AA6C;
    v70[-3] = 0;
    v68 = sub_1D67089C8;
    v69 = v57;
    v82 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v80;
    *(v58 + 32) = v82;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v82 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v80;
    *(v60 + 40) = v82;
    v61 = v70[0][3];
    v62 = v70[0][4];
    v63 = __swift_project_boxed_opaque_existential_1(v70[0], v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    v70[-4] = sub_1D615B4A4;
    v70[-3] = &v70[-6];
    v68 = sub_1D67089C8;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, &v70[-6], v61, v62);

    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667FB84);
}

uint64_t sub_1D6473250(uint64_t a1)
{
  v2 = sub_1D667FADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647328C(uint64_t a1)
{
  v2 = sub_1D667FADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatColorNotExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D667FD10(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667FDA4(0);
  sub_1D5B58B84(&qword_1EC886940, sub_1D667FDA4, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x6973736572707865, 0xEA00000000006E6FLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667E484();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorNotExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667FF24(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D667FDA4(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC886940, sub_1D667FDA4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorNotExpression, v16, v18, v13, &type metadata for FormatColorNotExpression, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v12;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v45 = 0;
  v24 = swift_allocObject();
  v44[2] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v45;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D67089D8;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D667FFB8(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EC886958, sub_1D667FFB8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[1] = v29;
  v30 = sub_1D72647CC();
  v45 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v45;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D67089D8;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D667E664();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667FF24);
}

uint64_t sub_1D6473AC8(uint64_t a1)
{
  v2 = sub_1D667FE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6473B04(uint64_t a1)
{
  v2 = sub_1D667FE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6473B9C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void *a6@<X8>)
{
  v36 = a6;
  v11 = a2(0);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, a5, &unk_1D7321584);
  sub_1D7264B0C();
  v15 = v6;
  if (v6)
  {
    v16 = a1;
LABEL_11:
    sub_1D61E4FBC(v16, v15);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1D7264AFC();
  v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

  v19 = v34;
  v20 = v35;
  v21 = v14;
  v16 = a1;
  v22 = v36;
  if (v18)
  {
    v23 = sub_1D726433C();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = (v23 + 48);
      while (*v25 != 1)
      {
        v25 += 24;
        if (!--v24)
        {
          goto LABEL_8;
        }
      }

      v28 = *(v25 - 2);
      v27 = *(v25 - 1);

      v29 = sub_1D6627E68(0x657270784573686CLL, 0xED00006E6F697373, 0x6572707845736872, 0xED00006E6F697373);
      sub_1D5E2D970();
      v15 = swift_allocError();
      *v30 = v28;
      *(v30 + 8) = v27;
      *(v30 + 16) = v29;
      *(v30 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v21, v20);
      goto LABEL_11;
    }

LABEL_8:
  }

  sub_1D667E484();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726431C();
  v26 = v39;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D726431C();
  (*(v19 + 8))(v14, v20);
  v32 = v39;
  *v22 = v26;
  v22[1] = v32;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t FormatColorOrExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D66802C4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6680144(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC886988, sub_1D6680144, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColorOrExpression, v19, v21, v16, &type metadata for FormatColorOrExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v85 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v85;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708868;
  v69 = v31;
  v85 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6680358(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8869A0, sub_1D6680358, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v85 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v85;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v45 = v83;
  v46 = v84;
  v68 = sub_1D6708868;
  v69 = v32;
  sub_1D5D2BC70(v84, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v38;
    v49 = v78;
    v48 = v79;
    v83 = v28;

    v50 = sub_1D667E664();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708868;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708868;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66802C4);
}

uint64_t sub_1D6474760(uint64_t a1)
{
  v2 = sub_1D668021C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647479C(uint64_t a1)
{
  v2 = sub_1D668021C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6474800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663D48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6474830(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x646574696D696CLL;
  v5 = 0xE500000000000000;
  v6 = 0x646E656C62;
  if (v2 != 6)
  {
    v6 = 0xD000000000000011;
    v5 = 0x80000001D73BA880;
  }

  v7 = 0xEB000000006C616ELL;
  v8 = 0x6F697469646E6F63;
  if (v2 != 4)
  {
    v8 = 0x6563616C706572;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6E6769737361;
  if (v2 != 2)
  {
    v9 = 0x796669646F6DLL;
  }

  if (*v1)
  {
    v4 = 0x6D694C6172747865;
    v3 = 0xEC00000064657469;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t FormatColumnRowSpan.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D6680450(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = v1[1];
  v89 = *(v1 + 16);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5CBA178(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF254F8, sub_1D5CBA178, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatColumnRowSpan, v19, v21, v16, &type metadata for FormatColumnRowSpan, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v77 = v23;
  v78 = v22;
  v72 = v24 + 16;
  v73 = v25;
  (v25)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v88 = 0;
  v29 = swift_allocObject();
  v81 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v88;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v83 = v9;
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D67089DC;
  v68 = v31;
  v88 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v88;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66804E4(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03538, sub_1D66804E4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v88 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v88;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v45 = v82;
  v46 = v83;
  v67 = sub_1D6680578;
  v68 = v32;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v38;
    v49 = v77;
    v48 = v78;
    v82 = v28;

    sub_1D72647EC();
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v51 = v76;
    v73(v76, v49, v48);
    swift_storeEnumTagMultiPayload();
    v84 = v75;
    v85 = v89;
    v83 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v88 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v88;
    v53 = v74;
    v54 = v82;
    *(v52 + 40) = v74;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D67089DC;
    v68 = v56;
    v88 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v83;
    *(v57 + 32) = v88;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v88 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v83;
    *(v59 + 40) = v88;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D67089DC;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D66805F4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6680450);
}

uint64_t sub_1D647525C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66832D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6475294(uint64_t a1)
{
  v2 = sub_1D5CBA624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64752D0(uint64_t a1)
{
  v2 = sub_1D5CBA624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCommand.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatCommand, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatCommand, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v13, v10, v14, &off_1F51F6C78);
  v16 = *(v11 + 32);
  v22[0] = *(v11 + 16);
  v22[1] = v16;
  v23[0] = *(v11 + 48);
  *(v23 + 15) = *(v11 + 63);
  sub_1D62B5248(v22, v21);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D725BD1C();
  v18 = __swift_project_value_buffer(v17, qword_1EDFFCD30);
  (*(*(v17 - 8) + 16))(v6, v18, v17);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63BB478(v22, v6);
  sub_1D5D085FC(v22);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatCommandBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v91 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v89 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v87 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v88 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v86 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v85 = &v84 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v90 = &v84 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v84 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v84 - v33;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v1 + 8);
  v97 = *v1;
  v41 = *(v1 + 16);
  v40 = *(v1 + 24);
  v94 = v39;
  v95 = v41;
  v93 = v40;
  v42 = *(v1 + 32);
  v84 = *(v1 + 40);
  v43 = *(v1 + 48);
  v44 = *(v1 + 50);
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = sub_1D5C30408();
  v96 = v38;
  sub_1D5D2EE70(&type metadata for FormatCommandBinding, &type metadata for FormatCodingKeys, v48, v45, &type metadata for FormatCommandBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v46, v38, v47, &off_1F51F6C78);
  if (v44)
  {
    v49 = 8;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49 & 0xFFFFFFF8 | (v43 >> 11) & 7;
  if (v50 > 4)
  {
    if (v50 <= 6)
    {
      v56 = v96;
      if (v50 == 5)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v63 = sub_1D725BD1C();
        v64 = __swift_project_value_buffer(v63, qword_1EDFFCCA8);
        v59 = v88;
        (*(*(v63 - 8) + 16))(v88, v64, v63);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A4014(5, v97, v59);
      }

      else
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v82 = sub_1D725BD1C();
        v83 = __swift_project_value_buffer(v82, qword_1EDFFCD68);
        v59 = v87;
        (*(*(v82 - 8) + 16))(v87, v83, v82);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A41A8(6, v97, v94, v95, v93, v59);
      }
    }

    else
    {
      v56 = v96;
      if (v50 == 7)
      {
        v98[0] = v97;
        v98[1] = v94;
        v98[2] = v95;
        v98[3] = v93;
        v98[4] = v42;
        v98[5] = v84;
        v99 = v43 & 0xC7FF;
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v72 = sub_1D725BD1C();
        v73 = __swift_project_value_buffer(v72, qword_1EDFFCE98);
        v59 = v89;
        (*(*(v72 - 8) + 16))(v89, v73, v72);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A4344(7, v98, v59);
      }

      else if (v50 == 8)
      {
        if (qword_1EDF31F40 != -1)
        {
          swift_once();
        }

        v57 = sub_1D725BD1C();
        v58 = __swift_project_value_buffer(v57, qword_1EDFFCE50);
        v59 = v91;
        (*(*(v57 - 8) + 16))(v91, v58, v57);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A44E4(8, v97, v59);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v78 = sub_1D725BD1C();
        v79 = __swift_project_value_buffer(v78, qword_1EDFFCE38);
        v59 = v92;
        (*(*(v78 - 8) + 16))(v92, v79, v78);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A4678(9, v97 & 1, v59);
      }
    }

    v62 = v59;
    goto LABEL_47;
  }

  if (v50 <= 1)
  {
    if (!v50)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
      (*(*(v60 - 8) + 16))(v34, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v56 = v96;
      sub_1D63A3820(0, v97, v94, v95, v93, v34);
      v62 = v34;
      goto LABEL_47;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v80 = sub_1D725BD1C();
    v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
    (*(*(v80 - 8) + 16))(v30, v81, v80);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v56 = v96;
    sub_1D63A39BC(1, v97, v30);
LABEL_42:
    v62 = v30;
LABEL_47:
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
    v55 = v56;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  if (v50 == 2)
  {
    sub_1D5B58478(0);
    v66 = *(v65 + 48);
    v30 = v90;
    v67 = &v90[*(v65 + 64)];
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v68 = sub_1D725BD1C();
    v69 = __swift_project_value_buffer(v68, qword_1EDFFCD18);
    v70 = *(*(v68 - 8) + 16);
    v70(v30, v69, v68);
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v71 = __swift_project_value_buffer(v68, qword_1EDFFCCE8);
    v70(&v30[v66], v71, v68);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v67 = 0;
    *(v67 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v56 = v96;
    sub_1D63A3B50(2, v97 & 1, v30);
    goto LABEL_42;
  }

  v51 = v96;
  if (v50 == 3)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v52 = sub_1D725BD1C();
    v53 = __swift_project_value_buffer(v52, qword_1EDFFCD98);
    v54 = v85;
    (*(*(v52 - 8) + 16))(v85, v53, v52);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A3CE8(3, v97, v94, v95, v54);
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    v55 = v51;
    return sub_1D5D2CFE8(v55, sub_1D5D30DC4);
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v74 = sub_1D725BD1C();
  v75 = __swift_project_value_buffer(v74, qword_1EDFFCD50);
  v76 = v86;
  (*(*(v74 - 8) + 16))(v86, v75, v74);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A3E80(4, v97, v76);
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
}

uint64_t sub_1D6476114(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x697463416576696CLL;
    v6 = 1919251317;
    if (a1 != 8)
    {
      v6 = 0x657069636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C7A7A7570;
    if (a1 != 5)
    {
      v7 = 0x76457374726F7073;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x70756F7267;
    v2 = 0x6172546F69647561;
    v3 = 6775156;
    if (a1 != 3)
    {
      v3 = 0x6575737369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656E696C64616568;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D64762A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6476114(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatCommandState.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v34 = *v1;
  v20 = *(v1 + 16);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatCommandState, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatCommandState, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v23, &off_1F51F6C78);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ADCA0(1, v34 & 1, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCE80);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ADE68(2, v34, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63ADAD8(0, v34, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6476734(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E61656C6F6F62;
  if (v2 != 1)
  {
    v3 = 0x72656765746E69;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x676E69727473;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x6E61656C6F6F62;
  if (*a2 != 1)
  {
    v6 = 0x72656765746E69;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E69727473;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6476834()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64768D4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6476960(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64769FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E61656C6F6F62;
  if (v2 != 1)
  {
    v4 = 0x72656765746E69;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x676E69727473;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatCommandValue.encode(to:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v54 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  v60 = a2[2];
  v61 = &v51 - v16;
  v58 = v15;
  v59 = v14;
  v17 = _s10CodingKeysOMa_184(255, v60, v14, v15);
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  *&v65 = v17;
  *(&v65 + 1) = WitnessTable;
  v66 = v19;
  v67 = v20;
  v21 = type metadata accessor for FormatCodingKeysContainer(255, &v65);
  v22 = swift_getWitnessTable();
  v23 = sub_1D726446C();
  v24 = swift_getWitnessTable();
  v26 = type metadata accessor for VersionedKeyedEncodingContainer(0, v23, v24, v25);
  v63 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v51 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v32 = __swift_project_boxed_opaque_existential_1(a1, v31);
  v52 = a2;
  sub_1D5D2EE70(a2, v21, v32, v31, a2, v21, &type metadata for FormatVersions.JazzkonC, v30, v29, v22, &off_1F51F6C78);
  v57 = v3;
  v68 = *v3;
  v65 = 0uLL;
  LOBYTE(v66) = 0;
  v33 = qword_1EDF31EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCD30);
  v36 = (*(v34 - 8) + 16);
  v37 = v61;
  v55 = *v36;
  v56 = v35;
  v55(v61);
  v38 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = sub_1D66807EC();
  v40 = v62;
  sub_1D5D38930(&v68, &v65, v37, sub_1D5B4AA6C, 0, v26, &type metadata for FormatCommand, v39);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);

  if (v40)
  {
    return (*(v63 + 8))(v29, v26);
  }

  v68 = v57[1];
  v65 = xmmword_1D728CF30;
  LOBYTE(v66) = 0;
  v42 = v54;
  v62 = v36;
  (v55)(v54, v56, v34);
  v61 = v38;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatCommandValue.CaseValue(255, v60, v59, v58);
  v43 = v29;
  v44 = v26;
  v45 = sub_1D72627FC();

  v64 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  sub_1D5D38930(&v68, &v65, v42, sub_1D5B4AA6C, 0, v44, v45, v46);
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

  v47 = v53;
  v48 = *(v52 + 12);
  v65 = xmmword_1D7297410;
  LOBYTE(v66) = 0;
  (v55)(v53, v56, v34);
  swift_storeEnumTagMultiPayload();
  v49 = type metadata accessor for FormatCommandValue.DefaultValue(0, v60, v59, v58);
  v50 = swift_getWitnessTable();
  sub_1D5D38930(v57 + v48, &v65, v47, sub_1D5B4AA6C, 0, v44, v49, v50);
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  return (*(v63 + 8))(v43, v44);
}

uint64_t sub_1D64770D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365736163 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D6477238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _s10CodingKeysOMa_184(255, a1, a2, a3);
  sub_1D72644CC();
  swift_allocObject();
  v4 = sub_1D726270C();
  *v5 = 50462976;

  return sub_1D5BFCB60(v4, v3);
}

uint64_t sub_1D64772C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D64770D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64772F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F1ED8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D647732C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6477238(a1[2], a1[3], a1[4]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6477360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D64773B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6477408(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v42 - v11;
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v43 = *(a2 + 32);
  v44 = v13;
  v15 = _s10CodingKeysOMa_311(255, v13, v14, v43);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v51 = v15;
  *(&v51 + 1) = WitnessTable;
  v52 = v17;
  v53 = v18;
  v19 = type metadata accessor for FormatCodingKeysContainer(255, &v51);
  v20 = swift_getWitnessTable();
  v21 = sub_1D726446C();
  v22 = swift_getWitnessTable();
  v54 = type metadata accessor for VersionedKeyedEncodingContainer(0, v21, v22, v23);
  v48 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v24);
  v26 = &v42 - v25;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D5D2EE70(a2, v19, v29, v27, a2, v19, &type metadata for FormatVersions.JazzkonC, v28, v26, v20, &off_1F51F6C78);
  v30 = *v3;
  v31 = *(v3 + 8);
  v45 = v3;
  v32 = *(v3 + 16);
  *&v51 = v30;
  *(&v51 + 1) = v31;
  LOBYTE(v52) = v32;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  sub_1D5D03180(v30, v31, v32);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
  v35 = *(*(v33 - 8) + 16);
  v42 = v34;
  v35(v12);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = sub_1D66F0F2C();
  v37 = v47;
  sub_1D5D38930(&v51, v49, v12, sub_1D5B4AA6C, 0, v54, &type metadata for FormatCommandState, v36);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  sub_1D5D07BA8(v51, *(&v51 + 1), v52);
  if (v37)
  {
    return (*(v48 + 8))(v26, v54);
  }

  v39 = *(a2 + 44);
  v51 = xmmword_1D728CF30;
  LOBYTE(v52) = 0;
  v40 = v46;
  (v35)(v46, v42, v33);
  swift_storeEnumTagMultiPayload();
  v41 = v54;
  sub_1D5D38930(v45 + v39, &v51, v40, sub_1D5B4AA6C, 0, v54, v44, *(v43 + 16));
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return (*(v48 + 8))(v26, v41);
}

uint64_t sub_1D6477898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D64779A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _s10CodingKeysOMa_311(255, a1, a2, a3);
  sub_1D72644CC();
  swift_allocObject();
  v4 = sub_1D726270C();
  *v5 = 256;
  *(v5 + 2) = 2;

  return sub_1D5BFCB60(v4, v3);
}

uint64_t sub_1D6477A20(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_1D7264A5C();
}

uint64_t sub_1D6477A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6477898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6477AB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E3192C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6477AE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D64779A8(a1[2], a1[3], a1[4]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6477B18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6477B6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6477BC0(void *a1, void *a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  v9 = a2[3];
  v30 = a2[4];
  v31 = v8;
  v10 = _s10CodingKeysOMa_310(255, v8, v9, v30);
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v33 = v10;
  v34 = WitnessTable;
  v35 = v12;
  v36 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer(255, &v33);
  v15 = swift_getWitnessTable();
  v16 = sub_1D726446C();
  v17 = swift_getWitnessTable();
  v19 = type metadata accessor for VersionedKeyedEncodingContainer(0, v16, v17, v18);
  v29 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5D2EE70(a2, v14, v25, v23, a2, v14, &type metadata for FormatVersions.JazzkonC, v24, v22, v15, &off_1F51F6C78);
  v33 = 0;
  v34 = 0;
  LOBYTE(v35) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  (*(*(v26 - 8) + 16))(v7, v27, v26);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D38930(v32, &v33, v7, sub_1D5B4AA6C, 0, v19, v31, *(v30 + 16));
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return (*(v29 + 8))(v22, v19);
}

uint64_t sub_1D6477F18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D6477FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _s10CodingKeysOMa_310(255, a1, a2, a3);
  sub_1D72644CC();
  swift_allocObject();
  v4 = sub_1D726270C();
  *v5 = 256;

  return sub_1D5BFCB60(v4, v3);
}

uint64_t sub_1D6478078(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5DEA254(v3, *v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D64780C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6477F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64780F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E31924();
  *a1 = result;
  return result;
}

uint64_t sub_1D6478144@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6477FE0(a1[2], a1[3], a1[4]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6478178(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D64781CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatCompilerEnumProperty.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v219 = &v216 - v6;
  v223 = sub_1D725B76C();
  v222 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223, v7);
  v220 = &v216 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v221 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v218 = &v216 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v224 = &v216 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v225 = &v216 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v226 = (&v216 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v227 = &v216 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v228 = (&v216 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v236 = (&v216 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v216 - v35;
  sub_1D6680840(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v216 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = type metadata accessor for FormatCompilerEnumProperty(0);
  sub_1D5CE922C(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF25028, sub_1D5CE922C, &unk_1D7321584);
  v217 = v44;
  sub_1D5D2EE70(v44, v46, v48, v42, v44, v46, &type metadata for FormatVersions.JazzkonC, v43, v41, v47, &off_1F51F6C78);
  v49 = *v2;
  v50 = v2[1];
  v229 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v51 = sub_1D725BD1C();
  v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v231 = v52;
  v234 = v54;
  v235 = v51;
  v233 = v53 + 16;
  (v54)(v36);
  v232 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v245 = v49;
  v246 = v50;
  v243 = 0uLL;
  v244 = 0;
  v55 = &v41[*(v38 + 44)];
  v57 = *v55;
  v56 = *(v55 + 1);
  v247 = 0;
  v58 = swift_allocObject();
  *&v240 = &v216;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = v247;
  *(v58 + 40) = v57;
  *(v58 + 48) = v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v239 = (&v216 - 6);
  *(&v216 - 4) = sub_1D5B4AA6C;
  *(&v216 - 3) = 0;
  v214 = sub_1D67089E0;
  v215 = v60;
  v247 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v247;
  v230 = v57;
  *(v61 + 40) = v57;
  *(v61 + 48) = v56;
  sub_1D66808D4(0);
  v63 = v62;
  v64 = sub_1D5B58B84(&qword_1EDF02FA8, sub_1D66808D4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v237 = v64;
  v238 = v63;
  v65 = sub_1D72647CC();
  v247 = 0;
  v66 = swift_allocObject();
  *(v66 + 24) = 0;
  *(v66 + 32) = 0;
  *(v66 + 16) = v65;
  *(v66 + 40) = v247;
  v67 = *(v38 + 36);
  v68 = v36;
  v242 = v41;
  v69 = &v41[v67];
  v70 = *&v41[v67 + 24];
  v71 = *&v41[v67 + 32];
  v72 = __swift_project_boxed_opaque_existential_1(&v41[v67], v70);
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  v76 = v239;
  *(&v216 - 4) = sub_1D615B4A4;
  *(&v216 - 3) = v76;
  v214 = sub_1D67089E0;
  v215 = v61;
  v77 = v241;
  sub_1D5D2BC70(v68, sub_1D615B49C, v78, sub_1D615B4A4, (&v216 - 6), v70, v71);
  if (v77)
  {
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    v97 = v242;
    return sub_1D5D2CFE8(v97, sub_1D6680840);
  }

  v239 = v69;
  v216 = v56;

  sub_1D72647EC();
  sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

  v79 = v229[2];
  v80 = v229[3];
  v234(v236, v231, v235);
  swift_storeEnumTagMultiPayload();
  v245 = v79;
  v246 = v80;
  v241 = xmmword_1D728CF30;
  v243 = xmmword_1D728CF30;
  v244 = 0;
  v247 = 0;
  v81 = swift_allocObject();
  *&v240 = &v216;
  *(v81 + 16) = v241;
  *(v81 + 32) = v247;
  v82 = v230;
  v83 = v216;
  *(v81 + 40) = v230;
  *(v81 + 48) = v83;
  MEMORY[0x1EEE9AC00](v81, v84);
  *(&v216 - 4) = sub_1D5B4AA6C;
  *(&v216 - 3) = 0;
  v214 = sub_1D67089E0;
  v215 = v85;
  v247 = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v241;
  *(v86 + 32) = v247;
  *(v86 + 40) = v82;
  *(v86 + 48) = v83;
  swift_retain_n();
  v87 = sub_1D72647CC();
  v247 = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = v241;
  *(v88 + 40) = v247;
  v89 = *(v239 + 3);
  v90 = *(v239 + 4);
  v91 = __swift_project_boxed_opaque_existential_1(v239, v89);
  MEMORY[0x1EEE9AC00](v91, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v216 - 4) = sub_1D615B4A4;
  *(&v216 - 3) = (&v216 - 6);
  v95 = v236;
  v214 = sub_1D67089E0;
  v215 = v86;
  sub_1D5D2BC70(v236, sub_1D615B49C, v96, sub_1D615B4A4, (&v216 - 6), v89, v90);

  sub_1D72647EC();
  sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

  v99 = v229[4];
  v100 = v229[5];
  v234(v228, v231, v235);
  swift_storeEnumTagMultiPayload();
  v245 = v99;
  v246 = v100;
  v241 = xmmword_1D7297410;
  v243 = xmmword_1D7297410;
  v244 = 0;
  v247 = 0;
  v101 = swift_allocObject();
  *&v240 = &v216;
  *(v101 + 16) = v241;
  *(v101 + 32) = v247;
  v102 = v230;
  v103 = v216;
  *(v101 + 40) = v230;
  *(v101 + 48) = v103;
  MEMORY[0x1EEE9AC00](v101, v104);
  *(&v216 - 4) = sub_1D5B4AA6C;
  *(&v216 - 3) = 0;
  v214 = sub_1D67089E0;
  v215 = v105;
  v247 = 0;
  v106 = swift_allocObject();
  *(v106 + 16) = v241;
  *(v106 + 32) = v247;
  *(v106 + 40) = v102;
  *(v106 + 48) = v103;
  swift_retain_n();
  v107 = sub_1D72647CC();
  v247 = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = v241;
  *(v108 + 40) = v247;
  v109 = *(v239 + 3);
  v110 = *(v239 + 4);
  v111 = __swift_project_boxed_opaque_existential_1(v239, v109);
  MEMORY[0x1EEE9AC00](v111, v112);
  MEMORY[0x1EEE9AC00](v113, v114);
  *(&v216 - 4) = sub_1D615B4A4;
  *(&v216 - 3) = (&v216 - 6);
  v115 = v228;
  v214 = sub_1D67089E0;
  v215 = v106;
  sub_1D5D2BC70(v228, sub_1D615B49C, v116, sub_1D615B4A4, (&v216 - 6), v109, v110);

  sub_1D72647EC();
  sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

  v117 = v227;
  v234(v227, v231, v235);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v243) = 0;
  v118 = swift_allocObject();
  v241 = xmmword_1D72BAA60;
  *(v118 + 16) = xmmword_1D72BAA60;
  *(v118 + 32) = v243;
  v119 = v216;
  *(v118 + 40) = v230;
  *(v118 + 48) = v119;

  v120 = sub_1D72647CC();
  LOBYTE(v243) = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v241;
  *(v121 + 40) = v243;
  v122 = *(v239 + 3);
  v123 = *(v239 + 4);
  v124 = __swift_project_boxed_opaque_existential_1(v239, v122);
  MEMORY[0x1EEE9AC00](v124, v125);
  MEMORY[0x1EEE9AC00](v126, v127);
  *(&v216 - 4) = sub_1D5B4AA6C;
  *(&v216 - 3) = 0;
  v214 = sub_1D6680968;
  v215 = v118;
  v129 = sub_1D5D2F7A4(v117, sub_1D615B49C, v128, sub_1D615B4A4, (&v216 - 6), v122, v123);
  v130 = v129;

  if (v130)
  {
    v243 = v241;
    v244 = 0;
    v245 = 0;
    v246 = 0xE000000000000000;
    sub_1D72647EC();
  }

  sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
  v131 = v229;
  v132 = v226;
  v133 = *(v229 + 64);
  v234(v226, v231, v235);
  swift_storeEnumTagMultiPayload();
  if (v133 == 1)
  {
    sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v243) = 0;
    v134 = swift_allocObject();
    v241 = xmmword_1D72BAA70;
    *(v134 + 16) = xmmword_1D72BAA70;
    *(v134 + 32) = v243;
    *(v134 + 40) = v230;
    *(v134 + 48) = v119;

    v135 = sub_1D72647CC();
    LOBYTE(v243) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v135;
    *(v136 + 24) = v241;
    *(v136 + 40) = v243;
    v137 = *(v239 + 3);
    v138 = *(v239 + 4);
    v139 = __swift_project_boxed_opaque_existential_1(v239, v137);
    MEMORY[0x1EEE9AC00](v139, v140);
    MEMORY[0x1EEE9AC00](v141, v142);
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D67089E0;
    v215 = v134;
    LOBYTE(v137) = sub_1D5D2F7A4(v132, sub_1D615B49C, v143, sub_1D615B4A4, (&v216 - 6), v137, v138);

    if (v137)
    {
      v243 = v241;
      v244 = 0;
      LOBYTE(v245) = 0;
      sub_1D72647EC();
      sub_1D5D2CFE8(v226, type metadata accessor for FormatVersionRequirement);
      v131 = v229;
    }

    else
    {
      sub_1D5D2CFE8(v226, type metadata accessor for FormatVersionRequirement);
    }
  }

  v144 = v131[9];
  v145 = v131[10];
  v146 = v225;
  v234(v225, v231, v235);
  swift_storeEnumTagMultiPayload();
  v241 = xmmword_1D72BAA80;
  v243 = xmmword_1D72BAA80;
  v244 = 0;
  LOBYTE(v245) = 0;
  v147 = swift_allocObject();
  v149 = v147;
  *(v147 + 16) = v241;
  *(v147 + 32) = v245;
  v150 = v230;
  v151 = v216;
  *(v147 + 40) = v230;
  *(v147 + 48) = v151;
  if (v145)
  {
    *&v240 = &v216;
    v245 = v144;
    v246 = v145;
    MEMORY[0x1EEE9AC00](v147, v148);
    v236 = &v216 - 6;
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D67089E0;
    v215 = v149;
    v247 = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = v241;
    *(v152 + 32) = v247;
    *(v152 + 40) = v150;
    *(v152 + 48) = v151;
    swift_retain_n();

    v153 = sub_1D72647CC();
    v247 = 0;
    v154 = swift_allocObject();
    *(v154 + 16) = v153;
    *(v154 + 24) = v241;
    *(v154 + 40) = v247;
    v155 = *(v239 + 3);
    v156 = *(v239 + 4);
    v157 = __swift_project_boxed_opaque_existential_1(v239, v155);
    MEMORY[0x1EEE9AC00](v157, v158);
    MEMORY[0x1EEE9AC00](v159, v160);
    v161 = v236;
    *(&v216 - 4) = sub_1D615B4A4;
    *(&v216 - 3) = v161;
    v214 = sub_1D67089E0;
    v215 = v152;
    v163 = sub_1D5D2F7A4(v146, sub_1D615B49C, v162, sub_1D615B4A4, (&v216 - 6), v155, v156);
    v164 = v163;

    if (v164)
    {
      sub_1D72647EC();

      v165 = v225;
    }

    else
    {

      v165 = v146;
    }

    sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
    v131 = v229;
    v151 = v216;
  }

  else
  {

    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
  }

  v166 = *(v131 + 88);
  v167 = v224;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  *&v241 = 0;
  v168 = v235;
  v169 = __swift_project_value_buffer(v235, qword_1EDFFCD50);
  v234(v167, v169, v168);
  swift_storeEnumTagMultiPayload();
  if (v166)
  {
    LOBYTE(v243) = 0;
    v170 = swift_allocObject();
    v240 = xmmword_1D72BAA90;
    *(v170 + 16) = xmmword_1D72BAA90;
    *(v170 + 32) = v243;
    *(v170 + 40) = v230;
    *(v170 + 48) = v151;

    v171 = v167;
    v172 = sub_1D72647CC();
    LOBYTE(v243) = 0;
    v173 = swift_allocObject();
    *(v173 + 16) = v172;
    *(v173 + 24) = v240;
    *(v173 + 40) = v243;
    v174 = *(v239 + 3);
    v175 = *(v239 + 4);
    v176 = __swift_project_boxed_opaque_existential_1(v239, v174);
    MEMORY[0x1EEE9AC00](v176, v177);
    MEMORY[0x1EEE9AC00](v178, v179);
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D67089E0;
    v215 = v170;
    v180 = v241;
    v182 = sub_1D5D2F7A4(v171, sub_1D615B49C, v181, sub_1D615B4A4, (&v216 - 6), v174, v175);
    if (v180)
    {
      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);

LABEL_7:
      v97 = v242;
      return sub_1D5D2CFE8(v97, sub_1D6680840);
    }

    v184 = v182;
    *&v241 = 0;

    if (v184)
    {
      v243 = v240;
      v244 = 0;
      LOBYTE(v245) = 1;
      v185 = v241;
      sub_1D72647EC();
      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);
      *&v241 = v185;
      if (v185)
      {
        return sub_1D5D2CFE8(v242, sub_1D6680840);
      }
    }

    else
    {
      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);
    }

    v183 = v221;
    v131 = v229;
  }

  else
  {
    sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
    v183 = v221;
  }

  v186 = v230;
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v187 = v235;
  v188 = __swift_project_value_buffer(v235, qword_1EDFFCD80);
  v189 = v218;
  v190 = v234;
  v234(v218, v188, v187);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
  v191 = *(v217 + 48);
  v192 = v187;
  v193 = v183;
  v190(v183, v188, v192);
  swift_storeEnumTagMultiPayload();
  v240 = xmmword_1D72BAAB0;
  v243 = xmmword_1D72BAAB0;
  v244 = 0;
  LOBYTE(v245) = 0;
  v194 = swift_allocObject();
  *(v194 + 16) = v240;
  *(v194 + 32) = v245;
  v195 = v216;
  *(v194 + 40) = v186;
  *(v194 + 48) = v195;
  v196 = v219;
  sub_1D5CDE2EC(v131 + v191, v219, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v197 = v222;
  v198 = v223;
  if ((*(v222 + 48))(v196, 1, v223) != 1)
  {
    v199 = (*(v197 + 32))(v220, v196, v198);
    MEMORY[0x1EEE9AC00](v199, v200);
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D67089E0;
    v215 = v194;
    LOBYTE(v245) = 0;
    v201 = swift_allocObject();
    *(v201 + 16) = v240;
    *(v201 + 32) = v245;
    *(v201 + 40) = v186;
    *(v201 + 48) = v195;
    swift_retain_n();
    v202 = sub_1D72647CC();
    LOBYTE(v245) = 0;
    v203 = swift_allocObject();
    *(v203 + 16) = v202;
    *(v203 + 24) = v240;
    *(v203 + 40) = v245;
    v204 = *(v239 + 3);
    v205 = *(v239 + 4);
    v206 = __swift_project_boxed_opaque_existential_1(v239, v204);
    MEMORY[0x1EEE9AC00](v206, v207);
    MEMORY[0x1EEE9AC00](v208, v209);
    *(&v216 - 4) = sub_1D615B4A4;
    *(&v216 - 3) = (&v216 - 6);
    v214 = sub_1D67089E0;
    v215 = v201;
    v210 = v241;
    v212 = sub_1D5D2F7A4(v193, sub_1D615B49C, v211, sub_1D615B4A4, (&v216 - 6), v204, v205);
    if (v210)
    {
    }

    else
    {
      v213 = v212;

      if (v213)
      {
        sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
        sub_1D72647EC();
      }
    }

    (*(v222 + 8))(v220, v223);
    sub_1D5D2CFE8(v221, type metadata accessor for FormatVersionRequirement);
    goto LABEL_7;
  }

  sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v242, sub_1D6680840);
  return sub_1D5D35558(v196, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D647A118@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66833E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D647A150(uint64_t a1)
{
  v2 = sub_1D5CE9398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A18C(uint64_t a1)
{
  v2 = sub_1D5CE9398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerFlag.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v34 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD80);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v37;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v24 = v35[3];
    v23 = v35[4];
    v25 = __swift_project_boxed_opaque_existential_1(v35, v24);
    if (v34)
    {
      if (v34 == 1)
      {
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(v18, qword_1EDFFCE98);
        v27 = v32;
        v20(v32, v26, v18);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v24, v23);
        sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v35, v35[3]);
        sub_1D7264B3C();
      }

      else
      {
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v18, qword_1EDFFCE98);
        v30 = v33;
        v20(v33, v29, v18);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v24, v23);
        sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v35, v35[3]);
        sub_1D7264B3C();
      }
    }

    else
    {
      v37 = v25;
      v28 = v31;
      v20(v31, v19, v18);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v24, v23);
      sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      sub_1D7264B3C();
    }

    __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

uint64_t sub_1D647A708@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6683738(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D647A740(uint64_t a1)
{
  v2 = sub_1D5C7CB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A77C(uint64_t a1)
{
  v2 = sub_1D5C7CB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D647A7B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6683948(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D647A7F0(uint64_t a1)
{
  v2 = sub_1D5C8F138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A82C(uint64_t a1)
{
  v2 = sub_1D5C8F138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D647A878(uint64_t a1)
{
  v2 = sub_1D5C8F718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A8B4(uint64_t a1)
{
  v2 = sub_1D5C8F718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D647A8F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6683A6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D647A928(uint64_t a1)
{
  v2 = sub_1D5C4FFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A964(uint64_t a1)
{
  v2 = sub_1D5C4FFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerPrimitiveProperty.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v92 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v94 = &v92 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v93 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v97 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v98 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v99 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v101 = (&v92 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v92 - v27;
  v29 = *(a2 + 16);
  v95 = *(a2 + 24);
  v96 = v29;
  v31 = _s10CodingKeysOMa_182(255, v29, v95, v30);
  WitnessTable = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  *&v108 = v31;
  *(&v108 + 1) = WitnessTable;
  v109 = v33;
  v110 = v34;
  v35 = type metadata accessor for FormatCodingKeysContainer(255, &v108);
  v36 = swift_getWitnessTable();
  v37 = sub_1D726446C();
  v38 = swift_getWitnessTable();
  v40 = type metadata accessor for VersionedKeyedEncodingContainer(0, v37, v38, v39);
  v105 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v92 - v42;
  v45 = a1[3];
  v44 = a1[4];
  v46 = __swift_project_boxed_opaque_existential_1(a1, v45);
  v100 = a2;
  sub_1D5D2EE70(a2, v35, v46, v45, a2, v35, &type metadata for FormatVersions.JazzkonC, v44, v43, v36, &off_1F51F6C78);
  v47 = v111[1];
  v48 = v111;
  v106 = *v111;
  v107 = v47;
  v108 = 0uLL;
  LOBYTE(v109) = 0;
  v49 = qword_1EDF31EB0;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  v52 = *(v50 - 8);
  v53 = *(v52 + 16);
  v54 = (v52 + 16);
  v102 = v51;
  v53(v28);
  v103 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v55 = v104;
  sub_1D5D38930(&v106, &v108, v28, sub_1D5B4AA6C, 0, v40, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  if (v55)
  {
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);

    return (*(v105 + 8))(v43, v40);
  }

  else
  {
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);

    v56 = v53;
    v57 = v48;
    v58 = v48[3];
    v106 = v48[2];
    v107 = v58;
    v108 = xmmword_1D728CF30;
    LOBYTE(v109) = 0;
    v59 = v101;
    (v56)(v101, v102, v50);
    swift_storeEnumTagMultiPayload();

    sub_1D5D38930(&v106, &v108, v59, sub_1D5B4AA6C, 0, v40, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    v101 = 0;
    v106 = sub_1D707D8D8();
    v107 = v61;
    v108 = xmmword_1D7297410;
    LOBYTE(v109) = 0;
    v62 = v99;
    (v56)(v99, v102, v50);
    swift_storeEnumTagMultiPayload();

    v104 = v40;
    v63 = v101;
    sub_1D71B5F54(&v106, &type metadata for FormatCodingEmptyDescriptiveStrategy, &v108, v62, sub_1D5B4AA6C, 0, v40, &type metadata for FormatCodingEmptyDescriptiveStrategy, &protocol witness table for FormatCodingEmptyDescriptiveStrategy);
    v64 = v43;
    if (v63)
    {
      sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

      return (*(v105 + 8))(v43, v104);
    }

    else
    {
      sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

      LOBYTE(v106) = FormatCompilerPrimitiveProperty.required.getter() & 1;
      v108 = xmmword_1D72BAA60;
      LOBYTE(v109) = 0;
      v65 = v98;
      (v56)(v98, v102, v50);
      swift_storeEnumTagMultiPayload();
      sub_1D71B5F54(&v106, &type metadata for FormatCodingTrueStrategy, &v108, v65, sub_1D5B4AA6C, 0, v104, &type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy);
      v66 = v50;
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      v67 = v100;
      v68 = *(v100 + 48);
      v108 = xmmword_1D72BAA70;
      LOBYTE(v109) = 0;
      v69 = v97;
      (v56)(v97, v102, v66);
      swift_storeEnumTagMultiPayload();
      sub_1D5D432A4(v57 + v68, &v108, v69, sub_1D5B4AA6C, 0, v104, v96, *(v95 + 16));
      v70 = v67;
      v71 = v104;
      v101 = 0;
      v102 = v64;
      sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
      LOBYTE(v106) = FormatCompilerPrimitiveProperty.deprecated.getter(v70) & 1;
      v108 = xmmword_1D72BAA80;
      LOBYTE(v109) = 0;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v72 = __swift_project_value_buffer(v66, qword_1EDFFCD50);
      v73 = v93;
      (v56)(v93, v72, v66);
      swift_storeEnumTagMultiPayload();
      v74 = v71;
      v76 = v101;
      v75 = v102;
      sub_1D71B5F54(&v106, &type metadata for FormatCodingFalseStrategy, &v108, v73, sub_1D5B4AA6C, 0, v71, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy);
      v77 = v94;
      if (v76)
      {
        sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
        return (*(v105 + 8))(v75, v71);
      }

      else
      {
        v99 = v66;
        v101 = v56;
        sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
        v78 = v100;
        v106 = sub_1D707D8E0(v100);
        sub_1D5B56DC4(0);
        v80 = v79;
        v108 = xmmword_1D72BAA90;
        LOBYTE(v109) = 0;
        v81 = qword_1EDF31EE0;

        if (v81 != -1)
        {
          swift_once();
        }

        v82 = v99;
        v83 = __swift_project_value_buffer(v99, qword_1EDFFCD80);
        v97 = v54;
        v98 = v83;
        v101(v77);
        swift_storeEnumTagMultiPayload();
        v84 = sub_1D5B58B84(&qword_1EDF21380, sub_1D5B56DC4, &protocol conformance descriptor for FormatCodingIgnoreSetStrategy<A>);
        v85 = v80;
        v86 = v80;
        v87 = v102;
        sub_1D71B5F54(&v106, v85, &v108, v77, sub_1D5B4AA6C, 0, v74, v86, v84);
        sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

        v88 = *(v78 + 60);
        v108 = xmmword_1D72BAAA0;
        LOBYTE(v109) = 0;
        v89 = v92;
        (v101)(v92, v98, v82);
        swift_storeEnumTagMultiPayload();
        v90 = sub_1D725B76C();
        v91 = sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
        sub_1D5D432A4(v111 + v88, &v108, v89, sub_1D5B4AA6C, 0, v74, v90, v91);
        sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
        return (*(v105 + 8))(v87, v74);
      }
    }
  }
}

uint64_t sub_1D647B5F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656C69706D6F63 && a2 == 0xED00007367616C46 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B8F40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D647B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s10CodingKeysOMa_182(255, a1, a2, a4);
  sub_1D72644CC();
  swift_allocObject();
  v5 = sub_1D726270C();
  *v6 = 0x706050403020100;
  *(v6 + 8) = 8;

  return sub_1D5BFCB60(v5, v4);
}

uint64_t sub_1D647B970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D647B5F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647B9A0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D6683BD0();
  *a2 = result;
  return result;
}

uint64_t sub_1D647B9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1D647B8F8(*(a1 + 16), *(a1 + 24), a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1D647B9FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D647BA50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatCompilerProperty.encode(to:)(void *a1)
{
  sub_1D5C30060(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v142 = &v125 - v4;
  sub_1D5C30060(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v141 = &v125 - v7;
  sub_1D5CB3BF0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v140 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C34074(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v139 = &v125 - v13;
  sub_1D5C34074(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v138 = &v125 - v16;
  sub_1D5C30060(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v137 = &v125 - v19;
  v20 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v136 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v135 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v134 = &v125 - v28;
  v29 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v133 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v132 = &v125 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v131 = &v125 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v130 = &v125 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v129 = &v125 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v128 = &v125 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v127 = &v125 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v126 = &v125 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v125 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v125 - v59;
  sub_1D5C34074(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v64 = &v125 - v63;
  v65 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v125 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v72 = &v125 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1[3];
  v73 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v74);
  v75 = sub_1D5C30408();
  v144 = v72;
  sub_1D5D2EE70(v65, &type metadata for FormatCodingKeys, v76, v74, v65, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v73, v72, v75, &off_1F51F6C78);
  sub_1D6706BB4(v143, v68, type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v92 = v68;
        v93 = v138;
        sub_1D6680CD4(v92, v138);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v94 = sub_1D725BD1C();
        v95 = __swift_project_value_buffer(v94, qword_1EDFFCD30);
        v96 = v129;
        (*(*(v94 - 8) + 16))(v129, v95, v94);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639B7F0(5, v93, v96);
        sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
        sub_1D66810E4(v93);
      }

      else
      {
        v119 = v68;
        v120 = v139;
        sub_1D5CB5494(v119, v139);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v121 = sub_1D725BD1C();
        v122 = __swift_project_value_buffer(v121, qword_1EDFFCD30);
        v123 = v130;
        (*(*(v121 - 8) + 16))(v130, v122, v121);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639B9C0(6, v120, v123);
        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
        sub_1D5D67638(v120);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v101 = v68;
        v79 = v140;
        sub_1D5C8F76C(v101, v140, sub_1D5CB3BF0);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v102 = sub_1D725BD1C();
        v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
        v104 = v131;
        (*(*(v102 - 8) + 16))(v131, v103, v102);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639BB90(7, v79, v104);
        sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
        v84 = sub_1D5CB3BF0;
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v85 = v68;
        v86 = v141;
        sub_1D6680BB4(v85, v141);
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v87 = sub_1D725BD1C();
        v88 = __swift_project_value_buffer(v87, qword_1EDFFCD50);
        v89 = v132;
        (*(*(v87 - 8) + 16))(v132, v88, v87);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639BD64(8, v86, v89);
        sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
        sub_1D6681050(v86);
      }

      else
      {
        v110 = v68;
        v111 = v142;
        sub_1D6680A88(v110, v142);
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v112 = sub_1D725BD1C();
        v113 = __swift_project_value_buffer(v112, qword_1EDFFCD00);
        v114 = v133;
        (*(*(v112 - 8) + 16))(v133, v113, v112);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639BF40(9, v111, v114);
        sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
        sub_1D6680FBC(v111);
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v115 = v68;
      v116 = v134;
      sub_1D6680F20(v115, v134);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD30);
      (*(*(v117 - 8) + 16))(v56, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639B090(1, v116, v56);
      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
      sub_1D6681200(v116);
    }

    else
    {
      sub_1D5CB55A8(v68, v64);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v90 = sub_1D725BD1C();
      v91 = __swift_project_value_buffer(v90, qword_1EDFFCD30);
      (*(*(v90 - 8) + 16))(v60, v91, v90);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639AEC0(0, v64, v60);
      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
      sub_1D5D676C0(v64);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v97 = v68;
      v79 = v135;
      sub_1D5C8F76C(v97, v135, sub_1D5B58AF0);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD30);
      v100 = v126;
      (*(*(v98 - 8) + 16))(v126, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639B26C(2, v79, v100);
      sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
      v84 = sub_1D5B58AF0;
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v78 = v68;
      v79 = v136;
      sub_1D5C8F76C(v78, v136, type metadata accessor for FormatCompilerEnumProperty);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
      v82 = v127;
      (*(*(v80 - 8) + 16))(v127, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639B440(3, v79, v82);
      sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
      v84 = type metadata accessor for FormatCompilerEnumProperty;
LABEL_28:
      sub_1D5D2CFE8(v79, v84);
      return sub_1D5D2CFE8(v83, sub_1D5D30DC4);
    }

    v105 = v68;
    v106 = v137;
    sub_1D6680DF4(v105, v137);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v107 = sub_1D725BD1C();
    v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
    v109 = v128;
    (*(*(v107 - 8) + 16))(v128, v108, v107);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v83 = v144;
    sub_1D639B614(4, v106, v109);
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
    sub_1D668116C(v106);
  }

  return sub_1D5D2CFE8(v83, sub_1D5D30DC4);
}

uint64_t sub_1D647CB44(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7107189;
    v6 = 1953394534;
    if (a1 != 8)
    {
      v6 = 0x6567616D69;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x72656765746E69;
    if (a1 != 5)
    {
      v7 = 0x676E69727473;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E61656C6F6F62;
    v2 = 1702125924;
    v3 = 1836412517;
    if (a1 != 3)
    {
      v3 = 0x74616F6C66;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726F6C6F63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D647CCB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D647CB44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D647CD2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6683BD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D647CD64(uint64_t a1)
{
  v2 = sub_1D5CB2BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647CDA0(uint64_t a1)
{
  v2 = sub_1D5CB2BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerSlotDefinitionItemSet.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v48 = &v42 - v6;
  sub_1D5B5BF78(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, v3);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v45 = &v42 - v9;
  sub_1D5C8EAD0(0);
  v11 = v10;
  v44 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6681294(0);
  v16 = v15;
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6681328(0);
  sub_1D5B58B84(&qword_1EDF24D78, sub_1D6681328, &unk_1D7321584);
  v20 = v54;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
LABEL_2:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v14;
  v54 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_1D7264AFC();
  v24 = Dictionary<>.errorOnUnknownKeys.getter(v23);

  v25 = v16;
  v26 = v48;
  if (v24)
  {
    v27 = sub_1D726433C();
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 48);
      while (*v29 != 1)
      {
        v29 += 24;
        if (!--v28)
        {
          goto LABEL_9;
        }
      }

      v34 = *(v29 - 2);
      v33 = *(v29 - 1);

      v35 = sub_1D6619EF0(0x7261696C69787561, 0xE900000000000079);
      sub_1D5E2D970();
      v21 = swift_allocError();
      *v36 = v34;
      *(v36 + 8) = v33;
      *(v36 + 16) = v35;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v47 + 8))(v19, v16);
      goto LABEL_2;
    }

LABEL_9:
  }

  v52 = 0uLL;
  v53 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0, MEMORY[0x1E69D64C8]);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v30 = v43;
    v31 = v54;
    sub_1D726431C();
    v32 = v47;
    v42 = sub_1D725A74C();
    (*(v44 + 8))(v30, v31);
    v26 = v48;
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
    v32 = v47;
  }

  type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  v52 = xmmword_1D728CF30;
  v53 = 0;
  sub_1D5B58B84(&qword_1EDF1C0A0, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v37 = v45;
  sub_1D726427C();
  v38 = v46;
  sub_1D725B76C();
  v52 = xmmword_1D7297410;
  v53 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v32 + 8))(v19, v25);
  v39 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
  v40 = v37;
  v41 = v39;
  sub_1D5C4E944(v40, v38 + *(v39 + 20), qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  sub_1D5C4E944(v26, v38 + *(v41 + 24), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *v38 = v42;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCompilerSlotDefinitionItemSet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v138 = v136 - v7;
  v8 = sub_1D725B76C();
  v145 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v140 = v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, v4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v143 = (v136 - v13);
  v146 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  v142 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v14);
  v144 = v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v139 = v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  *&v154 = v136 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v136 - v24;
  sub_1D66814A8(0);
  v155 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
  sub_1D6681328(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF24D78, sub_1D6681328, &unk_1D7321584);
  v152 = v32;
  sub_1D5D2EE70(v32, v34, v36, v30, v32, v34, &type metadata for FormatVersions.StarSky, v31, v29, v35, &off_1F51F6CD8);
  v153 = v2;
  v37 = *v2;
  v38 = qword_1EDF31ED0;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v150 = v41 + 16;
  v151 = v42;
  v42(v25, v40, v39);
  v149 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v43 = *(v37 + 16);
  v141 = v8;
  if (v43)
  {
    v137 = v39;
    v44 = v155;
    v45 = &v29[*(v155 + 44)];
    v46 = *v45;
    v47 = *(v45 + 1);
    LOBYTE(v157) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v157;
    *(v48 + 40) = v46;
    *(v48 + 48) = v47;
    sub_1D668153C(0);
    v147 = v29;
    v50 = v49;
    sub_1D5B58B84(&qword_1EDF02C68, sub_1D668153C, MEMORY[0x1E69E6F60]);

    *&v148 = v50;
    v51 = sub_1D72647CC();
    LOBYTE(v157) = 0;
    v52 = swift_allocObject();
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 16) = v51;
    *(v52 + 40) = v157;
    v53 = &v29[*(v44 + 36)];
    v54 = *(v53 + 3);
    v55 = *(v53 + 4);
    v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
    MEMORY[0x1EEE9AC00](v56, v57);
    MEMORY[0x1EEE9AC00](v58, v59);
    v136[-4] = sub_1D5B4AA6C;
    v136[-3] = 0;
    v134 = sub_1D66815D0;
    v135 = v48;
    v60 = v156;
    v62 = sub_1D5D2F7A4(v25, sub_1D615B49C, v61, sub_1D615B4A4, &v136[-6], v54, v55);
    v63 = v60;
    if (v60)
    {
      sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);

      v64 = v147;
      return sub_1D5D2CFE8(v64, sub_1D66814A8);
    }

    v67 = v62;
    v29 = v147;

    if (v67)
    {
      v157 = 0uLL;
      v158 = 0;
      v159 = v37;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
    }

    v65 = v155;
    v66 = v154;
    v39 = v137;
  }

  else
  {
    sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);

    v65 = v155;
    v63 = v156;
    v66 = v154;
  }

  v68 = *(v152 + 20);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v69 = __swift_project_value_buffer(v39, qword_1EDFFCD68);
  v151(v66, v69, v39);
  swift_storeEnumTagMultiPayload();
  v148 = xmmword_1D728CF30;
  v157 = xmmword_1D728CF30;
  v158 = 0;
  v70 = &v29[*(v65 + 44)];
  v71 = *v70;
  v72 = *(v70 + 1);
  LOBYTE(v159) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = v148;
  *(v73 + 32) = v159;
  *(v73 + 40) = v71;
  *(v73 + 48) = v72;
  v74 = v153 + v68;
  v75 = v143;
  sub_1D5CDE2EC(v74, v143, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  if ((v142[6])(v75, 1, v146) == 1)
  {
    *&v148 = v72;

    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v75, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_15:
    v76 = v145;
    goto LABEL_16;
  }

  v137 = v39;
  v87 = sub_1D5C8F76C(v75, v144, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v143 = v136;
  MEMORY[0x1EEE9AC00](v87, v88);
  v142 = &v136[-6];
  v136[-4] = sub_1D5B4AA6C;
  v136[-3] = 0;
  v134 = sub_1D67089E4;
  v135 = v73;
  LOBYTE(v159) = 0;
  v89 = swift_allocObject();
  v156 = v63;
  v90 = v89;
  *(v89 + 16) = v148;
  *(v89 + 32) = v159;
  *(v89 + 40) = v71;
  *(v89 + 48) = v72;
  sub_1D668153C(0);
  v92 = v91;
  v93 = sub_1D5B58B84(&qword_1EDF02C68, sub_1D668153C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v136[2] = v92;
  v136[1] = v93;
  v94 = sub_1D72647CC();
  LOBYTE(v159) = 0;
  v95 = v66;
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  *(v96 + 24) = v148;
  *(v96 + 40) = v159;
  v97 = &v29[*(v65 + 36)];
  v98 = *(v97 + 3);
  v99 = *(v97 + 4);
  v100 = __swift_project_boxed_opaque_existential_1(v97, v98);
  MEMORY[0x1EEE9AC00](v100, v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  v104 = v142;
  v136[-4] = sub_1D615B4A4;
  v136[-3] = v104;
  v134 = sub_1D67089E4;
  v135 = v90;
  v105 = v156;
  v107 = sub_1D5D2F7A4(v95, sub_1D615B49C, v106, sub_1D615B4A4, &v136[-6], v98, v99);
  if (v105)
  {

    v108 = v154;
    sub_1D5D2CFE8(v144, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
    v64 = v29;
    return sub_1D5D2CFE8(v64, sub_1D66814A8);
  }

  v127 = v107;
  *&v148 = v72;

  v76 = v145;
  if (v127)
  {
    sub_1D5B58B84(&qword_1EDF06118, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    v128 = v144;
    sub_1D72647EC();
    v63 = 0;
    v129 = v154;

    sub_1D5D2CFE8(v128, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
    v39 = v137;
    goto LABEL_15;
  }

  sub_1D5D2CFE8(v144, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
  v63 = 0;
  v39 = v137;
LABEL_16:
  v77 = *(v152 + 24);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
  v79 = v39;
  v80 = v139;
  v151(v139, v78, v79);
  swift_storeEnumTagMultiPayload();
  v154 = xmmword_1D7297410;
  v157 = xmmword_1D7297410;
  v158 = 0;
  LOBYTE(v159) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v154;
  *(v81 + 32) = v159;
  v82 = v148;
  *(v81 + 40) = v71;
  *(v81 + 48) = v82;
  v83 = v153 + v77;
  v84 = v138;
  sub_1D5CDE2EC(v83, v138, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v85 = v141;
  if ((*(v76 + 48))(v84, 1, v141) == 1)
  {

    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v29, sub_1D66814A8);
    return sub_1D5D35558(v84, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v109 = (*(v76 + 32))(v140, v84, v85);
  v156 = v63;
  v153 = v136;
  MEMORY[0x1EEE9AC00](v109, v110);
  v136[-4] = sub_1D5B4AA6C;
  v136[-3] = 0;
  v134 = sub_1D67089E4;
  v135 = v81;
  LOBYTE(v159) = 0;
  v111 = v29;
  v112 = swift_allocObject();
  *(v112 + 16) = v154;
  *(v112 + 32) = v159;
  *(v112 + 40) = v71;
  *(v112 + 48) = v82;
  sub_1D668153C(0);
  sub_1D5B58B84(&qword_1EDF02C68, sub_1D668153C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v113 = sub_1D72647CC();
  LOBYTE(v159) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  *(v114 + 24) = v154;
  *(v114 + 40) = v159;
  v115 = *(v155 + 36);
  v147 = v111;
  v116 = (v111 + v115);
  v117 = *(v111 + v115 + 24);
  v118 = v116[4];
  v119 = __swift_project_boxed_opaque_existential_1(v116, v117);
  MEMORY[0x1EEE9AC00](v119, v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  v136[-4] = sub_1D615B4A4;
  v136[-3] = &v136[-6];
  v134 = sub_1D67089E4;
  v135 = v112;
  v123 = v156;
  v125 = sub_1D5D2F7A4(v80, sub_1D615B49C, v124, sub_1D615B4A4, &v136[-6], v117, v118);
  if (v123)
  {

    v126 = v147;
    (*(v145 + 8))(v140, v141);
LABEL_24:
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
    v64 = v126;
    return sub_1D5D2CFE8(v64, sub_1D66814A8);
  }

  v130 = v125;

  if (v130)
  {
    sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
    v131 = v140;
    v132 = v141;
    v126 = v147;
    sub_1D72647EC();
    v133 = v145;

    (*(v133 + 8))(v131, v132);
    goto LABEL_24;
  }

  (*(v145 + 8))(v140, v141);
  sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v147, sub_1D66814A8);
}

unint64_t sub_1D647E788()
{
  v1 = 0x69747265706F7270;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x7261696C69787561;
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

uint64_t sub_1D647E808@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6683EC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D647E840(uint64_t a1)
{
  v2 = sub_1D6681400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647E87C(uint64_t a1)
{
  v2 = sub_1D6681400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliary.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v43 = &v40 - v5;
  sub_1D5C8EAD0(0);
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668164C(0);
  v12 = v11;
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66816E0(0);
  sub_1D5B58B84(&qword_1EDF24D28, sub_1D66816E0, &unk_1D7321584);
  v16 = v50;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_2:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v20 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v21 = sub_1D7264AFC();
  LOBYTE(v20) = Dictionary<>.errorOnUnknownKeys.getter(v21);

  v22 = v12;
  v23 = v43;
  if (v20)
  {
    v24 = sub_1D726433C();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (v24 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v25)
        {
          goto LABEL_9;
        }
      }

      v28 = v22;
      v30 = *(v26 - 2);
      v29 = *(v26 - 1);

      v31 = sub_1D6619EF0(0x736D657469, 0xE500000000000000);
      sub_1D5E2D970();
      v17 = swift_allocError();
      *v32 = v30;
      *(v32 + 8) = v29;
      *(v32 + 16) = v31;
      *(v32 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v44 + 8))(v15, v28);
      a1 = v50;
      goto LABEL_2;
    }

LABEL_9:
  }

  v48 = 0uLL;
  v49 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0, MEMORY[0x1E69D64C8]);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    sub_1D726431C();
    v27 = v44;
    v33 = sub_1D725A74C();
    v34 = v7;
    v35 = v33;
    (*(v41 + 8))(v10, v34);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
    v27 = v44;
  }

  v48 = xmmword_1D728CF30;
  v49 = 0;
  sub_1D6681860();
  sub_1D726427C();
  v36 = v42;
  v37 = v35;
  v38 = v45;
  sub_1D725B76C();
  v48 = xmmword_1D7297410;
  v49 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  (*(v27 + 8))(v15, v22);
  v39 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  sub_1D5C4E944(v23, v36 + *(v39 + 24), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *v36 = v37;
  v36[1] = v38;
  v18 = v50;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliary.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v130 = v126 - v6;
  v7 = sub_1D725B76C();
  v133 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v131 = v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v134 = v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  *&v139 = v126 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v126 - v18;
  sub_1D66818B4(0);
  v140 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  sub_1D66816E0(0);
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF24D28, sub_1D66816E0, &unk_1D7321584);
  v129 = v26;
  sub_1D5D2EE70(v26, v28, v30, v24, v26, v28, &type metadata for FormatVersions.SydroF, v25, v23, v29, &off_1F51F6C58);
  v138 = v2;
  v31 = *v2;
  v32 = qword_1EDF31ED8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v137 = v35 + 16;
  v36(v19, v34, v33);
  v136 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v37 = *(v31 + 16);
  v141 = v23;
  v132 = v7;
  v128 = v33;
  v127 = v36;
  if (v37)
  {
    *&v135 = v34;
    v38 = v140;
    v39 = &v23[*(v140 + 44)];
    v41 = *v39;
    v40 = *(v39 + 1);
    LOBYTE(v144) = 0;
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = v144;
    *(v42 + 40) = v41;
    *(v42 + 48) = v40;
    sub_1D6681948(0);
    v44 = v43;
    sub_1D5B58B84(&qword_1EDF02C08, sub_1D6681948, MEMORY[0x1E69E6F60]);

    v45 = sub_1D72647CC();
    LOBYTE(v144) = 0;
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    *(v46 + 16) = v45;
    *(v46 + 40) = v144;
    v47 = &v23[*(v38 + 36)];
    v48 = *(v47 + 3);
    v49 = *(v47 + 4);
    v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
    MEMORY[0x1EEE9AC00](v50, v51);
    MEMORY[0x1EEE9AC00](v52, v53);
    v126[-4] = sub_1D5B4AA6C;
    v126[-3] = 0;
    v124 = sub_1D66819DC;
    v125 = v42;
    v54 = v142;
    v56 = sub_1D5D2F7A4(v19, sub_1D615B49C, v55, sub_1D615B4A4, &v126[-6], v48, v49);
    if (v54)
    {
      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

LABEL_28:
      v61 = v141;
      return sub_1D5D2CFE8(v61, sub_1D66818B4);
    }

    v59 = v56;
    v142 = v44;
    v60 = v141;

    v58 = v139;
    if (v59)
    {
      v144 = 0uLL;
      v145 = 0;
      v146 = v31;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);
      v57 = v140;
      v34 = v135;
      v142 = 0;
      v23 = v60;
      v7 = v132;
      v33 = v128;
      v36 = v127;
    }

    else
    {
      v142 = 0;
      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

      v23 = v60;
      v7 = v132;
      v57 = v140;
      v33 = v128;
      v36 = v127;
      v34 = v135;
    }
  }

  else
  {
    sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

    v57 = v140;
    v58 = v139;
  }

  v62 = v138[1];
  v36(v58, v34, v33);
  swift_storeEnumTagMultiPayload();
  v135 = xmmword_1D728CF30;
  v144 = xmmword_1D728CF30;
  v145 = 0;
  v63 = &v23[*(v57 + 44)];
  v65 = *v63;
  v64 = *(v63 + 1);
  LOBYTE(v146) = 0;
  v66 = swift_allocObject();
  v68 = v66;
  *(v66 + 16) = v135;
  *(v66 + 32) = v146;
  *(v66 + 40) = v65;
  *(v66 + 48) = v64;
  if (v62)
  {
    v126[3] = v126;
    v146 = v62;
    MEMORY[0x1EEE9AC00](v66, v67);
    v70 = v69;
    v126[-4] = sub_1D5B4AA6C;
    v126[-3] = 0;
    v124 = sub_1D67089E8;
    v125 = v68;
    v143 = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v135;
    *(v71 + 32) = v143;
    *(v71 + 40) = v65;
    *(v71 + 48) = v64;
    sub_1D6681948(0);
    v73 = v72;
    v74 = sub_1D5B58B84(&qword_1EDF02C08, sub_1D6681948, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v126[2] = v73;
    v126[1] = v74;
    v75 = sub_1D72647CC();
    v143 = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v135;
    *(v76 + 40) = v143;
    v77 = *(v70 + 36);
    v78 = v139;
    v79 = &v23[v77];
    v80 = *&v23[v77 + 24];
    v81 = *&v23[v77 + 32];
    v82 = __swift_project_boxed_opaque_existential_1(v79, v80);
    MEMORY[0x1EEE9AC00](v82, v83);
    MEMORY[0x1EEE9AC00](v84, v85);
    v126[-4] = sub_1D615B4A4;
    v126[-3] = &v126[-6];
    v124 = sub_1D67089E8;
    v125 = v71;
    v86 = v142;
    v88 = sub_1D5D2F7A4(v78, sub_1D615B49C, v87, sub_1D615B4A4, &v126[-6], v80, v81);
    v89 = v86;
    if (v86)
    {

      v90 = v78;
LABEL_27:
      sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
      goto LABEL_28;
    }

    v93 = v88;
    *&v135 = v64;

    if (v93)
    {
      sub_1D6681A58();
      sub_1D72647EC();
      v91 = v134;

      sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
      v7 = v132;
      v92 = v133;
    }

    else
    {

      sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
      v7 = v132;
      v92 = v133;
      v91 = v134;
    }

    v33 = v128;
    v36 = v127;
  }

  else
  {
    *&v135 = v64;

    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    v89 = v142;
    v92 = v133;
    v91 = v134;
  }

  v94 = *(v129 + 24);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v95 = __swift_project_value_buffer(v33, qword_1EDFFCE50);
  v36(v91, v95, v33);
  swift_storeEnumTagMultiPayload();
  v139 = xmmword_1D7297410;
  v144 = xmmword_1D7297410;
  v145 = 0;
  LOBYTE(v146) = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v139;
  *(v96 + 32) = v146;
  v97 = v135;
  *(v96 + 40) = v65;
  *(v96 + 48) = v97;
  v98 = v138 + v94;
  v99 = v130;
  sub_1D5CDE2EC(v98, v130, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v92 + 48))(v99, 1, v7) == 1)
  {

    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v141, sub_1D66818B4);
    return sub_1D5D35558(v99, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v101 = (*(v92 + 32))(v131, v99, v7);
  v138 = v126;
  MEMORY[0x1EEE9AC00](v101, v102);
  v142 = v89;
  v126[-4] = sub_1D5B4AA6C;
  v126[-3] = 0;
  v124 = sub_1D67089E8;
  v125 = v96;
  LOBYTE(v146) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v139;
  *(v103 + 32) = v146;
  *(v103 + 40) = v65;
  *(v103 + 48) = v97;
  sub_1D6681948(0);
  sub_1D5B58B84(&qword_1EDF02C08, sub_1D6681948, MEMORY[0x1E69E6F60]);
  v104 = v91;
  swift_retain_n();
  v105 = v141;
  v106 = sub_1D72647CC();
  LOBYTE(v146) = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v106;
  *(v107 + 24) = v139;
  *(v107 + 40) = v146;
  v108 = (v105 + *(v140 + 36));
  v109 = v108[3];
  v110 = v108[4];
  v111 = __swift_project_boxed_opaque_existential_1(v108, v109);
  MEMORY[0x1EEE9AC00](v111, v112);
  MEMORY[0x1EEE9AC00](v113, v114);
  v126[-4] = sub_1D615B4A4;
  v126[-3] = &v126[-6];
  v124 = sub_1D67089E8;
  v125 = v103;
  v115 = v142;
  v117 = sub_1D5D2F7A4(v104, sub_1D615B49C, v116, sub_1D615B4A4, &v126[-6], v109, v110);
  if (v115)
  {

    v118 = v134;
    (*(v133 + 8))(v131, v132);
    v90 = v118;
    goto LABEL_27;
  }

  v119 = v117;

  if ((v119 & 1) == 0)
  {

    (*(v133 + 8))(v131, v132);
    v90 = v134;
    goto LABEL_27;
  }

  sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
  v120 = v131;
  v121 = v132;
  v122 = v141;
  sub_1D72647EC();
  v123 = v133;

  (*(v123 + 8))(v120, v121);
  sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
  v61 = v122;
  return sub_1D5D2CFE8(v61, sub_1D66818B4);
}

unint64_t sub_1D647FEE8()
{
  v1 = 0x69747265706F7270;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x736D657469;
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

uint64_t sub_1D647FF60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6684040(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D647FF98(uint64_t a1)
{
  v2 = sub_1D66817B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647FFD4(uint64_t a1)
{
  v2 = sub_1D66817B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  sub_1D5C8EAD0(0);
  v5 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6681AAC(0);
  v34 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6681B40(0);
  sub_1D5B58B84(&qword_1EC8869F8, sub_1D6681B40, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v13 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v34;
  if (v15)
  {
    v17 = sub_1D726433C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (*v19 != 1)
      {
        v19 += 24;
        if (!--v18)
        {
          goto LABEL_9;
        }
      }

      v22 = v12;
      v24 = *(v19 - 2);
      v23 = *(v19 - 1);

      v25 = v16;
      v26 = sub_1D6628490(0x69747265706F7270, 0xEA00000000007365);
      sub_1D5E2D970();
      v13 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v23;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v41 + 8))(v22, v25);
      goto LABEL_3;
    }

LABEL_9:
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0, MEMORY[0x1E69D64C8]);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v20 = v8;
    sub_1D726431C();
    v21 = v33;
    v28 = sub_1D725A74C();
    (*(v32 + 8))(v20, v5);
    v29 = v41;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v41;
    v21 = v33;
  }

  (*(v29 + 8))(v12, v16);
  *v21 = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6681CC0(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6681B40(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC8869F8, sub_1D6681B40, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet, v16, v18, v13, &type metadata for FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet, v16, &type metadata for FormatVersions.SydroF, v14, v11, v17, &off_1F51F6C58);
  v19 = qword_1EDF31ED8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  LOBYTE(v47) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v47;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  sub_1D6681D54(0);
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EC886A10, sub_1D6681D54, MEMORY[0x1E69E6F60]);

  v45[1] = v27;
  v29 = sub_1D72647CC();
  LOBYTE(v47) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v47;
  v31 = &v11[*(v8 + 36)];
  v32 = *(v31 + 3);
  v33 = *(v31 + 4);
  v34 = __swift_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D6681DE8;
  v44 = v25;
  v38 = v46;
  v40 = sub_1D5D2F7A4(v6, sub_1D615B49C, v39, sub_1D615B4A4, &v45[-6], v32, v33);
  if (!v38)
  {
    v41 = v40;
    v46 = v28;

    if (v41)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = v12;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D6681CC0);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D6681CC0);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D6681CC0);
}

uint64_t sub_1D6480930(uint64_t a1)
{
  v2 = sub_1D6681C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648096C(uint64_t a1)
{
  v2 = sub_1D6681C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatComputedInvalidation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v30 = *(v1 + 16);
  v31 = v15;
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = *(v1 + 48) | (*(v1 + 50) << 16);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatComputedInvalidation, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatComputedInvalidation, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v20, v14, v21, &off_1F51F6B78);
  if ((v18 & 0x800000) != 0)
  {
    v37 = BYTE2(v18) & 1;
    v32[0] = v31;
    v32[1] = v30;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = BYTE2(v18) & 1;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCE8);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638DFFC(1, v32, v6);
    v26 = v6;
  }

  else
  {
    v23 = v31;
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCDF8);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638DE30(0, v23, v10);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6480CF4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646E616D6D6F63;
  }

  else
  {
    v2 = 0x73646E6F636573;
  }

  if (*a2)
  {
    v3 = 0x646E616D6D6F63;
  }

  else
  {
    v3 = 0x73646E6F636573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6480D7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6480DF4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6480E50(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6480EC4(uint64_t *a1@<X8>)
{
  v2 = 0x73646E6F636573;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FormatContentBackground.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668459C(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66846C4(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC886A48, sub_1D66846C4, &unk_1D7321584);
  sub_1D5D2EE70(v3, v16, v18, v13, v3, v16, &type metadata for FormatVersions.StarSkyC, v14, v12, v17, &off_1F51F6B18);
  v44[1] = OBJC_IVAR____TtC8NewsFeed23FormatContentBackground_content;
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD00);
  (*(*(v19 - 8) + 16))(v7, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44[5] = 0;
  v44[6] = 0;
  v45 = 0;
  v21 = &v12[*(v9 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v46 = 0;
  v24 = swift_allocObject();
  v44[3] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v46;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D67089EC;
  v43 = v26;
  v46 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v46;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6684630(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EC886A50, sub_1D6684630, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[0] = v29;
  v30 = sub_1D72647CC();
  v46 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v46;
  v32 = &v12[*(v9 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D6684844;
  v43 = v27;
  v39 = v44[4];
  sub_1D5D2BC70(v7, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    type metadata accessor for FormatContent(0);
    sub_1D5B58B84(&qword_1EC886280, type metadata accessor for FormatContent, &protocol conformance descriptor for FormatContent);
    sub_1D72647EC();
    sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v12, sub_1D668459C);
}

uint64_t sub_1D64814D4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

void sub_1D6481508(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D64815F4(uint64_t a1)
{
  v2 = sub_1D668479C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6481630(uint64_t a1)
{
  v2 = sub_1D668479C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v54 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v53 = v47 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v51 = v47 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = v47 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v49 = v47 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v48 = v47 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v47[1] = v47 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v47[0] = v47 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v47 - v32;
  v55 = *v1;
  v35 = a1[3];
  v34 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
  v38 = *(*(v36 - 8) + 16);
  v38(v33, v37, v36);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = v58;
  sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v35, v34);
  if (v39)
  {
    return sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  v41 = v56;
  v42 = v56[3];
  v58 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v42);
  if (v55 <= 3)
  {
    v45 = v37;
    if (v55 > 1)
    {
      v44 = v48;
      v38(v48, v45, v36);
    }

    else
    {
      v44 = v47[0];
      v38(v47[0], v45, v36);
    }
  }

  else if (v55 <= 5)
  {
    v46 = v37;
    if (v55 == 4)
    {
      v44 = v50;
      v38(v50, v46, v36);
    }

    else
    {
      v44 = v51;
      v38(v51, v46, v36);
    }
  }

  else
  {
    v43 = v37;
    if (v55 == 6)
    {
      v44 = v52;
      v38(v52, v43, v36);
    }

    else
    {
      v44 = v53;
      v38(v53, v43, v36);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v44, sub_1D5B4AA6C, 0, v42, v58);
  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v57, v57[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t FormatContentOverlayValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v59 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v57 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v58 = &v52 - v13;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v15 = v14;
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v52 - v17;
  v63 = a2;
  v64 = a3;
  v20 = type metadata accessor for FormatContentOverlayValue(0, a2, a3, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v52 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v25 = v65;
  sub_1D7264B0C();
  v26 = v25;
  if (v25)
  {
    v27 = a1;
LABEL_10:
    sub_1D61E4FBC(v27, v26);
    swift_willThrow();

    v42 = v27;
  }

  else
  {
    v54 = v24;
    v55 = v21;
    v56 = v20;
    v65 = v18;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v28 = sub_1D7264AFC();
    v29 = Dictionary<>.errorOnUnknownKeys.getter(v28);

    v27 = a1;
    v32 = v63;
    v31 = v64;
    v33 = v62;
    if (v29)
    {
      v34 = sub_1D726433C();
      v35 = (v34 + 40);
      v36 = *(v34 + 16) + 1;
      while (--v36)
      {
        v37 = v35 + 2;
        v38 = *v35;
        v35 += 2;
        if (v38 >= 4)
        {
          v39 = *(v37 - 3);

          sub_1D5E2D970();
          v26 = swift_allocError();
          *v40 = v39;
          *(v40 + 8) = v38;
          *(v40 + 16) = &unk_1F51148D8;
          *(v40 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v61 + 8))(v65, v15);
          goto LABEL_10;
        }
      }
    }

    _s10CodingTypeOMa_123(0, v32, v31, v30);
    v66 = 0uLL;
    swift_getWitnessTable();
    v41 = v15;
    sub_1D726431C();
    v53 = v27;
    if (v67)
    {
      v44 = v60;
      v66 = xmmword_1D7279980;
      v48 = v65;
      sub_1D726431C();
      (*(v61 + 8))(v48, v15);
      v49 = v33;
    }

    else
    {
      v66 = xmmword_1D7279980;
      v45 = v58;
      v46 = v65;
      sub_1D726431C();
      v47 = v41;
      v44 = v60;
      (*(v61 + 8))(v46, v47);
      v49 = v45;
    }

    v50 = v54;
    (*(v59 + 32))(v54, v49, v32);
    v51 = v56;
    swift_storeEnumTagMultiPayload();
    (*(v55 + 32))(v44, v50, v51);
    v42 = v53;
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t FormatContentOverlayValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v70 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v67 = &v67 - v12;
  v75 = *(a2 + 16);
  v13 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v69 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v68 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v67 - v22;
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  v73 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v35 = sub_1D5C30408();
  v74 = v32;
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v36, v34, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v33, v32, v35, &off_1F51F6AF8);
  (*(v24 + 16))(v28, v72, a2);
  v37 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = *(v13 + 32);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = v68;
      v41 = v75;
      v39(v68, v28, v75);
      v77 = 1;
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCE50);
      v44 = v70;
      (*(*(v42 - 8) + 16))(v70, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = *(a2 + 24);
      v47 = _s10CodingTypeOMa_123(0, v41, v45, v46);
      WitnessTable = swift_getWitnessTable();
      v49 = *(v45 + 16);
      v50 = &v77;
    }

    else
    {
      v40 = v69;
      v41 = v75;
      v39(v69, v28, v75);
      v78 = 2;
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCE50);
      v44 = v71;
      (*(*(v61 - 8) + 16))(v71, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = *(a2 + 24);
      v47 = _s10CodingTypeOMa_123(0, v41, v63, v64);
      WitnessTable = swift_getWitnessTable();
      v49 = *(v63 + 16);
      v50 = &v78;
    }

    v65 = v47;
    v60 = v74;
    sub_1D71B5D20(v50, v40, v44, v73, v65, v41, WitnessTable, v49);
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
    (*(v37 + 8))(v40, v41);
  }

  else
  {
    v51 = v67;
    v52 = v75;
    v39(v23, v28, v75);
    v76 = 0;
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCE50);
    (*(*(v53 - 8) + 16))(v51, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v55 = *(a2 + 24);
    v57 = _s10CodingTypeOMa_123(0, v52, v55, v56);
    v58 = swift_getWitnessTable();
    v59 = v57;
    v60 = v74;
    sub_1D71B5D20(&v76, v23, v51, v73, v59, v52, v58, *(v55 + 16));
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    (*(v37 + 8))(v23, v52);
  }

  return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
}

unint64_t sub_1D6482C50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6482C9C(char a1)
{
  if (!a1)
  {
    return 0x6563616C706572;
  }

  if (a1 == 1)
  {
    return 0x646E65707061;
  }

  return 0x646E6570657270;
}

uint64_t sub_1D6482CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6482D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6482DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6482E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1D6482EB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6482C50(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6482EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6482C9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatContentSizeCategoryExpression.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D66848D8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668496C(0);
  sub_1D5B58B84(&qword_1EDF0C3D0, sub_1D668496C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5CB9318();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatContentSizeCategoryExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6684AEC(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D668496C(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF0C3D0, sub_1D668496C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatContentSizeCategoryExpression, v16, v18, v13, &type metadata for FormatContentSizeCategoryExpression, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v44[3] = 0;
  v44[4] = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v46 = 0;
  v24 = swift_allocObject();
  v44[1] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v46;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D67089F0;
  v43 = v26;
  v46 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v46;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6684B80(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF02C58, sub_1D6684B80, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[0] = v29;
  v30 = sub_1D72647CC();
  v46 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v46;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D6684C14;
  v43 = v27;
  v39 = v44[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D6684C90();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6684AEC);
}