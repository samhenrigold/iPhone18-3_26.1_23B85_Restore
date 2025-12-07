uint64_t sub_1D6530188(char a1)
{
  result = 2020557416;
  switch(a1)
  {
    case 1:
      result = 2020557430;
      break;
    case 2:
      result = 0x79616C7265764F68;
      break;
    case 3:
      result = 0x79616C7265764F76;
      break;
    case 4:
      result = 2003134838;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x6567616D69;
      break;
    case 7:
      result = 1835365481;
      break;
    case 8:
      result = 0x6563617073;
      break;
    case 9:
      result = 0x74657070696E73;
      break;
    case 10:
      result = 0x656D656C70707573;
      break;
    case 11:
      result = 0x686374697773;
      break;
    case 12:
      result = 1953459315;
      break;
    case 13:
      result = 0x6269737365636361;
      break;
    case 14:
      result = 0x6E6F74747562;
      break;
    case 15:
      result = 0x70756F7267;
      break;
    case 16:
      result = 0x6465626D45626577;
      break;
    case 17:
      result = 0x656D617266;
      break;
    case 18:
      result = 0x746165706572;
      break;
    case 19:
      result = 0x736E6F6974706FLL;
      break;
    case 20:
      result = 0x6569566574617473;
      break;
    case 21:
      result = 0x6D6F74737563;
      break;
    case 22:
      result = 0x746E697270;
      break;
    case 23:
      result = 0x63697274654D6461;
      break;
    case 24:
      result = 1633905005;
      break;
    case 25:
      result = 0x4D6465726579616CLL;
      break;
    case 26:
      result = 0x6F65646976;
      break;
    case 27:
      result = 0x766F436575737369;
      break;
    case 28:
      result = 0x6572616873;
      break;
    case 29:
      result = 0x6B636F6C62;
      break;
    case 30:
      result = 0x797274656D6F6567;
      break;
    case 31:
      result = 0x616C506F65646976;
      break;
    case 32:
      result = 0x73736572676F7270;
      break;
    case 33:
      result = 0x646E69426D657469;
      break;
    case 34:
      result = 0x7261696C69787561;
      break;
    case 35:
      result = 0x7465736572;
      break;
    case 36:
      result = 0x656C626169726176;
      break;
    case 37:
      result = 0x696F706B61657262;
      break;
    case 38:
      result = 0x6D45656C7A7A7570;
      break;
    case 39:
      result = 0x65726F736E6F7073;
      break;
    case 40:
      result = 0x786F4278656C66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65305CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6530188(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6530654()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6530724(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65307E0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65308AC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E656D656C65;
  v4 = 0xE600000000000000;
  v5 = 0x6E6564646968;
  if (*v1 != 2)
  {
    v5 = 0x74756F6B61657262;
    v4 = 0xEF746E656D656C45;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D73BB7B0;
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

uint64_t sub_1D6530988()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6E6F697469736F70;
  }
}

void sub_1D65309BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
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

uint64_t sub_1D6530AA8(uint64_t a1)
{
  v2 = sub_1D6670184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6530AE4(uint64_t a1)
{
  v2 = sub_1D6670184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNotExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A5D04(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5C79054(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF254B8, sub_1D5C79054, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatNotExpression, v16, v18, v13, &type metadata for FormatNotExpression, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
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
  sub_1D66A5D98(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF034F8, sub_1D66A5D98, MEMORY[0x1E69E6F60]);
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
  v42 = sub_1D66A5E2C;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D66596F4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66A5D04);
}

void sub_1D6531024(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
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

uint64_t sub_1D6531118(uint64_t a1)
{
  v2 = sub_1D5C996D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6531154(uint64_t a1)
{
  v2 = sub_1D5C996D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNotificationsAction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatNotificationsAction, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatNotificationsAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v17, v14, v18, &off_1F51F6AF8);
  if (v15)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B6AC(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B6AC(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65314BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x62616E456F747561;
  }

  else
  {
    v3 = 0x735574706D6F7270;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v5 = 0x62616E456F747561;
  }

  else
  {
    v5 = 0x735574706D6F7270;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656CLL;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6531568()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65315F0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6531664(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65316F4(uint64_t *a1@<X8>)
{
  v2 = 0x735574706D6F7270;
  if (*v1)
  {
    v2 = 0x62616E456F747561;
  }

  v3 = 0xEA0000000000656CLL;
  if (!*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    v14 = v7;
    if (v12)
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
          *(v21 + 16) = &unk_1F51162C8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A5EFC();
    v29 = 0uLL;
    sub_1D726431C();
    v23 = v30;
    if (v30)
    {
      if (v30 != 1)
      {
        v29 = xmmword_1D7279980;
        sub_1D66A5F50();
        sub_1D726431C();
        (*(v14 + 8))(v10, v6);
        v26 = v30;
        goto LABEL_17;
      }

      sub_1D5C5A334(0);
      v29 = xmmword_1D7279980;
      v24 = &qword_1EDF33F20;
      v25 = sub_1D5C5A334;
    }

    else
    {
      sub_1D5C71DC8(0);
      v29 = xmmword_1D7279980;
      v24 = &qword_1EDF33F30;
      v25 = sub_1D5C71DC8;
    }

    sub_1D5B58B84(v24, v25, &protocol conformance descriptor for FormatValue<A>);
    sub_1D726431C();
    (*(v14 + 8))(v10, v6);
    v26 = v30;
LABEL_17:
    *v13 = v26;
    *(v13 + 8) = v23;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatNumber.encode(to:)(void *a1)
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
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatNumber, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatNumber, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v22, v18, v23, &off_1F51F6BF8);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BBEA0(1, v19, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCCE8);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BC06C(2, v19, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD18);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BBCD4(0, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6531FDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x72656765746E69;
  if (v2 != 1)
  {
    v3 = 0x676E69646E6962;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x74616F6C66;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x72656765746E69;
  if (*a2 != 1)
  {
    v6 = 0x676E69646E6962;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x74616F6C66;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
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

uint64_t sub_1D65320DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D653217C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6532208(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65322A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663674(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65322D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x72656765746E69;
  if (v2 != 1)
  {
    v4 = 0x676E69646E6962;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x74616F6C66;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatNumberBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v24;
    if (v13)
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
          *(v21 + 16) = &unk_1F5116318;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A5FA4();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D6677FFC();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatNumberBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatNumberBinding, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatNumberBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v13, v10, v14, &off_1F51F6CB8);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCCE8);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A621C(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D6532A18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x696C7069746C756DLL;
    if (a1 != 8)
    {
      v5 = 1885433183;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000018;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C797473;
    v2 = 0xD000000000000014;
    v3 = 0xD000000000000014;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E69646E756F72;
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

uint64_t sub_1D6532B68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A6A70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6532BA0(uint64_t a1)
{
  v2 = sub_1D666C644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6532BDC(uint64_t a1)
{
  v2 = sub_1D666C644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNumberFormatRoundingMode.encode(to:)(void *a1)
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
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
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

uint64_t FormatNumberFormatStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v57 = v49 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v56 = v49 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = v49 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v54 = v49 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v53 = v49 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v52 = v49 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v51 = v49 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v50 = v49 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v49 - v32;
  v59 = *v1;
  v34 = a1[3];
  v35 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD18);
  v38 = *(*(v36 - 8) + 16);
  v38(v33, v37, v36);
  v39 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v40 = v62;
  sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v34, v35);
  if (v40)
  {
    return sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  }

  v49[1] = v39;
  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  v42 = v60;
  v43 = v60[3];
  v62 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v43);
  if (v59 <= 3)
  {
    if (v59 > 1)
    {
      v46 = v52;
      v38(v52, v37, v36);
    }

    else
    {
      v46 = v50;
      v38(v50, v37, v36);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v46, sub_1D5B4AA6C, 0, v43, v62);
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D7264B3C();
  }

  else if (v59 <= 5)
  {
    v47 = v37;
    v48 = v54;
    v38(v54, v47, v36);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v48, sub_1D5B4AA6C, 0, v43, v62);
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D7264B3C();
  }

  else
  {
    v44 = v37;
    if (v59 == 6)
    {
      v45 = v56;
      v38(v56, v44, v36);
    }

    else
    {
      v45 = v57;
      v38(v57, v44, v36);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v43, v62);
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D7264B3C();
  }

  __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t FormatOption.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v146 = &v143 - v6;
  v149 = type metadata accessor for FormatVersionRequirement(0);
  v145 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v7);
  v147 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v148 = &v143 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v150 = &v143 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v152 = &v143 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v143 - v20;
  sub_1D66A6008(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = type metadata accessor for FormatOption(0);
  sub_1D5C4DE50(0);
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF24C98, sub_1D5C4DE50, &unk_1D7321584);
  v144 = v29;
  sub_1D5D2EE70(v29, v31, v33, v27, v29, v31, &type metadata for FormatVersions.JazzkonC, v28, v26, v32, &off_1F51F6C78);
  v34 = *v2;
  v35 = v2[1];
  v154 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v151 = v37;
  v153 = v36;
  v156 = v38 + 16;
  v157 = v39;
  (v39)(v21);
  v155 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v166 = v34;
  v167 = v35;
  v164 = 0uLL;
  v165 = 0;
  v40 = &v26[*(v23 + 44)];
  v41 = v23;
  v42 = *v40;
  v43 = *(v40 + 1);
  v168 = 0;
  v44 = swift_allocObject();
  v162 = &v143;
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v168;
  *(v44 + 40) = v42;
  *(v44 + 48) = v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v161 = &v143 - 6;
  *(&v143 - 4) = sub_1D5B4AA6C;
  *(&v143 - 3) = 0;
  v141 = sub_1D6708AEC;
  v142 = v46;
  v168 = 0;
  v47 = v26;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v168;
  v158 = v42;
  *(v48 + 40) = v42;
  *(v48 + 48) = v43;
  sub_1D66A609C(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF02B78, sub_1D66A609C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v159 = v51;
  v160 = v50;
  v52 = sub_1D72647CC();
  v168 = 0;
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 16) = v52;
  *(v53 + 40) = v168;
  v54 = v21;
  v55 = &v47[*(v41 + 36)];
  v56 = *(v55 + 3);
  v57 = *(v55 + 4);
  v58 = __swift_project_boxed_opaque_existential_1(v55, v56);
  MEMORY[0x1EEE9AC00](v58, v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  v62 = v161;
  *(&v143 - 4) = sub_1D615B4A4;
  *(&v143 - 3) = v62;
  v141 = sub_1D6708AEC;
  v142 = v48;
  v63 = v163;
  sub_1D5D2BC70(v54, sub_1D615B49C, v64, sub_1D615B4A4, (&v143 - 6), v56, v57);
  if (v63)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v66 = v47;
    return sub_1D5D2CFE8(v66, sub_1D66A6008);
  }

  v143 = v55;
  v161 = v43;

  v65 = v47;
  sub_1D72647EC();
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

  v68 = v154[2];
  v69 = v152;
  v157(v152, v151, v153);
  swift_storeEnumTagMultiPayload();
  v166 = v68;
  v163 = xmmword_1D728CF30;
  v164 = xmmword_1D728CF30;
  v165 = 0;
  v168 = 0;
  v70 = swift_allocObject();
  v151 = &v143;
  *(v70 + 16) = v163;
  *(v70 + 32) = v168;
  v71 = v158;
  v72 = v161;
  *(v70 + 40) = v158;
  *(v70 + 48) = v72;
  MEMORY[0x1EEE9AC00](v70, v73);
  v162 = 0;
  *(&v143 - 4) = sub_1D5B4AA6C;
  *(&v143 - 3) = 0;
  v141 = sub_1D6708AEC;
  v142 = v74;
  v168 = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = v163;
  *(v75 + 32) = v168;
  *(v75 + 40) = v71;
  *(v75 + 48) = v72;
  v76 = v69;
  v77 = v65;
  swift_retain_n();
  v78 = sub_1D72647CC();
  v168 = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v163;
  *(v79 + 40) = v168;
  v80 = *(v143 + 3);
  v81 = *(v143 + 4);
  v82 = __swift_project_boxed_opaque_existential_1(v143, v80);
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v143 - 4) = sub_1D615B4A4;
  *(&v143 - 3) = (&v143 - 6);
  v141 = sub_1D6708AEC;
  v142 = v75;
  v86 = v162;
  sub_1D5D2BC70(v76, sub_1D615B49C, v87, sub_1D615B4A4, (&v143 - 6), v80, v81);
  if (v86)
  {
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    v66 = v77;
    return sub_1D5D2CFE8(v66, sub_1D66A6008);
  }

  sub_1D66A6130();
  sub_1D72647EC();
  v162 = 0;
  v151 = v77;
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

  v88 = v154;
  v89 = v154[3];
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v90 = v153;
  v91 = __swift_project_value_buffer(v153, qword_1EDFFCCA8);
  v92 = v150;
  v157(v150, v91, v90);
  swift_storeEnumTagMultiPayload();
  v163 = xmmword_1D7297410;
  v164 = xmmword_1D7297410;
  v165 = 0;
  LOBYTE(v166) = 0;
  v93 = swift_allocObject();
  v95 = v93;
  *(v93 + 16) = v163;
  *(v93 + 32) = v166;
  v96 = v158;
  v97 = v161;
  *(v93 + 40) = v158;
  *(v93 + 48) = v97;
  if (v89 != 1)
  {
    v166 = v89;
    MEMORY[0x1EEE9AC00](v93, v94);
    *(&v143 - 4) = sub_1D5B4AA6C;
    *(&v143 - 3) = 0;
    v141 = sub_1D6708AEC;
    v142 = v95;
    v168 = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v163;
    *(v108 + 32) = v168;
    *(v108 + 40) = v96;
    *(v108 + 48) = v97;
    swift_retain_n();
    sub_1D5B71354(v89);
    v109 = sub_1D72647CC();
    v168 = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v163;
    *(v110 + 40) = v168;
    v111 = *(v143 + 3);
    v112 = *(v143 + 4);
    v113 = __swift_project_boxed_opaque_existential_1(v143, v111);
    MEMORY[0x1EEE9AC00](v113, v114);
    MEMORY[0x1EEE9AC00](v115, v116);
    *(&v143 - 4) = sub_1D615B4A4;
    *(&v143 - 3) = (&v143 - 6);
    v117 = v150;
    v141 = sub_1D6708AEC;
    v142 = v108;
    v118 = v162;
    v120 = sub_1D5D2F7A4(v150, sub_1D615B49C, v119, sub_1D615B4A4, (&v143 - 6), v111, v112);
    v162 = v118;
    if (v118)
    {

      sub_1D66A5FF8(v89);
      v98 = v151;
    }

    else
    {
      v137 = v120;

      v99 = v148;
      if ((v137 & 1) == 0)
      {

        sub_1D66A5FF8(v89);
        sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
        v98 = v151;
        v90 = v153;
        v88 = v154;
        v97 = v161;
        goto LABEL_13;
      }

      sub_1D66A6200();
      v98 = v151;
      v138 = v162;
      sub_1D72647EC();
      v162 = v138;
      v90 = v153;
      v88 = v154;
      v97 = v161;
      if (!v138)
      {

        sub_1D66A5FF8(v89);
        sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
        goto LABEL_13;
      }

      sub_1D66A5FF8(v89);
      v117 = v150;
    }

    sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v98, sub_1D66A6008);
  }

  sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

  v98 = v151;
  v99 = v148;
LABEL_13:
  v100 = *(v144 + 28);
  v101 = v157;
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v102 = __swift_project_value_buffer(v90, qword_1EDFFCE68);
  v101(v99, v102, v90);
  swift_storeEnumTagMultiPayload();
  v163 = xmmword_1D72BAA60;
  v164 = xmmword_1D72BAA60;
  v165 = 0;
  LOBYTE(v166) = 0;
  v103 = v99;
  v104 = swift_allocObject();
  *(v104 + 16) = v163;
  *(v104 + 32) = v166;
  v105 = v158;
  *(v104 + 40) = v158;
  *(v104 + 48) = v97;
  v106 = v88 + v100;
  v107 = v146;
  sub_1D5CDE2EC(v106, v146, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  if ((*(v145 + 48))(v107, 1, v149) != 1)
  {
    v121 = sub_1D5C8F76C(v107, v147, type metadata accessor for FormatVersionRequirement);
    MEMORY[0x1EEE9AC00](v121, v122);
    *(&v143 - 4) = sub_1D5B4AA6C;
    *(&v143 - 3) = 0;
    v141 = sub_1D6708AEC;
    v142 = v104;
    LOBYTE(v166) = 0;
    v123 = swift_allocObject();
    *(v123 + 16) = v163;
    *(v123 + 32) = v166;
    *(v123 + 40) = v105;
    *(v123 + 48) = v97;
    swift_retain_n();
    v124 = sub_1D72647CC();
    LOBYTE(v166) = 0;
    v125 = swift_allocObject();
    *(v125 + 16) = v124;
    *(v125 + 24) = v163;
    *(v125 + 40) = v166;
    v126 = *(v143 + 3);
    v127 = *(v143 + 4);
    v128 = __swift_project_boxed_opaque_existential_1(v143, v126);
    MEMORY[0x1EEE9AC00](v128, v129);
    MEMORY[0x1EEE9AC00](v130, v131);
    *(&v143 - 4) = sub_1D615B4A4;
    *(&v143 - 3) = (&v143 - 6);
    v141 = sub_1D66A6184;
    v142 = v123;
    v132 = v162;
    v134 = sub_1D5D2F7A4(v103, sub_1D615B49C, v133, sub_1D615B4A4, (&v143 - 6), v126, v127);
    if (v132)
    {

      v135 = v151;
      v136 = v147;
    }

    else
    {
      v139 = v134;

      if ((v139 & 1) == 0)
      {

        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
        v66 = v151;
        return sub_1D5D2CFE8(v66, sub_1D66A6008);
      }

      sub_1D5B58B84(&qword_1EC8825B8, type metadata accessor for FormatVersionRequirement, &unk_1D728F89C);
      v140 = v147;
      v135 = v151;
      sub_1D72647EC();

      v136 = v140;
    }

    sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
    v66 = v135;
    return sub_1D5D2CFE8(v66, sub_1D66A6008);
  }

  sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v98, sub_1D66A6008);
  return sub_1D5D35558(v107, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D6535114@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A6DAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D653514C(uint64_t a1)
{
  v2 = sub_1D5C8DE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6535188(uint64_t a1)
{
  v2 = sub_1D5C8DE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - v8;
  sub_1D66A6254(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v79 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C6A774(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF254A8, sub_1D5C6A774, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOptionBinding, v20, v22, v17, &type metadata for FormatOptionBinding, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v74 = v23;
  v76 = v25 + 16;
  v77 = v26;
  v26(v9, v24, v23);
  v75 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v15;
  v88 = v16;
  v85 = 0uLL;
  v86 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v89 = 0;
  v30 = swift_allocObject();
  *&v82 = &v72;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v89;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v72 - 4) = sub_1D5B4AA6C;
  *(&v72 - 3) = 0;
  v70 = sub_1D6708AF0;
  v71 = v32;
  v89 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v89;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66A62E8(0);
  v34 = v9;
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF034E8, sub_1D66A62E8, MEMORY[0x1E69E6F60]);
  v73 = v29;
  swift_retain_n();
  v80 = v37;
  v81 = v36;
  v38 = sub_1D72647CC();
  v89 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v89;
  v40 = *(v11 + 36);
  v84 = v14;
  v41 = &v14[v40];
  v42 = *&v14[v40 + 24];
  v43 = *&v14[v40 + 32];
  v44 = __swift_project_boxed_opaque_existential_1(&v14[v40], v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v72 - 4) = sub_1D615B4A4;
  *(&v72 - 3) = (&v72 - 6);
  v70 = sub_1D6708AF0;
  v71 = v33;
  v48 = v83;
  sub_1D5D2BC70(v34, sub_1D615B49C, v49, sub_1D615B4A4, (&v72 - 6), v42, v43);
  if (v48)
  {
    v50 = v84;
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v52 = v50;
  }

  else
  {
    v83 = v41;

    v51 = v84;
    sub_1D72647EC();
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v54 = qword_1EDF31EA8;
    v55 = v79;

    if (v54 != -1)
    {
      swift_once();
    }

    v56 = v74;
    v57 = __swift_project_value_buffer(v74, qword_1EDFFCD18);
    v58 = v78;
    v77(v78, v57, v56);
    swift_storeEnumTagMultiPayload();
    v59 = v51;
    if (*(v55 + 16) && (LOBYTE(v85) = 0, v60 = swift_allocObject(), v82 = xmmword_1D728CF30, *(v60 + 16) = xmmword_1D728CF30, *(v60 + 32) = v85, *(v60 + 40) = v72, *(v60 + 48) = v73, , v61 = sub_1D72647CC(), LOBYTE(v85) = 0, v62 = swift_allocObject(), *(v62 + 16) = v61, *(v62 + 24) = v82, *(v62 + 40) = v85, v63 = *(v83 + 3), v64 = *(v83 + 4), v65 = __swift_project_boxed_opaque_existential_1(v83, v63), MEMORY[0x1EEE9AC00](v65, v66), MEMORY[0x1EEE9AC00](v67, v68), *(&v72 - 4) = sub_1D5B4AA6C, *(&v72 - 3) = 0, v70 = sub_1D66A637C, v71 = v60, LOBYTE(v63) = sub_1D5D2F7A4(v58, sub_1D615B49C, v69, sub_1D615B4A4, (&v72 - 6), v63, v64), v59 = v84, , , (v63 & 1) != 0))
    {
      v85 = v82;
      v86 = 0;
      v87 = v79;
      sub_1D5C34D84(0, &qword_1EDF1AFE8, &type metadata for FormatOptionBindingModifier, MEMORY[0x1E69E62F8]);
      sub_1D66A63F8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
    }

    v52 = v59;
  }

  return sub_1D5D2CFE8(v52, sub_1D66A6254);
}

uint64_t sub_1D6535AA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A6F6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6535AD8(uint64_t a1)
{
  v2 = sub_1D5C6A8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6535B14(uint64_t a1)
{
  v2 = sub_1D5C6A8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6535B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7470697263736564;
  }

  else
  {
    v3 = 0x6574656D61726170;
  }

  if (v2)
  {
    v4 = 0xEA00000000007372;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x7470697263736564;
  }

  else
  {
    v5 = 0x6574656D61726170;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0xEA00000000007372;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6535C04()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6535C94(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6535D10(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6535D9C(uint64_t *a1@<X8>)
{
  v2 = 0x6574656D61726170;
  if (*v1)
  {
    v2 = 0x7470697263736564;
  }

  v3 = 0xEA00000000007372;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6535E38(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatOptionDependency, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatOptionDependency, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v15, v18, &off_1F51F6CF8);
  if (a2)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCA8);
    (*(*(v20 - 8) + 16))(v11, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6399400(0, a2, v11);
    v22 = v11;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCA8);
    (*(*(v23 - 8) + 16))(v7, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641DB9C(1, v7);
    v22 = v7;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D6536130(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E69646E6962;
  }

  else
  {
    v2 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v3 = 0x676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
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

uint64_t sub_1D65361B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6536230(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D653628C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D653630C(uint64_t *a1@<X8>)
{
  v2 = 0x736E6F6974706FLL;
  if (*v1)
  {
    v2 = 0x676E69646E6962;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FormatOptionEnum.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v98 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v107 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v95 - v11);
  sub_1D66A6494(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v100 = v1[3];
  v101 = v20;
  v97 = v1[4];
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CC72EC(0);
  v24 = v23;
  v25 = sub_1D5B58B84(qword_1EDF3ED78, sub_1D5CC72EC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOptionEnum, v24, v26, v21, &type metadata for FormatOptionEnum, v24, &type metadata for FormatVersions.JazzkonC, v22, v17, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v99 = v28;
  v106 = v27;
  v103 = v29 + 16;
  v104 = v30;
  (v30)(v12);
  v102 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v116 = v18;
  v117 = v19;
  v114 = 0uLL;
  v115 = 0;
  v31 = &v17[*(v14 + 44)];
  v111 = v12;
  v33 = *v31;
  v32 = *(v31 + 1);
  v118 = 0;
  v34 = swift_allocObject();
  v112 = &v95;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v118;
  *(v34 + 40) = v33;
  *(v34 + 48) = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v95 - 4) = sub_1D5B4AA6C;
  *(&v95 - 3) = 0;
  v93 = sub_1D6708AF4;
  v94 = v36;
  v118 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v118;
  v105 = v33;
  *(v37 + 40) = v33;
  *(v37 + 48) = v32;
  sub_1D66A6528(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03758, sub_1D66A6528, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v108 = v39;
  v109 = v40;
  v41 = sub_1D72647CC();
  v118 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v118;
  v43 = &v17[*(v14 + 36)];
  v44 = *(v43 + 3);
  v45 = *(v43 + 4);
  v110 = v17;
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v95 - 4) = sub_1D615B4A4;
  *(&v95 - 3) = (&v95 - 6);
  v93 = sub_1D6708AF4;
  v94 = v37;
  v50 = v111;
  v51 = v113;
  sub_1D5D2BC70(v111, sub_1D615B49C, v52, sub_1D615B4A4, (&v95 - 6), v44, v45);
  if (v51)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v53 = v110;
  }

  else
  {
    v95 = v43;
    v96 = v32;

    v53 = v110;
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v54 = v107;
    v104(v107, v99, v106);
    swift_storeEnumTagMultiPayload();
    v116 = v101;
    v117 = v100;
    v113 = xmmword_1D728CF30;
    v114 = xmmword_1D728CF30;
    v115 = 0;
    v118 = 0;
    v55 = swift_allocObject();
    v111 = &v95;
    *(v55 + 16) = v113;
    *(v55 + 32) = v118;
    v56 = v105;
    v57 = v96;
    *(v55 + 40) = v105;
    *(v55 + 48) = v57;
    MEMORY[0x1EEE9AC00](v55, v58);
    v112 = 0;
    *(&v95 - 4) = sub_1D5B4AA6C;
    *(&v95 - 3) = 0;
    v93 = sub_1D6708AF4;
    v94 = v59;
    v118 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v113;
    *(v60 + 32) = v118;
    *(v60 + 40) = v56;
    *(v60 + 48) = v57;
    swift_retain_n();
    v61 = sub_1D72647CC();
    v118 = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = v113;
    *(v62 + 40) = v118;
    v63 = *(v95 + 3);
    v64 = *(v95 + 4);
    v65 = __swift_project_boxed_opaque_existential_1(v95, v63);
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v95 - 4) = sub_1D615B4A4;
    *(&v95 - 3) = (&v95 - 6);
    v93 = sub_1D6708AF4;
    v94 = v60;
    v69 = v112;
    sub_1D5D2BC70(v54, sub_1D615B49C, v70, sub_1D615B4A4, (&v95 - 6), v63, v64);
    if (v69)
    {
      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      v112 = 0;
      sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);

      v71 = qword_1EDF31F10;
      v72 = v97;

      if (v71 != -1)
      {
        swift_once();
      }

      v73 = v106;
      v74 = __swift_project_value_buffer(v106, qword_1EDFFCDF8);
      v75 = v98;
      v104(v98, v74, v73);
      swift_storeEnumTagMultiPayload();
      v76 = v96;
      v77 = v105;
      v78 = v95;
      if (!*(v72 + 16))
      {
        goto LABEL_15;
      }

      LOBYTE(v114) = 0;
      v79 = swift_allocObject();
      v113 = xmmword_1D7297410;
      *(v79 + 16) = xmmword_1D7297410;
      *(v79 + 32) = v114;
      *(v79 + 40) = v77;
      *(v79 + 48) = v76;

      v80 = sub_1D72647CC();
      LOBYTE(v114) = 0;
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      *(v81 + 24) = v113;
      *(v81 + 40) = v114;
      v82 = *(v78 + 3);
      v83 = *(v78 + 4);
      v84 = __swift_project_boxed_opaque_existential_1(v78, v82);
      MEMORY[0x1EEE9AC00](v84, v85);
      MEMORY[0x1EEE9AC00](v86, v87);
      *(&v95 - 4) = sub_1D5B4AA6C;
      *(&v95 - 3) = 0;
      v93 = sub_1D66A65BC;
      v94 = v79;
      v88 = v112;
      v90 = sub_1D5D2F7A4(v75, sub_1D615B49C, v89, sub_1D615B4A4, (&v95 - 6), v82, v83);
      if (v88)
      {
        sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v53, sub_1D66A6494);
      }

      v92 = v90;

      if (v92)
      {
        v114 = v113;
        v115 = 0;
        v116 = v72;
        sub_1D66B73B4(0, &qword_1EDF1B548, &qword_1EDF43710, MEMORY[0x1E69E6158], &protocol witness table for String);
        sub_1D66A6638();
        sub_1D72647EC();

        sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
LABEL_15:
        sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
      }
    }
  }

  return sub_1D5D2CFE8(v53, sub_1D66A6494);
}

uint64_t sub_1D6537004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A7428(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D653703C(uint64_t a1)
{
  v2 = sub_1D5CC7458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6537078(uint64_t a1)
{
  v2 = sub_1D5CC7458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65370B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A7590(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65370EC(uint64_t a1)
{
  v2 = sub_1D5C60F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6537128(uint64_t a1)
{
  v2 = sub_1D5C60F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionId.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66A66D0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A6764(0);
  sub_1D5B58B84(&qword_1EDF24C18, sub_1D66A6764, &unk_1D7321584);
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

uint64_t FormatOptionId.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A68E4(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66A6764(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF24C18, sub_1D66A6764, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOptionId, v17, v19, v14, &type metadata for FormatOptionId, v17, &type metadata for FormatVersions.Sydro, v15, v11, v18, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCDE0);
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
  sub_1D66A6978(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02AD8, sub_1D66A6978, MEMORY[0x1E69E6F60]);
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

  return sub_1D5D2CFE8(v11, sub_1D66A68E4);
}

uint64_t sub_1D653794C(uint64_t a1)
{
  v2 = sub_1D66A683C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6537988(uint64_t a1)
{
  v2 = sub_1D66A683C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionType.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v68 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v76 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v75 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v74 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v73 = &v68 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v72 = &v68 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v71 = &v68 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v70 = &v68 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v68 - v41;
  v85 = *v1;
  v43 = a1[3];
  v44 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
  v47 = *(*(v45 - 8) + 16);
  (v47)(v42, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = v83;
  sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v43, v44);
  if (v48)
  {
    return sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  v50 = v82;
  v51 = v82[3];
  v83 = v82[4];
  v69 = v51;
  v52 = __swift_project_boxed_opaque_existential_1(v82, v51);
  v53 = v85;
  if (v85 > 5)
  {
    if (v85 > 8)
    {
      if (v85 == 9)
      {
        v68 = v52;
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v63 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
        v57 = v79;
        (v47)(v79, v63, v45);
        swift_storeEnumTagMultiPayload();
        v58 = v57;
        v59 = v69;
      }

      else
      {
        if (v85 != 10)
        {
          v68 = v52;
          if (qword_1EDF31E98 != -1)
          {
            swift_once();
          }

          v65 = __swift_project_value_buffer(v45, qword_1EDFFCD00);
          v66 = v81;
          (v47)(v81, v65, v45);
          swift_storeEnumTagMultiPayload();
          v55 = v66;
          v60 = v66;
          goto LABEL_41;
        }

        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v56 = __swift_project_value_buffer(v45, qword_1EDFFCD50);
        v57 = v80;
        (v47)(v80, v56, v45);
        swift_storeEnumTagMultiPayload();
        v58 = v57;
        v59 = v69;
      }

      sub_1D5D2BEC4(v58, sub_1D5B4AA6C, 0, v59, v83);
      v67 = v57;
LABEL_43:
      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
      goto LABEL_44;
    }

    if (v85 == 6)
    {
      v55 = v76;
      v47();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (v85 != 7)
      {
        v68 = v52;
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v64 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
        v55 = v78;
        (v47)(v78, v64, v45);
        swift_storeEnumTagMultiPayload();
        goto LABEL_37;
      }

      v55 = v77;
      v47();
      swift_storeEnumTagMultiPayload();
    }

    v60 = v55;
    v61 = v69;
    v62 = v83;
LABEL_42:
    sub_1D5D2BEC4(v60, sub_1D5B4AA6C, 0, v61, v62);
    v67 = v55;
    goto LABEL_43;
  }

  v68 = v52;
  if (v85 <= 2)
  {
    if (v85)
    {
      if (v85 == 1)
      {
        v54 = v71;
        (v47)(v71, v46, v45);
      }

      else
      {
        v54 = v72;
        (v47)(v72, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v54 = v70;
      (v47)(v70, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_32;
  }

  if (v85 == 3)
  {
    v54 = v73;
    (v47)(v73, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_32;
  }

  if (v85 != 4)
  {
    v55 = v75;
    (v47)(v75);
    swift_storeEnumTagMultiPayload();
LABEL_37:
    v60 = v55;
LABEL_41:
    v61 = v69;
    v62 = v83;
    goto LABEL_42;
  }

  v54 = v74;
  (v47)(v74, v46, v45);
  swift_storeEnumTagMultiPayload();
LABEL_32:
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v69, v83);
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
LABEL_44:
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D7264B3C();
  v86 = v53;
  FormatOptionType.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v84, v84[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_1D6538360(char a1)
{
  result = 0x6E61656C6F6F62;
  switch(a1)
  {
    case 1:
      result = 1836412517;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x74616F6C66;
      break;
    case 4:
      result = 0x72656765746E69;
      break;
    case 5:
      result = 0x676E69727473;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x726F6C6F63;
      break;
    case 8:
      result = 0x646E756F626E75;
      break;
    case 9:
      result = 0x6567616D69;
      break;
    case 10:
      result = 0x6F65646976;
      break;
    case 11:
      result = 0x7463617274736261;
      break;
    case 12:
      result = 1953394534;
      break;
    case 13:
      result = 0x616C506F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6538500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6538360(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatOptionsNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v165 = &v149 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v153 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v154 = &v149 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v162 = &v149 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v149 - v19;
  sub_1D66A76FC(0);
  v164 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D5C589E0(0);
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF25618, sub_1D5C589E0, &unk_1D7321584);
  v163 = v24;
  v30 = v26;
  v31 = v2;
  sub_1D5D2EE70(v4, v28, v32, v25, v4, v28, &type metadata for FormatVersions.JazzkonG, v30, v24, v29, &off_1F51F6BF8);
  swift_beginAccess();
  v34 = v2[2];
  v33 = v2[3];
  v35 = qword_1EDF31EA8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD18);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v40 = v38 + 16;
  v161 = v37;
  v39(v20);
  v41 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v165;
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  v45 = v20;
  v157 = v31;
  v156 = v36;
  v159 = v39;
  v158 = v40;
  v160 = v41;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v165, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v68 = v163;
LABEL_7:
    v69 = v161;
    goto LABEL_8;
  }

  v155 = v34;
  sub_1D5D35558(v165, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v46 = v164;
  v47 = v163;
  v48 = &v163[*(v164 + 11)];
  v50 = *v48;
  v49 = *(v48 + 1);
  LOBYTE(v167) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v167;
  *(v51 + 40) = v50;
  *(v51 + 48) = v49;
  sub_1D66A7790(0);
  v53 = v52;
  sub_1D5B58B84(&qword_1EDF03688, sub_1D66A7790, MEMORY[0x1E69E6F60]);

  *&v165 = v53;
  v54 = sub_1D72647CC();
  LOBYTE(v167) = 0;
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 16) = v54;
  *(v55 + 40) = v167;
  v56 = (v47 + *(v46 + 9));
  v57 = v45;
  v58 = v56[3];
  v59 = v56[4];
  v60 = __swift_project_boxed_opaque_existential_1(v56, v58);
  MEMORY[0x1EEE9AC00](v60, v61);
  MEMORY[0x1EEE9AC00](v62, v63);
  *(&v149 - 4) = sub_1D5B4AA6C;
  *(&v149 - 3) = 0;
  v147 = sub_1D66A7824;
  v148 = v51;
  v64 = v166;
  v66 = sub_1D5D2F7A4(v57, sub_1D615B49C, v65, sub_1D615B4A4, (&v149 - 6), v58, v59);
  v166 = v64;
  if (v64)
  {
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v47, sub_1D66A76FC);
  }

  v97 = v66;

  if ((v97 & 1) == 0)
  {
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v68 = v163;
    v31 = v157;
    v36 = v156;
    v39 = v159;
    goto LABEL_7;
  }

  v167 = 0uLL;
  LOBYTE(v168) = 0;
  v175 = v155;
  v176 = v33;
  v68 = v163;
  v98 = v166;
  sub_1D72647EC();

  sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
  v39 = v159;
  v69 = v161;
  if (!v98)
  {
    v166 = 0;
    v31 = v157;
    v36 = v156;
LABEL_8:
    swift_beginAccess();
    v70 = v31[4];
    v71 = v162;
    (v39)(v162, v69, v36);
    swift_storeEnumTagMultiPayload();
    v72 = (v68 + *(v164 + 11));
    v73 = *v72;
    v74 = v72[1];
    LOBYTE(v167) = 0;
    v75 = swift_allocObject();
    v165 = xmmword_1D728CF30;
    *(v75 + 16) = xmmword_1D728CF30;
    *(v75 + 32) = v167;
    v149 = v73;
    *(v75 + 40) = v73;
    *(v75 + 48) = v74;
    sub_1D66A7790(0);
    v77 = v76;
    v78 = sub_1D5B58B84(&qword_1EDF03688, sub_1D66A7790, MEMORY[0x1E69E6F60]);
    v155 = v70;

    v150 = v74;

    v152 = v77;
    v151 = v78;
    v79 = sub_1D72647CC();
    LOBYTE(v167) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v165;
    *(v80 + 40) = v167;
    v81 = (v68 + *(v164 + 9));
    v82 = v81[3];
    v83 = v81[4];
    v84 = __swift_project_boxed_opaque_existential_1(v81, v82);
    MEMORY[0x1EEE9AC00](v84, v85);
    MEMORY[0x1EEE9AC00](v86, v87);
    *(&v149 - 4) = sub_1D5B4AA6C;
    *(&v149 - 3) = 0;
    v147 = sub_1D6708AF8;
    v148 = v75;
    v88 = v166;
    v90 = sub_1D5D2F7A4(v71, sub_1D615B49C, v89, sub_1D615B4A4, (&v149 - 6), v82, v83);
    if (v88)
    {
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

      v91 = v68;
    }

    else
    {
      v92 = v90;
      v93 = v155;
      v164 = v81;

      if (v92)
      {
        v167 = v165;
        LOBYTE(v168) = 0;
        v174 = v93;
        sub_1D5C34D84(0, &qword_1EDF04C88, &type metadata for FormatOptionsNodeStatement, MEMORY[0x1E69E62F8]);
        sub_1D665A5A4();
        v94 = v163;
        sub_1D72647EC();
        v95 = v159;
        v96 = v162;
        v166 = 0;
        v99 = v154;

        sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v166 = 0;
        sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);

        v94 = v163;
        v99 = v154;
        v95 = v159;
      }

      v100 = v157;
      swift_beginAccess();
      v101 = v100[5];
      v95(v99, v161, v156);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v167) = 0;
      v102 = swift_allocObject();
      v165 = xmmword_1D7297410;
      *(v102 + 16) = xmmword_1D7297410;
      *(v102 + 32) = v167;
      *(v102 + 40) = v149;
      *(v102 + 48) = v150;

      v103 = sub_1D72647CC();
      LOBYTE(v167) = 0;
      v104 = swift_allocObject();
      *(v104 + 16) = v103;
      *(v104 + 24) = v165;
      *(v104 + 40) = v167;
      v105 = v164[3];
      v106 = v164[4];
      v107 = __swift_project_boxed_opaque_existential_1(v164, v105);
      MEMORY[0x1EEE9AC00](v107, v108);
      MEMORY[0x1EEE9AC00](v109, v110);
      *(&v149 - 4) = sub_1D5B4AA6C;
      *(&v149 - 3) = 0;
      v147 = sub_1D6708AF8;
      v148 = v102;
      v111 = v166;
      v113 = sub_1D5D2F7A4(v99, sub_1D615B49C, v112, sub_1D615B4A4, (&v149 - 6), v105, v106);
      if (v111)
      {
        sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

        v91 = v94;
      }

      else
      {
        v114 = v113;

        if (v114)
        {
          v167 = v165;
          LOBYTE(v168) = 0;
          *&v172 = v101;
          sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
          sub_1D66594A0();
          sub_1D72647EC();
          v166 = 0;

          sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v166 = 0;
          sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
        }

        v115 = v157[6];
        v116 = v157[7];
        v117 = v157[9];
        v162 = v157[8];
        v119 = v157[10];
        v118 = v157[11];
        v120 = v156;
        v121 = v150;
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v122 = __swift_project_value_buffer(v120, qword_1EDFFCE38);
        v123 = v153;
        (v159)(v153, v122, v120);
        swift_storeEnumTagMultiPayload();
        v165 = xmmword_1D72BAA60;
        v172 = xmmword_1D72BAA60;
        v173 = 0;
        LOBYTE(v167) = 0;
        v124 = swift_allocObject();
        v126 = v124;
        *(v124 + 16) = v165;
        *(v124 + 32) = v167;
        *(v124 + 40) = v149;
        *(v124 + 48) = v121;
        if (v115)
        {
          v161 = &v149;
          v154 = v115;
          *&v167 = v115;
          *(&v167 + 1) = v116;
          v127 = v162;
          v168 = v162;
          v169 = v117;
          v155 = v117;
          v128 = v119;
          v170 = v119;
          v171 = v118;
          MEMORY[0x1EEE9AC00](v124, v125);
          v130 = v129;
          v160 = &v149 - 6;
          *(&v149 - 4) = sub_1D5B4AA6C;
          *(&v149 - 3) = 0;
          v147 = sub_1D6708AF8;
          v148 = v126;
          v177 = 0;
          v131 = swift_allocObject();
          *(v131 + 16) = v165;
          *(v131 + 32) = v177;
          *(v131 + 40) = v130;
          *(v131 + 48) = v121;
          swift_retain_n();
          sub_1D5EB1D80(v154, v116, v127, v155, v128, v118);
          v132 = v163;
          v133 = sub_1D72647CC();
          v177 = 0;
          v134 = swift_allocObject();
          *(v134 + 16) = v133;
          *(v134 + 24) = v165;
          *(v134 + 40) = v177;
          v135 = v164[3];
          v136 = v164[4];
          v137 = __swift_project_boxed_opaque_existential_1(v164, v135);
          MEMORY[0x1EEE9AC00](v137, v138);
          MEMORY[0x1EEE9AC00](v139, v140);
          v141 = v160;
          *(&v149 - 4) = sub_1D615B4A4;
          *(&v149 - 3) = v141;
          v147 = sub_1D6708AF8;
          v148 = v131;
          v142 = v166;
          v144 = sub_1D5D2F7A4(v123, sub_1D615B49C, v143, sub_1D615B4A4, (&v149 - 6), v135, v136);
          if (v142)
          {
          }

          else
          {
            v145 = v144;

            if (v145)
            {
              sub_1D6659A24();
              sub_1D72647EC();
            }
          }

          v146 = v170;

          sub_1D5CBF568(v146);

          sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
        }

        else
        {

          sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);

          v132 = v163;
        }

        v91 = v132;
      }
    }

    return sub_1D5D2CFE8(v91, sub_1D66A76FC);
  }

  v91 = v68;
  return sub_1D5D2CFE8(v91, sub_1D66A76FC);
}

uint64_t sub_1D6539994@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A9ED4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65399CC(uint64_t a1)
{
  v2 = sub_1D5C58AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6539A08(uint64_t a1)
{
  v2 = sub_1D5C58AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionsNodeStatement.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v101 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v107 = &v99 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  *&v113 = &v99 - v11;
  sub_1D66A7930(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v19 = *(v1 + 2);
  v120 = *(v1 + 1);
  v121 = v19;
  *v122 = *(v1 + 3);
  *&v122[15] = *(v1 + 63);
  v100 = v1[9];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C593CC(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF24FD8, sub_1D5C593CC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatement, v23, v25, v20, &type metadata for FormatOptionsNodeStatement, v23, &type metadata for FormatVersions.JazzkonG, v21, v16, v24, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD18);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v30 = v113;
  v108 = v27;
  v106 = v26;
  v104 = v29;
  v103 = v28 + 16;
  (v29)(v113);
  v102 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v114 = v17;
  *(&v114 + 1) = v18;
  v116 = 0uLL;
  LOBYTE(v117) = 0;
  v31 = &v16[*(v13 + 44)];
  v33 = *v31;
  v32 = *(v31 + 1);
  v119 = 0;
  v34 = swift_allocObject();
  v112 = &v99;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v119;
  *(v34 + 40) = v33;
  *(v34 + 48) = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v99 - 4) = sub_1D5B4AA6C;
  *(&v99 - 3) = 0;
  v97 = sub_1D6708AFC;
  v98 = v36;
  v119 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v119;
  v105 = v33;
  *(v37 + 40) = v33;
  *(v37 + 48) = v32;
  sub_1D66A79C4(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF02F58, sub_1D66A79C4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v109 = v39;
  v110 = v40;
  v41 = sub_1D72647CC();
  v119 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v119;
  v43 = &v16[*(v13 + 36)];
  v111 = v16;
  v44 = *(v43 + 3);
  v45 = *(v43 + 4);
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v99 - 4) = sub_1D615B4A4;
  *(&v99 - 3) = (&v99 - 6);
  v97 = sub_1D6708AFC;
  v98 = v37;
  v50 = v123;
  sub_1D5D2BC70(v30, sub_1D615B49C, v51, sub_1D615B4A4, (&v99 - 6), v44, v45);
  if (v50)
  {
    sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);

    v55 = v111;
    return sub_1D5D2CFE8(v55, sub_1D66A7930);
  }

  v52 = v108;
  v53 = v113;
  v99 = v43;
  v123 = v32;

  v54 = v111;
  sub_1D72647EC();
  sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

  v57 = v107;
  v104(v107, v52, v106);
  swift_storeEnumTagMultiPayload();
  v116 = v120;
  v117 = v121;
  *v118 = *v122;
  *&v118[15] = *&v122[15];
  v113 = xmmword_1D728CF30;
  v114 = xmmword_1D728CF30;
  v115 = 0;
  v119 = 0;
  v58 = swift_allocObject();
  v108 = &v99;
  *(v58 + 16) = v113;
  *(v58 + 32) = v119;
  v59 = v105;
  v60 = v123;
  *(v58 + 40) = v105;
  *(v58 + 48) = v60;
  MEMORY[0x1EEE9AC00](v58, v61);
  v112 = 0;
  *(&v99 - 4) = sub_1D5B4AA6C;
  *(&v99 - 3) = 0;
  v97 = sub_1D6708AFC;
  v98 = v62;
  v119 = 0;
  v63 = v54;
  v64 = swift_allocObject();
  *(v64 + 16) = v113;
  *(v64 + 32) = v119;
  *(v64 + 40) = v59;
  *(v64 + 48) = v60;
  swift_retain_n();
  v65 = sub_1D72647CC();
  v119 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v113;
  *(v66 + 40) = v119;
  v67 = *(v99 + 3);
  v68 = *(v99 + 4);
  v69 = __swift_project_boxed_opaque_existential_1(v99, v67);
  MEMORY[0x1EEE9AC00](v69, v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v99 - 4) = sub_1D615B4A4;
  *(&v99 - 3) = (&v99 - 6);
  v97 = sub_1D6708AFC;
  v98 = v64;
  v73 = v112;
  sub_1D5D2BC70(v57, sub_1D615B49C, v74, sub_1D615B4A4, (&v99 - 6), v67, v68);
  if (v73)
  {
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v75 = v63;
LABEL_18:
    v55 = v75;
    return sub_1D5D2CFE8(v55, sub_1D66A7930);
  }

  sub_1D66A7A58();
  sub_1D72647EC();
  v75 = v63;
  v112 = 0;
  sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);

  v76 = qword_1EDF31E80;
  v77 = v100;

  if (v76 != -1)
  {
    swift_once();
  }

  v78 = v106;
  v79 = __swift_project_value_buffer(v106, qword_1EDFFCCA8);
  v80 = v101;
  v104(v101, v79, v78);
  swift_storeEnumTagMultiPayload();
  v81 = v123;
  v82 = v105;
  v83 = v99;
  if (!*(v77 + 16))
  {
LABEL_17:
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    goto LABEL_18;
  }

  LOBYTE(v116) = 0;
  v84 = swift_allocObject();
  v113 = xmmword_1D7297410;
  *(v84 + 16) = xmmword_1D7297410;
  *(v84 + 32) = v116;
  *(v84 + 40) = v82;
  *(v84 + 48) = v81;

  v85 = sub_1D72647CC();
  LOBYTE(v116) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v113;
  *(v86 + 40) = v116;
  v87 = *(v83 + 3);
  v88 = *(v83 + 4);
  v89 = __swift_project_boxed_opaque_existential_1(v83, v87);
  MEMORY[0x1EEE9AC00](v89, v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  *(&v99 - 4) = sub_1D5B4AA6C;
  *(&v99 - 3) = 0;
  v97 = sub_1D66A7AAC;
  v98 = v84;
  v93 = v112;
  v95 = sub_1D5D2F7A4(v80, sub_1D615B49C, v94, sub_1D615B4A4, (&v99 - 6), v87, v88);
  if (!v93)
  {
    v96 = v95;

    if (v96)
    {
      v116 = v113;
      LOBYTE(v117) = 0;
      *&v114 = v77;
      sub_1D5C34D84(0, &qword_1EDF04AE8, &type metadata for FormatOptionsNodeStatementModifier, MEMORY[0x1E69E62F8]);
      sub_1D66A7B28();
      sub_1D72647EC();

      sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v75, sub_1D66A7930);
}

uint64_t sub_1D653A7A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AA090(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D653A7D8(uint64_t a1)
{
  v2 = sub_1D5C594A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653A814(uint64_t a1)
{
  v2 = sub_1D5C594A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionsNodeStatementBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29[-v9];
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
          *(v21 + 16) = &unk_1F51163B8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D66A7BC4();
    *v29 = 0;
    *&v29[8] = 0;
    sub_1D726431C();
    if (v33 <= 1u)
    {
      v23 = v34;
      a1 = v12;
      *v29 = xmmword_1D7279980;
      if (v33)
      {
        sub_1D6677FFC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v28 = 0;
        v24 = v33;
        v25 = 0uLL;
        v27 = 0x2000;
        v26 = 0uLL;
      }

      else
      {
        sub_1D5C98388();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v28 = 0;
        v27 = 0;
        v24 = v33;
        v26 = 0uLL;
        v25 = WORD4(v33);
      }
    }

    else
    {
      v23 = v34;
      a1 = v12;
      if (v33 == 2)
      {
        v33 = xmmword_1D7279980;
        sub_1D5C77160();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = *v29;
        v25 = *&v29[8];
        v28 = v30;
        v26 = v31;
        v27 = v32 & 0x7FF | 0x4000;
      }

      else
      {
        if (v33 == 3)
        {
          v33 = xmmword_1D7279980;
          sub_1D5CA38E4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v26 = 0uLL;
          v27 = 24576;
        }

        else
        {
          v33 = xmmword_1D7279980;
          sub_1D6661B9C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = *v29;
          v25 = *&v29[8];
          v26 = 0uLL;
          v27 = 0x8000;
        }

        v28 = v30;
      }
    }

    *v23 = v24;
    *(v23 + 8) = v25;
    *(v23 + 24) = v28;
    *(v23 + 32) = v26;
    *(v23 + 48) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOptionsNodeStatementBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v54 = *(v1 + 8);
  v55 = v24;
  v25 = *(v1 + 24);
  v52 = *(v1 + 16);
  v53 = v25;
  v26 = *(v1 + 32);
  v27 = *(v1 + 40);
  v28 = *(v1 + 48);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = sub_1D5C30408();
  v62 = v23;
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementBinding, &type metadata for FormatCodingKeys, v32, v29, &type metadata for FormatOptionsNodeStatementBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v30, v23, v31, &off_1F51F6C38);
  v33 = v28 >> 13;
  if (v28 >> 13 <= 1)
  {
    if (v33)
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCDE0);
      (*(*(v45 - 8) + 16))(v15, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D63871FC(1, v55, v15);
      v40 = v15;
    }

    else
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCDE0);
      (*(*(v38 - 8) + 16))(v19, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D6387064(0, v55, v54, v19);
      v40 = v19;
    }
  }

  else
  {
    if (v33 == 2)
    {
      *&v56 = v55;
      *(&v56 + 1) = v54;
      v57 = v52;
      v58 = v53;
      v59 = v26;
      v60 = v27;
      v61 = v28 & 0x1FFF;
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCDE0);
      v36 = v49;
      (*(*(v41 - 8) + 16))(v49, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D6387390(2, &v56, v36);
    }

    else if (v33 == 3)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v34 = sub_1D725BD1C();
      v35 = __swift_project_value_buffer(v34, qword_1EDFFCE68);
      v36 = v50;
      (*(*(v34 - 8) + 16))(v50, v35, v34);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D6387538(3, v55, v54, v52, v53, v36);
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCE68);
      v36 = v51;
      (*(*(v43 - 8) + 16))(v51, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v62;
      sub_1D63876D4(4, v55, v54, v52, v53, v36);
    }

    v40 = v36;
  }

  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t sub_1D653B3A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D653B46C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D653B520(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D653B5E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66648E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D653B6C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  if (v2 != 1)
  {
    v4 = 0x72656765746E69;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74616F6C66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1954047348;
  if (*a2 != 1)
  {
    v8 = 0x72656765746E69;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74616F6C66;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

uint64_t sub_1D653B7B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D653B84C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D653B8D0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D653B964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664930(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D653B994(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (v2 != 1)
  {
    v5 = 0x72656765746E69;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74616F6C66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatOptionsNodeStatementModifier.Float.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v102 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v101 = &v92 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v100 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v99 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v98 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v97 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v96 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v95 = &v92 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v94 = &v92 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v92 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v93 = &v92 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v92 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v92 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v92 - v48;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v2;
  v56 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  v57 = sub_1D5C30408();
  v103 = v53;
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementModifier.Float, &type metadata for FormatCodingKeys, v58, v56, &type metadata for FormatOptionsNodeStatementModifier.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v55, v53, v57, &off_1F51F6CF8);
  switch(v54)
  {
    case 1:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCCA8);
      (*(*(v79 - 8) + 16))(v45, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(1, v45);
      v62 = v45;
      break;
    case 2:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCCA8);
      (*(*(v72 - 8) + 16))(v41, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(2, v41);
      v62 = v41;
      break;
    case 3:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCCA8);
      v76 = v93;
      (*(*(v74 - 8) + 16))(v93, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(3, v76);
      v62 = v76;
      break;
    case 4:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCCA8);
      (*(*(v66 - 8) + 16))(v34, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 4;
      goto LABEL_44;
    case 5:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCCA8);
      v34 = v94;
      (*(*(v81 - 8) + 16))(v94, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 5;
      goto LABEL_44;
    case 6:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCCA8);
      v34 = v95;
      (*(*(v85 - 8) + 16))(v95, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 6;
      goto LABEL_44;
    case 7:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCCA8);
      v34 = v96;
      (*(*(v77 - 8) + 16))(v96, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 7;
      goto LABEL_44;
    case 8:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCCA8);
      v34 = v97;
      (*(*(v89 - 8) + 16))(v97, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 8;
      goto LABEL_44;
    case 9:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCCA8);
      v34 = v98;
      (*(*(v70 - 8) + 16))(v98, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 9;
      goto LABEL_44;
    case 10:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCCA8);
      v34 = v99;
      (*(*(v87 - 8) + 16))(v99, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 10;
      goto LABEL_44;
    case 11:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v63 = sub_1D725BD1C();
      v64 = __swift_project_value_buffer(v63, qword_1EDFFCCA8);
      v34 = v100;
      (*(*(v63 - 8) + 16))(v100, v64, v63);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 11;
      goto LABEL_44;
    case 12:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCCA8);
      v34 = v101;
      (*(*(v68 - 8) + 16))(v101, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 12;
      goto LABEL_44;
    case 13:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCCA8);
      v34 = v102;
      (*(*(v83 - 8) + 16))(v102, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = 13;
LABEL_44:
      v61 = v103;
      sub_1D641919C(v65, v34);
      v62 = v34;
      break;
    default:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v59 = sub_1D725BD1C();
      v60 = __swift_project_value_buffer(v59, qword_1EDFFCCA8);
      (*(*(v59 - 8) + 16))(v49, v60, v59);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = v103;
      sub_1D641919C(0, v49);
      v62 = v49;
      break;
  }

  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v61, sub_1D5D30DC4);
}

unint64_t sub_1D653C73C(char a1)
{
  result = 0x7055646E756F72;
  switch(a1)
  {
    case 1:
      result = 0x776F44646E756F72;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x776F54646E756F72;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x6F72655A7369;
      break;
    case 8:
      result = 0x6574696E69467369;
      break;
    case 9:
      result = 0x696E69666E497369;
      break;
    case 10:
      result = 0x4E614E7369;
      break;
    case 11:
      result = 0x6C616E6769537369;
      break;
    case 12:
      result = 0x6C616D726F4E7369;
      break;
    case 13:
      result = 0x726F6E6275537369;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D653C94C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666497C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D653C97C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D653C73C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatOptionsNodeStatementModifier.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementModifier.Text, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatOptionsNodeStatementModifier.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v14, v18, &off_1F51F6CF8);
  if (v15)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCA8);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64192F0(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCA8);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64192F0(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D653CEC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D457369;
  }

  else
  {
    v3 = 0x6874676E656CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D457369;
  }

  else
  {
    v5 = 0x6874676E656CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D653CF68()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D653CFE8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D653D054(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D653D0DC(uint64_t *a1@<X8>)
{
  v2 = 0x6874676E656CLL;
  if (*v1)
  {
    v2 = 0x7974706D457369;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D653D1C8()
{
  v1 = 0x73776F726874;
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
    return 0x696669746E656469;
  }
}

uint64_t sub_1D653D21C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AA200(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D653D254(uint64_t a1)
{
  v2 = sub_1D6662F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653D290(uint64_t a1)
{
  v2 = sub_1D6662F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOrExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D66A7CC0(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C5C6B4(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25588, sub_1D5C5C6B4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOrExpression, v19, v21, v16, &type metadata for FormatOrExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
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
  sub_1D66A7D54(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF035E8, sub_1D66A7D54, MEMORY[0x1E69E6F60]);
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
  v68 = sub_1D66A7DE8;
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

    v50 = sub_1D66596F4();
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

  return sub_1D5D2CFE8(v14, sub_1D66A7CC0);
}

uint64_t sub_1D653DB44(uint64_t a1)
{
  v2 = sub_1D5C5CB88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653DB80(uint64_t a1)
{
  v2 = sub_1D5C5CB88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOsloSheetPurchaseDataModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66A7E64(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A7EF8(0);
  sub_1D5B58B84(&qword_1EC886FF0, sub_1D66A7EF8, &unk_1D7321584);
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D66205A8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D66678A8();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOsloSheetPurchaseDataModel.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  sub_1D66A8078(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v78 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66A7EF8(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886FF0, sub_1D66A7EF8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOsloSheetPurchaseDataModel, v20, v22, v17, &type metadata for FormatOsloSheetPurchaseDataModel, v20, &type metadata for FormatVersions.DawnburstF, v18, v14, v21, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v81 = v24;
  v75 = v26;
  v76 = v23;
  v74 = v25 + 16;
  (v26)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v89 = v16;
  v86 = 0uLL;
  v87 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v90 = 0;
  v30 = swift_allocObject();
  *&v83 = &v71;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v90;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v71 - 4) = sub_1D5B4AA6C;
  *(&v71 - 3) = 0;
  v69 = sub_1D6708B00;
  v70 = v32;
  v90 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v90;
  v77 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66A810C(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC887008, sub_1D66A810C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v82 = v36;
  v37 = sub_1D72647CC();
  v90 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v90;
  v39 = *(v11 + 36);
  v85 = v14;
  v40 = &v14[v39];
  v41 = *&v14[v39 + 24];
  v42 = *&v14[v39 + 32];
  v43 = __swift_project_boxed_opaque_existential_1(&v14[v39], v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v71 - 4) = sub_1D615B4A4;
  *(&v71 - 3) = (&v71 - 6);
  v69 = sub_1D6708B00;
  v70 = v33;
  v47 = v84;
  sub_1D5D2BC70(v9, sub_1D615B49C, v48, sub_1D615B4A4, (&v71 - 6), v41, v42);
  if (v47)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v49 = v85;
  }

  else
  {
    v72 = v40;
    v50 = v81;
    v84 = v29;

    v49 = v85;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v51 = v79;
    v75(v79, v50, v76);
    swift_storeEnumTagMultiPayload();
    v83 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    LOBYTE(v88) = 0;
    v52 = swift_allocObject();
    v54 = v52;
    *(v52 + 16) = v83;
    *(v52 + 32) = v88;
    v56 = v77;
    v55 = v78;
    v57 = v84;
    *(v52 + 40) = v77;
    *(v52 + 48) = v57;
    if ((v55 & 0xF000000000000007) == 0x7000000000000007)
    {
    }

    else
    {
      v81 = &v71;
      v88 = v55;
      MEMORY[0x1EEE9AC00](v52, v53);
      *(&v71 - 4) = sub_1D5B4AA6C;
      *(&v71 - 3) = 0;
      v69 = sub_1D6708B00;
      v70 = v54;
      v90 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v83;
      *(v58 + 32) = v90;
      *(v58 + 40) = v56;
      *(v58 + 48) = v57;
      swift_retain_n();
      sub_1D614F63C(v55);
      v59 = sub_1D72647CC();
      v90 = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v83;
      *(v60 + 40) = v90;
      v61 = *(v72 + 3);
      v62 = *(v72 + 4);
      v63 = __swift_project_boxed_opaque_existential_1(v72, v61);
      MEMORY[0x1EEE9AC00](v63, v64);
      MEMORY[0x1EEE9AC00](v65, v66);
      *(&v71 - 4) = sub_1D615B4A4;
      *(&v71 - 3) = (&v71 - 6);
      v51 = v79;
      v69 = sub_1D66A81A0;
      v70 = v58;
      LOBYTE(v61) = sub_1D5D2F7A4(v79, sub_1D615B49C, v67, sub_1D615B4A4, (&v71 - 6), v61, v62);

      if (v61)
      {
        sub_1D66A821C();
        v49 = v85;
        sub_1D72647EC();

        sub_1D614F69C(v88);
      }

      else
      {

        sub_1D614F69C(v88);
        v49 = v85;
      }
    }

    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v49, sub_1D66A8078);
}

unint64_t sub_1D653E778()
{
  v1 = 1885433183;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1D653E7D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AA43C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D653E810(uint64_t a1)
{
  v2 = sub_1D66A7FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653E84C(uint64_t a1)
{
  v2 = sub_1D66A7FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPackageDirectionHorizontal.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  sub_1D66A8270(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A8304(0);
  sub_1D5B58B84(&qword_1EDF0C410, sub_1D66A8304, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  if (v14)
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
          goto LABEL_9;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D6628490(0x6C6C6F726373, 0xE600000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v9, v5);
      goto LABEL_3;
    }

LABEL_9:
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (sub_1D726434C())
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_1D611EA90();
    sub_1D726431C();
    (*(v11 + 8))(v9, v5);
    v22 = v32;
  }

  else
  {
    (*(v11 + 8))(v9, v5);
    v22 = 2;
  }

  *v12 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPackageDirectionHorizontal.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A8484(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66A8304(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C410, sub_1D66A8304, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPackageDirectionHorizontal, v17, v19, v14, &type metadata for FormatPackageDirectionHorizontal, v17, &type metadata for FormatVersions.CrystalGlow, v15, v12, v18, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE68);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (v13 == 2)
  {
    goto LABEL_4;
  }

  v47 = v13;
  v23 = &v12[*(v9 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  LOBYTE(v44) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v44;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  sub_1D66A8518(0);
  v28 = v27;
  sub_1D5B58B84(&qword_1EDF02D58, sub_1D66A8518, MEMORY[0x1E69E6F60]);

  v43 = v28;
  v29 = sub_1D72647CC();
  LOBYTE(v44) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v44;
  v31 = &v12[*(v9 + 36)];
  v32 = *(v31 + 3);
  v33 = *(v31 + 4);
  v34 = __swift_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  *(&v43 - 4) = sub_1D5B4AA6C;
  *(&v43 - 3) = 0;
  v41 = sub_1D66A85AC;
  v42 = v26;
  v39 = sub_1D5D2F7A4(v7, sub_1D615B49C, v38, sub_1D615B4A4, (&v43 - 6), v32, v33);
  if (!v2)
  {
    v40 = v39;

    if (v40)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v48 = v47;
      sub_1D611EAE4();
      sub_1D72647EC();
    }

LABEL_4:
    sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v12, sub_1D66A8484);
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v12, sub_1D66A8484);
}

uint64_t sub_1D653F06C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6C6C6F726373;
  }
}

void sub_1D653F09C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000;
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

uint64_t sub_1D653F184(uint64_t a1)
{
  v2 = sub_1D66A83DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653F1C0(uint64_t a1)
{
  v2 = sub_1D66A83DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPackageList.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66A8628(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A86BC(0);
  sub_1D5B58B84(&qword_1EC887040, sub_1D66A86BC, &unk_1D7321584);
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x736567616B636170, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  sub_1D5B5BF78(0, &qword_1EC887048, type metadata accessor for FormatPackage, MEMORY[0x1E69E62F8]);
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D66A883C();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPackageList.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D66A8914(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v76 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66A86BC(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC887040, sub_1D66A86BC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPackageList, v20, v22, v17, &type metadata for FormatPackageList, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v73 = *(v25 + 16);
  v74 = v24;
  v78 = v23;
  v72 = v25 + 16;
  v73(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v15;
  v87 = v16;
  v84 = 0uLL;
  v85 = 0;
  v26 = &v14[*(v11 + 44)];
  v81 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v88 = 0;
  v29 = swift_allocObject();
  v82 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v88;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708B04;
  v68 = v31;
  v88 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v88;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66A89A8(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887068, sub_1D66A89A8, MEMORY[0x1E69E6F60]);
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
  v45 = v81;
  v67 = sub_1D66A8A3C;
  v68 = v32;
  v46 = v83;
  sub_1D5D2BC70(v81, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v46)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v49 = v14;
  }

  else
  {
    v70 = v38;
    v48 = v78;

    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v51 = v77;
    (v73)(v77, v74, v48);
    swift_storeEnumTagMultiPayload();
    v86 = v76;
    v83 = xmmword_1D728CF30;
    v84 = xmmword_1D728CF30;
    v85 = 0;
    v88 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v88;
    v53 = v75;
    *(v52 + 40) = v75;
    *(v52 + 48) = v28;
    MEMORY[0x1EEE9AC00](v52, v54);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708B04;
    v68 = v55;
    v88 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v83;
    *(v56 + 32) = v88;
    *(v56 + 40) = v53;
    *(v56 + 48) = v28;
    swift_retain_n();
    v82 = v14;
    v57 = sub_1D72647CC();
    v88 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v83;
    *(v58 + 40) = v88;
    v59 = *(v70 + 3);
    v60 = *(v70 + 4);
    v61 = __swift_project_boxed_opaque_existential_1(v70, v59);
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708B04;
    v68 = v56;
    sub_1D5D2BC70(v51, sub_1D615B49C, v65, sub_1D615B4A4, (&v69 - 6), v59, v60);

    sub_1D5B5BF78(0, &qword_1EC887048, type metadata accessor for FormatPackage, MEMORY[0x1E69E62F8]);
    sub_1D66A8AB8();
    v66 = v82;
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v49 = v66;
  }

  return sub_1D5D2CFE8(v49, sub_1D66A8914);
}

uint64_t sub_1D653FE14()
{
  v1 = 0x736567616B636170;
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
    return 0x696669746E656469;
  }
}

uint64_t sub_1D653FE6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AA564(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D653FEA4(uint64_t a1)
{
  v2 = sub_1D66A8794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653FEE0(uint64_t a1)
{
  v2 = sub_1D66A8794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D653FF1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AA684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D653FF54(uint64_t a1)
{
  v2 = sub_1D5CAA444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D653FF90(uint64_t a1)
{
  v2 = sub_1D5CAA444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPattern.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D66A8B90(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A8C24(0);
  sub_1D5B58B84(&qword_1EDF0C3C0, sub_1D66A8C24, &unk_1D7321584);
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

  v13 = v33;
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

      v22 = sub_1D66206EC();
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

  sub_1D62DC278();
  v30 = 0uLL;
  LOBYTE(v31) = 0;
  sub_1D726431C();
  v18 = v28;
  v30 = xmmword_1D728CF30;
  LOBYTE(v31) = 0;
  sub_1D66A8DA4();
  sub_1D726431C();
  v19 = v28;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D66A8DF8();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v31;
  v26 = v32;
  v27 = v30;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 16) = v27;
  *(v13 + 32) = v25;
  *(v13 + 40) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPattern.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v95 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v103 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v90 - v11;
  sub_1D66A8E4C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v96 = *(v1 + 1);
  v94 = v1[16];
  v19 = *(v1 + 4);
  v93 = *(v1 + 3);
  v92 = v19;
  v115 = v1[40];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66A8C24(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF0C3C0, sub_1D66A8C24, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPattern, v23, v25, v20, &type metadata for FormatPattern, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v100 = v27;
  v101 = v26;
  v98 = v28 + 16;
  v99 = v29;
  (v29)(v12);
  v97 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v112) = v18;
  v109 = 0uLL;
  LOBYTE(v110) = 0;
  v30 = &v17[*(v14 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v114 = 0;
  v33 = swift_allocObject();
  v106 = &v90;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v114;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *&v108 = v12;
  *(&v90 - 4) = sub_1D5B4AA6C;
  *(&v90 - 3) = 0;
  v88 = sub_1D6708B08;
  v89 = v35;
  v114 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v114;
  v102 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D66A8EE0(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF02B48, sub_1D66A8EE0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v104 = v38;
  v105 = v39;
  v40 = sub_1D72647CC();
  v114 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v114;
  v42 = &v17[*(v14 + 36)];
  v44 = *(v42 + 3);
  v43 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v90 - 4) = sub_1D615B4A4;
  *(&v90 - 3) = (&v90 - 6);
  v49 = v107;
  v50 = v108;
  v88 = sub_1D6708B08;
  v89 = v36;
  sub_1D5D2BC70(v108, sub_1D615B49C, v51, sub_1D615B4A4, (&v90 - 6), v44, v43);
  if (v49)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v52 = v17;
  }

  else
  {
    v91 = v42;
    v107 = v32;

    sub_1D62DC2CC();
    sub_1D72647EC();
    v52 = v17;
    sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);

    v99(v103, v100, v101);
    swift_storeEnumTagMultiPayload();
    *&v112 = v96;
    v108 = xmmword_1D728CF30;
    v109 = xmmword_1D728CF30;
    LOBYTE(v110) = 0;
    v114 = 0;
    v53 = swift_allocObject();
    v106 = &v90;
    *(v53 + 16) = v108;
    *(v53 + 32) = v114;
    v54 = v102;
    v55 = v107;
    *(v53 + 40) = v102;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v90 - 4) = sub_1D5B4AA6C;
    *(&v90 - 3) = 0;
    v88 = sub_1D6708B08;
    v89 = v57;
    v114 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v108;
    *(v58 + 32) = v114;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v96 = 0;
    v60 = v59;
    v114 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v108;
    *(v61 + 40) = v114;
    v62 = *(v91 + 3);
    v63 = *(v91 + 4);
    v64 = __swift_project_boxed_opaque_existential_1(v91, v62);
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v90 - 4) = sub_1D615B4A4;
    *(&v90 - 3) = (&v90 - 6);
    v68 = v103;
    v88 = sub_1D6708B08;
    v89 = v58;
    v69 = v96;
    sub_1D5D2BC70(v103, sub_1D615B49C, v70, sub_1D615B4A4, (&v90 - 6), v62, v63);
    if (v69)
    {
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D66A8F74();
      sub_1D72647EC();
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

      v72 = v95;
      v99(v95, v100, v101);
      swift_storeEnumTagMultiPayload();
      v108 = xmmword_1D7297410;
      v112 = xmmword_1D7297410;
      v113 = 0;
      LOBYTE(v109) = 0;
      v73 = swift_allocObject();
      v75 = v73;
      *(v73 + 16) = v108;
      *(v73 + 32) = v109;
      v76 = v102;
      v77 = v107;
      *(v73 + 40) = v102;
      *(v73 + 48) = v77;
      if (v94 == 4)
      {
      }

      else
      {
        v106 = &v90;
        LOBYTE(v109) = v94;
        *(&v109 + 1) = v93;
        v110 = v92;
        v111 = v115 & 1;
        MEMORY[0x1EEE9AC00](v73, v74);
        *(&v90 - 4) = sub_1D5B4AA6C;
        *(&v90 - 3) = 0;
        v88 = sub_1D6708B08;
        v89 = v75;
        v114 = 0;
        v78 = swift_allocObject();
        *(v78 + 16) = v108;
        *(v78 + 32) = v114;
        *(v78 + 40) = v76;
        *(v78 + 48) = v77;
        swift_retain_n();
        v79 = sub_1D72647CC();
        v114 = 0;
        v80 = swift_allocObject();
        *(v80 + 16) = v79;
        *(v80 + 24) = v108;
        *(v80 + 40) = v114;
        v81 = *(v91 + 3);
        v82 = *(v91 + 4);
        v83 = __swift_project_boxed_opaque_existential_1(v91, v81);
        MEMORY[0x1EEE9AC00](v83, v84);
        MEMORY[0x1EEE9AC00](v85, v86);
        *(&v90 - 4) = sub_1D615B4A4;
        *(&v90 - 3) = (&v90 - 6);
        v72 = v95;
        v88 = sub_1D66A8FC8;
        v89 = v78;
        LOBYTE(v82) = sub_1D5D2F7A4(v95, sub_1D615B49C, v87, sub_1D615B4A4, (&v90 - 6), v81, v82);

        if (v82)
        {
          sub_1D66A9044();
          sub_1D72647EC();
        }
      }

      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v52, sub_1D66A8E4C);
}

uint64_t sub_1D6540F2C()
{
  v1 = 1701080941;
  v2 = 0x6E6F697469736F70;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F63;
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

uint64_t sub_1D6540F98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AABE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6540FD0(uint64_t a1)
{
  v2 = sub_1D66A8CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654100C(uint64_t a1)
{
  v2 = sub_1D66A8CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPatternContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F51164A8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A9098();
    v30 = 0uLL;
    sub_1D726431C();
    if (v38)
    {
      sub_1D5C30060(0, &qword_1EDF0CE68, sub_1D66A90EC, &type metadata for FormatPatternContent, type metadata accessor for FormatUserInterfaceValue);
      v38 = xmmword_1D7279980;
      sub_1D66A9140();
      sub_1D726431C();
      v22 = v39;
      (*(v7 + 8))(v13, v6);
      v23 = v30;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v38 = xmmword_1D7279980;
      sub_1D5CA1FC8();
      sub_1D726431C();
      v22 = v39;
      (*(v7 + 8))(v13, v6);
      v25 = swift_allocObject();
      v26 = v35;
      *(v25 + 80) = v34;
      *(v25 + 96) = v26;
      *(v25 + 112) = v36;
      *(v25 + 128) = v37;
      v27 = v31;
      *(v25 + 16) = v30;
      *(v25 + 32) = v27;
      v28 = v33;
      *(v25 + 48) = v32;
      *(v25 + 64) = v28;
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPatternContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34[-v9 - 8];
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPatternContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPatternContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v17, v14, v18, &off_1F51F6C78);
  if (v15 < 0)
  {
    v27 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v28 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v29 = qword_1EDF31EB0;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v6, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A2570(1, v27, v28, v6);

    v26 = v6;
  }

  else
  {
    v20 = *(v15 + 96);
    v35[4] = *(v15 + 80);
    v35[5] = v20;
    v35[6] = *(v15 + 112);
    v36 = *(v15 + 128);
    v21 = *(v15 + 32);
    v35[0] = *(v15 + 16);
    v22 = *(v15 + 48);
    v23 = *(v15 + 64);
    v35[1] = v21;
    v35[2] = v22;
    v35[3] = v23;
    sub_1D5D093E8(v35, v34);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A23B8(0, v35, v10);
    sub_1D5D09904(v35);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6541808(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746E4972657375;
  }

  else
  {
    v3 = 0x65746F6D6572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006563616672;
  }

  if (*a2)
  {
    v5 = 0x65746E4972657375;
  }

  else
  {
    v5 = 0x65746F6D6572;
  }

  if (*a2)
  {
    v6 = 0xED00006563616672;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65418B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6541944(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65419BC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6541A50(uint64_t *a1@<X8>)
{
  v2 = 0x65746F6D6572;
  if (*v1)
  {
    v2 = 0x65746E4972657375;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006563616672;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6541B48(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746165706572;
  }

  else
  {
    v2 = 0x726F68636E61;
  }

  if (*a2)
  {
    v3 = 0x746165706572;
  }

  else
  {
    v3 = 0x726F68636E61;
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

uint64_t sub_1D6541BC8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6541C38(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6541C8C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6541D04(uint64_t *a1@<X8>)
{
  v2 = 0x726F68636E61;
  if (*v1)
  {
    v2 = 0x746165706572;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t FormatPatternPosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66A91D0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A9264(0);
  sub_1D5B58B84(&qword_1EC887098, sub_1D66A9264, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x65766974616C6572, 0xE800000000000000, 0x656D7473756A6461, 0xEA0000000000746ELL);
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

  sub_1D66A93E4();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v17 = v25;
  v25 = xmmword_1D728CF30;
  v26 = 0;
  sub_1D66A9438();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  v24 = v27;
  *v13 = v17;
  *(v13 + 8) = v24;
  *(v13 + 24) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPatternPosition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D66A948C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = *(v1 + 2);
  LODWORD(v74) = v1[24];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66A9264(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EC887098, sub_1D66A9264, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPatternPosition, v21, v23, v18, &type metadata for FormatPatternPosition, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v71 = v25;
  v72 = v24;
  v69[1] = v26 + 16;
  v70 = v27;
  (v27)(v9);
  v69[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v81) = v15;
  v83 = 0uLL;
  v84 = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v85 = 0;
  v31 = swift_allocObject();
  v78 = v69;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *&v80 = v9;
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D6708B0C;
  v68 = v33;
  v85 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v85;
  v73 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66A9520(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC8870B0, sub_1D66A9520, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v76 = v37;
  v77 = v36;
  v38 = sub_1D72647CC();
  v85 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v85;
  v40 = &v14[*(v11 + 36)];
  v41 = *(v40 + 3);
  v42 = *(v40 + 4);
  v43 = __swift_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v69[-4] = sub_1D615B4A4;
  v69[-3] = &v69[-6];
  v47 = v79;
  v48 = v80;
  v67 = sub_1D6708B0C;
  v68 = v34;
  sub_1D5D2BC70(v80, sub_1D615B49C, v49, sub_1D615B4A4, &v69[-6], v41, v42);
  if (v47)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v50 = v14;
  }

  else
  {
    v79 = v40;

    sub_1D66A95B4();
    v50 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v51 = v75;
    v70(v75, v71, v72);
    swift_storeEnumTagMultiPayload();
    v80 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    LOBYTE(v81) = 0;
    v52 = swift_allocObject();
    v54 = v52;
    *(v52 + 16) = v80;
    *(v52 + 32) = v81;
    v55 = v73;
    *(v52 + 40) = v73;
    *(v52 + 48) = v30;
    if (v74)
    {
    }

    else
    {
      v74 = v69;
      v81 = v16;
      v82 = v17;
      MEMORY[0x1EEE9AC00](v52, v53);
      v69[-4] = sub_1D5B4AA6C;
      v69[-3] = 0;
      v67 = sub_1D6708B0C;
      v68 = v54;
      v85 = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v80;
      *(v57 + 32) = v85;
      *(v57 + 40) = v55;
      *(v57 + 48) = v30;
      swift_retain_n();
      v78 = v50;
      v58 = sub_1D72647CC();
      v85 = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v80;
      *(v59 + 40) = v85;
      v60 = *(v79 + 3);
      v61 = *(v79 + 4);
      v62 = __swift_project_boxed_opaque_existential_1(v79, v60);
      MEMORY[0x1EEE9AC00](v62, v63);
      MEMORY[0x1EEE9AC00](v64, v65);
      v69[-4] = sub_1D615B4A4;
      v69[-3] = &v69[-6];
      v51 = v75;
      v67 = sub_1D66A9608;
      v68 = v57;
      LOBYTE(v60) = sub_1D5D2F7A4(v75, sub_1D615B49C, v66, sub_1D615B4A4, &v69[-6], v60, v61);

      if (v60)
      {
        sub_1D66A9684();
        v50 = v78;
        sub_1D72647EC();
      }

      else
      {
        v50 = v78;
      }
    }

    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v50, sub_1D66A948C);
}

uint64_t sub_1D654299C()
{
  v1 = 0x656D7473756A6461;
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
    return 0x65766974616C6572;
  }
}

uint64_t sub_1D65429F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AAD48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6542A2C(uint64_t a1)
{
  v2 = sub_1D66A933C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6542A68(uint64_t a1)
{
  v2 = sub_1D66A933C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPatternPositionAdjustment.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v25;
    if (v13)
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
          *(v21 + 16) = &unk_1F51164F8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A96D8();
    v24 = 0uLL;
    sub_1D726431C();
    v23 = xmmword_1D7279980;
    sub_1D5C7B870();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPatternPositionAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPatternPositionAdjustment, &type metadata for FormatCodingKeys, v16, v13, &type metadata for FormatPatternPositionAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v14, v10, v15, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D725BD1C();
  v18 = __swift_project_value_buffer(v17, qword_1EDFFCD30);
  (*(*(v17 - 8) + 16))(v6, v18, v17);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63892B0(v6, v11, v12);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatPatternPositionRelative.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  LODWORD(v45) = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  v23 = *(*(v21 - 8) + 16);
  v23(v18, v22, v21);
  v24 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v25 = v48;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v25)
  {
    v48 = v24;
    v27 = v46;
    v29 = v46[3];
    v28 = v46[4];
    v30 = __swift_project_boxed_opaque_existential_1(v46, v29);
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        v45 = v30;
        v32 = v28;
        v33 = v42;
        v23(v42, v22, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v29, v32);
        sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_1D7264B3C();
      }

      else
      {
        v37 = v28;
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v38 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
        v39 = v44;
        v23(v44, v38, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v29, v37);
        sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_1D7264B3C();
      }
    }

    else if (v45)
    {
      v34 = v28;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
      v36 = v43;
      v23(v43, v35, v21);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v29, v34);
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_1D7264B3C();
    }

    else
    {
      v45 = v29;
      v31 = v41;
      v23(v41, v22, v21);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v45, v28);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_1D7264B3C();
    }

    __swift_mutable_project_boxed_opaque_existential_1(v47, v47[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  return result;
}

uint64_t FormatPaywallBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPaywallBinding.Bool, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatPaywallBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v21, v18, v22, &off_1F51F6C18);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD98);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D642006C(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD98);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D642006C(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD98);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642006C(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatPaywallBinding.Text.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v80 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v76 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v75 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v75 - v36;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v2;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v45 = sub_1D5C30408();
  v82 = v41;
  sub_1D5D2EE70(&type metadata for FormatPaywallBinding.Text, &type metadata for FormatCodingKeys, v46, v43, &type metadata for FormatPaywallBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v44, v41, v45, &off_1F51F6C18);
  if (v42 > 4)
  {
    if (v42 <= 6)
    {
      if (v42 == 5)
      {
        v47 = v82;
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCD98);
        (*(*(v58 - 8) + 16))(v19, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 5;
      }

      else
      {
        v47 = v82;
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCD80);
        v19 = v78;
        (*(*(v73 - 8) + 16))(v78, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 6;
      }
    }

    else
    {
      if (v42 == 7)
      {
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v64 = sub_1D725BD1C();
        v65 = __swift_project_value_buffer(v64, qword_1EDFFCD80);
        v19 = v79;
        (*(*(v64 - 8) + 16))(v79, v65, v64);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 7;
        v66 = v19;
        v47 = v82;
        goto LABEL_42;
      }

      if (v42 == 8)
      {
        v47 = v82;
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v52 = sub_1D725BD1C();
        v53 = __swift_project_value_buffer(v52, qword_1EDFFCCA8);
        v19 = v80;
        (*(*(v52 - 8) + 16))(v80, v53, v52);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 8;
      }

      else
      {
        v47 = v82;
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCE68);
        v19 = v81;
        (*(*(v69 - 8) + 16))(v81, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 9;
      }
    }

    v66 = v19;
LABEL_42:
    sub_1D641FF18(v54, v66);
    v57 = v19;
LABEL_43:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
  }

  if (v42 <= 1)
  {
    if (v42)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCD98);
      (*(*(v71 - 8) + 16))(v33, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v82;
      sub_1D641FF18(1, v33);
      v57 = v33;
    }

    else
    {
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD80);
      (*(*(v55 - 8) + 16))(v37, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v82;
      sub_1D641FF18(0, v37);
      v57 = v37;
    }

    goto LABEL_43;
  }

  if (v42 != 2)
  {
    if (v42 == 3)
    {
      v47 = v82;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD98);
      v50 = v76;
      (*(*(v48 - 8) + 16))(v76, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 3;
    }

    else
    {
      v47 = v82;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD98);
      v50 = v77;
      (*(*(v67 - 8) + 16))(v77, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 4;
    }

    sub_1D641FF18(v51, v50);
    v57 = v50;
    goto LABEL_43;
  }

  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v60 = sub_1D725BD1C();
  v61 = __swift_project_value_buffer(v60, qword_1EDFFCD98);
  (*(*(v60 - 8) + 16))(v29, v61, v60);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v62 = v82;
  sub_1D641FF18(2, v29);
  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v62, sub_1D5D30DC4);
}

uint64_t sub_1D6544588()
{
  v1 = 0x676E6963617073;
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
    return 0x61746E6563726570;
  }
}

uint64_t sub_1D65445E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AAE68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6544618(uint64_t a1)
{
  v2 = sub_1D6658090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6544654(uint64_t a1)
{
  v2 = sub_1D6658090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6544690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664338(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t FormatPercentage.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = v2;
  v24[0] = a2;
  sub_1D66A97D4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A9868(0);
  sub_1D5B58B84(&qword_1EDF0C5E0, sub_1D66A9868, &unk_1D7321584);
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

  v13 = v24[0];
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

      v20 = *(v16 - 2);
      v19 = *(v16 - 1);

      v21 = sub_1D6628490(0x61746E6563726570, 0xEA00000000006567);
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

  v24[1] = 0;
  v24[2] = 0;
  v25 = 0;
  sub_1D72642EC();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  *v13 = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPercentage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66A99E8(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66A9868(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF0C5E0, sub_1D66A9868, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPercentage, v16, v18, v13, &type metadata for FormatPercentage, v16, &type metadata for FormatVersions.AzdenB, v14, v11, v17, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDC8);
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
  v42 = sub_1D6708B10;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66A9A7C(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03748, sub_1D66A9A7C, MEMORY[0x1E69E6F60]);
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
  v42 = sub_1D66A9B10;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66A99E8);
}

uint64_t sub_1D6544F54()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x61746E6563726570;
  }
}

void sub_1D6544F8C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567;
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

uint64_t sub_1D6545080(uint64_t a1)
{
  v2 = sub_1D66A9940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65450BC(uint64_t a1)
{
  v2 = sub_1D66A9940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPlatform.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCCE8);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v31;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v31);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t sub_1D654554C(uint64_t a1)
{
  v2 = sub_1D5C8DB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6545588(uint64_t a1)
{
  v2 = sub_1D5C8DB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPointEquation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v73 - v8;
  sub_1D66A9B8C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v81 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5CA7284(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25498, sub_1D5CA7284, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPointEquation, v19, v21, v16, &type metadata for FormatPointEquation, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v78 = *(v24 + 16);
  v79 = v23;
  v77 = v24 + 16;
  v78(v9);
  v76 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v92 = v15;
  v90 = 0uLL;
  v91 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v89 = 0;
  v28 = swift_allocObject();
  v85 = v73;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v89;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v87 = v9;
  v73[-4] = sub_1D5B4AA6C;
  v73[-3] = 0;
  v71 = sub_1D670888C;
  v72 = v30;
  v89 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v89;
  v80 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66A9C20(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF034D8, sub_1D66A9C20, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v83 = v34;
  v84 = v33;
  v35 = sub_1D72647CC();
  v89 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v89;
  v37 = *(v11 + 36);
  v86 = v14;
  v38 = &v14[v37];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v73[-4] = sub_1D615B4A4;
  v73[-3] = &v73[-6];
  v46 = v87;
  v45 = v88;
  v71 = sub_1D66A9CB4;
  v72 = v31;
  sub_1D5D2BC70(v87, sub_1D615B49C, v47, sub_1D615B4A4, &v73[-6], v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v53 = v86;
  }

  else
  {
    v74 = v38;
    v75 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v49 = v48;
    v50 = sub_1D66582DC();
    v51 = v86;
    sub_1D72647EC();
    v52 = v51;
    v73[1] = v50;
    v85 = v49;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v55 = v82;
    (v78)(v82, v79, v22);
    swift_storeEnumTagMultiPayload();
    v92 = v81;
    v88 = xmmword_1D728CF30;
    v90 = xmmword_1D728CF30;
    v91 = 0;
    v89 = 0;
    v56 = swift_allocObject();
    v87 = v73;
    *(v56 + 16) = v88;
    *(v56 + 32) = v89;
    v57 = v80;
    v58 = v75;
    *(v56 + 40) = v80;
    *(v56 + 48) = v58;
    MEMORY[0x1EEE9AC00](v56, v59);
    v73[-4] = sub_1D5B4AA6C;
    v73[-3] = 0;
    v71 = sub_1D670888C;
    v72 = v60;
    v89 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v88;
    *(v61 + 32) = v89;
    *(v61 + 40) = v57;
    *(v61 + 48) = v58;
    swift_retain_n();
    v62 = sub_1D72647CC();
    v89 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v88;
    *(v63 + 40) = v89;
    v64 = *(v74 + 3);
    v65 = *(v74 + 4);
    v66 = __swift_project_boxed_opaque_existential_1(v74, v64);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    v73[-4] = sub_1D615B4A4;
    v73[-3] = &v73[-6];
    v71 = sub_1D670888C;
    v72 = v61;
    sub_1D5D2BC70(v55, sub_1D615B49C, v70, sub_1D615B4A4, &v73[-6], v64, v65);

    sub_1D72647EC();
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v53 = v52;
  }

  return sub_1D5D2CFE8(v53, sub_1D66A9B8C);
}

uint64_t sub_1D6545E84(uint64_t a1)
{
  v2 = sub_1D5CA7408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6545EC0(uint64_t a1)
{
  v2 = sub_1D5CA7408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPreviewParameters.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v119 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v120 = v107 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v107 - v12;
  sub_1D66A9D30(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v115 = *(v1 + 24);
  v114 = *(v1 + 8);
  LODWORD(v118) = *(v1 + 40);
  v20 = *(v1 + 56);
  v113 = *(v1 + 48);
  v112 = v20;
  v132 = *(v1 + 64);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CD4708(0);
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF251A8, sub_1D5CD4708, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPreviewParameters, v24, v26, v21, &type metadata for FormatPreviewParameters, v24, &type metadata for FormatVersions.JazzkonC, v22, v18, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v123 = *(v29 + 16);
  *&v124 = v28;
  v122 = (v29 + 16);
  v123(v13);
  v121 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v127 = 0uLL;
  LOBYTE(v128) = 0;
  v30 = &v18[*(v15 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v129) = 0;
  v33 = swift_allocObject();
  v35 = v33;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v129;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  v125 = v2;
  v126 = v18;
  v116 = v15;
  v117 = v27;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v109 = v107;
    *&v129 = v19;
    MEMORY[0x1EEE9AC00](v33, v34);
    v108 = &v107[-6];
    v107[-4] = sub_1D5B4AA6C;
    v107[-3] = 0;
    v105 = sub_1D6708B14;
    v106 = v35;
    v131 = 0;
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = v131;
    *(v44 + 40) = v31;
    *(v44 + 48) = v32;
    swift_retain_n();
    sub_1D5CFCFAC(v19);
    sub_1D66A9DC4(0);
    v46 = v45;
    v47 = sub_1D5B58B84(&qword_1EDF03168, sub_1D66A9DC4, MEMORY[0x1E69E6F60]);
    v110 = v31;
    v107[1] = v46;
    v48 = sub_1D72647CC();
    v131 = 0;
    v49 = swift_allocObject();
    v111 = v32;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 16) = v48;
    *(v49 + 40) = v131;
    v50 = &v18[*(v15 + 36)];
    v51 = *(v50 + 3);
    v52 = *(v50 + 4);
    v53 = __swift_project_boxed_opaque_existential_1(v50, v51);
    MEMORY[0x1EEE9AC00](v53, v54);
    MEMORY[0x1EEE9AC00](v55, v56);
    v57 = v108;
    v107[-4] = sub_1D615B4A4;
    v107[-3] = v57;
    v105 = sub_1D6708B14;
    v106 = v44;
    v58 = v125;
    v60 = sub_1D5D2F7A4(v13, sub_1D615B49C, v59, sub_1D615B4A4, &v107[-6], v51, v52);
    if (v58)
    {

      goto LABEL_21;
    }

    v77 = v60;
    v125 = v47;
    v78 = v111;

    v36 = v120;
    if (v77)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v27 = v117;
      v32 = v78;
      v125 = 0;

      v31 = v110;
    }

    else
    {
      v125 = 0;

      v32 = v78;
      v31 = v110;
      v27 = v117;
    }
  }

  else
  {

    v36 = v120;
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  (v123)(v36, v124, v27);
  swift_storeEnumTagMultiPayload();
  v120 = xmmword_1D728CF30;
  v129 = xmmword_1D728CF30;
  v130 = 0;
  LOBYTE(v127) = 0;
  v37 = swift_allocObject();
  v39 = v37;
  *(v37 + 16) = v120;
  *(v37 + 32) = v127;
  *(v37 + 40) = v31;
  *(v37 + 48) = v32;
  if (v118)
  {
    v40 = v31;

    v41 = v125;
    v42 = v119;
    v43 = v132;
LABEL_17:
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    (v123)(v42, v124, v117);
    swift_storeEnumTagMultiPayload();
    v124 = xmmword_1D7297410;
    v127 = xmmword_1D7297410;
    LOBYTE(v128) = 0;
    LOBYTE(v129) = 0;
    v80 = swift_allocObject();
    v82 = v80;
    *(v80 + 16) = v124;
    *(v80 + 32) = v129;
    *(v80 + 40) = v40;
    *(v80 + 48) = v32;
    if (v43 > 0xFD)
    {

      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v126, sub_1D66A9D30);
    }

    v83 = v40;
    v123 = v107;
    v84 = v113;
    v85 = v112;
    *&v129 = v113;
    *(&v129 + 1) = v112;
    v130 = v43;
    MEMORY[0x1EEE9AC00](v80, v81);
    v125 = v41;
    v122 = &v107[-6];
    v107[-4] = sub_1D5B4AA6C;
    v107[-3] = 0;
    v105 = sub_1D6708B14;
    v106 = v82;
    v131 = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v124;
    *(v86 + 32) = v131;
    *(v86 + 40) = v83;
    *(v86 + 48) = v32;
    swift_retain_n();
    sub_1D5ED34B0(v84, v85, v43);
    sub_1D66A9DC4(0);
    v87 = v42;
    sub_1D5B58B84(&qword_1EDF03168, sub_1D66A9DC4, MEMORY[0x1E69E6F60]);
    v88 = v126;
    v89 = sub_1D72647CC();
    v131 = 0;
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v124;
    *(v90 + 40) = v131;
    v91 = (v88 + *(v116 + 36));
    v92 = v91[3];
    v93 = v91[4];
    v94 = __swift_project_boxed_opaque_existential_1(v91, v92);
    MEMORY[0x1EEE9AC00](v94, v95);
    MEMORY[0x1EEE9AC00](v96, v97);
    v98 = v122;
    v107[-4] = sub_1D615B4A4;
    v107[-3] = v98;
    v105 = sub_1D66A9E58;
    v106 = v86;
    v99 = v125;
    v101 = sub_1D5D2F7A4(v87, sub_1D615B49C, v100, sub_1D615B4A4, &v107[-6], v92, v93);
    if (!v99)
    {
      v104 = v101;

      if (v104)
      {
        sub_1D6661258();
        sub_1D72647EC();
      }

      sub_1D5ED34A0(v129, *(&v129 + 1), v130);
      v102 = v119;
      goto LABEL_22;
    }

    v13 = v119;
    sub_1D5ED34A0(v129, *(&v129 + 1), v130);
LABEL_21:
    v102 = v13;
LABEL_22:
    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v126, sub_1D66A9D30);
  }

  v118 = v107;
  v127 = v114;
  v128 = v115;
  MEMORY[0x1EEE9AC00](v37, v38);
  v107[-4] = sub_1D5B4AA6C;
  v107[-3] = 0;
  v105 = sub_1D6708B14;
  v106 = v39;
  v131 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = v120;
  *(v61 + 32) = v131;
  *(v61 + 40) = v31;
  *(v61 + 48) = v32;
  sub_1D66A9DC4(0);
  v62 = sub_1D5B58B84(&qword_1EDF03168, sub_1D66A9DC4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v110 = v31;
  v63 = v126;
  v64 = sub_1D72647CC();
  v111 = v32;
  v65 = v64;
  v131 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v120;
  *(v66 + 40) = v131;
  v67 = (v63 + *(v116 + 36));
  v68 = v67[3];
  v69 = v67[4];
  v70 = __swift_project_boxed_opaque_existential_1(v67, v68);
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  v107[-4] = sub_1D615B4A4;
  v107[-3] = &v107[-6];
  v105 = sub_1D6708B14;
  v106 = v61;
  v74 = v125;
  v76 = sub_1D5D2F7A4(v36, sub_1D615B49C, v75, sub_1D615B4A4, &v107[-6], v68, v69);
  if (!v74)
  {
    v79 = v76;
    v125 = v62;
    v40 = v110;

    if (v79)
    {
      sub_1D667D9C4();
      sub_1D72647EC();
    }

    v41 = 0;
    v42 = v119;
    v43 = v132;
    v32 = v111;
    goto LABEL_17;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v126, sub_1D66A9D30);
}

uint64_t sub_1D6546CB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AAF88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6546CEC(uint64_t a1)
{
  v2 = sub_1D5CD47F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6546D28(uint64_t a1)
{
  v2 = sub_1D5CD47F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPrimitivePropertyDefinition.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = &v61 - v12;
  v75 = sub_1D726393C();
  v83 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v13);
  v71 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = a2;
  v78 = &v61 - v17;
  v76 = a3;
  v19 = _s10CodingKeysOMa_94(255, a2, a3, v18);
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *&v85 = v19;
  *(&v85 + 1) = WitnessTable;
  v80 = v21;
  v81 = WitnessTable;
  v86 = v21;
  v87 = v22;
  v79 = v22;
  v23 = type metadata accessor for FormatCodingKeysContainer(255, &v85);
  swift_getWitnessTable();
  v24 = sub_1D726435C();
  v82 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61 - v26;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v28 = v84;
  sub_1D7264B0C();
  v29 = v28;
  if (v28)
  {
LABEL_2:
    v30 = a1;
  }

  else
  {
    v70 = v19;
    v84 = v27;
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v32 = sub_1D7264AFC();
    v33 = Dictionary<>.errorOnUnknownKeys.getter(v32);

    v30 = a1;
    v34 = v83;
    if (v33)
    {
      v35 = 0;
      v29 = sub_1D726433C();
      v36 = 0;
      v30 = v29 + 6;
      while (1)
      {
        if (v36 == sub_1D726279C())
        {

          v30 = a1;
          goto LABEL_13;
        }

        v37 = sub_1D726277C();
        sub_1D726271C();
        if ((v37 & 1) == 0)
        {
          break;
        }

        v38 = *v30;
        v85 = *(v30 - 1);
        LOBYTE(v86) = v38;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_15;
        }

        v39 = sub_1D6AFC82C(v23);
        ++v36;
        v30 += 3;
        if (v40)
        {
          v41 = v39;
          v42 = v40;

          v43 = sub_1D6AFC690(v70, v81, v80, v79);
          sub_1D5E2D970();
          v29 = swift_allocError();
          *v44 = v41;
          *(v44 + 8) = v42;
          *(v44 + 16) = v43;
          *(v44 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v82 + 8))(v84, v24);
          goto LABEL_2;
        }
      }

      sub_1D7263DBC();
      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_13:
      v85 = 0uLL;
      LOBYTE(v86) = 0;
      v37 = v84;
      v45 = sub_1D72642BC();
      v35 = v46;
      v85 = xmmword_1D728CF30;
      LOBYTE(v86) = 0;
      v47 = sub_1D72642BC();
      a1 = v82;
      v81 = v47;
      v23 = v48;
      v85 = xmmword_1D7297410;
      LOBYTE(v86) = 0;
      v79 = sub_1D72642BC();
      v80 = v45;
      v50 = v49;
      v85 = xmmword_1D72BAA60;
      LOBYTE(v86) = 0;
      v69 = sub_1D72642BC();
      v70 = v51;
      v85 = xmmword_1D72BAA70;
      LOBYTE(v86) = 0;
      v67 = sub_1D72642CC();
      v68 = v50;
      v85 = xmmword_1D72BAA80;
      LOBYTE(v86) = 0;
      v36 = v78;
      sub_1D726427C();
      v29 = 0;
    }

    v85 = xmmword_1D72BAA90;
    LOBYTE(v86) = 0;
    sub_1D5C4E620(&type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, &v88);
    if (!v29)
    {
      v65 = v23;
      v66 = v35;
      v64 = v88;
      sub_1D5C30060(0, &qword_1EDF1AD30, sub_1D5B56F50, &type metadata for FormatCompilerFlag, MEMORY[0x1E69E64E8]);
      sub_1D5B56DC4(0);
      v53 = v52;
      v85 = xmmword_1D72BAAA0;
      LOBYTE(v86) = 0;
      v54 = sub_1D5B58B84(&qword_1EDF21380, sub_1D5B56DC4, &protocol conformance descriptor for FormatCodingIgnoreSetStrategy<A>);
      sub_1D5C4E620(v53, v54, &v88);
      v55 = v75;
      v56 = v37;
      v57 = v24;
      v63 = v88;
      sub_1D725B76C();
      v85 = xmmword_1D72BAAB0;
      LOBYTE(v86) = 0;
      sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
      v58 = v74;
      v62 = v57;
      sub_1D726427C();
      (*(a1 + 8))(v56, v62);
      v59 = v71;
      (*(v34 + 32))(v71, v78, v55);
      v60 = v72;
      sub_1D5C4E944(v58, v72, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      sub_1D6961564(v80, v66, v81, v65, v79, v68, v69, v70, v73, v67 & 1, v59, v64, v63, v60, v77, v76);
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    (*(v34 + 8))(v36, v75);
    (*(a1 + 8))(v37, v24);
  }

  sub_1D61E4FBC(v30, v29);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t FormatPrimitivePropertyDefinition.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v98 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v100 = &v96 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v99 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v103 = &v96 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v105 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v106 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v107 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v108 = (&v96 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v96 - v30;
  v32 = *(a2 + 16);
  v101 = *(a2 + 24);
  v102 = v32;
  v34 = _s10CodingKeysOMa_94(255, v32, v101, v33);
  WitnessTable = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  *&v114 = v34;
  *(&v114 + 1) = WitnessTable;
  v115 = v36;
  v116 = v37;
  v38 = type metadata accessor for FormatCodingKeysContainer(255, &v114);
  v39 = swift_getWitnessTable();
  v40 = sub_1D726446C();
  v41 = swift_getWitnessTable();
  v43 = type metadata accessor for VersionedKeyedEncodingContainer(0, v40, v41, v42);
  v111 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v96 - v45;
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v104 = a2;
  sub_1D5D2EE70(a2, v38, v49, v47, a2, v38, &type metadata for FormatVersions.JazzkonC, v48, v46, v39, &off_1F51F6C78);
  v50 = v117[1];
  v112 = *v117;
  v113 = v50;
  v114 = 0uLL;
  LOBYTE(v115) = 0;
  v51 = qword_1EDF31EB0;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v109 = v53;
  v55(v31);
  v57 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v110;
  sub_1D5D38930(&v112, &v114, v31, sub_1D5B4AA6C, 0, v43, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  if (v58)
  {
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

  v59 = v117[3];
  v112 = v117[2];
  v113 = v59;
  v114 = xmmword_1D728CF30;
  LOBYTE(v115) = 0;
  v60 = v108;
  (v55)(v108, v109, v52);
  swift_storeEnumTagMultiPayload();

  sub_1D5D38930(&v112, &v114, v60, sub_1D5B4AA6C, 0, v43, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);

  v62 = v117;
  v63 = v117[5];
  v112 = v117[4];
  v113 = v63;
  v114 = xmmword_1D7297410;
  LOBYTE(v115) = 0;
  v110 = 0;
  v64 = v46;
  v65 = v43;
  v66 = v107;
  (v55)(v107, v109, v52);
  swift_storeEnumTagMultiPayload();

  v97 = v64;
  v67 = v110;
  sub_1D5D38930(&v112, &v114, v66, sub_1D5B4AA6C, 0, v65, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  if (!v67)
  {
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    v68 = v62[7];
    v112 = v62[6];
    v113 = v68;
    v114 = xmmword_1D72BAA60;
    LOBYTE(v115) = 0;
    v69 = v62;
    v70 = v106;
    (v55)(v106, v109, v52);
    swift_storeEnumTagMultiPayload();

    sub_1D5D38930(&v112, &v114, v70, sub_1D5B4AA6C, 0, v65, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

    v71 = v65;
    v72 = v69;
    v73 = v71;
    LOBYTE(v112) = *(v72 + 64);
    v114 = xmmword_1D72BAA70;
    LOBYTE(v115) = 0;
    v74 = v105;
    (v55)(v105, v109, v52);
    swift_storeEnumTagMultiPayload();
    sub_1D5D38930(&v112, &v114, v74, sub_1D5B4AA6C, 0, v73, MEMORY[0x1E69E6370], MEMORY[0x1E69E6378]);
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
    v75 = v55;
    v76 = v56;
    v77 = v103;
    v78 = v104;
    v79 = v57;
    v80 = *(v104 + 52);
    v114 = xmmword_1D72BAA80;
    LOBYTE(v115) = 0;
    v81 = v109;
    v108 = v75;
    v109 = v76;
    (v75)(v103, v81, v52);
    swift_storeEnumTagMultiPayload();
    sub_1D5D432A4(v72 + v80, &v114, v77, sub_1D5B4AA6C, 0, v73, v102, *(v101 + 16));
    v106 = v79;
    v107 = v73;
    v82 = v108;
    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
    v83 = v117;
    LOBYTE(v112) = FormatPrimitivePropertyDefinition.deprecated.getter(v78) & 1;
    v114 = xmmword_1D72BAA90;
    LOBYTE(v115) = 0;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v84 = __swift_project_value_buffer(v52, qword_1EDFFCD50);
    v85 = v99;
    v82(v99, v84, v52);
    swift_storeEnumTagMultiPayload();
    sub_1D71B5F54(&v112, &type metadata for FormatCodingFalseStrategy, &v114, v85, sub_1D5B4AA6C, 0, v107, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy);
    v86 = v100;
    v110 = 0;
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);
    v112 = sub_1D6981050(v104);
    sub_1D5B56DC4(0);
    v88 = v87;
    v114 = xmmword_1D72BAAA0;
    LOBYTE(v115) = 0;
    v89 = qword_1EDF31EE0;

    if (v89 != -1)
    {
      swift_once();
    }

    v105 = __swift_project_value_buffer(v52, qword_1EDFFCD80);
    v103 = v52;
    (v82)(v86);
    swift_storeEnumTagMultiPayload();
    v90 = sub_1D5B58B84(&qword_1EDF21380, sub_1D5B56DC4, &protocol conformance descriptor for FormatCodingIgnoreSetStrategy<A>);
    v43 = v107;
    v46 = v97;
    v91 = v110;
    sub_1D71B5F54(&v112, v88, &v114, v86, sub_1D5B4AA6C, 0, v107, v88, v90);
    if (!v91)
    {
      sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

      v110 = 0;
      v92 = *(v104 + 64);
      v114 = xmmword_1D72BAAB0;
      LOBYTE(v115) = 0;
      v93 = v98;
      v82(v98, v105, v103);
      swift_storeEnumTagMultiPayload();
      v94 = sub_1D725B76C();
      v95 = sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D5D432A4(v83 + v92, &v114, v93, sub_1D5B4AA6C, 0, v43, v94, v95);
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
      return (*(v111 + 8))(v46, v43);
    }

    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
LABEL_6:

    return (*(v111 + 8))(v46, v43);
  }

  sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

  return (*(v111 + 8))(v97, v65);
}

uint64_t sub_1D65484A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656C69706D6F63 && a2 == 0xED00007367616C46 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B8F40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D65487F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s10CodingKeysOMa_94(255, a1, a2, a4);
  sub_1D72644CC();
  swift_allocObject();
  v5 = sub_1D726270C();
  *v6 = 0x706050403020100;
  *(v6 + 8) = 2312;

  return sub_1D5BFCB60(v5, v4);
}

uint64_t sub_1D654886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65484A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D654889C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D66AB100();
  *a2 = result;
  return result;
}

uint64_t sub_1D65488C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1D65487F4(*(a1 + 16), *(a1 + 24), a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1D65488F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D654894C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatPrintNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v116 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v122 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v127 = v116 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v116 - v17;
  sub_1D66AB5E8(0);
  v128 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5E1AC58(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC87F928, sub_1D5E1AC58, &unk_1D7321584);
  v130 = v22;
  sub_1D5D2EE70(v4, v26, v28, v23, v4, v26, &type metadata for FormatVersions.Azden, v24, v22, v27, &off_1F51F6B78);
  swift_beginAccess();
  v30 = v2[2];
  v29 = v2[3];
  v31 = qword_1EDF31F10;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCDF8);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v36 = v34 + 16;
  v35(v18, v33, v32);
  v125 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v37 = sub_1D725895C();
  v38 = (*(*(v37 - 8) + 48))(v8, 1, v37);
  v123 = v36;
  v124 = v35;
  if (v38 != 1)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v61 = v130;
    v62 = v128;
    goto LABEL_13;
  }

  v118 = v30;
  v121 = v33;
  v120 = v32;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v39 = v128;
  v40 = v130;
  v41 = &v130[*(v128 + 44)];
  v42 = *v41;
  v43 = *(v41 + 1);
  LOBYTE(v131) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v131;
  *(v44 + 40) = v42;
  *(v44 + 48) = v43;
  sub_1D5E1AC1C(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EC87F930, sub_1D5E1AC1C, MEMORY[0x1E69E6F60]);

  *&v126 = v46;
  v119 = v47;
  v48 = sub_1D72647CC();
  LOBYTE(v131) = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v131;
  v50 = (v40 + *(v39 + 36));
  v52 = v50[3];
  v51 = v50[4];
  v53 = __swift_project_boxed_opaque_existential_1(v50, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  v116[-4] = sub_1D5B4AA6C;
  v116[-3] = 0;
  v114 = sub_1D66AB67C;
  v115 = v44;
  v57 = v129;
  v59 = sub_1D5D2F7A4(v18, sub_1D615B49C, v58, sub_1D615B4A4, &v116[-6], v52, v51);
  *&v129 = v57;
  if (v57)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v40, sub_1D66AB5E8);
  }

  v63 = v59;

  if ((v63 & 1) == 0)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    v61 = v130;
    v62 = v128;
    v32 = v120;
    v33 = v121;
LABEL_12:
    v35 = v124;
LABEL_13:
    v119 = v2;
    v67 = v2[4];
    v68 = v2[5];
    v35(v127, v33, v32);
    swift_storeEnumTagMultiPayload();
    v126 = xmmword_1D728CF30;
    v131 = xmmword_1D728CF30;
    v132 = 0;
    v69 = (v61 + *(v62 + 44));
    v71 = *v69;
    v70 = v69[1];
    LOBYTE(v133) = 0;
    v72 = swift_allocObject();
    v74 = v72;
    *(v72 + 16) = v126;
    *(v72 + 32) = v133;
    *(v72 + 40) = v71;
    *(v72 + 48) = v70;
    v117 = v70;
    v118 = v71;
    if (v68)
    {
      v121 = v33;
      v120 = v32;
      v116[2] = v116;
      v133 = v67;
      v134 = v68;
      MEMORY[0x1EEE9AC00](v72, v73);
      v116[-4] = sub_1D5B4AA6C;
      v116[-3] = 0;
      v114 = sub_1D6708B18;
      v115 = v74;
      v135 = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = v126;
      *(v75 + 32) = v135;
      *(v75 + 40) = v71;
      *(v75 + 48) = v70;
      sub_1D5E1AC1C(0);
      v77 = v76;
      sub_1D5B58B84(&qword_1EC87F930, sub_1D5E1AC1C, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v116[1] = v77;
      v78 = sub_1D72647CC();
      v135 = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      *(v79 + 24) = v126;
      *(v79 + 40) = v135;
      v80 = (v61 + *(v128 + 36));
      v81 = v80[3];
      v82 = v80[4];
      v83 = __swift_project_boxed_opaque_existential_1(v80, v81);
      MEMORY[0x1EEE9AC00](v83, v84);
      MEMORY[0x1EEE9AC00](v85, v86);
      v116[-4] = sub_1D615B4A4;
      v116[-3] = &v116[-6];
      v114 = sub_1D6708B18;
      v115 = v75;
      v87 = v127;
      v88 = v129;
      v90 = sub_1D5D2F7A4(v127, sub_1D615B49C, v89, sub_1D615B4A4, &v116[-6], v81, v82);
      v91 = v88;
      if (v88)
      {

        v92 = v130;
        sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
        v66 = v92;
        return sub_1D5D2CFE8(v66, sub_1D66AB5E8);
      }

      v93 = v90;

      if (v93)
      {
        sub_1D72647EC();
        v33 = v121;

        sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
        v32 = v120;
      }

      else
      {

        sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);
        v32 = v120;
        v33 = v121;
      }
    }

    else
    {

      sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

      v91 = v129;
    }

    v94 = v119;
    swift_beginAccess();
    v95 = v94[6];
    v96 = v122;
    v124(v122, v33, v32);
    swift_storeEnumTagMultiPayload();
    v97 = v128;
    v98 = v118;
    if (*(v95 + 16))
    {
      LOBYTE(v133) = 0;
      v99 = swift_allocObject();
      v129 = xmmword_1D7297410;
      *(v99 + 16) = xmmword_1D7297410;
      *(v99 + 32) = v133;
      v100 = v117;
      *(v99 + 40) = v98;
      *(v99 + 48) = v100;
      sub_1D5E1AC1C(0);
      sub_1D5B58B84(&qword_1EC87F930, sub_1D5E1AC1C, MEMORY[0x1E69E6F60]);

      v101 = v130;
      v102 = sub_1D72647CC();
      LOBYTE(v133) = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v102;
      *(v103 + 24) = v129;
      *(v103 + 40) = v133;
      v104 = (v101 + *(v97 + 36));
      v105 = v104[3];
      v106 = v104[4];
      v107 = __swift_project_boxed_opaque_existential_1(v104, v105);
      MEMORY[0x1EEE9AC00](v107, v108);
      MEMORY[0x1EEE9AC00](v109, v110);
      v116[-4] = sub_1D5B4AA6C;
      v116[-3] = 0;
      v114 = sub_1D6708B18;
      v115 = v99;
      v112 = sub_1D5D2F7A4(v96, sub_1D615B49C, v111, sub_1D615B4A4, &v116[-6], v105, v106);
      if (v91)
      {
      }

      else
      {
        v113 = v112;

        if (v113)
        {
          sub_1D5E08A4C(v95, v130, 2, 0, 0);
        }
      }
    }

    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
    v66 = v130;
    return sub_1D5D2CFE8(v66, sub_1D66AB5E8);
  }

  v131 = 0uLL;
  v132 = 0;
  v133 = v118;
  v134 = v29;
  v64 = v130;
  v65 = v129;
  sub_1D72647EC();

  sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  v62 = v128;
  v33 = v121;
  if (!v65)
  {
    *&v129 = 0;
    v61 = v64;
    v32 = v120;
    goto LABEL_12;
  }

  v66 = v64;
  return sub_1D5D2CFE8(v66, sub_1D66AB5E8);
}

uint64_t sub_1D6549828()
{
  v1 = 0x696669746E656469;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_1D654989C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AC048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65498D4(uint64_t a1)
{
  v2 = sub_1D5E1AD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6549910(uint64_t a1)
{
  v2 = sub_1D5E1AD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPrintNodeValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v44 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v43 = &v42 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v51 = *v1;
  v31 = a1[3];
  v32 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCDF8);
  v35 = *(*(v33 - 8) + 16);
  v35(v30, v34, v33);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = v53[6];
  sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v31, v32);
  if (v36)
  {
    return sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v38 = v52[3];
  v39 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v38);
  if (v51 > 3)
  {
    if (v51 <= 5)
    {
      v41 = v47;
      v35(v47, v34, v33);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v38, v39);
      sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      goto LABEL_15;
    }

    if (v51 == 6)
    {
      v40 = v49;
      v35(v49, v34, v33);
    }

    else
    {
      v40 = v50;
      v35(v50, v34, v33);
    }
  }

  else if (v51 > 1)
  {
    v40 = v45;
    v35(v45, v34, v33);
  }

  else
  {
    v40 = v43;
    v35(v43, v34, v33);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v38, v39);
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
LABEL_15:
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t FormatProcessedColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66AB6F8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66AB78C(0);
  sub_1D5B58B84(&qword_1EDF253A8, sub_1D66AB78C, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x6F737365636F7270, 0xEA00000000007372);
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
  sub_1D5C34D84(0, &unk_1EDF1B120, &type metadata for FormatColorProcessor, MEMORY[0x1E69E62F8]);
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D66AB90C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProcessedColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  sub_1D66AB9A8(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66AB78C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF253A8, sub_1D66AB78C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatProcessedColor, v19, v21, v16, &type metadata for FormatProcessedColor, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v79 = v23;
  v80 = v22;
  v74 = v24 + 16;
  v75 = v25;
  (v25)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v89 = v15;
  v87 = 0uLL;
  v88 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v86 = 0;
  v29 = swift_allocObject();
  v83 = &v71;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v86;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v85 = v9;
  *(&v71 - 4) = sub_1D5B4AA6C;
  *(&v71 - 3) = 0;
  v69 = sub_1D6708B1C;
  v70 = v31;
  v86 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v86;
  v76 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66ABA3C(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF033C8, sub_1D66ABA3C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v81 = v35;
  v82 = v34;
  v36 = sub_1D72647CC();
  v86 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v86;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v71 - 4) = sub_1D615B4A4;
  *(&v71 - 3) = (&v71 - 6);
  v45 = v84;
  v46 = v85;
  v69 = sub_1D66ABAD0;
  v70 = v32;
  sub_1D5D2BC70(v85, sub_1D615B49C, v47, sub_1D615B4A4, (&v71 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v50 = v14;
  }

  else
  {
    v72 = v38;
    v49 = v79;
    v48 = v80;
    v84 = v28;

    sub_1D5B55CBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

    v52 = v78;
    v75(v78, v49, v48);
    swift_storeEnumTagMultiPayload();
    v89 = v77;
    v85 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    v88 = 0;
    v86 = 0;
    v53 = swift_allocObject();
    v83 = &v71;
    *(v53 + 16) = v85;
    *(v53 + 32) = v86;
    v54 = v76;
    v55 = v84;
    *(v53 + 40) = v76;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v71 - 4) = sub_1D5B4AA6C;
    *(&v71 - 3) = 0;
    v69 = sub_1D6708B1C;
    v70 = v57;
    v86 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v85;
    *(v58 + 32) = v86;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v84 = v14;
    v59 = sub_1D72647CC();
    v86 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v85;
    *(v60 + 40) = v86;
    v61 = *(v72 + 3);
    v62 = *(v72 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v72, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v71 - 4) = sub_1D615B4A4;
    *(&v71 - 3) = (&v71 - 6);
    v69 = sub_1D6708B1C;
    v70 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v71 - 6), v61, v62);

    sub_1D5C34D84(0, &unk_1EDF1B120, &type metadata for FormatColorProcessor, MEMORY[0x1E69E62F8]);
    sub_1D66ABB4C();
    v68 = v84;
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v50 = v68;
  }

  return sub_1D5D2CFE8(v50, sub_1D66AB9A8);
}

uint64_t sub_1D654ADF0()
{
  v1 = 0x6F737365636F7270;
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

uint64_t sub_1D654AE44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AC1B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D654AE7C(uint64_t a1)
{
  v2 = sub_1D66AB864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654AEB8(uint64_t a1)
{
  v2 = sub_1D66AB864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressCircleOptions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  sub_1D66ABBE8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66ABC7C(0);
  sub_1D5B58B84(&qword_1EDF0C470, sub_1D66ABC7C, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  if (v13)
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

      v20 = sub_1D6620BAC();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D660C130(sub_1D66ABBE8, &v46, 0.0);
  v17 = v46;
  v39 = xmmword_1D728CF30;
  v46 = xmmword_1D728CF30;
  v47 = 0;
  if (sub_1D726434C())
  {
    v44 = v39;
    v45 = 0;
    sub_1D5CDCE98();
    sub_1D726431C();
    v23 = v17;
    v25 = v41;
    v24 = v42;
    v26 = v43;
    sub_1D5C75A4C(v41, v42, v43);
    v38 = v25;
    *&v39 = v24;
    v27 = v25;
    v17 = v23;
    sub_1D5D2F2C8(v27, v24, v26);
  }

  else
  {
    v26 = 0;
    v38 = 1;
    *&v39 = 0;
  }

  sub_1D660C130(sub_1D66ABBE8, &v46, 0.0);
  v28 = v46;
  sub_1D660C130(sub_1D66ABBE8, &v46, 0.0);
  v48 = v26;
  v37 = v46;
  sub_1D660C130(sub_1D66ABBE8, &v46, 1.0);
  v29 = v46;
  v36 = xmmword_1D72BAA80;
  v46 = xmmword_1D72BAA80;
  v47 = 0;
  if (sub_1D726434C())
  {
    v44 = v36;
    v45 = 0;
    sub_1D666B130();
    sub_1D726431C();
    v30 = v28;
    (*(v11 + 8))(v9, v5);
    v31 = v41;
  }

  else
  {
    v30 = v28;
    (*(v11 + 8))(v9, v5);
    v31 = 0;
  }

  v33 = v38;
  v32 = v39;
  v34 = v40;
  *v40 = v17;
  v34[1] = v33;
  v34[2] = v32;
  *(v34 + 24) = v48;
  v35 = v37;
  v34[4] = v30;
  v34[5] = v35;
  v34[6] = v29;
  *(v34 + 56) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void FormatProgressCircleOptions.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v188 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v189 = &v186 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v191 = &v186 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v200 = &v186 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v199 = &v186 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v186 - v22;
  sub_1D66ABDFC(0);
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  v201 = *(v1 + 8);
  v202 = *(v1 + 16);
  LODWORD(v203) = *(v1 + 24);
  v30 = *(v1 + 40);
  v195 = *(v1 + 32);
  v192 = v30;
  v190 = *(v1 + 48);
  v187 = *(v1 + 56);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D66ABC7C(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF0C470, sub_1D66ABC7C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatProgressCircleOptions, v34, v36, v31, &type metadata for FormatProgressCircleOptions, v34, &type metadata for FormatVersions.DawnburstC, v32, v28, v35, &off_1F51F6B98);
  v37 = qword_1EDF31F58[0];

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCE98);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  *&v207 = v39;
  v213 = v41;
  v206 = v40 + 16;
  v41(v23);
  v205 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  sub_1D5F3FE24(0);
  v198 = v43;
  inited = swift_initStackObject();
  v197 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v42;
  *(inited + 40) = 0;
  sub_1D633A310(v29, inited);
  LOBYTE(v42) = v45;
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v196 = v46;
  swift_arrayDestroy();
  v193 = v25;
  v194 = v38;
  if (v42)
  {
    sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

LABEL_5:
    v47 = v200;
    goto LABEL_6;
  }

  *&v186 = v29;
  v51 = &v28[*(v25 + 44)];
  v52 = v28;
  v54 = *v51;
  v53 = *(v51 + 1);
  LOBYTE(v211) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v211;
  *(v55 + 40) = v54;
  *(v55 + 48) = v53;
  sub_1D66ABE90(0);
  *&v204 = v3;
  sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90, MEMORY[0x1E69E6F60]);

  v56 = sub_1D72647CC();
  LOBYTE(v211) = 0;
  v57 = swift_allocObject();
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 16) = v56;
  *(v57 + 40) = v211;
  v58 = (v52 + *(v25 + 36));
  v59 = v58[3];
  v60 = v58[4];
  v61 = __swift_project_boxed_opaque_existential_1(v58, v59);
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v186 - 4) = sub_1D5B4AA6C;
  *(&v186 - 3) = 0;
  v184 = sub_1D66ABF24;
  v185 = v55;
  v65 = v204;
  v67 = sub_1D5D2F7A4(v23, sub_1D615B49C, v66, sub_1D615B4A4, (&v186 - 3), v59, v60);
  if (v65)
  {
    sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v52, sub_1D66ABDFC);

    return;
  }

  v88 = v67;

  if ((v88 & 1) == 0)
  {
    sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

    v3 = 0;
    v28 = v52;
    v25 = v193;
    v38 = v194;
    goto LABEL_5;
  }

  v211 = 0uLL;
  v212 = 0;
  v208 = v186;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();

  v28 = v52;
  sub_1D72647EC();
  v3 = 0;
  v47 = v200;

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

  v25 = v193;
  v38 = v194;
LABEL_6:
  *&v204 = v3;
  v48 = v199;
  v213(v199, v207, v38);
  swift_storeEnumTagMultiPayload();
  if (v203)
  {
    v49 = v201;
    v50 = v202;
    sub_1D5C75A4C(v201, v202, 1);

    sub_1D5D2F2C8(v49, v50, 1);
    sub_1D5D2F2C8(1, 0, 0);
  }

  else
  {
    v68 = v201;
    sub_1D5D2F2C8(v201, v202, 0);
    sub_1D5D2F2C8(1, 0, 0);
    if (v68)
    {
      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
      v69 = v204;
      goto LABEL_23;
    }
  }

  v70 = &v28[*(v25 + 44)];
  v71 = *v70;
  v72 = *(v70 + 1);
  LOBYTE(v211) = 0;
  v73 = swift_allocObject();
  v186 = xmmword_1D728CF30;
  *(v73 + 16) = xmmword_1D728CF30;
  *(v73 + 32) = v211;
  *(v73 + 40) = v71;
  *(v73 + 48) = v72;
  sub_1D66ABE90(0);
  sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90, MEMORY[0x1E69E6F60]);

  v74 = sub_1D72647CC();
  LOBYTE(v211) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = v186;
  *(v75 + 40) = v211;
  v76 = &v28[*(v25 + 36)];
  v77 = *(v76 + 3);
  v78 = *(v76 + 4);
  v79 = __swift_project_boxed_opaque_existential_1(v76, v77);
  MEMORY[0x1EEE9AC00](v79, v80);
  MEMORY[0x1EEE9AC00](v81, v82);
  *(&v186 - 4) = sub_1D5B4AA6C;
  *(&v186 - 3) = 0;
  v184 = sub_1D6708B20;
  v185 = v73;
  v83 = v204;
  v85 = sub_1D5D2F7A4(v48, sub_1D615B49C, v84, sub_1D615B4A4, (&v186 - 3), v77, v78);
  v86 = v48;
  v69 = v83;
  if (v83)
  {
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2F2C8(v201, v202, v203);
    goto LABEL_14;
  }

  v25 = v193;

  if (v85)
  {
    v211 = v186;
    v212 = 0;
    v208 = v201;
    v209 = v202;
    v210 = v203;
    sub_1D60ED320();
    sub_1D72647EC();
    sub_1D5D2F2C8(v208, v209, v210);
    sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2F2C8(v201, v202, v203);
  }

  v38 = v194;
  v47 = v200;
LABEL_23:
  v213(v47, v207, v38);
  swift_storeEnumTagMultiPayload();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v90 = swift_initStackObject();
  *(v90 + 16) = v197;
  *(v90 + 32) = v89;
  *(v90 + 40) = 0;

  sub_1D633A310(v91, v90);
  LOBYTE(v89) = v92;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v89)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

LABEL_25:
    v47 = v191;
    goto LABEL_26;
  }

  v98 = &v28[*(v25 + 44)];
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v211) = 0;
  v101 = swift_allocObject();
  v204 = xmmword_1D7297410;
  *(v101 + 16) = xmmword_1D7297410;
  *(v101 + 32) = v211;
  *(v101 + 40) = v99;
  *(v101 + 48) = v100;
  sub_1D66ABE90(0);
  v103 = v102;
  sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90, MEMORY[0x1E69E6F60]);

  v202 = v103;
  v104 = sub_1D72647CC();
  LOBYTE(v211) = 0;
  v105 = v25;
  v106 = swift_allocObject();
  *(v106 + 16) = v104;
  *(v106 + 24) = v204;
  *(v106 + 40) = v211;
  v107 = &v28[*(v105 + 36)];
  v108 = *(v107 + 3);
  v109 = *(v107 + 4);
  v110 = __swift_project_boxed_opaque_existential_1(v107, v108);
  v203 = &v186;
  MEMORY[0x1EEE9AC00](v110, v111);
  MEMORY[0x1EEE9AC00](v112, v113);
  *(&v186 - 4) = sub_1D5B4AA6C;
  *(&v186 - 3) = 0;
  v184 = sub_1D6708B20;
  v185 = v101;
  v115 = sub_1D5D2F7A4(v47, sub_1D615B49C, v114, sub_1D615B4A4, (&v186 - 3), v108, v109);
  if (v69)
  {
    goto LABEL_29;
  }

  v134 = v115;

  if ((v134 & 1) == 0)
  {
    sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

    v25 = v105;
    v38 = v194;
    goto LABEL_25;
  }

  v211 = v204;
  v212 = 0;
  v208 = v195;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();

  sub_1D72647EC();
  v47 = v191;
  v25 = v105;

  sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

  v38 = v194;
LABEL_26:
  v213(v47, v207, v38);
  swift_storeEnumTagMultiPayload();
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  v94 = swift_initStackObject();
  *(v94 + 16) = v197;
  *(v94 + 32) = v93;
  *(v94 + 40) = 0;

  sub_1D633A310(v95, v94);
  LOBYTE(v93) = v96;
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v93 & 1) == 0)
  {
    v116 = &v28[*(v25 + 44)];
    v117 = *v116;
    v118 = *(v116 + 1);
    LOBYTE(v211) = 0;
    v119 = swift_allocObject();
    v204 = xmmword_1D72BAA60;
    *(v119 + 16) = xmmword_1D72BAA60;
    *(v119 + 32) = v211;
    *(v119 + 40) = v117;
    *(v119 + 48) = v118;
    sub_1D66ABE90(0);
    v121 = v120;
    sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90, MEMORY[0x1E69E6F60]);

    v202 = v121;
    v122 = sub_1D72647CC();
    LOBYTE(v211) = 0;
    v123 = v25;
    v124 = swift_allocObject();
    *(v124 + 16) = v122;
    *(v124 + 24) = v204;
    *(v124 + 40) = v211;
    v125 = &v28[*(v123 + 36)];
    v126 = *(v125 + 3);
    v127 = *(v125 + 4);
    v128 = __swift_project_boxed_opaque_existential_1(v125, v126);
    v203 = &v186;
    MEMORY[0x1EEE9AC00](v128, v129);
    MEMORY[0x1EEE9AC00](v130, v131);
    *(&v186 - 4) = sub_1D5B4AA6C;
    *(&v186 - 3) = 0;
    v184 = sub_1D6708B20;
    v185 = v119;
    v133 = sub_1D5D2F7A4(v47, sub_1D615B49C, v132, sub_1D615B4A4, (&v186 - 3), v126, v127);
    if (!v69)
    {
      v135 = v133;

      if (v135)
      {
        v211 = v204;
        v212 = 0;
        v208 = v192;
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();

        sub_1D72647EC();
        v25 = v123;
        v97 = v189;
        v136 = v191;

        sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

        v25 = v123;
        v97 = v189;
      }

      v38 = v194;
      goto LABEL_39;
    }

LABEL_29:
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v28, sub_1D66ABDFC);
    goto LABEL_43;
  }

  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

  v97 = v189;
LABEL_39:
  v213(v97, v207, v38);
  swift_storeEnumTagMultiPayload();
  v137 = swift_allocObject();
  *(v137 + 16) = 0x3FF0000000000000;
  v138 = swift_initStackObject();
  *(v138 + 16) = v197;
  *(v138 + 32) = v137;
  *(v138 + 40) = 0;

  sub_1D633A310(v139, v138);
  LOBYTE(v137) = v140;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v137)
  {
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

    v141 = v188;
LABEL_48:
    v213(v141, v207, v38);
    swift_storeEnumTagMultiPayload();
    if (v187)
    {
      v164 = sub_1D72646CC();

      if ((v164 & 1) == 0)
      {
        v165 = &v28[*(v25 + 44)];
        v166 = *v165;
        v167 = *(v165 + 1);
        LOBYTE(v211) = 0;
        v168 = v141;
        v169 = swift_allocObject();
        v207 = xmmword_1D72BAA80;
        *(v169 + 16) = xmmword_1D72BAA80;
        *(v169 + 32) = v211;
        *(v169 + 40) = v166;
        *(v169 + 48) = v167;
        sub_1D66ABE90(0);
        v171 = v170;
        sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90, MEMORY[0x1E69E6F60]);

        v213 = v171;
        v172 = sub_1D72647CC();
        LOBYTE(v211) = 0;
        v173 = swift_allocObject();
        *(v173 + 16) = v172;
        *(v173 + 24) = v207;
        *(v173 + 40) = v211;
        v174 = &v28[*(v25 + 36)];
        v175 = *(v174 + 3);
        v176 = *(v174 + 4);
        v177 = __swift_project_boxed_opaque_existential_1(v174, v175);
        MEMORY[0x1EEE9AC00](v177, v178);
        MEMORY[0x1EEE9AC00](v179, v180);
        *(&v186 - 4) = sub_1D5B4AA6C;
        *(&v186 - 3) = 0;
        v184 = sub_1D6708B20;
        v185 = v169;
        v182 = sub_1D5D2F7A4(v168, sub_1D615B49C, v181, sub_1D615B4A4, (&v186 - 3), v175, v176);
        if (v69)
        {
          sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v183 = v182;

          if (v183)
          {
            v211 = v207;
            v212 = 0;
            LOBYTE(v208) = v187;
            sub_1D666B294();
            sub_1D72647EC();
          }

          sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
        }

        v87 = v28;
        goto LABEL_15;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
LABEL_14:
    v87 = v28;
LABEL_15:
    sub_1D5D2CFE8(v87, sub_1D66ABDFC);
    return;
  }

  v142 = &v28[*(v25 + 44)];
  v143 = *v142;
  v144 = *(v142 + 1);
  LOBYTE(v211) = 0;
  v145 = swift_allocObject();
  v204 = xmmword_1D72BAA70;
  *(v145 + 16) = xmmword_1D72BAA70;
  *(v145 + 32) = v211;
  *(v145 + 40) = v143;
  *(v145 + 48) = v144;
  sub_1D66ABE90(0);
  v147 = v146;
  v148 = v28;
  v149 = sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90, MEMORY[0x1E69E6F60]);

  v202 = v147;
  v150 = sub_1D72647CC();
  LOBYTE(v211) = 0;
  v151 = v25;
  v152 = swift_allocObject();
  *(v152 + 16) = v150;
  *(v152 + 24) = v204;
  *(v152 + 40) = v211;
  v153 = (v148 + *(v151 + 36));
  v154 = v153[3];
  v155 = v153[4];
  v156 = __swift_project_boxed_opaque_existential_1(v153, v154);
  v203 = &v186;
  MEMORY[0x1EEE9AC00](v156, v157);
  MEMORY[0x1EEE9AC00](v158, v159);
  *(&v186 - 4) = sub_1D5B4AA6C;
  *(&v186 - 3) = 0;
  v184 = sub_1D6708B20;
  v185 = v145;
  v161 = sub_1D5D2F7A4(v97, sub_1D615B49C, v160, sub_1D615B4A4, (&v186 - 3), v154, v155);
  if (!v69)
  {
    v162 = v161;
    v201 = v149;

    if (v162)
    {
      v211 = v204;
      v212 = 0;
      v208 = v190;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();
      v141 = v188;
      v25 = v151;
      v163 = v189;

      sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

      v28 = v148;
    }

    else
    {
      sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);

      v28 = v148;
      v141 = v188;
      v25 = v151;
    }

    v38 = v194;
    goto LABEL_48;
  }

  sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v148, sub_1D66ABDFC);
LABEL_43:
}

uint64_t sub_1D654D3BC()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x706143656E696CLL;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x65637265506E696DLL;
  if (v1 != 3)
  {
    v4 = 0x656372655078616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7369776B636F6C63;
  if (v1 != 1)
  {
    v5 = 0x6372655070657473;
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